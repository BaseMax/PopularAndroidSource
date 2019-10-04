package io.reactivex.a.b;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import io.reactivex.ah;
import java.util.concurrent.Callable;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final ah f6693a = io.reactivex.a.a.a.initMainThreadScheduler(new Callable<ah>() {
        public final ah call() throws Exception {
            return C0127a.f6694a;
        }
    });

    /* renamed from: io.reactivex.a.b.a$a  reason: collision with other inner class name */
    static final class C0127a {

        /* renamed from: a  reason: collision with root package name */
        static final ah f6694a = new b(new Handler(Looper.getMainLooper()), false);

        private C0127a() {
        }
    }

    public static ah mainThread() {
        return io.reactivex.a.a.a.onMainThreadScheduler(f6693a);
    }

    public static ah from(Looper looper) {
        return from(looper, false);
    }

    public static ah from(Looper looper, boolean z) {
        if (looper != null) {
            if (Build.VERSION.SDK_INT < 16) {
                z = false;
            } else if (z && Build.VERSION.SDK_INT < 22) {
                Message obtain = Message.obtain();
                try {
                    obtain.setAsynchronous(true);
                } catch (NoSuchMethodError unused) {
                    z = false;
                }
                obtain.recycle();
            }
            return new b(new Handler(looper), z);
        }
        throw new NullPointerException("looper == null");
    }

    private a() {
        throw new AssertionError("No instances.");
    }
}
