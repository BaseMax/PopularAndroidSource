package com.crashlytics.android.answers;

import e.a.a.a.f;
import java.util.Locale;
import java.util.Map;

public class AnswersEventValidator {
    public boolean failFast;
    public final int maxNumAttributes;
    public final int maxStringLength;

    public AnswersEventValidator(int i2, int i3, boolean z) {
        this.maxNumAttributes = i2;
        this.maxStringLength = i3;
        this.failFast = z;
    }

    private void logOrThrowException(RuntimeException runtimeException) {
        if (!this.failFast) {
            f.e().b(Answers.TAG, "Invalid user input detected", runtimeException);
            return;
        }
        throw runtimeException;
    }

    public boolean isFullMap(Map<String, Object> map, String str) {
        if (map.size() < this.maxNumAttributes || map.containsKey(str)) {
            return false;
        }
        logOrThrowException(new IllegalArgumentException(String.format(Locale.US, "Limit of %d attributes reached, skipping attribute", new Object[]{Integer.valueOf(this.maxNumAttributes)})));
        return true;
    }

    public boolean isNull(Object obj, String str) {
        if (obj != null) {
            return false;
        }
        logOrThrowException(new NullPointerException(str + " must not be null"));
        return true;
    }

    public String limitStringLength(String str) {
        int length = str.length();
        int i2 = this.maxStringLength;
        if (length <= i2) {
            return str;
        }
        logOrThrowException(new IllegalArgumentException(String.format(Locale.US, "String is too long, truncating to %d characters", new Object[]{Integer.valueOf(i2)})));
        return str.substring(0, this.maxStringLength);
    }
}
