package com.crashlytics.android.answers;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public class AnswersAttributes {
    public final Map<String, Object> attributes = new ConcurrentHashMap();
    public final AnswersEventValidator validator;

    public AnswersAttributes(AnswersEventValidator answersEventValidator) {
        this.validator = answersEventValidator;
    }

    public void put(String str, String str2) {
        if (!this.validator.isNull(str, "key") && !this.validator.isNull(str2, "value")) {
            putAttribute(this.validator.limitStringLength(str), this.validator.limitStringLength(str2));
        }
    }

    public void putAttribute(String str, Object obj) {
        if (!this.validator.isFullMap(this.attributes, str)) {
            this.attributes.put(str, obj);
        }
    }

    public String toString() {
        return new JSONObject(this.attributes).toString();
    }

    public void put(String str, Number number) {
        if (!this.validator.isNull(str, "key") && !this.validator.isNull(number, "value")) {
            putAttribute(this.validator.limitStringLength(str), number);
        }
    }
}
