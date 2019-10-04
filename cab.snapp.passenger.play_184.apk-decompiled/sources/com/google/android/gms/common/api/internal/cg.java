package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;

final class cg extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ce f2815a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public cg(ce ceVar, Looper looper) {
        super(looper);
        this.f2815a = ceVar;
    }

    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            h hVar = (h) message.obj;
            synchronized (this.f2815a.d) {
                if (hVar == null) {
                    this.f2815a.f2812b.a(new Status(13, "Transform returned null"));
                } else if (hVar instanceof br) {
                    this.f2815a.f2812b.a(((br) hVar).f2801a);
                } else {
                    this.f2815a.f2812b.zza(hVar);
                }
            }
        } else if (i != 1) {
            int i2 = message.what;
            StringBuilder sb = new StringBuilder(70);
            sb.append("TransformationResultHandler received unknown message type: ");
            sb.append(i2);
        } else {
            RuntimeException runtimeException = (RuntimeException) message.obj;
            String valueOf = String.valueOf(runtimeException.getMessage());
            if (valueOf.length() != 0) {
                "Runtime exception on the transformation worker thread: ".concat(valueOf);
            } else {
                new String("Runtime exception on the transformation worker thread: ");
            }
            throw runtimeException;
        }
    }
}
