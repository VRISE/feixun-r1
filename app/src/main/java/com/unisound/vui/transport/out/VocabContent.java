package com.unisound.vui.transport.out;

import java.util.List;
import java.util.Map;

public class VocabContent {
    private Map<String, List<String>> vocabContent;
    private String grammarTag;

    public VocabContent(Map<String, List<String>> vocabContent, String grammarTag) {
        this.vocabContent = vocabContent;
        this.grammarTag = grammarTag;
    }

    public Map<String, List<String>> getVocabContent() {
        return vocabContent;
    }

    public String getGrammarTag() {
        return grammarTag;
    }
}
