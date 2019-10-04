package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.data.entity.ErrorModel;

/* compiled from: ErrorModel.kt */
public final class InvalidPhoneNumberException extends ErrorModel.Feature {
    public InvalidPhoneNumberException() {
        super("Invalid phone number");
    }
}
