package com.google.android.gms.internal;

final class md implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ boolean f3374a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ zzcln f3375b;
    private /* synthetic */ zzcgi c;
    private /* synthetic */ lr d;

    md(lr lrVar, boolean z, zzcln zzcln, zzcgi zzcgi) {
        this.d = lrVar;
        this.f3374a = z;
        this.f3375b = zzcln;
        this.c = zzcgi;
    }

    public final void run() {
        ir irVar = this.d.f3353b;
        if (irVar == null) {
            this.d.zzawy().zzazd().log("Discarding data. Failed to set user attribute");
            return;
        }
        this.d.a(irVar, this.f3374a ? null : this.f3375b, this.c);
        this.d.f();
    }
}
