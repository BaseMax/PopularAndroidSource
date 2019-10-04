package j;

import j.a.b.c;
import j.a.b.d;
import j.a.b.f;
import j.a.e;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: j.p  reason: case insensitive filesystem */
/* compiled from: ConnectionPool */
public final class C1149p {

    /* renamed from: a  reason: collision with root package name */
    public static final Executor f15676a;

    /* renamed from: b  reason: collision with root package name */
    public final int f15677b;

    /* renamed from: c  reason: collision with root package name */
    public final long f15678c;

    /* renamed from: d  reason: collision with root package name */
    public final Runnable f15679d;

    /* renamed from: e  reason: collision with root package name */
    public final Deque<c> f15680e;

    /* renamed from: f  reason: collision with root package name */
    public final d f15681f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f15682g;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), e.a("OkHttp ConnectionPool", true));
        f15676a = threadPoolExecutor;
    }

    public C1149p() {
        this(5, 5, TimeUnit.MINUTES);
    }

    public c a(C1134a aVar, f fVar, T t) {
        for (c next : this.f15680e) {
            if (next.a(aVar, t)) {
                fVar.a(next, true);
                return next;
            }
        }
        return null;
    }

    public void b(c cVar) {
        if (!this.f15682g) {
            this.f15682g = true;
            f15676a.execute(this.f15679d);
        }
        this.f15680e.add(cVar);
    }

    public C1149p(int i2, long j2, TimeUnit timeUnit) {
        this.f15679d = new C1148o(this);
        this.f15680e = new ArrayDeque();
        this.f15681f = new d();
        this.f15677b = i2;
        this.f15678c = timeUnit.toNanos(j2);
        if (j2 <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: " + j2);
        }
    }

    public Socket a(C1134a aVar, f fVar) {
        for (c next : this.f15680e) {
            if (next.a(aVar, null) && next.e() && next != fVar.c()) {
                return fVar.b(next);
            }
        }
        return null;
    }

    public boolean a(c cVar) {
        if (cVar.f15325k || this.f15677b == 0) {
            this.f15680e.remove(cVar);
            return true;
        }
        notifyAll();
        return false;
    }

    public long a(long j2) {
        synchronized (this) {
            long j3 = Long.MIN_VALUE;
            c cVar = null;
            int i2 = 0;
            int i3 = 0;
            for (c next : this.f15680e) {
                if (a(next, j2) > 0) {
                    i3++;
                } else {
                    i2++;
                    long j4 = j2 - next.o;
                    if (j4 > j3) {
                        cVar = next;
                        j3 = j4;
                    }
                }
            }
            if (j3 < this.f15678c) {
                if (i2 <= this.f15677b) {
                    if (i2 > 0) {
                        long j5 = this.f15678c - j3;
                        return j5;
                    } else if (i3 > 0) {
                        long j6 = this.f15678c;
                        return j6;
                    } else {
                        this.f15682g = false;
                        return -1;
                    }
                }
            }
            this.f15680e.remove(cVar);
            e.a(cVar.g());
            return 0;
        }
    }

    public final int a(c cVar, long j2) {
        List<Reference<f>> list = cVar.n;
        int i2 = 0;
        while (i2 < list.size()) {
            Reference reference = list.get(i2);
            if (reference.get() != null) {
                i2++;
            } else {
                j.a.g.f.b().a("A connection to " + cVar.f().a().k() + " was leaked. Did you forget to close a response body?", ((f.a) reference).f15350a);
                list.remove(i2);
                cVar.f15325k = true;
                if (list.isEmpty()) {
                    cVar.o = j2 - this.f15678c;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
