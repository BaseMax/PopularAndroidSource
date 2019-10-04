package com.google.firebase.iid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class x extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ w f4090a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    x(w wVar, Looper looper) {
        super(looper);
        this.f4090a = wVar;
    }

    public final void handleMessage(Message message) {
        w.a(this.f4090a, message);
    }
}
