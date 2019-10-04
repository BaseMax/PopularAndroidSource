package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.data.entity.ErrorModel;

/* compiled from: ErrorModel.kt */
public final class RetryMoreThanTreeTimesException extends ErrorModel.Feature {
    public RetryMoreThanTreeTimesException() {
        super("you have tried more than three times.");
    }
}
