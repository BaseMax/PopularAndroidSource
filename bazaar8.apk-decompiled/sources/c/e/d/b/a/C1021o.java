package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;

/* renamed from: c.e.d.b.a.o  reason: case insensitive filesystem */
/* compiled from: TypeAdapters */
class C1021o extends x<Number> {
    public Number a(b bVar) {
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        try {
            return Long.valueOf(bVar.F());
        } catch (NumberFormatException e2) {
            throw new JsonSyntaxException((Throwable) e2);
        }
    }

    public void a(c cVar, Number number) {
        cVar.a(number);
    }
}
