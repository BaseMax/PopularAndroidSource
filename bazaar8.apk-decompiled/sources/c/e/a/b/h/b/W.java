package c.e.a.b.h.b;

import c.e.a.b.d.d.r;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public final class W<V> extends FutureTask<V> implements Comparable<W> {

    /* renamed from: a  reason: collision with root package name */
    public final long f10780a = U.f10760c.getAndIncrement();

    /* renamed from: b  reason: collision with root package name */
    public final boolean f10781b;

    /* renamed from: c  reason: collision with root package name */
    public final String f10782c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ U f10783d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public W(U u, Callable<V> callable, boolean z, String str) {
        super(callable);
        this.f10783d = u;
        r.a(str);
        this.f10782c = str;
        this.f10781b = z;
        if (this.f10780a == Long.MAX_VALUE) {
            u.e().t().a("Tasks index overflow");
        }
    }

    public final /* synthetic */ int compareTo(Object obj) {
        W w = (W) obj;
        boolean z = this.f10781b;
        if (z != w.f10781b) {
            return z ? -1 : 1;
        }
        long j2 = this.f10780a;
        long j3 = w.f10780a;
        if (j2 < j3) {
            return -1;
        }
        if (j2 > j3) {
            return 1;
        }
        this.f10783d.e().u().a("Two tasks share the same index. index", Long.valueOf(this.f10780a));
        return 0;
    }

    public final void setException(Throwable th) {
        this.f10783d.e().t().a(this.f10782c, th);
        super.setException(th);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public W(U u, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.f10783d = u;
        r.a(str);
        this.f10782c = str;
        this.f10781b = false;
        if (this.f10780a == Long.MAX_VALUE) {
            u.e().t().a("Tasks index overflow");
        }
    }
}
