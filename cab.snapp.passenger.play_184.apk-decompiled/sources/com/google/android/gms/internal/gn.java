package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.cv;

final class gn extends gu {

    /* renamed from: a  reason: collision with root package name */
    private final cv<Status> f3172a;

    public gn(cv<Status> cvVar) {
        this.f3172a = cvVar;
    }

    public final void zza(zzceo zzceo) {
        this.f3172a.setResult(zzceo.getStatus());
    }
}
