package c.e.c.d;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class J {

    /* renamed from: a  reason: collision with root package name */
    public static final Executor f11606a = L.f11613a;

    public static Executor a() {
        return f11606a;
    }

    public static Executor b() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), M.f11614a);
        return threadPoolExecutor;
    }

    public static final /* synthetic */ Thread a(Runnable runnable) {
        return new Thread(runnable, "firebase-iid-executor");
    }
}
