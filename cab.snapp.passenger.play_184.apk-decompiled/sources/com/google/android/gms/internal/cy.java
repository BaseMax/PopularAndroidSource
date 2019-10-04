package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.cv;

final class cy extends cq {

    /* renamed from: a  reason: collision with root package name */
    private cv<Status> f3126a;

    cy(cv<Status> cvVar) {
        this.f3126a = cvVar;
    }

    public final void zze(Status status) {
        this.f3126a.setResult(status);
    }
}
