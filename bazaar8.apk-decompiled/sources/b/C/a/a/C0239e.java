package b.c.a.a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: b.c.a.a.e  reason: case insensitive filesystem */
/* compiled from: DefaultTaskExecutor */
public class C0239e extends C0240f {

    /* renamed from: a  reason: collision with root package name */
    public final Object f2276a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final ExecutorService f2277b = Executors.newFixedThreadPool(4, new C0238d(this));

    /* renamed from: c  reason: collision with root package name */
    public volatile Handler f2278c;

    public void a(Runnable runnable) {
        this.f2277b.execute(runnable);
    }

    public void c(Runnable runnable) {
        if (this.f2278c == null) {
            synchronized (this.f2276a) {
                if (this.f2278c == null) {
                    this.f2278c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.f2278c.post(runnable);
    }

    public boolean a() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
