package c.e.a.b.j;

import c.e.a.b.d.d.r;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class j {

    private static final class a implements b {

        /* renamed from: a  reason: collision with root package name */
        public final CountDownLatch f11146a;

        public a() {
            this.f11146a = new CountDownLatch(1);
        }

        public final void a(Object obj) {
            this.f11146a.countDown();
        }

        public final void b() {
            this.f11146a.await();
        }

        public final void a(Exception exc) {
            this.f11146a.countDown();
        }

        public /* synthetic */ a(C c2) {
            this();
        }

        public final void a() {
            this.f11146a.countDown();
        }

        public final boolean a(long j2, TimeUnit timeUnit) {
            return this.f11146a.await(j2, timeUnit);
        }
    }

    interface b extends C0979b, d, e<Object> {
    }

    public static <TResult> g<TResult> a(TResult tresult) {
        B b2 = new B();
        b2.a(tresult);
        return b2;
    }

    public static <TResult> TResult b(g<TResult> gVar) {
        if (gVar.e()) {
            return gVar.b();
        }
        if (gVar.c()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(gVar.a());
    }

    public static <TResult> g<TResult> a(Executor executor, Callable<TResult> callable) {
        r.a(executor, (Object) "Executor must not be null");
        r.a(callable, (Object) "Callback must not be null");
        B b2 = new B();
        executor.execute(new C(b2, callable));
        return b2;
    }

    public static <TResult> TResult a(g<TResult> gVar) {
        r.a();
        r.a(gVar, (Object) "Task must not be null");
        if (gVar.d()) {
            return b(gVar);
        }
        a aVar = new a(null);
        a((g<?>) gVar, (b) aVar);
        aVar.b();
        return b(gVar);
    }

    public static <TResult> TResult a(g<TResult> gVar, long j2, TimeUnit timeUnit) {
        r.a();
        r.a(gVar, (Object) "Task must not be null");
        r.a(timeUnit, (Object) "TimeUnit must not be null");
        if (gVar.d()) {
            return b(gVar);
        }
        a aVar = new a(null);
        a((g<?>) gVar, (b) aVar);
        if (aVar.a(j2, timeUnit)) {
            return b(gVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static void a(g<?> gVar, b bVar) {
        gVar.a(i.f11144b, (e<? super Object>) bVar);
        gVar.a(i.f11144b, (d) bVar);
        gVar.a(i.f11144b, (C0979b) bVar);
    }
}
