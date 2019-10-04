package i.a;

import h.c.b;
import h.e;
import h.f.b.j;
import h.h;
import i.a.c.u;
import i.a.c.v;
import i.a.c.z;
import java.util.concurrent.CancellationException;
import kotlin.Result;

/* compiled from: Dispatched.kt */
public final class T {

    /* renamed from: a  reason: collision with root package name */
    public static final v f14659a = new v("UNDEFINED");

    public static final <T> void b(b<? super T> bVar, T t) {
        j.b(bVar, "$this$resumeDirect");
        if (bVar instanceof Q) {
            b<T> bVar2 = ((Q) bVar).f14657h;
            Result.a aVar = Result.f15776a;
            Result.a(t);
            bVar2.b(t);
            return;
        }
        Result.a aVar2 = Result.f15776a;
        Result.a(t);
        bVar.b(t);
    }

    public static final void a(U<?> u) {
        C1089aa b2 = Ma.f14650b.b();
        if (b2.y()) {
            b2.a(u);
            return;
        }
        b2.c(true);
        try {
            a(u, u.e(), 3);
            do {
            } while (b2.B());
        } catch (Throwable th) {
            b2.a(true);
            throw th;
        }
        b2.a(true);
    }

    public static final <T> void b(b<? super T> bVar, Throwable th) {
        j.b(bVar, "$this$resumeDirectWithException");
        j.b(th, "exception");
        if (bVar instanceof Q) {
            b<T> bVar2 = ((Q) bVar).f14657h;
            Result.a aVar = Result.f15776a;
            Object a2 = e.a(u.a(th, (b<?>) bVar2));
            Result.a(a2);
            bVar2.b(a2);
            return;
        }
        Result.a aVar2 = Result.f15776a;
        Object a3 = e.a(u.a(th, (b<?>) bVar));
        Result.a(a3);
        bVar.b(a3);
    }

    public static final <T> void a(b<? super T> bVar, T t) {
        boolean z;
        h.c.e b2;
        Object b3;
        j.b(bVar, "$this$resumeCancellable");
        if (bVar instanceof Q) {
            Q q = (Q) bVar;
            if (q.f14656g.b(q.b())) {
                q.f14653d = t;
                q.f14660c = 1;
                q.f14656g.a(q.b(), q);
                return;
            }
            C1089aa b4 = Ma.f14650b.b();
            if (b4.y()) {
                q.f14653d = t;
                q.f14660c = 1;
                b4.a((U<?>) q);
                return;
            }
            b4.c(true);
            try {
                C1125ra raVar = (C1125ra) q.b().get(C1125ra.f14859c);
                if (raVar == null || raVar.s()) {
                    z = false;
                } else {
                    CancellationException t2 = raVar.t();
                    Result.a aVar = Result.f15776a;
                    Object a2 = e.a((Throwable) t2);
                    Result.a(a2);
                    q.b(a2);
                    z = true;
                }
                if (!z) {
                    b2 = q.b();
                    b3 = z.b(b2, q.f14655f);
                    b<T> bVar2 = q.f14657h;
                    Result.a aVar2 = Result.f15776a;
                    Result.a(t);
                    bVar2.b(t);
                    h hVar = h.f14579a;
                    z.a(b2, b3);
                }
                do {
                } while (b4.B());
            } catch (Throwable th) {
                try {
                    q.a(th, (Throwable) null);
                } catch (Throwable th2) {
                    b4.a(true);
                    throw th2;
                }
            }
            b4.a(true);
            return;
        }
        Result.a aVar3 = Result.f15776a;
        Result.a(t);
        bVar.b(t);
    }

    public static final <T> void a(b<? super T> bVar, Throwable th) {
        h.c.e b2;
        Object b3;
        j.b(bVar, "$this$resumeCancellableWithException");
        j.b(th, "exception");
        if (bVar instanceof Q) {
            Q q = (Q) bVar;
            h.c.e b4 = q.f14657h.b();
            boolean z = false;
            C1129v vVar = new C1129v(th, false, 2, null);
            if (q.f14656g.b(b4)) {
                q.f14653d = new C1129v(th, false, 2, null);
                q.f14660c = 1;
                q.f14656g.a(b4, q);
                return;
            }
            C1089aa b5 = Ma.f14650b.b();
            if (b5.y()) {
                q.f14653d = vVar;
                q.f14660c = 1;
                b5.a((U<?>) q);
                return;
            }
            b5.c(true);
            try {
                C1125ra raVar = (C1125ra) q.b().get(C1125ra.f14859c);
                if (raVar != null && !raVar.s()) {
                    CancellationException t = raVar.t();
                    Result.a aVar = Result.f15776a;
                    Object a2 = e.a((Throwable) t);
                    Result.a(a2);
                    q.b(a2);
                    z = true;
                }
                if (!z) {
                    b2 = q.b();
                    b3 = z.b(b2, q.f14655f);
                    b<T> bVar2 = q.f14657h;
                    Result.a aVar2 = Result.f15776a;
                    Object a3 = e.a(u.a(th, (b<?>) bVar2));
                    Result.a(a3);
                    bVar2.b(a3);
                    h hVar = h.f14579a;
                    z.a(b2, b3);
                }
                do {
                } while (b5.B());
            } catch (Throwable th2) {
                try {
                    q.a(th2, (Throwable) null);
                } catch (Throwable th3) {
                    b5.a(true);
                    throw th3;
                }
            }
            b5.a(true);
            return;
        }
        Result.a aVar3 = Result.f15776a;
        Object a4 = e.a(u.a(th, (b<?>) bVar));
        Result.a(a4);
        bVar.b(a4);
    }

    public static final <T> void a(U<? super T> u, int i2) {
        j.b(u, "$this$dispatch");
        b<? super T> e2 = u.e();
        if (!Ja.b(i2) || !(e2 instanceof Q) || Ja.a(i2) != Ja.a(u.f14660c)) {
            a(u, e2, i2);
            return;
        }
        C c2 = ((Q) e2).f14656g;
        h.c.e b2 = e2.b();
        if (c2.b(b2)) {
            c2.a(b2, u);
        } else {
            a(u);
        }
    }

    public static final <T> void a(U<? super T> u, b<? super T> bVar, int i2) {
        j.b(u, "$this$resume");
        j.b(bVar, "delegate");
        Object f2 = u.f();
        Throwable a2 = u.a(f2);
        if (a2 != null) {
            if (!(bVar instanceof U)) {
                a2 = u.a(a2, (b<?>) bVar);
            }
            Ja.b(bVar, a2, i2);
            return;
        }
        Ja.a(bVar, u.d(f2), i2);
    }
}
