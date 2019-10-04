package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;
import c.e.a.b.g.f.L;

public final class H extends C0852nb<H, a> implements Ub {
    public static volatile C0805bc<H> zztq;
    public static final H zzut = new H();
    public int zztj;
    public int zzup;
    public L zzuq;
    public L zzur;
    public boolean zzus;

    public static final class a extends C0852nb.a<H, a> implements Ub {
        public a() {
            super(H.zzut);
        }

        public final a a(int i2) {
            g();
            ((H) this.f10469b).b(i2);
            return this;
        }

        public final L j() {
            return ((H) this.f10469b).t();
        }

        public final boolean k() {
            return ((H) this.f10469b).u();
        }

        public final L m() {
            return ((H) this.f10469b).v();
        }

        public /* synthetic */ a(O o) {
            this();
        }

        public final a a(L.a aVar) {
            g();
            ((H) this.f10469b).a(aVar);
            return this;
        }

        public final a a(L l2) {
            g();
            ((H) this.f10469b).a(l2);
            return this;
        }

        public final a a(boolean z) {
            g();
            ((H) this.f10469b).a(z);
            return this;
        }
    }

    static {
        C0852nb.a(H.class, zzut);
    }

    public static C0805bc<H> q() {
        return (C0805bc) zzut.a(C0852nb.e.f10478g, null, null);
    }

    public static a y() {
        return (a) zzut.j();
    }

    public final void a(L.a aVar) {
        this.zzuq = (L) aVar.o();
        this.zztj |= 2;
    }

    public final void b(int i2) {
        this.zztj |= 1;
        this.zzup = i2;
    }

    public final boolean r() {
        return (this.zztj & 1) != 0;
    }

    public final int s() {
        return this.zzup;
    }

    public final L t() {
        L l2 = this.zzuq;
        return l2 == null ? L.z() : l2;
    }

    public final boolean u() {
        return (this.zztj & 4) != 0;
    }

    public final L v() {
        L l2 = this.zzur;
        return l2 == null ? L.z() : l2;
    }

    public final boolean w() {
        return (this.zztj & 8) != 0;
    }

    public final boolean x() {
        return this.zzus;
    }

    public final void a(L l2) {
        if (l2 != null) {
            this.zzur = l2;
            this.zztj |= 4;
            return;
        }
        throw new NullPointerException();
    }

    public final void a(boolean z) {
        this.zztj |= 8;
        this.zzus = z;
    }

    public final Object a(int i2, Object obj, Object obj2) {
        switch (O.f10192a[i2 - 1]) {
            case 1:
                return new H();
            case 2:
                return new a(null);
            case 3:
                return C0852nb.a((Sb) zzut, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u0007\u0003", new Object[]{"zztj", "zzup", "zzuq", "zzur", "zzus"});
            case 4:
                return zzut;
            case 5:
                C0805bc<H> bcVar = zztq;
                if (bcVar == null) {
                    synchronized (H.class) {
                        bcVar = zztq;
                        if (bcVar == null) {
                            bcVar = new C0852nb.b<>(zzut);
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
