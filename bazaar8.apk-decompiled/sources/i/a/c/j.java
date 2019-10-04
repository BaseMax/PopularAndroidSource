package i.a.c;

/* compiled from: LockFreeLinkedList.kt */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f14754a = new v("CONDITION_FALSE");

    /* renamed from: b  reason: collision with root package name */
    public static final Object f14755b = new v("ALREADY_REMOVED");

    /* renamed from: c  reason: collision with root package name */
    public static final Object f14756c = new v("LIST_EMPTY");

    /* renamed from: d  reason: collision with root package name */
    public static final Object f14757d = new v("REMOVE_PREPARED");

    public static final Object a() {
        return f14754a;
    }

    public static final k a(Object obj) {
        h.f.b.j.b(obj, "$this$unwrap");
        r rVar = (r) (!(obj instanceof r) ? null : obj);
        if (rVar != null) {
            k kVar = rVar.f14778a;
            if (kVar != null) {
                return kVar;
            }
        }
        return (k) obj;
    }
}
