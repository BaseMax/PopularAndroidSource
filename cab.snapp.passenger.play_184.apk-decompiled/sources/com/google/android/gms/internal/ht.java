package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.ap;

public final class ht {
    public static Looper zzavy() {
        ap.zza(Looper.myLooper() != null, (Object) "Can't create handler inside thread that has not called Looper.prepare()");
        return Looper.myLooper();
    }

    public static Looper zzb(Looper looper) {
        return looper != null ? looper : zzavy();
    }
}
