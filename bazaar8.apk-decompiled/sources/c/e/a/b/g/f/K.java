package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;

public final class K extends C0852nb<K, a> implements Ub {
    public static volatile C0805bc<K> zztq;
    public static final K zzvd = new K();
    public int zztj;
    public String zzux = "";
    public long zzuy;
    public String zzva = "";
    public float zzvb;
    public double zzvc;

    public static final class a extends C0852nb.a<K, a> implements Ub {
        public a() {
            super(K.zzvd);
        }

        public final a a(String str) {
            g();
            ((K) this.f10469b).a(str);
            return this;
        }

        public final a b(String str) {
            g();
            ((K) this.f10469b).b(str);
            return this;
        }

        public final String j() {
            return ((K) this.f10469b).q();
        }

        public final a k() {
            g();
            ((K) this.f10469b).u();
            return this;
        }

        public final a m() {
            g();
            ((K) this.f10469b).x();
            return this;
        }

        public final a p() {
            g();
            ((K) this.f10469b).A();
            return this;
        }

        public /* synthetic */ a(O o) {
            this();
        }

        public final a a(long j2) {
            g();
            ((K) this.f10469b).a(j2);
            return this;
        }

        public final a a(double d2) {
            g();
            ((K) this.f10469b).a(d2);
            return this;
        }
    }

    static {
        C0852nb.a(K.class, zzvd);
    }

    public static a B() {
        return (a) zzvd.j();
    }

    public static C0805bc<K> r() {
        return (C0805bc) zzvd.a(C0852nb.e.f10478g, null, null);
    }

    public final void A() {
        this.zztj &= -17;
        this.zzvc = 0.0d;
    }

    public final void a(String str) {
        if (str != null) {
            this.zztj |= 1;
            this.zzux = str;
            return;
        }
        throw new NullPointerException();
    }

    public final void b(String str) {
        if (str != null) {
            this.zztj |= 2;
            this.zzva = str;
            return;
        }
        throw new NullPointerException();
    }

    public final String q() {
        return this.zzux;
    }

    public final boolean s() {
        return (this.zztj & 2) != 0;
    }

    public final String t() {
        return this.zzva;
    }

    public final void u() {
        this.zztj &= -3;
        this.zzva = zzvd.zzva;
    }

    public final boolean v() {
        return (this.zztj & 4) != 0;
    }

    public final long w() {
        return this.zzuy;
    }

    public final void x() {
        this.zztj &= -5;
        this.zzuy = 0;
    }

    public final boolean y() {
        return (this.zztj & 16) != 0;
    }

    public final double z() {
        return this.zzvc;
    }

    public final void a(long j2) {
        this.zztj |= 4;
        this.zzuy = j2;
    }

    public final void a(double d2) {
        this.zztj |= 16;
        this.zzvc = d2;
    }

    public final Object a(int i2, Object obj, Object obj2) {
        switch (O.f10192a[i2 - 1]) {
            case 1:
                return new K();
            case 2:
                return new a(null);
            case 3:
                return C0852nb.a((Sb) zzvd, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0001\u0003\u0005\u0000\u0004", new Object[]{"zztj", "zzux", "zzva", "zzuy", "zzvb", "zzvc"});
            case 4:
                return zzvd;
            case 5:
                C0805bc<K> bcVar = zztq;
                if (bcVar == null) {
                    synchronized (K.class) {
                        bcVar = zztq;
                        if (bcVar == null) {
                            bcVar = new C0852nb.b<>(zzvd);
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
