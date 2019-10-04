package com.farsitel.bazaar.data.entity;

import com.crashlytics.android.answers.AnswersRetryFilesSender;

/* compiled from: ErrorModel.kt */
public enum ErrorCode {
    NOT_FOUND(404),
    RATE_LIMIT_EXCEEDED(429),
    INTERNAL_SERVER_ERROR(500),
    UNVERIFIED_ACCOUNT(601),
    TOO_MANY_DEVICES(602),
    PHONE_NUMBER_WAS_ALREADY_THIS(AnswersRetryFilesSender.BACKOFF_MS),
    UNKNOWN(0);
    
    public final int value;

    /* access modifiers changed from: public */
    ErrorCode(int i2) {
        this.value = i2;
    }

    public final int getValue() {
        return this.value;
    }
}
