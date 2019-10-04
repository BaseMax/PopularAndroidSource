package com.crashlytics.android.answers;

public class LevelStartEvent extends PredefinedEvent<LevelStartEvent> {
    public static final String LEVEL_NAME_ATTRIBUTE = "levelName";
    public static final String TYPE = "levelStart";

    public String getPredefinedType() {
        return TYPE;
    }

    public LevelStartEvent putLevelName(String str) {
        this.predefinedAttributes.put("levelName", str);
        return this;
    }
}
