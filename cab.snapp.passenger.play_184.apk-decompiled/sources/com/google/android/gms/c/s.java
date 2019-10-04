package com.google.android.gms.c;

final class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f f2710a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ r f2711b;

    s(r rVar, f fVar) {
        this.f2711b = rVar;
        this.f2710a = fVar;
    }

    public final void run() {
        synchronized (this.f2711b.f2708a) {
            if (this.f2711b.f2709b != null) {
                this.f2711b.f2709b.onSuccess(this.f2710a.getResult());
            }
        }
    }
}
