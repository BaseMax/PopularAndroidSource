package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.stream.JsonToken;

/* compiled from: TypeAdapters */
class r extends x<Number> {
    public Number a(b bVar) {
        JsonToken K = bVar.K();
        int i2 = K.f11732a[K.ordinal()];
        if (i2 == 1 || i2 == 3) {
            return new LazilyParsedNumber(bVar.I());
        }
        if (i2 == 4) {
            bVar.H();
            return null;
        }
        throw new JsonSyntaxException("Expecting number, got: " + K);
    }

    public void a(c cVar, Number number) {
        cVar.a(number);
    }
}
