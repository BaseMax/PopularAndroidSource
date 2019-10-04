package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.stream.JsonToken;

/* compiled from: TypeAdapters */
class L extends x<Boolean> {
    public Boolean a(b bVar) {
        JsonToken K = bVar.K();
        if (K == JsonToken.NULL) {
            bVar.H();
            return null;
        } else if (K == JsonToken.STRING) {
            return Boolean.valueOf(Boolean.parseBoolean(bVar.I()));
        } else {
            return Boolean.valueOf(bVar.C());
        }
    }

    public void a(c cVar, Boolean bool) {
        cVar.a(bool);
    }
}
