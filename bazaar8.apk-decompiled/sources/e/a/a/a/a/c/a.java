package e.a.a.a.a.c;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: AsyncTask */
class a implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicInteger f13721a = new AtomicInteger(1);

    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AsyncTask #" + this.f13721a.getAndIncrement());
    }
}
