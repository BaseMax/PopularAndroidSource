package i.a;

import h.c.a.a;
import h.c.b;
import h.c.e;
import h.f.b.j;
import h.h;
import i.a.c.u;
import i.a.c.z;
import kotlin.Result;

/* compiled from: ResumeMode.kt */
public final class Ja {
    public static final <T> void a(b<? super T> bVar, T t, int i2) {
        j.b(bVar, "$this$resumeMode");
        if (i2 == 0) {
            Result.a aVar = Result.f15776a;
            Result.a(t);
            bVar.b(t);
        } else if (i2 == 1) {
            T.a(bVar, t);
        } else if (i2 == 2) {
            T.b(bVar, t);
        } else if (i2 == 3) {
            Q q = (Q) bVar;
            e b2 = q.b();
            Object b3 = z.b(b2, q.f14655f);
            try {
                b<T> bVar2 = q.f14657h;
                Result.a aVar2 = Result.f15776a;
                Result.a(t);
                bVar2.b(t);
                h hVar = h.f14579a;
            } finally {
                z.a(b2, b3);
            }
        } else if (i2 != 4) {
            throw new IllegalStateException(("Invalid mode " + i2).toString());
        }
    }

    public static final boolean a(int i2) {
        return i2 == 1;
    }

    public static final <T> void b(b<? super T> bVar, Throwable th, int i2) {
        j.b(bVar, "$this$resumeWithExceptionMode");
        j.b(th, "exception");
        if (i2 == 0) {
            Result.a aVar = Result.f15776a;
            Object a2 = h.e.a(th);
            Result.a(a2);
            bVar.b(a2);
        } else if (i2 == 1) {
            T.a(bVar, th);
        } else if (i2 == 2) {
            T.b(bVar, th);
        } else if (i2 == 3) {
            Q q = (Q) bVar;
            e b2 = q.b();
            Object b3 = z.b(b2, q.f14655f);
            try {
                b<T> bVar2 = q.f14657h;
                Result.a aVar2 = Result.f15776a;
                Object a3 = h.e.a(u.a(th, (b<?>) bVar2));
                Result.a(a3);
                bVar2.b(a3);
                h hVar = h.f14579a;
            } finally {
                z.a(b2, b3);
            }
        } else if (i2 != 4) {
            throw new IllegalStateException(("Invalid mode " + i2).toString());
        }
    }

    public static final boolean b(int i2) {
        return i2 == 0 || i2 == 1;
    }

    public static final <T> void a(b<? super T> bVar, Throwable th, int i2) {
        j.b(bVar, "$this$resumeUninterceptedWithExceptionMode");
        j.b(th, "exception");
        if (i2 == 0) {
            b<? super T> a2 = a.a(bVar);
            Result.a aVar = Result.f15776a;
            Object a3 = h.e.a(th);
            Result.a(a3);
            a2.b(a3);
        } else if (i2 == 1) {
            T.a(a.a(bVar), th);
        } else if (i2 == 2) {
            Result.a aVar2 = Result.f15776a;
            Object a4 = h.e.a(th);
            Result.a(a4);
            bVar.b(a4);
        } else if (i2 == 3) {
            e b2 = bVar.b();
            Object b3 = z.b(b2, null);
            try {
                Result.a aVar3 = Result.f15776a;
                Object a5 = h.e.a(th);
                Result.a(a5);
                bVar.b(a5);
                h hVar = h.f14579a;
            } finally {
                z.a(b2, b3);
            }
        } else if (i2 != 4) {
            throw new IllegalStateException(("Invalid mode " + i2).toString());
        }
    }

    public static final <T> void b(b<? super T> bVar, T t, int i2) {
        j.b(bVar, "$this$resumeUninterceptedMode");
        if (i2 == 0) {
            b<? super T> a2 = a.a(bVar);
            Result.a aVar = Result.f15776a;
            Result.a(t);
            a2.b(t);
        } else if (i2 == 1) {
            T.a(a.a(bVar), t);
        } else if (i2 == 2) {
            Result.a aVar2 = Result.f15776a;
            Result.a(t);
            bVar.b(t);
        } else if (i2 == 3) {
            e b2 = bVar.b();
            Object b3 = z.b(b2, null);
            try {
                Result.a aVar3 = Result.f15776a;
                Result.a(t);
                bVar.b(t);
                h hVar = h.f14579a;
            } finally {
                z.a(b2, b3);
            }
        } else if (i2 != 4) {
            throw new IllegalStateException(("Invalid mode " + i2).toString());
        }
    }
}
