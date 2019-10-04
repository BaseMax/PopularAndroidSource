package b.H.a.a.b;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* compiled from: WorkTimer */
class h implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public int f1370a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ i f1371b;

    public h(i iVar) {
        this.f1371b = iVar;
    }

    public Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
        newThread.setName("WorkManager-WorkTimer-thread-" + this.f1370a);
        this.f1370a = this.f1370a + 1;
        return newThread;
    }
}
