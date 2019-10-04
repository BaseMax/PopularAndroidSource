package com.google.android.gms.common.api.internal;

final class de implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ dd f2848a;

    de(dd ddVar) {
        this.f2848a = ddVar;
    }

    public final void run() {
        this.f2848a.g.lock();
        try {
            dd.a(this.f2848a);
        } finally {
            this.f2848a.g.unlock();
        }
    }
}
