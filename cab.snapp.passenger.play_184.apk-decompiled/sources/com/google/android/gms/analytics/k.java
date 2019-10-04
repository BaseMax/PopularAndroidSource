package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;

final class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ BroadcastReceiver.PendingResult f2584a;

    k(BroadcastReceiver.PendingResult pendingResult) {
        this.f2584a = pendingResult;
    }

    public final void run() {
        BroadcastReceiver.PendingResult pendingResult = this.f2584a;
        if (pendingResult != null) {
            pendingResult.finish();
        }
    }
}
