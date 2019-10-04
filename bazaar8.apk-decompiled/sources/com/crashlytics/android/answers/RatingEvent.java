package com.crashlytics.android.answers;

public class RatingEvent extends PredefinedEvent<RatingEvent> {
    public static final String CONTENT_ID_ATTRIBUTE = "contentId";
    public static final String CONTENT_NAME_ATTRIBUTE = "contentName";
    public static final String CONTENT_TYPE_ATTRIBUTE = "contentType";
    public static final String RATING_ATTRIBUTE = "rating";
    public static final String TYPE = "rating";

    public String getPredefinedType() {
        return "rating";
    }

    public RatingEvent putContentId(String str) {
        this.predefinedAttributes.put("contentId", str);
        return this;
    }

    public RatingEvent putContentName(String str) {
        this.predefinedAttributes.put("contentName", str);
        return this;
    }

    public RatingEvent putContentType(String str) {
        this.predefinedAttributes.put("contentType", str);
        return this;
    }

    public RatingEvent putRating(int i2) {
        this.predefinedAttributes.put("rating", (Number) Integer.valueOf(i2));
        return this;
    }
}
