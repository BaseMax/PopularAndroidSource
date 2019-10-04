package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.br;
import com.google.android.gms.common.api.m;

public abstract class p<R extends m, S extends m> {
    public final h<S> createFailedResult(Status status) {
        return new br(status);
    }

    public Status onFailure(Status status) {
        return status;
    }

    public abstract h<S> onSuccess(R r);
}
