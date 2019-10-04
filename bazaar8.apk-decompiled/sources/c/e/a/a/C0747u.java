package c.e.a.a;

import c.e.a.a.o.B;
import c.e.a.a.o.C0738f;
import c.e.a.a.o.r;
import com.google.android.exoplayer2.ExoPlaybackException;

/* renamed from: c.e.a.a.u  reason: case insensitive filesystem */
/* compiled from: DefaultMediaClock */
public final class C0747u implements r {

    /* renamed from: a  reason: collision with root package name */
    public final B f9745a;

    /* renamed from: b  reason: collision with root package name */
    public final a f9746b;

    /* renamed from: c  reason: collision with root package name */
    public Q f9747c;

    /* renamed from: d  reason: collision with root package name */
    public r f9748d;

    /* renamed from: c.e.a.a.u$a */
    /* compiled from: DefaultMediaClock */
    public interface a {
        void a(K k2);
    }

    public C0747u(a aVar, C0738f fVar) {
        this.f9746b = aVar;
        this.f9745a = new B(fVar);
    }

    public void a(long j2) {
        this.f9745a.a(j2);
    }

    public void b(Q q) {
        r n = q.n();
        if (n != null) {
            r rVar = this.f9748d;
            if (n == rVar) {
                return;
            }
            if (rVar == null) {
                this.f9748d = n;
                this.f9747c = q;
                this.f9748d.a(this.f9745a.a());
                c();
                return;
            }
            throw ExoPlaybackException.a((RuntimeException) new IllegalStateException("Multiple renderer media clocks enabled."));
        }
    }

    public final void c() {
        this.f9745a.a(this.f9748d.b());
        K a2 = this.f9748d.a();
        if (!a2.equals(this.f9745a.a())) {
            this.f9745a.a(a2);
            this.f9746b.a(a2);
        }
    }

    public final boolean d() {
        Q q = this.f9747c;
        return q != null && !q.d() && (this.f9747c.c() || !this.f9747c.g());
    }

    public void e() {
        this.f9745a.c();
    }

    public void f() {
        this.f9745a.d();
    }

    public long g() {
        if (!d()) {
            return this.f9745a.b();
        }
        c();
        return this.f9748d.b();
    }

    public void a(Q q) {
        if (q == this.f9747c) {
            this.f9748d = null;
            this.f9747c = null;
        }
    }

    public K a(K k2) {
        r rVar = this.f9748d;
        if (rVar != null) {
            k2 = rVar.a(k2);
        }
        this.f9745a.a(k2);
        this.f9746b.a(k2);
        return k2;
    }

    public long b() {
        if (d()) {
            return this.f9748d.b();
        }
        return this.f9745a.b();
    }

    public K a() {
        r rVar = this.f9748d;
        if (rVar != null) {
            return rVar.a();
        }
        return this.f9745a.a();
    }
}
