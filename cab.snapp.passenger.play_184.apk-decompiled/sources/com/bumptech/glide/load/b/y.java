package com.bumptech.glide.load.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class y {

    /* renamed from: a  reason: collision with root package name */
    private boolean f2247a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f2248b = new Handler(Looper.getMainLooper(), new a());

    static final class a implements Handler.Callback {
        a() {
        }

        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((v) message.obj).recycle();
            return true;
        }
    }

    y() {
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(v<?> vVar) {
        if (this.f2247a) {
            this.f2248b.obtainMessage(1, vVar).sendToTarget();
            return;
        }
        this.f2247a = true;
        vVar.recycle();
        this.f2247a = false;
    }
}
