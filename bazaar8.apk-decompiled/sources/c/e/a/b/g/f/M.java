package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;
import java.util.List;

public final class M extends C0852nb<M, a> implements Ub {
    public static volatile C0805bc<M> zztq;
    public static final M zzvq = new M();
    public int zztj;
    public int zzuu;
    public C0879ub zzvp = C0852nb.m();

    public static final class a extends C0852nb.a<M, a> implements Ub {
        public a() {
            super(M.zzvq);
        }

        public final a a(int i2) {
            g();
            ((M) this.f10469b).b(i2);
            return this;
        }

        public final a j() {
            g();
            ((M) this.f10469b).v();
            return this;
        }

        public /* synthetic */ a(O o) {
            this();
        }

        public final a a(long j2) {
            g();
            ((M) this.f10469b).a(j2);
            return this;
        }

        public final a a(Iterable<? extends Long> iterable) {
            g();
            ((M) this.f10469b).a(iterable);
            return this;
        }
    }

    static {
        C0852nb.a(M.class, zzvq);
    }

    public static a w() {
        return (a) zzvq.j();
    }

    public final void a(long j2) {
        u();
        this.zzvp.h(j2);
    }

    public final void b(int i2) {
        this.zztj |= 1;
        this.zzuu = i2;
    }

    public final long c(int i2) {
        return this.zzvp.getLong(i2);
    }

    public final int q() {
        return this.zzuu;
    }

    public final boolean r() {
        return (this.zztj & 1) != 0;
    }

    public final List<Long> s() {
        return this.zzvp;
    }

    public final int t() {
        return this.zzvp.size();
    }

    public final void u() {
        if (!this.zzvp.s()) {
            this.zzvp = C0852nb.a(this.zzvp);
        }
    }

    public final void v() {
        this.zzvp = C0852nb.m();
    }

    public final void a(Iterable<? extends Long> iterable) {
        u();
        Ca.a(iterable, this.zzvp);
    }

    public final Object a(int i2, Object obj, Object obj2) {
        switch (O.f10192a[i2 - 1]) {
            case 1:
                return new M();
            case 2:
                return new a(null);
            case 3:
                return C0852nb.a((Sb) zzvq, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0004\u0000\u0002\u0014", new Object[]{"zztj", "zzuu", "zzvp"});
            case 4:
                return zzvq;
            case 5:
                C0805bc<M> bcVar = zztq;
                if (bcVar == null) {
                    synchronized (M.class) {
                        bcVar = zztq;
                        if (bcVar == null) {
                            bcVar = new C0852nb.b<>(zzvq);
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
