package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.C0065a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.m;

public final class av<O extends a.C0065a> extends i {

    /* renamed from: a  reason: collision with root package name */
    private final e<O> f2778a;

    public av(e<O> eVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f2778a = eVar;
    }

    public final Context getContext() {
        return this.f2778a.getApplicationContext();
    }

    public final Looper getLooper() {
        return this.f2778a.getLooper();
    }

    public final void zza(ce ceVar) {
    }

    public final void zzb(ce ceVar) {
    }

    public final <A extends a.c, R extends m, T extends cu<R, A>> T zzd(T t) {
        return this.f2778a.zza(t);
    }

    public final <A extends a.c, T extends cu<? extends m, A>> T zze(T t) {
        return this.f2778a.zzb(t);
    }
}
