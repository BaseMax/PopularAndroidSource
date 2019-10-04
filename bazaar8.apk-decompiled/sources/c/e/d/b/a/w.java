package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.stream.JsonToken;

/* compiled from: TypeAdapters */
class w extends x<StringBuilder> {
    public StringBuilder a(b bVar) {
        if (bVar.K() != JsonToken.NULL) {
            return new StringBuilder(bVar.I());
        }
        bVar.H();
        return null;
    }

    public void a(c cVar, StringBuilder sb) {
        cVar.h(sb == null ? null : sb.toString());
    }
}
