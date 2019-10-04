package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.stream.JsonToken;

/* renamed from: c.e.d.b.a.t  reason: case insensitive filesystem */
/* compiled from: TypeAdapters */
class C1025t extends x<String> {
    public String a(b bVar) {
        JsonToken K = bVar.K();
        if (K == JsonToken.NULL) {
            bVar.H();
            return null;
        } else if (K == JsonToken.BOOLEAN) {
            return Boolean.toString(bVar.C());
        } else {
            return bVar.I();
        }
    }

    public void a(c cVar, String str) {
        cVar.h(str);
    }
}
