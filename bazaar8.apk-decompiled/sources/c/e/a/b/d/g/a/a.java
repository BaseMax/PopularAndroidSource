package c.e.a.b.d.g.a;

import c.e.a.b.d.d.r;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public class a implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final String f10050a;

    /* renamed from: b  reason: collision with root package name */
    public final int f10051b;

    /* renamed from: c  reason: collision with root package name */
    public final ThreadFactory f10052c;

    public a(String str) {
        this(str, 0);
    }

    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f10052c.newThread(new b(runnable, 0));
        newThread.setName(this.f10050a);
        return newThread;
    }

    public a(String str, int i2) {
        this.f10052c = Executors.defaultThreadFactory();
        r.a(str, (Object) "Name must not be null");
        this.f10050a = str;
        this.f10051b = 0;
    }
}
