package b.H.a.d.b;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* compiled from: WorkManagerTaskExecutor */
public class d implements a {

    /* renamed from: a  reason: collision with root package name */
    public final Handler f1536a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    public final Executor f1537b = new b(this);

    /* renamed from: c  reason: collision with root package name */
    public volatile Thread f1538c;

    /* renamed from: d  reason: collision with root package name */
    public final ThreadFactory f1539d = new c(this);

    /* renamed from: e  reason: collision with root package name */
    public final ExecutorService f1540e = Executors.newSingleThreadExecutor(this.f1539d);

    public void a(Runnable runnable) {
        this.f1540e.execute(runnable);
    }

    public void b(Runnable runnable) {
        this.f1536a.post(runnable);
    }

    public Executor c() {
        return this.f1540e;
    }

    public Thread a() {
        return this.f1538c;
    }

    public Executor b() {
        return this.f1537b;
    }
}
