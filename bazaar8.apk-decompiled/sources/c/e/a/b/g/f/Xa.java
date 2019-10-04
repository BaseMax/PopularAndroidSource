package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzfh;
import java.util.List;

public final class Xa implements C0825gc {

    /* renamed from: a  reason: collision with root package name */
    public final Ua f10282a;

    /* renamed from: b  reason: collision with root package name */
    public int f10283b;

    /* renamed from: c  reason: collision with root package name */
    public int f10284c;

    /* renamed from: d  reason: collision with root package name */
    public int f10285d = 0;

    public Xa(Ua ua) {
        C0864qb.a(ua, "input");
        this.f10282a = ua;
        this.f10282a.f10242d = this;
    }

    public static Xa a(Ua ua) {
        Xa xa = ua.f10242d;
        if (xa != null) {
            return xa;
        }
        return new Xa(ua);
    }

    public final <T> T b(C0829hc<T> hcVar, C0808cb cbVar) {
        a(3);
        return d(hcVar, cbVar);
    }

    public final long c() {
        a(1);
        return this.f10282a.h();
    }

    public final <T> T d(C0829hc<T> hcVar, C0808cb cbVar) {
        int i2 = this.f10284c;
        this.f10284c = ((this.f10283b >>> 3) << 3) | 4;
        try {
            T a2 = hcVar.a();
            hcVar.a(a2, this, cbVar);
            hcVar.c(a2);
            if (this.f10283b == this.f10284c) {
                return a2;
            }
            throw zzfh.h();
        } finally {
            this.f10284c = i2;
        }
    }

    public final int e() {
        int i2 = this.f10285d;
        if (i2 != 0) {
            this.f10283b = i2;
            this.f10285d = 0;
        } else {
            this.f10283b = this.f10282a.d();
        }
        int i3 = this.f10283b;
        if (i3 == 0 || i3 == this.f10284c) {
            return Integer.MAX_VALUE;
        }
        return i3 >>> 3;
    }

    public final long f() {
        a(0);
        return this.f10282a.e();
    }

    public final int g() {
        a(0);
        return this.f10282a.m();
    }

    public final int getTag() {
        return this.f10283b;
    }

    public final long h() {
        a(0);
        return this.f10282a.f();
    }

    public final int i() {
        a(0);
        return this.f10282a.n();
    }

    public final String j() {
        a(2);
        return this.f10282a.k();
    }

    public final zzdp k() {
        a(2);
        return this.f10282a.l();
    }

    public final int l() {
        a(5);
        return this.f10282a.i();
    }

    public final int m() {
        a(0);
        return this.f10282a.q();
    }

    public final boolean n() {
        if (!this.f10282a.s()) {
            int i2 = this.f10283b;
            if (i2 != this.f10284c) {
                return this.f10282a.c(i2);
            }
        }
        return false;
    }

    public final boolean o() {
        a(0);
        return this.f10282a.j();
    }

    public final long p() {
        a(0);
        return this.f10282a.r();
    }

