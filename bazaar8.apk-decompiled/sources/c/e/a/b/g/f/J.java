package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;

public final class J extends C0852nb<J, a> implements Ub {
    public static volatile C0805bc<J> zztq;
    public static final J zzuz = new J();
    public int zztj;
    public String zzux = "";
    public long zzuy;

    public static final class a extends C0852nb.a<J, a> implements Ub {
        public a() {
            super(J.zzuz);
        }

        public /* synthetic */ a(O o) {
            this();
        }
    }

    static {
        C0852nb.a(J.class, zzuz);
    }

    public final Object a(int i2, Object obj, Object obj2) {
        switch (O.f10192a[i2 - 1]) {
            case 1:
                return new J();
            case 2:
                return new a(null);
            case 3:
                return C0852nb.a((Sb) zzuz, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001", new Object[]{"zztj", "zzux", "zzuy"});
            case 4:
                return zzuz;
            case 5:
                C0805bc<J> bcVar = zztq;
                if (bcVar == null) {
                    synchronized (J.class) {
                        bcVar = zztq;
                        if (bcVar == null) {
                            bcVar = new C0852nb.b<>(zzuz);
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
