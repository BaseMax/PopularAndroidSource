package c.c.a.c.f.a.b;

import c.c.a.c.f.a;
import c.c.a.c.f.a.g;
import h.a.l;
import h.a.m;
import h.f.b.j;
import h.k.n;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: UnwrapperNamesBuilder.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final a f4715a;

    public b(a aVar) {
        j.b(aVar, "defaultUnwrapper");
        this.f4715a = aVar;
    }

    public final <T> List<String> a(Class<T> cls) {
        j.b(cls, "value");
        List<String> b2 = b(cls);
        return b2.isEmpty() ? c(cls) : b2;
    }

    public final <T> List<String> b(Class<T> cls) {
        if (!a.a(cls, g.class)) {
            return l.a();
        }
        String b2 = a.b(cls);
        j.a((Object) b2, "SweepReflection.sweepUnwrapperValue(value)");
        if (b2 != null) {
            return a(cls, b(cls, n.a((CharSequence) n.f(b2).toString(), new String[]{"."}, false, 0, 6, (Object) null)));
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    public final <T> List<String> c(Class<T> cls) {
        List<String> d2 = d(cls);
        if (!(d2 == null || d2.isEmpty())) {
            return a(cls, d2);
        }
        return l.a();
    }

    public final <T> List<String> d(Class<T> cls) {
        String a2 = this.f4715a.a(cls);
        if (a2 != null) {
            if (a2 != null) {
                String obj = n.f(a2).toString();
                if (obj != null) {
                    return n.a((CharSequence) obj, new String[]{"."}, false, 0, 6, (Object) null);
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
            }
        }
        return null;
    }

    public final <T> List<String> a(Class<T> cls, List<String> list) {
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (String str : list) {
            if (str.hashCode() == 1184 && str.equals("#c")) {
                String a2 = a.a(cls);
                j.a((Object) a2, "SweepReflection.findClassName(value)");
                str = h.k.m.d(a2);
            }
            arrayList.add(str);
        }
        return arrayList;
    }

    public final <T> List<String> b(Class<T> cls, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (str.hashCode() == 1185 && str.equals("#d")) {
                List<String> d2 = d(cls);
                if (d2 != null) {
                    arrayList.addAll(d2);
                } else {
                    throw new IllegalStateException(cls + " forced to use default unwrapper, but nothing provided." + " Try to implement DefaultUnWrapper");
                }
            } else {
                arrayList.add(str);
            }
        }
        return arrayList;
    }
}
