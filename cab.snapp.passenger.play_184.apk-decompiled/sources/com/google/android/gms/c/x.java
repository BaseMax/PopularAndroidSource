package com.google.android.gms.c;

import java.util.concurrent.Callable;

final class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ w f2717a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Callable f2718b;

    x(w wVar, Callable callable) {
        this.f2717a = wVar;
        this.f2718b = callable;
    }

    public final void run() {
        try {
            this.f2717a.setResult(this.f2718b.call());
        } catch (Exception e) {
            this.f2717a.setException(e);
        }
    }
}
