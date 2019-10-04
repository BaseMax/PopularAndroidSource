package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;

public final class I extends C0852nb<I, a> implements Ub {
    public static volatile C0805bc<I> zztq;
    public static final I zzuw = new I();
    public int zztj;
    public int zzuu;
    public long zzuv;

    public static final class a extends C0852nb.a<I, a> implements Ub {
        public a() {
            super(I.zzuw);
        }

        public final a a(int i2) {
            g();
            ((I) this.f10469b).b(i2);
            return this;
        }

        public /* synthetic */ a(O o) {
            this();
        }

        public final a a(long j2) {
            g();
            ((I) this.f10469b).a(j2);
            return this;
        }
    }

    static {
        C0852nb.a(I.class, zzuw);
    }

    public static a u() {
        return (a) zzuw.j();
    }

    public final void a(long j2) {
        this.zztj |= 2;
        this.zzuv = j2;
    }

    public final void b(int i2) {
        this.zztj |= 1;
        this.zzuu = i2;
    }

    public final int q() {
        return this.zzuu;
    }

    public final boolean r() {
        return (this.zztj & 1) != 0;
    }

    public final boolean s() {
        return (this.zztj & 2) != 0;
    }

    public final long t() {
        return this.zzuv;
    }

    public final Object a(int i2, Object obj, Object obj2) {
        switch (O.f10192a[i2 - 1]) {
            case 1:
                return new I();
            case 2:
                return new a(null);
            case 3:
                return C0852nb.a((Sb) zzuw, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0002\u0001", new Object[]{"zztj", "zzuu", "zzuv"});
            case 4:
                return zzuw;
            case 5:
                C0805bc<I> bcVar = zztq;
                if (bcVar == null) {
                    synchronized (I.class) {
                        bcVar = zztq;
                        if (bcVar == null) {
                            bcVar = new C0852nb.b<>(zzuw);
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
