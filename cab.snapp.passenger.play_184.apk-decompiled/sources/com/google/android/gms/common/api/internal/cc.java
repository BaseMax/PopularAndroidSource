package com.google.android.gms.common.api.internal;

import com.google.android.gms.c.f;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;

public final class cc {
    @Deprecated
    public static f<Void> zza(f<Boolean> fVar) {
        return fVar.continueWith(new cd());
    }

    public static <TResult> void zza(Status status, TResult tresult, g<TResult> gVar) {
        if (status.isSuccess()) {
            gVar.setResult(tresult);
        } else {
            gVar.setException(new b(status));
        }
    }
}
