package i.a;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CommonPool.kt */
final class r implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicInteger f14858a;

    public r(AtomicInteger atomicInteger) {
        this.f14858a = atomicInteger;
    }

    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "CommonPool-worker-" + this.f14858a.incrementAndGet());
        thread.setDaemon(true);
        return thread;
    }
}
