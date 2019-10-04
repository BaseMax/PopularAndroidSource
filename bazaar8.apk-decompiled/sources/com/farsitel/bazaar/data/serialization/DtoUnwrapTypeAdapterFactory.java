package com.farsitel.bazaar.data.serialization;

import c.e.d.c.a;
import c.e.d.p;
import c.e.d.r;
import c.e.d.x;
import c.e.d.y;
import com.crashlytics.android.answers.SessionEventTransform;
import h.f.b.j;
import h.k.n;
import java.util.NoSuchElementException;
import java.util.Set;

/* compiled from: DtoUnwrapTypeAdapterFactory.kt */
public final class DtoUnwrapTypeAdapterFactory implements y {
    public final p b(p pVar, String str) {
        if (pVar.h()) {
            r c2 = pVar.c();
            Set<String> k2 = c2.k();
            j.a((Object) k2, "jsonObject.keySet()");
            for (String str2 : k2) {
                j.a((Object) str2, "it");
                if (n.a((CharSequence) str2, (CharSequence) str, true)) {
                    p a2 = c2.a(str2);
                    j.a((Object) a2, "jsonObject.get(it)");
                    return a2;
                }
            }
            throw new NoSuchElementException("Collection contains no element matching the predicate.");
        }
        throw new IllegalStateException("Unable to unwrap a member containing " + str + ", Json Element must be a json object.");
    }

    public <T> x<T> a(c.e.d.j jVar, a<T> aVar) {
        j.b(jVar, "gson");
        j.b(aVar, SessionEventTransform.TYPE_KEY);
        x<T> a2 = new c.c.a.e.j.a(this, jVar.a((y) this, aVar), jVar.a(p.class)).a();
        j.a((Object) a2, "object : TypeAdapter<T>(…   }\n        }.nullSafe()");
        return a2;
    }

    public final p a(p pVar) {
        try {
            return b(a(a(pVar, "singleReply"), "ReplySelector"), "reply");
        } catch (Exception unused) {
            return pVar;
        }
    }

    public final p a(p pVar, String str) {
        if (pVar.h()) {
            r c2 = pVar.c();
            if (c2.c(str)) {
                r b2 = c2.b(str);
                j.a((Object) b2, "jsonObject.getAsJsonObject(member)");
                return b2;
            }
            throw new IllegalStateException("Unable to unwrap " + str + ", [" + str + "] can't be found.");
        }
        throw new IllegalStateException("Unable to unwrap " + str + ", Json Element must be a json object.");
    }
}
