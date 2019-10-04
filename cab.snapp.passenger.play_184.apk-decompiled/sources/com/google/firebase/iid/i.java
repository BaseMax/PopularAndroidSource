package com.google.firebase.iid;

final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f f4068a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ h f4069b;

    i(h hVar, f fVar) {
        this.f4069b = hVar;
        this.f4068a = fVar;
    }

    public final void run() {
        this.f4069b.f4067a.handleIntent(this.f4068a.f4063a);
        this.f4068a.a();
    }
}
