package com.google.android.gms.internal;

final class qh implements rg {
    private static final qq c = new qi();

    /* renamed from: a  reason: collision with root package name */
    private final qq f3471a;

    /* renamed from: b  reason: collision with root package name */
    private final zzfgu f3472b;

    public qh() {
        this(zzfgu.DYNAMIC);
    }

    private qh(qq qqVar, zzfgu zzfgu) {
        this.f3471a = (qq) pu.a(qqVar, "messageInfoFactory");
        this.f3472b = (zzfgu) pu.a(zzfgu, "mode");
    }

    private qh(zzfgu zzfgu) {
        this(new qk(pr.zzcxl(), a()), zzfgu);
    }

    private static qq a() {
        try {
            return (qq) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return c;
        }
    }

    private static <T> rf<T> a(Class<T> cls, qp qpVar) {
        if (ps.class.isAssignableFrom(cls)) {
            boolean a2 = a(qpVar);
            qe.b();
            rh.zzczg();
            if (a2) {
                pn.a();
            }
            qo.b();
        } else {
            boolean a3 = a(qpVar);
            qe.a();
            if (a3) {
                rh.zzcze();
                pn.b();
            } else {
                rh.zzczf();
            }
            qo.a();
        }
        return qv.a(qpVar);
    }

    private static boolean a(qp qpVar) {
        return qpVar.zzcyv() == qy.zzpiy;
    }

    private static <T> rf<T> b(Class<T> cls, qp qpVar) {
        if (ps.class.isAssignableFrom(cls)) {
            boolean a2 = a(qpVar);
            qe.b();
            rh.zzczg();
            if (a2) {
                pn.a();
            }
            qo.b();
        } else {
            boolean a3 = a(qpVar);
            qe.a();
            if (a3) {
                rh.zzcze();
                pn.b();
            } else {
                rh.zzczf();
            }
            qo.a();
        }
        return qv.b(qpVar);
    }

    public final <T> rf<T> zzk(Class<T> cls) {
        ru<?, ?> zzcze;
        pl<?> b2;
        rh.zzm(cls);
        qp zzj = this.f3471a.zzj(cls);
        if (zzj.zzcyw()) {
            if (ps.class.isAssignableFrom(cls)) {
                zzcze = rh.zzczg();
                b2 = pn.a();
            } else {
                zzcze = rh.zzcze();
                b2 = pn.b();
            }
            return qw.a(cls, zzcze, b2, zzj.zzcyx());
        }
        int i = qj.f3473a[this.f3472b.ordinal()];
        return i != 1 ? i != 2 ? zzj.zzcyy() ? a(cls, zzj) : b(cls, zzj) : b(cls, zzj) : a(cls, zzj);
    }
}
