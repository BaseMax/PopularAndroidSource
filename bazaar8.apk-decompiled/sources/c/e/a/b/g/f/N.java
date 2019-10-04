package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;

public final class N extends C0852nb<N, a> implements Ub {
    public static volatile C0805bc<N> zztq;
    public static final N zzvs = new N();
    public int zztj;
    public String zzux = "";
    public long zzuy;
    public String zzva = "";
    public float zzvb;
    public double zzvc;
    public long zzvr;

    public static final class a extends C0852nb.a<N, a> implements Ub {
        public a() {
            super(N.zzvs);
        }

        public final a a(long j2) {
            g();
            ((N) this.f10469b).b(j2);
            return this;
        }

        public final a b(String str) {
            g();
            ((N) this.f10469b).b(str);
            return this;
        }

        public final a j() {
            g();
            ((N) this.f10469b).u();
            return this;
        }

        public final a k() {
            g();
            ((N) this.f10469b).x();
            return this;
        }

        public final a m() {
            g();
            ((N) this.f10469b).A();
            return this;
        }

        public /* synthetic */ a(O o) {
            this();
        }

        public final a a(String str) {
            g();
            ((N) this.f10469b).a(str);
            return this;
        }

        public final a b(long j2) {
            g();
            ((N) this.f10469b).a(j2);
            return this;
        }

        public final a a(double d2) {
            g();
            ((N) this.f10469b).a(d2);
            return this;
        }
    }

    static {
        C0852nb.a(N.class, zzvs);
    }

    public static a D() {
        return (a) zzvs.j();
    }

    public static C0805bc<N> r() {
        return (C0805bc) zzvs.a(C0852nb.e.f10478g, null, null);
    }

    public final void A() {
        this.zztj &= -33;
        this.zzvc = 0.0d;
    }

    public final boolean B() {
        return (this.zztj & 1) != 0;
    }

    public final long C() {
        return this.zzvr;
    }

    public final void a(String str) {
        if (str != null) {
            this.zztj |= 2;
            this.zzux = str;
            return;
        }
        throw new NullPointerException();
    }

    public final void b(long j2) {
        this.zztj |= 1;
        this.zzvr = j2;
    }

    public final String q() {
        return this.zzux;
    }

    public final boolean s() {
        return (this.zztj & 4) != 0;
    }

    public final String t() {
        return this.zzva;
    }

    public final void u() {
        this.zztj &= -5;
        this.zzva = zzvs.zzva;
    }

    public final boolean v() {
        return (this.zztj & 8) != 0;
    }

    public final long w() {
        return this.zzuy;
    }

    public final void x() {
        this.zztj &= -9;
        this.zzuy = 0;
    }

    public final boolean y() {
        return (this.zztj & 32) != 0;
    }

    public final double z() {
        return this.zzvc;
    }

    public final void b(String str) {
        if (str != null) {
            this.zztj |= 4;
            this.zzva = str;
            return;
        }
        throw new NullPointerException();
    }

    public final void a(long j2) {
        this.zztj |= 8;
        this.zzuy = j2;
    }

    public final void a(double d2) {
        this.zztj |= 32;
        this.zzvc = d2;
    }

    public final Object a(int i2, Object obj, Object obj2) {
        switch (O.f10192a[i2 - 1]) {
            case 1:
                return new N();
            case 2:
                return new a(null);
            case 3:
                return C0852nb.a((Sb) zzvs, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0000\u0002\b\u0001\u0003\b\u0002\u0004\u0002\u0003\u0005\u0001\u0004\u0006\u0000\u0005", new Object[]{"zztj", "zzvr", "zzux", "zzva", "zzuy", "zzvb", "zzvc"});
            case 4:
                return zzvs;
            case 5:
                C0805bc<N> bcVar = zztq;
                if (bcVar == null) {
                    synchronized (N.class) {
                        bcVar = zztq;
                        if (bcVar == null) {
                            bcVar = new C0852nb.b<>(zzvs);
                            zztq = bcVar;
                        }
                    }
                }
                return bcVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
