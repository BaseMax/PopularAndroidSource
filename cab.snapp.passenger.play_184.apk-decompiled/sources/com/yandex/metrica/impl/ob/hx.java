package com.yandex.metrica.impl.ob;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.Executor;

class hx implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private HandlerThread f6137a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f6138b;
    private Looper c;

    static class a {
        a() {
        }

        public Handler a(Looper looper) {
            return new Handler(looper);
        }
    }

    public hx() {
        this(ni.a("YMM-UH-1"), new a());
    }

    public void execute(Runnable runnable) {
        if (runnable != null) {
            this.f6138b.post(runnable);
        }
    }

    public void a(Runnable runnable, long j) {
        if (runnable != null) {
            this.f6138b.postDelayed(runnable, j);
        }
    }

    public void a(Runnable runnable) {
        if (runnable != null) {
            this.f6138b.removeCallbacks(runnable);
        }
    }

    public Looper a() {
        return this.c;
    }

    hx(HandlerThread handlerThread, a aVar) {
        this.f6137a = handlerThread;
        this.f6137a.start();
        this.c = handlerThread.getLooper();
        this.f6138b = aVar.a(this.c);
    }
}
