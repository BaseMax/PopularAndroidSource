package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.data.entity.ErrorModel;

/* compiled from: ErrorModel.kt */
public final class AlreadyLoggedOut extends ErrorModel.Feature {
    public static final AlreadyLoggedOut INSTANCE = new AlreadyLoggedOut();

    public AlreadyLoggedOut() {
        super("User already logged out");
    }
}
