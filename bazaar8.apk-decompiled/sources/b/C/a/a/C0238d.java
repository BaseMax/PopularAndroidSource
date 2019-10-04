package b.c.a.a;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: b.c.a.a.d  reason: case insensitive filesystem */
/* compiled from: DefaultTaskExecutor */
class C0238d implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicInteger f2274a = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0239e f2275b;

    public C0238d(C0239e eVar) {
        this.f2275b = eVar;
    }

    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName(String.format("arch_disk_io_%d", new Object[]{Integer.valueOf(this.f2274a.getAndIncrement())}));
        return thread;
    }
}
