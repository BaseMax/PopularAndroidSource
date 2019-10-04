package com.google.android.gms.internal;

import android.content.ComponentName;

final class mh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ComponentName f3382a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ mf f3383b;

    mh(mf mfVar, ComponentName componentName) {
        this.f3383b = mfVar;
        this.f3382a = componentName;
    }

    public final void run() {
        lr.a(this.f3383b.f3378a, this.f3382a);
    }
}
