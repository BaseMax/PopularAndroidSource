package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;
import java.util.List;

public final class L extends C0852nb<L, a> implements Ub {
    public static volatile C0805bc<L> zztq;
    public static final L zzvo = new L();
    public C0879ub zzvk = C0852nb.m();
    public C0879ub zzvl = C0852nb.m();
    public C0883vb<I> zzvm = C0852nb.p();
    public C0883vb<M> zzvn = C0852nb.p();

    public static final class a extends C0852nb.a<L, a> implements Ub {
        public a() {
            super(L.zzvo);
        }

        public final a a(Iterable<? extends Long> iterable) {
            g();
            ((L) this.f10469b).a(iterable);
            return this;
        }

        public final a b(Iterable<? extends Long> iterable) {
            g();
            ((L) this.f10469b).b(iterable);
            return this;
        }

        public final a c(Iterable<? extends I> iterable) {
            g();
            ((L) this.f10469b).c(iterable);
            return this;
        }

        public final a d(Iterable<? extends M> iterable) {
            g();
            ((L) this.f10469b).d(iterable);
            return this;
        }

        public /* synthetic */ a(O o) {
            this();
        }
    }

    static {
        C0852nb.a(L.class, zzvo);
    }

    public static a y() {
        return (a) zzvo.j();
    }

    public static L z() {
        return zzvo;
    }

    public final void a(Iterable<? extends Long> iterable) {
        if (!this.zzvk.s()) {
            this.zzvk = C0852nb.a(this.zzvk);
        }
        Ca.a(iterable, this.zzvk);
    }

    public final void b(Iterable<? extends Long> iterable) {
        if (!this.zzvl.s()) {
            this.zzvl = C0852nb.a(this.zzvl);
        }
        Ca.a(iterable, this.zzvl);
    }

    public final void c(Iterable<? extends I> iterable) {
        if (!this.zzvm.s()) {
            this.zzvm = C0852nb.a(this.zzvm);
        }
        Ca.a(iterable, this.zzvm);
    }

    public final void d(Iterable<? extends M> iterable) {
        if (!this.zzvn.s()) {
            this.zzvn = C0852nb.a(this.zzvn);
        }
        Ca.a(iterable, this.zzvn);
    }

    public final List<Long> q() {
        return this.zzvk;
    }

    public final int r() {
        return this.zzvk.size();
    }

    public final List<Long> s() {
        return this.zzvl;
    }

    public final int t() {
        return this.zzvl.size();
    }

    public final List<I> u() {
        return this.zzvm;
    }

    public final int v() {
        return this.zzvm.size();
    }

    public final List<M> w() {
        return this.zzvn;
    }

    public final int x() {
        return this.zzvn.size();
    }

    public static L a(byte[] bArr, C0808cb cbVar) {
        return (L) C0852nb.a(zzvo, bArr, cbVar);
    }

    public final Object a(int i2, Object obj, Object obj2) {
        switch (O.f10192a[i2 - 1]) {
            case 1:
                return new L();
            case 2:
                return new a(null);
            case 3:
                return C0852nb.a((Sb) zzvo, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzvk", "zzvl", "zzvm", I.class, "zzvn", M.class});
            case 4:
                return zzvo;
            case 5:
                C0805bc<L> bcVar = zztq;
                if (bcVar == null) {
                    synchronized (L.class) {
                        bcVar = zztq;
                        if (bcVar == null) {
                            bcVar = new C0852nb.b<>(zzvo);
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
