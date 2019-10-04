package c.c.a.c.f.a.b;

import c.c.a.c.f.a.f;
import c.e.d.c.a;
import c.e.d.d.b;
import c.e.d.j;
import c.e.d.p;
import c.e.d.r;
import c.e.d.x;
import com.crashlytics.android.answers.SessionEventTransform;
import h.k.m;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.TypeCastException;

/* compiled from: UnwrapperTypeAdapter.kt */
public final class c<T> extends f<T> {

    /* renamed from: e  reason: collision with root package name */
    public final b f4716e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(j jVar, x<T> xVar, x<p> xVar2, a<T> aVar, b bVar) {
        super(jVar, xVar, xVar2, aVar);
        h.f.b.j.b(jVar, "gson");
        h.f.b.j.b(xVar, "delegate");
        h.f.b.j.b(xVar2, "elementAdapter");
        h.f.b.j.b(aVar, SessionEventTransform.TYPE_KEY);
        h.f.b.j.b(bVar, "unwrapperNamesBuilder");
        this.f4716e = bVar;
    }

    public T a(b bVar) {
        h.f.b.j.b(bVar, "in");
        if (!b(bVar)) {
            return b().a(bVar);
        }
        p a2 = c().a(bVar);
        h.f.b.j.a((Object) a2, "elementAdapter.read(`in`)");
        return b().a(b(a2));
    }

    public final p b(p pVar) {
        b bVar = this.f4716e;
        Class a2 = e().a();
        h.f.b.j.a((Object) a2, "type.rawType");
        p pVar2 = pVar;
        for (String str : bVar.a(a2)) {
            if (!a(pVar2, str)) {
                return pVar;
            }
            r c2 = pVar2.c();
            h.f.b.j.a((Object) c2, "jsonObject");
            pVar2 = c2.a(a(c2, str));
            h.f.b.j.a((Object) pVar2, "jsonObject.get(getMember(jsonObject, it))");
        }
        return pVar2;
    }

    public final boolean a(p pVar, String str) {
        boolean z = false;
        if (!pVar.h()) {
            return false;
        }
        r c2 = pVar.c();
        if (!m.b(str, "*", false, 2, null)) {
            if (m.a(str, "*", false, 2, null)) {
                int length = str.length() - 2;
                if (str != null) {
                    String substring = str.substring(0, length);
                    h.f.b.j.a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    Set<String> k2 = c2.k();
                    h.f.b.j.a((Object) k2, "jsonObject.keySet()");
                    if (!(k2 instanceof Collection) || !k2.isEmpty()) {
                        Iterator<T> it = k2.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            String str2 = (String) it.next();
                            h.f.b.j.a((Object) str2, "it");
                            if (m.b(str2, substring, false, 2, null)) {
                                break;
                            }
                        }
                    }
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
            } else {
                z = c2.c(str);
            }
            return z;
        } else if (str != null) {
            String substring2 = str.substring(1);
            h.f.b.j.a((Object) substring2, "(this as java.lang.String).substring(startIndex)");
            Set<String> k3 = c2.k();
            h.f.b.j.a((Object) k3, "jsonObject.keySet()");
            if (!(k3 instanceof Collection) || !k3.isEmpty()) {
                Iterator<T> it2 = k3.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    String str3 = (String) it2.next();
                    h.f.b.j.a((Object) str3, "it");
                    if (m.a(str3, substring2, false, 2, null)) {
                        break;
                    }
                }
            }
            return z;
        } else {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        z = true;
        return z;
    }

    public final boolean b(b bVar) {
        return m.b(bVar.getPath(), "$", true);
    }

    public final String a(r rVar, String str) {
        if (m.b(str, "*", false, 2, null)) {
            if (str != null) {
                String substring = str.substring(1);
                h.f.b.j.a((Object) substring, "(this as java.lang.String).substring(startIndex)");
                Set<String> k2 = rVar.k();
                h.f.b.j.a((Object) k2, "jsonObject.keySet()");
                for (T next : k2) {
                    String str2 = (String) next;
                    h.f.b.j.a((Object) str2, "it");
                    if (m.a(str2, substring, false, 2, null)) {
                        h.f.b.j.a((Object) next, "jsonObject.keySet().firs…endsWith(endsWithValue) }");
                        return str2;
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        } else if (!m.a(str, "*", false, 2, null)) {
            return str;
        } else {
            int length = str.length() - 2;
            if (str != null) {
                String substring2 = str.substring(0, length);
                h.f.b.j.a((Object) substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                Set<String> k3 = rVar.k();
                h.f.b.j.a((Object) k3, "jsonObject.keySet()");
                for (T next2 : k3) {
                    String str3 = (String) next2;
                    h.f.b.j.a((Object) str3, "it");
                    if (m.b(str3, substring2, false, 2, null)) {
                        h.f.b.j.a((Object) next2, "jsonObject.keySet().firs…tsWith(startsWithValue) }");
                        return str3;
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
    }
}
