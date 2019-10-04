package c.e.d;

import c.e.d.d.b;
import c.e.d.d.c;
import com.google.gson.stream.JsonToken;

/* compiled from: Gson */
class g extends x<Number> {
    public Number a(b bVar) {
        if (bVar.K() != JsonToken.NULL) {
            return Long.valueOf(bVar.F());
        }
        bVar.H();
        return null;
    }

    public void a(c cVar, Number number) {
        if (number == null) {
            cVar.C();
        } else {
            cVar.h(number.toString());
        }
    }
}
