package b.H.a.d.b;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* compiled from: WorkManagerTaskExecutor */
class c implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public int f1534a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ d f1535b;

    public c(d dVar) {
        this.f1535b = dVar;
    }

    public Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
        newThread.setName("WorkManager-WorkManagerTaskExecutor-thread-" + this.f1534a);
        this.f1534a = this.f1534a + 1;
        this.f1535b.f1538c = newThread;
        return newThread;
    }
}