    public final void q(List<Double> list) {
        int d2;
        int d3;
        if (list instanceof _a) {
            _a _aVar = (_a) list;
            int i2 = this.f10283b & 7;
            if (i2 == 1) {
                do {
                    _aVar.a(this.f10282a.a());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int m = this.f10282a.m();
                b(m);
                int t = this.f10282a.t() + m;
                do {
                    _aVar.a(this.f10282a.a());
                } while (this.f10282a.t() < t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 1) {
                do {
                    list.add(Double.valueOf(this.f10282a.a()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int m2 = this.f10282a.m();
                b(m2);
                int t2 = this.f10282a.t() + m2;
                do {
                    list.add(Double.valueOf(this.f10282a.a()));
                } while (this.f10282a.t() < t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final double readDouble() {
        a(1);
        return this.f10282a.a();
    }

    public final float readFloat() {
        a(5);
        return this.f10282a.b();
    }

    public final String readString() {
        a(2);
        return this.f10282a.c();
    }

    public final void a(int i2) {
        if ((this.f10283b & 7) != i2) {
            throw zzfh.f();
        }
    }

    public final int b() {
        a(5);
        return this.f10282a.o();
    }

    public final <T> T c(C0829hc<T> hcVar, C0808cb cbVar) {
        int m = this.f10282a.m();
        Ua ua = this.f10282a;
        if (ua.f10239a < ua.f10240b) {
            int e2 = ua.e(m);
            T a2 = hcVar.a();
            this.f10282a.f10239a++;
            hcVar.a(a2, this, cbVar);
            hcVar.c(a2);
            this.f10282a.b(0);
            this.f10282a.f10239a--;
            this.f10282a.f(e2);
            return a2;
        }
        throw zzfh.g();
    }

    public final void f(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof C0860pb) {
            C0860pb pbVar = (C0860pb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 2) {
                int m = this.f10282a.m();
                c(m);
                int t = this.f10282a.t() + m;
                do {
                    pbVar.e(this.f10282a.i());
                } while (this.f10282a.t() < t);
            } else if (i2 == 5) {
                do {
                    pbVar.e(this.f10282a.i());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 2) {
                int m2 = this.f10282a.m();
                c(m2);
                int t2 = this.f10282a.t() + m2;
                do {
                    list.add(Integer.valueOf(this.f10282a.i()));
                } while (this.f10282a.t() < t2);
            } else if (i3 == 5) {
                do {
                    list.add(Integer.valueOf(this.f10282a.i()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else {
                throw zzfh.f();
            }
        }
    }

    public final void g(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof C0860pb) {
            C0860pb pbVar = (C0860pb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 0) {
                do {
                    pbVar.e(this.f10282a.q());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int t = this.f10282a.t() + this.f10282a.m();
                do {
                    pbVar.e(this.f10282a.q());
                } while (this.f10282a.t() < t);
                d(t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 0) {
                do {
                    list.add(Integer.valueOf(this.f10282a.q()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int t2 = this.f10282a.t() + this.f10282a.m();
                do {
                    list.add(Integer.valueOf(this.f10282a.q()));
                } while (this.f10282a.t() < t2);
                d(t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final void h(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof Hb) {
            Hb hb = (Hb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 1) {
                do {
                    hb.h(this.f10282a.h());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int m = this.f10282a.m();
                b(m);
                int t = this.f10282a.t() + m;
                do {
                    hb.h(this.f10282a.h());
                } while (this.f10282a.t() < t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 1) {
                do {
                    list.add(Long.valueOf(this.f10282a.h()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int m2 = this.f10282a.m();
                b(m2);
                int t2 = this.f10282a.t() + m2;
                do {
                    list.add(Long.valueOf(this.f10282a.h()));
                } while (this.f10282a.t() < t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final void i(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof Hb) {
            Hb hb = (Hb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 1) {
                do {
                    hb.h(this.f10282a.p());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int m = this.f10282a.m();
                b(m);
                int t = this.f10282a.t() + m;
                do {
                    hb.h(this.f10282a.p());
                } while (this.f10282a.t() < t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 1) {
                do {
                    list.add(Long.valueOf(this.f10282a.p()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int m2 = this.f10282a.m();
                b(m2);
                int t2 = this.f10282a.t() + m2;
                do {
                    list.add(Long.valueOf(this.f10282a.p()));
                } while (this.f10282a.t() < t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final void j(List<String> list) {
        a(list, true);
    }

    public final void k(List<Boolean> list) {
        int d2;
        int d3;
        if (list instanceof Ja) {
            Ja ja = (Ja) list;
            int i2 = this.f10283b & 7;
            if (i2 == 0) {
                do {
                    ja.a(this.f10282a.j());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int t = this.f10282a.t() + this.f10282a.m();
                do {
                    ja.a(this.f10282a.j());
                } while (this.f10282a.t() < t);
                d(t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f10282a.j()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int t2 = this.f10282a.t() + this.f10282a.m();
                do {
                    list.add(Boolean.valueOf(this.f10282a.j()));
                } while (this.f10282a.t() < t2);
                d(t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final void l(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof Hb) {
            Hb hb = (Hb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 0) {
                do {
                    hb.h(this.f10282a.r());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int t = this.f10282a.t() + this.f10282a.m();
                do {
                    hb.h(this.f10282a.r());
                } while (this.f10282a.t() < t);
                d(t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 0) {
                do {
                    list.add(Long.valueOf(this.f10282a.r()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int t2 = this.f10282a.t() + this.f10282a.m();
                do {
                    list.add(Long.valueOf(this.f10282a.r()));
                } while (this.f10282a.t() < t2);
                d(t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final void m(List<String> list) {
        a(list, false);
    }

    public final void n(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof C0860pb) {
            C0860pb pbVar = (C0860pb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 0) {
                do {
                    pbVar.e(this.f10282a.m());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int t = this.f10282a.t() + this.f10282a.m();
                do {
                    pbVar.e(this.f10282a.m());
                } while (this.f10282a.t() < t);
                d(t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 0) {
                do {
                    list.add(Integer.valueOf(this.f10282a.m()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int t2 = this.f10282a.t() + this.f10282a.m();
                do {
                    list.add(Integer.valueOf(this.f10282a.m()));
                } while (this.f10282a.t() < t2);
                d(t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final void o(List<Float> list) {
        int d2;
        int d3;
        if (list instanceof C0840kb) {
            C0840kb kbVar = (C0840kb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 2) {
                int m = this.f10282a.m();
                c(m);
                int t = this.f10282a.t() + m;
                do {
                    kbVar.a(this.f10282a.b());
                } while (this.f10282a.t() < t);
            } else if (i2 == 5) {
                do {
                    kbVar.a(this.f10282a.b());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 2) {
                int m2 = this.f10282a.m();
                c(m2);
                int t2 = this.f10282a.t() + m2;
                do {
                    list.add(Float.valueOf(this.f10282a.b()));
                } while (this.f10282a.t() < t2);
            } else if (i3 == 5) {
                do {
                    list.add(Float.valueOf(this.f10282a.b()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else {
                throw zzfh.f();
            }
        }
    }

    public final void p(List<zzdp> list) {
        int d2;
        if ((this.f10283b & 7) == 2) {
            do {
                list.add(k());
                if (!this.f10282a.s()) {
                    d2 = this.f10282a.d();
                } else {
                    return;
                }
            } while (d2 == this.f10283b);
            this.f10285d = d2;
            return;
        }
        throw zzfh.f();
    }

    public final int a() {
        a(0);
        return this.f10282a.g();
    }

    public final void b(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof Hb) {
            Hb hb = (Hb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 0) {
                do {
                    hb.h(this.f10282a.f());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int t = this.f10282a.t() + this.f10282a.m();
                do {
                    hb.h(this.f10282a.f());
                } while (this.f10282a.t() < t);
                d(t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 0) {
                do {
                    list.add(Long.valueOf(this.f10282a.f()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int t2 = this.f10282a.t() + this.f10282a.m();
                do {
                    list.add(Long.valueOf(this.f10282a.f()));
                } while (this.f10282a.t() < t2);
                d(t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final void e(List<Long> list) {
        int d2;
        int d3;
        if (list instanceof Hb) {
            Hb hb = (Hb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 0) {
                do {
                    hb.h(this.f10282a.e());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int t = this.f10282a.t() + this.f10282a.m();
                do {
                    hb.h(this.f10282a.e());
                } while (this.f10282a.t() < t);
                d(t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 0) {
                do {
                    list.add(Long.valueOf(this.f10282a.e()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int t2 = this.f10282a.t() + this.f10282a.m();
                do {
                    list.add(Long.valueOf(this.f10282a.e()));
                } while (this.f10282a.t() < t2);
                d(t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final <T> T a(C0829hc<T> hcVar, C0808cb cbVar) {
        a(2);
        return c(hcVar, cbVar);
    }

    public final void a(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof C0860pb) {
            C0860pb pbVar = (C0860pb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 0) {
                do {
                    pbVar.e(this.f10282a.g());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int t = this.f10282a.t() + this.f10282a.m();
                do {
                    pbVar.e(this.f10282a.g());
                } while (this.f10282a.t() < t);
                d(t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 0) {
                do {
                    list.add(Integer.valueOf(this.f10282a.g()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int t2 = this.f10282a.t() + this.f10282a.m();
                do {
                    list.add(Integer.valueOf(this.f10282a.g()));
                } while (this.f10282a.t() < t2);
                d(t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final long d() {
        a(1);
        return this.f10282a.p();
    }

    public final void d(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof C0860pb) {
            C0860pb pbVar = (C0860pb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 0) {
                do {
                    pbVar.e(this.f10282a.n());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else if (i2 == 2) {
                int t = this.f10282a.t() + this.f10282a.m();
                do {
                    pbVar.e(this.f10282a.n());
                } while (this.f10282a.t() < t);
                d(t);
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 0) {
                do {
                    list.add(Integer.valueOf(this.f10282a.n()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else if (i3 == 2) {
                int t2 = this.f10282a.t() + this.f10282a.m();
                do {
                    list.add(Integer.valueOf(this.f10282a.n()));
                } while (this.f10282a.t() < t2);
                d(t2);
            } else {
                throw zzfh.f();
            }
        }
    }

    public final void c(List<Integer> list) {
        int d2;
        int d3;
        if (list instanceof C0860pb) {
            C0860pb pbVar = (C0860pb) list;
            int i2 = this.f10283b & 7;
            if (i2 == 2) {
                int m = this.f10282a.m();
                c(m);
                int t = this.f10282a.t() + m;
                do {
                    pbVar.e(this.f10282a.o());
                } while (this.f10282a.t() < t);
            } else if (i2 == 5) {
                do {
                    pbVar.e(this.f10282a.o());
                    if (!this.f10282a.s()) {
                        d3 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d3 == this.f10283b);
                this.f10285d = d3;
            } else {
                throw zzfh.f();
            }
        } else {
            int i3 = this.f10283b & 7;
            if (i3 == 2) {
                int m2 = this.f10282a.m();
                c(m2);
                int t2 = this.f10282a.t() + m2;
                do {
                    list.add(Integer.valueOf(this.f10282a.o()));
                } while (this.f10282a.t() < t2);
            } else if (i3 == 5) {
                do {
                    list.add(Integer.valueOf(this.f10282a.o()));
                    if (!this.f10282a.s()) {
                        d2 = this.f10282a.d();
                    } else {
                        return;
                    }
                } while (d2 == this.f10283b);
                this.f10285d = d2;
            } else {
                throw zzfh.f();
            }
        }
    }

    public final <T> void b(List<T> list, C0829hc<T> hcVar, C0808cb cbVar) {
        int d2;
        int i2 = this.f10283b;
        if ((i2 & 7) == 3) {
            do {
                list.add(d(hcVar, cbVar));
                if (!this.f10282a.s() && this.f10285d == 0) {
                    d2 = this.f10282a.d();
                } else {
                    return;
                }
            } while (d2 == i2);
            this.f10285d = d2;
            return;
        }
        throw zzfh.f();
    }

    public final void a(List<String> list, boolean z) {
        int d2;
        int d3;
        if ((this.f10283b & 7) != 2) {
            throw zzfh.f();
        } else if (!(list instanceof Cb) || z) {
            do {
                list.add(z ? j() : readString());
                if (!this.f10282a.s()) {
                    d2 = this.f10282a.d();
                } else {
                    return;
                }
            } while (d2 == this.f10283b);
            this.f10285d = d2;
        } else {
            Cb cb = (Cb) list;
            do {
                cb.a(k());
                if (!this.f10282a.s()) {
                    d3 = this.f10282a.d();
                } else {
                    return;
                }
            } while (d3 == this.f10283b);
            this.f10285d = d3;
        }
    }

    public static void b(int i2) {
        if ((i2 & 7) != 0) {
            throw zzfh.h();
        }
    }

    public final void d(int i2) {
        if (this.f10282a.t() != i2) {
            throw zzfh.a();
        }
    }

    public static void c(int i2) {
        if ((i2 & 3) != 0) {
            throw zzfh.h();
        }
    }

    public final <T> void a(List<T> list, C0829hc<T> hcVar, C0808cb cbVar) {
        int d2;
        int i2 = this.f10283b;
        if ((i2 & 7) == 2) {
            do {
                list.add(c(hcVar, cbVar));
                if (!this.f10282a.s() && this.f10285d == 0) {
                    d2 = this.f10282a.d();
                } else {
                    return;
                }
            } while (d2 == i2);
            this.f10285d = d2;
            return;
        }
        throw zzfh.f();
    }
}
