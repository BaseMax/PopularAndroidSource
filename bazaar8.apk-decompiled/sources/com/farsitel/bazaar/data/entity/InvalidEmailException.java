package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.data.entity.ErrorModel;

/* compiled from: ErrorModel.kt */
public final class InvalidEmailException extends ErrorModel.Feature {
    public InvalidEmailException() {
        super("Invalid email address");
    }
}
