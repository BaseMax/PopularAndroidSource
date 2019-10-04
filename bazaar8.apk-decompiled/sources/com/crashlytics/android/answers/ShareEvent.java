package com.crashlytics.android.answers;

public class ShareEvent extends PredefinedEvent<ShareEvent> {
    public static final String CONTENT_ID_ATTRIBUTE = "contentId";
    public static final String CONTENT_NAME_ATTRIBUTE = "contentName";
    public static final String CONTENT_TYPE_ATTRIBUTE = "contentType";
    public static final String METHOD_ATTRIBUTE = "method";
    public static final String TYPE = "share";

    public String getPredefinedType() {
        return TYPE;
    }

    public ShareEvent putContentId(String str) {
        this.predefinedAttributes.put("contentId", str);
        return this;
    }

    public ShareEvent putContentName(String str) {
        this.predefinedAttributes.put("contentName", str);
        return this;
    }

    public ShareEvent putContentType(String str) {
        this.predefinedAttributes.put("contentType", str);
        return this;
    }

    public ShareEvent putMethod(String str) {
        this.predefinedAttributes.put("method", str);
        return this;
    }
}
