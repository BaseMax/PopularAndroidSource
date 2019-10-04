package f.a.a.g.b;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: ThreadExecutorImpl */
public class u implements s {

    /* renamed from: a  reason: collision with root package name */
    public static final TimeUnit f14426a = TimeUnit.SECONDS;

    /* renamed from: b  reason: collision with root package name */
    public static final BlockingQueue<Runnable> f14427b = new LinkedBlockingQueue();

    /* renamed from: c  reason: collision with root package name */
    public static volatile u f14428c;

    /* renamed from: d  reason: collision with root package name */
    public ThreadPoolExecutor f14429d;

    /* compiled from: ThreadExecutorImpl */
    private static class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        public int f14430a;

        public a() {
            this.f14430a = 0;
        }

        public Thread newThread(Runnable runnable) {
            StringBuilder sb = new StringBuilder();
            sb.append("android_");
            int i2 = this.f14430a;
            this.f14430a = i2 + 1;
            sb.append(i2);
            return new Thread(runnable, sb.toString());
        }
    }

    public u() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(3, 5, 60, f14426a, f14427b, new a());
        this.f14429d = threadPoolExecutor;
    }

    public static synchronized u a() {
        u uVar;
        synchronized (u.class) {
            if (f14428c == null) {
                f14428c = new u();
            }
            uVar = f14428c;
        }
        return uVar;
    }

    public void execute(Runnable runnable) {
        this.f14429d.execute(runnable);
    }
}
