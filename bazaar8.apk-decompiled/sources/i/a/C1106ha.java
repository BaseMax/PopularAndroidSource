package i.a;

import h.c.e;
import h.f.b.j;
import i.a.c.d;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

/* renamed from: i.a.ha  reason: case insensitive filesystem */
/* compiled from: Executors.kt */
public abstract class C1106ha extends C1104ga implements P {

    /* renamed from: a  reason: collision with root package name */
    public boolean f14842a;

    public void a(e eVar, Runnable runnable) {
        Runnable runnable2;
        j.b(eVar, "context");
        j.b(runnable, "block");
        try {
            Executor x = x();
            Na a2 = Oa.a();
            if (a2 != null) {
                runnable2 = a2.a(runnable);
                if (runnable2 != null) {
                    x.execute(runnable2);
                }
            }
            runnable2 = runnable;
            x.execute(runnable2);
        } catch (RejectedExecutionException unused) {
            Na a3 = Oa.a();
            if (a3 != null) {
                a3.c();
            }
            M.f14648g.a(runnable);
        }
    }

    public void close() {
        Executor x = x();
        if (!(x instanceof ExecutorService)) {
            x = null;
        }
        ExecutorService executorService = (ExecutorService) x;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof C1106ha) && ((C1106ha) obj).x() == x();
    }

    public int hashCode() {
        return System.identityHashCode(x());
    }

    public String toString() {
        return x().toString();
    }

    public final void y() {
        this.f14842a = d.a(x());
    }
}
