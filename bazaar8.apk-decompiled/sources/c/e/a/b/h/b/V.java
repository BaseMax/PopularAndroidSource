package c.e.a.b.h.b;

import c.e.a.b.d.d.r;
import java.lang.Thread;

public final class V implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    public final String f10774a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ U f10775b;

    public V(U u, String str) {
        this.f10775b = u;
        r.a(str);
        this.f10774a = str;
    }

    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.f10775b.e().t().a(this.f10774a, th);
    }
}
