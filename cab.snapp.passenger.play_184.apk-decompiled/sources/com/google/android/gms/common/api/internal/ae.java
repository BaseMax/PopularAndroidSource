package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class ae extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ z f2756a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ae(z zVar, Looper looper) {
        super(looper);
        this.f2756a = zVar;
    }

    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            z.b(this.f2756a);
        } else if (i != 2) {
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(31);
            sb.append("Unknown message id: ");
            sb.append(i2);
        } else {
            z.a(this.f2756a);
        }
    }
}
