package com.google.android.gms.c;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public final class h {
    public static final Executor MAIN_THREAD = new a();

    /* renamed from: a  reason: collision with root package name */
    static final Executor f2687a = new v();

    static final class a implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f2688a = new Handler(Looper.getMainLooper());

        public final void execute(Runnable runnable) {
            this.f2688a.post(runnable);
        }
    }

    private h() {
    }
}
