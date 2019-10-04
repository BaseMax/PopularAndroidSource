package com.crashlytics.android.answers;

import com.crashlytics.android.answers.AnswersEvent;
import e.a.a.a.f;
import java.util.Map;

public abstract class AnswersEvent<T extends AnswersEvent> {
    public static final int MAX_NUM_ATTRIBUTES = 20;
    public static final int MAX_STRING_LENGTH = 100;
    public final AnswersAttributes customAttributes = new AnswersAttributes(this.validator);
    public final AnswersEventValidator validator = new AnswersEventValidator(20, 100, f.h());

    public Map<String, Object> getCustomAttributes() {
        return this.customAttributes.attributes;
    }

    public T putCustomAttribute(String str, String str2) {
        this.customAttributes.put(str, str2);
        return this;
    }

    public T putCustomAttribute(String str, Number number) {
        this.customAttributes.put(str, number);
        return this;
    }
}
