package com.google.android.gms.internal;

final class km implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzcgi f3299a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ kc f3300b;

    km(kc kcVar, zzcgi zzcgi) {
        this.f3300b = kcVar;
        this.f3299a = zzcgi;
    }

    public final void run() {
        this.f3300b.f3279a.f();
        this.f3300b.f3279a.a(this.f3299a);
    }
}
