package j.a;

import java.util.concurrent.ThreadFactory;

/* compiled from: Util */
class d implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f15382a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f15383b;

    public d(String str, boolean z) {
        this.f15382a = str;
        this.f15383b = z;
    }

    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f15382a);
        thread.setDaemon(this.f15383b);
        return thread;
    }
}
