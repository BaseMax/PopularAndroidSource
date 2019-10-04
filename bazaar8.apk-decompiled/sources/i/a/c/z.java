package i.a.c;

import h.c.e;
import h.f.a.c;
import h.f.b.j;
import i.a.La;
import kotlin.TypeCastException;

/* compiled from: ThreadContext.kt */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public static final v f14784a = new v("ZERO");

    /* renamed from: b  reason: collision with root package name */
    public static final c<Object, e.b, Object> f14785b = ThreadContextKt$countAll$1.f15799a;

    /* renamed from: c  reason: collision with root package name */
    public static final c<La<?>, e.b, La<?>> f14786c = ThreadContextKt$findOne$1.f15800a;

    /* renamed from: d  reason: collision with root package name */
    public static final c<C, e.b, C> f14787d = ThreadContextKt$updateState$1.f15802a;

    /* renamed from: e  reason: collision with root package name */
    public static final c<C, e.b, C> f14788e = ThreadContextKt$restoreState$1.f15801a;

    public static final Object a(e eVar) {
        j.b(eVar, "context");
        Object fold = eVar.fold(0, f14785b);
        if (fold != null) {
            return fold;
        }
        j.a();
        throw null;
    }

    public static final Object b(e eVar, Object obj) {
        j.b(eVar, "context");
        if (obj == null) {
            obj = a(eVar);
        }
        if (obj == 0) {
            return f14784a;
        }
        if (obj instanceof Integer) {
            return eVar.fold(new C(eVar, ((Number) obj).intValue()), f14787d);
        }
        if (obj != null) {
            return ((La) obj).a(eVar);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
    }

    public static final void a(e eVar, Object obj) {
        j.b(eVar, "context");
        if (obj != f14784a) {
            if (obj instanceof C) {
                ((C) obj).b();
                eVar.fold(obj, f14788e);
            } else {
                Object fold = eVar.fold(null, f14786c);
                if (fold != null) {
                    ((La) fold).a(eVar, obj);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
                }
            }
        }
    }
}
