package com.crashlytics.android.answers;

public class ContentViewEvent extends PredefinedEvent<ContentViewEvent> {
    public static final String CONTENT_ID_ATTRIBUTE = "contentId";
    public static final String CONTENT_NAME_ATTRIBUTE = "contentName";
    public static final String CONTENT_TYPE_ATTRIBUTE = "contentType";
    public static final String TYPE = "contentView";

    public String getPredefinedType() {
        return TYPE;
    }

    public ContentViewEvent putContentId(String str) {
        this.predefinedAttributes.put("contentId", str);
        return this;
    }

    public ContentViewEvent putContentName(String str) {
        this.predefinedAttributes.put("contentName", str);
        return this;
    }

    public ContentViewEvent putContentType(String str) {
        this.predefinedAttributes.put("contentType", str);
        return this;
    }
}
