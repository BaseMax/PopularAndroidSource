package io.reactivex.i;

import io.reactivex.ah;
import io.reactivex.internal.e.p;
import io.reactivex.internal.e.r;
import io.reactivex.internal.e.s;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final ah f6721a = io.reactivex.g.a.initSingleScheduler(new h());

    /* renamed from: b  reason: collision with root package name */
    static final ah f6722b = io.reactivex.g.a.initComputationScheduler(new b());
    static final ah c = io.reactivex.g.a.initIoScheduler(new c());
    static final ah d = s.instance();
    static final ah e = io.reactivex.g.a.initNewThreadScheduler(new f());

    /* renamed from: io.reactivex.i.a$a  reason: collision with other inner class name */
    static final class C0130a {

        /* renamed from: a  reason: collision with root package name */
        static final ah f6723a = new io.reactivex.internal.e.b();

        C0130a() {
        }
    }

    static final class b implements Callable<ah> {
        b() {
        }

        public final ah call() throws Exception {
            return C0130a.f6723a;
        }
    }

    static final class c implements Callable<ah> {
        c() {
        }

        public final ah call() throws Exception {
            return d.f6724a;
        }
    }

    static final class d {

        /* renamed from: a  reason: collision with root package name */
        static final ah f6724a = new io.reactivex.internal.e.g();

        d() {
        }
    }

    static final class e {

        /* renamed from: a  reason: collision with root package name */
        static final ah f6725a = new io.reactivex.internal.e.h();

        e() {
        }
    }

    static final class f implements Callable<ah> {
        f() {
        }

        public final ah call() throws Exception {
            return e.f6725a;
        }
    }

    static final class g {

        /* renamed from: a  reason: collision with root package name */
        static final ah f6726a = new r();

        g() {
        }
    }

    static final class h implements Callable<ah> {
        h() {
        }

        public final ah call() throws Exception {
            return g.f6726a;
        }
    }

    private a() {
        throw new IllegalStateException("No instances!");
    }

    public static ah computation() {
        return io.reactivex.g.a.onComputationScheduler(f6722b);
    }

    public static ah io() {
        return io.reactivex.g.a.onIoScheduler(c);
    }

    public static ah trampoline() {
        return d;
    }

    public static ah newThread() {
        return io.reactivex.g.a.onNewThreadScheduler(e);
    }

    public static ah single() {
        return io.reactivex.g.a.onSingleScheduler(f6721a);
    }

    public static ah from(Executor executor) {
        return new io.reactivex.internal.e.d(executor, false);
    }

    public static ah from(Executor executor, boolean z) {
        return new io.reactivex.internal.e.d(executor, z);
    }

    public static void shutdown() {
        computation().shutdown();
        io().shutdown();
        newThread().shutdown();
        single().shutdown();
        trampoline().shutdown();
        p.shutdown();
    }

    public static void start() {
        computation().start();
        io().start();
        newThread().start();
        single().start();
        trampoline().start();
        p.start();
    }
}
