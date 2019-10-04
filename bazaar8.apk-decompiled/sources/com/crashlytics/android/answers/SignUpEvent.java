package com.crashlytics.android.answers;

public class SignUpEvent extends PredefinedEvent<SignUpEvent> {
    public static final String METHOD_ATTRIBUTE = "method";
    public static final String SUCCESS_ATTRIBUTE = "success";
    public static final String TYPE = "signUp";

    public String getPredefinedType() {
        return TYPE;
    }

    public SignUpEvent putMethod(String str) {
        this.predefinedAttributes.put("method", str);
        return this;
    }

    public SignUpEvent putSuccess(boolean z) {
        this.predefinedAttributes.put("success", Boolean.toString(z));
        return this;
    }
}
