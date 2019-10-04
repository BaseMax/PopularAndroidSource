package com.google.android.gms.c;

final class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f f2702a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ n f2703b;

    o(n nVar, f fVar) {
        this.f2703b = nVar;
        this.f2702a = fVar;
    }

    public final void run() {
        synchronized (this.f2703b.f2700a) {
            if (this.f2703b.f2701b != null) {
                this.f2703b.f2701b.onComplete(this.f2702a);
            }
        }
    }
}
