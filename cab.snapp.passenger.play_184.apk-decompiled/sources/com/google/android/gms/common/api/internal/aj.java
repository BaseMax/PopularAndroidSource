package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class aj extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ah f2761a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    aj(ah ahVar, Looper looper) {
        super(looper);
        this.f2761a = ahVar;
    }

    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            ((ai) message.obj).zzc(this.f2761a);
        } else if (i != 2) {
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i2);
        } else {
            throw ((RuntimeException) message.obj);
        }
    }
}
