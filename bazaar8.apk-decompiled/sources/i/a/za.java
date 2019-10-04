package i.a;

import i.a.c.v;

/* compiled from: JobSupport.kt */
public final class za {

    /* renamed from: a  reason: collision with root package name */
    public static final v f14884a = new v("SEALED");

    /* renamed from: b  reason: collision with root package name */
    public static final Z f14885b = new Z(false);

    /* renamed from: c  reason: collision with root package name */
    public static final Z f14886c = new Z(true);

    public static final Object a(Object obj) {
        return obj instanceof C1116ma ? new C1118na((C1116ma) obj) : obj;
    }

    public static final Object b(Object obj) {
        C1118na naVar = (C1118na) (!(obj instanceof C1118na) ? null : obj);
        if (naVar == null) {
            return obj;
        }
        C1116ma maVar = naVar.f14852a;
        return maVar != null ? maVar : obj;
    }
}
