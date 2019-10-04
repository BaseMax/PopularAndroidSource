package com.crashlytics.android.answers;

public class LevelEndEvent extends PredefinedEvent<LevelEndEvent> {
    public static final String LEVEL_NAME_ATTRIBUTE = "levelName";
    public static final String SCORE_ATTRIBUTE = "score";
    public static final String SUCCESS_ATTRIBUTE = "success";
    public static final String TYPE = "levelEnd";

    public String getPredefinedType() {
        return TYPE;
    }

    public LevelEndEvent putLevelName(String str) {
        this.predefinedAttributes.put("levelName", str);
        return this;
    }

    public LevelEndEvent putScore(Number number) {
        this.predefinedAttributes.put(SCORE_ATTRIBUTE, number);
        return this;
    }

    public LevelEndEvent putSuccess(boolean z) {
        this.predefinedAttributes.put("success", z ? "true" : "false");
        return this;
    }
}
