package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.data.entity.ErrorModel;

/* compiled from: ErrorModel.kt */
public final class InvalidPassWordException extends ErrorModel.Feature {
    public InvalidPassWordException() {
        super("Invalid password");
    }
}
