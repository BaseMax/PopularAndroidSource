package com.google.firebase.iid;

import android.content.Intent;

final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Intent f4065a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ f f4066b;

    g(f fVar, Intent intent) {
        this.f4066b = fVar;
        this.f4065a = intent;
    }

    public final void run() {
        String action = this.f4065a.getAction();
        StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
        sb.append("Service took too long to process intent: ");
        sb.append(action);
        sb.append(" App may get closed.");
        this.f4066b.a();
    }
}
