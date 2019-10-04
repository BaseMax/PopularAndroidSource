package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.stream.JsonToken;

/* compiled from: TypeAdapters */
class M extends x<Boolean> {
    public Boolean a(b bVar) {
        if (bVar.K() != JsonToken.NULL) {
            return Boolean.valueOf(bVar.I());
        }
        bVar.H();
        return null;
    }

    public void a(c cVar, Boolean bool) {
        cVar.h(bool == null ? "null" : bool.toString());
    }
}
