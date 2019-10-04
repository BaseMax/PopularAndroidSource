package com.google.android.gms.internal;

final class kt implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgi f3313a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ kc f3314b;

    kt(kc kcVar, zzcgi zzcgi) {
        this.f3314b = kcVar;
        this.f3313a = zzcgi;
    }

    public final void run() {
        this.f3314b.f3279a.f();
        this.f3314b.f3279a.zzf(this.f3313a);
    }
}
