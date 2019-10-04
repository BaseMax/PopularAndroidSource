package c.e.a.a.e.f;

import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.e.q;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.Format;

/* compiled from: StreamReader */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    public final f f7940a = new f();

    /* renamed from: b  reason: collision with root package name */
    public q f7941b;

    /* renamed from: c  reason: collision with root package name */
    public i f7942c;

    /* renamed from: d  reason: collision with root package name */
    public h f7943d;

    /* renamed from: e  reason: collision with root package name */
    public long f7944e;

    /* renamed from: f  reason: collision with root package name */
    public long f7945f;

    /* renamed from: g  reason: collision with root package name */
    public long f7946g;

    /* renamed from: h  reason: collision with root package name */
    public int f7947h;

    /* renamed from: i  reason: collision with root package name */
    public int f7948i;

    /* renamed from: j  reason: collision with root package name */
    public a f7949j;

    /* renamed from: k  reason: collision with root package name */
    public long f7950k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f7951l;
    public boolean m;

    /* compiled from: StreamReader */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public Format f7952a;

        /* renamed from: b  reason: collision with root package name */
        public h f7953b;
    }

    /* compiled from: StreamReader */
    private static final class b implements h {
        public b() {
        }

        public long a(h hVar) {
            return -1;
        }

        public o a() {
            return new o.b(-9223372036854775807L);
        }

        public long c(long j2) {
            return 0;
        }
    }

    public abstract long a(v vVar);

    public void a(i iVar, q qVar) {
        this.f7942c = iVar;
        this.f7941b = qVar;
        a(true);
    }

    public abstract boolean a(v vVar, long j2, a aVar);

    public final int b(h hVar, n nVar) {
        h hVar2 = hVar;
        long a2 = this.f7943d.a(hVar2);
        if (a2 >= 0) {
            nVar.f8320a = a2;
            return 1;
        }
        if (a2 < -1) {
            c(-(a2 + 2));
        }
        if (!this.f7951l) {
            this.f7942c.a(this.f7943d.a());
            this.f7951l = true;
        }
        if (this.f7950k > 0 || this.f7940a.a(hVar2)) {
            this.f7950k = 0;
            v b2 = this.f7940a.b();
            long a3 = a(b2);
            if (a3 >= 0) {
                long j2 = this.f7946g;
                if (j2 + a3 >= this.f7944e) {
                    long a4 = a(j2);
                    this.f7941b.a(b2, b2.d());
                    this.f7941b.a(a4, 1, b2.d(), 0, null);
                    this.f7944e = -1;
                }
            }
            this.f7946g += a3;
            return 0;
        }
        this.f7947h = 3;
        return -1;
    }

    public void c(long j2) {
        this.f7946g = j2;
    }

    public void a(boolean z) {
        if (z) {
            this.f7949j = new a();
            this.f7945f = 0;
            this.f7947h = 0;
        } else {
            this.f7947h = 1;
        }
        this.f7944e = -1;
        this.f7946g = 0;
    }

    public final void a(long j2, long j3) {
        this.f7940a.c();
        if (j2 == 0) {
            a(!this.f7951l);
        } else if (this.f7947h != 0) {
            this.f7944e = this.f7943d.c(j3);
            this.f7947h = 2;
        }
    }

    public final int a(h hVar, n nVar) {
        int i2 = this.f7947h;
        if (i2 == 0) {
            return a(hVar);
        }
        if (i2 == 1) {
            hVar.c((int) this.f7945f);
            this.f7947h = 2;
            return 0;
        } else if (i2 == 2) {
            return b(hVar, nVar);
        } else {
            throw new IllegalStateException();
        }
    }

    public long b(long j2) {
        return (((long) this.f7948i) * j2) / RetryManager.NANOSECONDS_IN_MS;
    }

    public final int a(h hVar) {
        boolean z = true;
        while (z) {
            if (!this.f7940a.a(hVar)) {
                this.f7947h = 3;
                return -1;
            }
            this.f7950k = hVar.getPosition() - this.f7945f;
            z = a(this.f7940a.b(), this.f7945f, this.f7949j);
            if (z) {
                this.f7945f = hVar.getPosition();
            }
        }
        h hVar2 = hVar;
        Format format = this.f7949j.f7952a;
        this.f7948i = format.w;
        if (!this.m) {
            this.f7941b.a(format);
            this.m = true;
        }
        h hVar3 = this.f7949j.f7953b;
        if (hVar3 != null) {
            this.f7943d = hVar3;
        } else if (hVar.getLength() == -1) {
            this.f7943d = new b();
        } else {
            g a2 = this.f7940a.a();
            c cVar = new c(this.f7945f, hVar.getLength(), this, (long) (a2.f7936i + a2.f7937j), a2.f7931d, (a2.f7930c & 4) != 0);
            this.f7943d = cVar;
        }
        this.f7949j = null;
        this.f7947h = 2;
        this.f7940a.d();
        return 0;
    }

    public long a(long j2) {
        return (j2 * RetryManager.NANOSECONDS_IN_MS) / ((long) this.f7948i);
    }
}
