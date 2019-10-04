package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;

public final class bz extends BasePendingResult<Status> {
    @Deprecated
    public bz(Looper looper) {
        super(looper);
    }

    public bz(f fVar) {
        super(fVar);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ m zzb(Status status) {
        return status;
    }
}
