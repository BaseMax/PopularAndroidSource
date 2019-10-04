package com.google.android.gms.internal.measurement;

import c.e.a.b.g.f.C0805bc;
import c.e.a.b.g.f.C0852nb;
import c.e.a.b.g.f.C0867rb;
import c.e.a.b.g.f.C0871sb;
import c.e.a.b.g.f.C0875tb;
import c.e.a.b.g.f.C0883vb;
import c.e.a.b.g.f.J;
import c.e.a.b.g.f.O;
import c.e.a.b.g.f.P;
import c.e.a.b.g.f.Q;
import c.e.a.b.g.f.Sb;
import c.e.a.b.g.f.Ub;

public final class zzbt$zze extends C0852nb<zzbt$zze, a> implements Ub {
    public static volatile C0805bc<zzbt$zze> zztq;
    public static final zzbt$zze zzvg = new zzbt$zze();
    public int zztj;
    public int zzve = 1;
    public C0883vb<J> zzvf = C0852nb.p();

    public static final class a extends C0852nb.a<zzbt$zze, a> implements Ub {
        public a() {
            super(zzbt$zze.zzvg);
        }

        public /* synthetic */ a(O o) {
            this();
        }
    }

    public enum zzb implements C0867rb {
        RADS(1),
        PROVISIONING(2);
        

        /* renamed from: c  reason: collision with root package name */
        public static final C0871sb<zzb> f13169c = null;
        public final int value;

        static {
            f13169c = new P();
        }

        /* access modifiers changed from: public */
        zzb(int i2) {
            this.value = i2;
        }

        public static C0875tb f() {
            return Q.f10207a;
        }

        public final int a() {
            return this.value;
        }

        public static zzb a(int i2) {
            if (i2 == 1) {
                return RADS;
            }
            if (i2 != 2) {
                return null;
            }
            return PROVISIONING;
        }
    }

    static {
        C0852nb.a(zzbt$zze.class, zzvg);
    }

    public static C0805bc<zzbt$zze> q() {
        return (C0805bc) zzvg.a(C0852nb.e.f10478g, null, null);
    }

    public final Object a(int i2, Object obj, Object obj2) {
        switch (O.f10192a[i2 - 1]) {
            case 1:
                return new zzbt$zze();
            case 2:
                return new a(null);
            case 3:
                return C0852nb.a((Sb) zzvg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\f\u0000\u0002\u001b", new Object[]{"zztj", "zzve", zzb.f(), "zzvf", J.class});
            case 4:
                return zzvg;
            case 5:
                C0805bc<zzbt$zze> bcVar = zztq;
                if (bcVar == null) {
                    synchronized (zzbt$zze.class) {
                        bcVar = zztq;
                        if (bcVar == null) {
                            bcVar = new C0852nb.b<>(zzvg);
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
