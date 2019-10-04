package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;

public final class F extends C0852nb<F, a> implements Ub {
    public static volatile C0805bc<F> zztq;
    public static final F zzuo = new F();
    public int zztj;
    public String zzum = "";
    public String zzun = "";

    public static final class a extends C0852nb.a<F, a> implements Ub {
        public a() {
            super(F.zzuo);
        }

        public /* synthetic */ a(G g2) {
            this();
        }
    }

    static {
        C0852nb.a(F.class, zzuo);
    }

    public static C0805bc<F> s() {
        return (C0805bc) zzuo.a(C0852nb.e.f10478g, null, null);
    }

    public final Object a(int i2, Object obj, Object obj2) {
        switch (G.f10170a[i2 - 1]) {
            case 1:
                return new F();
            case 2:
                return new a(null);
            case 3:
                return C0852nb.a((Sb) zzuo, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001", new Object[]{"zztj", "zzum", "zzun"});
            case 4:
                return zzuo;
            case 5:
                C0805bc<F> bcVar = zztq;
                if (bcVar == null) {
                    synchronized (F.class) {
                        bcVar = zztq;
                        if (bcVar == null) {
                            bcVar = new C0852nb.b<>(zzuo);
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

    public final String q() {
        return this.zzum;
    }

    public final String r() {
        return this.zzun;
    }
}
