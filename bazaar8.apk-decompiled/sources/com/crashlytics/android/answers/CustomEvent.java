package com.crashlytics.android.answers;

public class CustomEvent extends AnswersEvent<CustomEvent> {
    public final String eventName;

    public CustomEvent(String str) {
        if (str != null) {
            this.eventName = this.validator.limitStringLength(str);
            return;
        }
        throw new NullPointerException("eventName must not be null");
    }

    public String getCustomType() {
        return this.eventName;
    }

    public String toString() {
        return "{eventName:\"" + this.eventName + '\"' + ", customAttributes:" + this.customAttributes + "}";
    }
}