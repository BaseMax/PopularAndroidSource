package com.google.android.gms.c;

final class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f f2706a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ p f2707b;

    q(p pVar, f fVar) {
        this.f2707b = pVar;
        this.f2706a = fVar;
    }

    public final void run() {
        synchronized (this.f2707b.f2704a) {
            if (this.f2707b.f2705b != null) {
                this.f2707b.f2705b.onFailure(this.f2706a.getException());
            }
        }
    }
}
