package com.google.android.gms.common.internal;

import com.google.android.gms.c.f;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.m;

public final class ai {

    /* renamed from: a  reason: collision with root package name */
    private static final ao f2927a = new aj();

    public static <R extends m, T extends l<R>> f<T> zza(h<R> hVar, T t) {
        return zza(hVar, new al(t));
    }

    public static <R extends m, T> f<T> zza(h<R> hVar, an<R, T> anVar) {
        ao aoVar = f2927a;
        g gVar = new g();
        hVar.zza(new ak(hVar, gVar, anVar, aoVar));
        return gVar.getTask();
    }

    public static <R extends m> f<Void> zzb(h<R> hVar) {
        return zza(hVar, new am());
    }
}
