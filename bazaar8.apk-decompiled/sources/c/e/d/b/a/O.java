package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;

/* compiled from: TypeAdapters */
class O extends x<Number> {
    public Number a(b bVar) {
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        try {
            return Short.valueOf((short) bVar.E());
        } catch (NumberFormatException e2) {
            throw new JsonSyntaxException((Throwable) e2);
        }
    }

    public void a(c cVar, Number number) {
        cVar.a(number);
    }
}
