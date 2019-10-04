package com.bumptech.glide.e.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.e.b.b;
import com.bumptech.glide.h;

public final class f<Z> extends g<Z> {

    /* renamed from: b  reason: collision with root package name */
    private static final Handler f2022b = new Handler(Looper.getMainLooper(), new Handler.Callback() {
        public final boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            f fVar = (f) message.obj;
            fVar.f2023a.clear((i<?>) fVar);
            return true;
        }
    });

    /* renamed from: a  reason: collision with root package name */
    final h f2023a;

    public static <Z> f<Z> obtain(h hVar, int i, int i2) {
        return new f<>(hVar, i, i2);
    }

    private f(h hVar, int i, int i2) {
        super(i, i2);
        this.f2023a = hVar;
    }

    public final void onResourceReady(Z z, b<? super Z> bVar) {
        f2022b.obtainMessage(1, this).sendToTarget();
    }
}
