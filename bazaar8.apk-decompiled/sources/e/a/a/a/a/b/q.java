package e.a.a.a.a.b;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: ExecutorUtils */
class q implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f13694a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AtomicLong f13695b;

    public q(String str, AtomicLong atomicLong) {
        this.f13694a = str;
        this.f13695b = atomicLong;
    }

    public Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(new p(this, runnable));
        newThread.setName(this.f13694a + this.f13695b.getAndIncrement());
        return newThread;
    }
}
