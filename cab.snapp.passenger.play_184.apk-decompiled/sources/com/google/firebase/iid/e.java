package com.google.firebase.iid;

import android.content.Intent;

final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Intent f4061a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Intent f4062b;
    private /* synthetic */ d c;

    e(d dVar, Intent intent, Intent intent2) {
        this.c = dVar;
        this.f4061a = intent;
        this.f4062b = intent2;
    }

    public final void run() {
        this.c.handleIntent(this.f4061a);
        this.c.a(this.f4062b);
    }
}
