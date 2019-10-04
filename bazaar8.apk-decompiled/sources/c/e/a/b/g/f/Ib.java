package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;

public final class Ib implements C0833ic {

    /* renamed from: a  reason: collision with root package name */
    public static final Rb f10181a = new Jb();

    /* renamed from: b  reason: collision with root package name */
    public final Rb f10182b;

    public Ib() {
        this(new Kb(C0848mb.a(), a()));
    }

    public final <T> C0829hc<T> a(Class<T> cls) {
        C0841kc.a((Class<?>) cls);
        Qb b2 = this.f10182b.b(cls);
        if (b2.b()) {
            if (C0852nb.class.isAssignableFrom(cls)) {
                return Xb.a(C0841kc.c(), C0820fb.b(), b2.a());
            }
            return Xb.a(C0841kc.a(), C0820fb.c(), b2.a());
        } else if (C0852nb.class.isAssignableFrom(cls)) {
            if (a(b2)) {
                return Wb.a(cls, b2, C0801ac.b(), Db.b(), C0841kc.c(), C0820fb.b(), Pb.b());
            }
            return Wb.a(cls, b2, C0801ac.b(), Db.b(), C0841kc.c(), (C0812db<?>) null, Pb.b());
        } else if (a(b2)) {
            return Wb.a(cls, b2, C0801ac.a(), Db.a(), C0841kc.a(), C0820fb.c(), Pb.a());
        } else {
            return Wb.a(cls, b2, C0801ac.a(), Db.a(), C0841kc.b(), (C0812db<?>) null, Pb.a());
        }
    }

    public Ib(Rb rb) {
        C0864qb.a(rb, "messageInfoFactory");
        this.f10182b = rb;
    }

    public static boolean a(Qb qb) {
        return qb.c() == C0852nb.e.f10480i;
    }

    public static Rb a() {
        try {
            return (Rb) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f10181a;
        }
    }
}
