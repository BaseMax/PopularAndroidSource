package c.c.a.c.f.a.c;

import c.c.a.c.f.a;
import c.c.a.c.f.a.h;
import h.a.m;
import h.f.b.j;
import h.k.n;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: WrapperNamesBuilder.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final a f4717a;

    public b(a aVar) {
        j.b(aVar, "defaultWrapper");
        this.f4717a = aVar;
    }

    public final <T> List<String> a(T t) {
        if (a.a(t, h.class)) {
            return a(t, b(t, b(t)));
        }
        throw new IllegalStateException("Class " + t + " must be annotation with SweepWrapper.");
    }

    public final <T> List<String> b(T t) {
        String b2 = a.b(t);
        j.a((Object) b2, "SweepReflection.sweepWrapperValue(value)");
        if (b2 != null) {
            return n.a((CharSequence) n.f(b2).toString(), new String[]{"."}, false, 0, 6, (Object) null);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    public final <T> List<String> b(T t, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (str.hashCode() == 1185 && str.equals("#d")) {
                String a2 = this.f4717a.a(t);
                if (a2 != null) {
                    if (a2 != null) {
                        String obj = n.f(a2).toString();
                        if (obj != null) {
                            List a3 = n.a((CharSequence) obj, new String[]{"."}, false, 0, 6, (Object) null);
                            if (a3 != null) {
                                arrayList.addAll(a3);
                            }
                        }
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
                    }
                }
                throw new IllegalStateException(t + " forced to use default wrapper, but nothing provided." + " Try to implement DefaultWrapper");
            }
            arrayList.add(str);
        }
        return arrayList;
    }

    public final <T> List<String> a(T t, List<String> list) {
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (String str : list) {
            if (str.hashCode() == 1184 && str.equals("#c")) {
                String a2 = a.a(t);
                j.a((Object) a2, "SweepReflection.findClassName(value)");
                str = h.k.m.d(a2);
            }
            arrayList.add(str);
        }
        return arrayList;
    }
}
