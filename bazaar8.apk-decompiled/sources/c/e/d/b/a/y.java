package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.stream.JsonToken;

/* compiled from: TypeAdapters */
class y extends x<StringBuffer> {
    public StringBuffer a(b bVar) {
        if (bVar.K() != JsonToken.NULL) {
            return new StringBuffer(bVar.I());
        }
        bVar.H();
        return null;
    }

    public void a(c cVar, StringBuffer stringBuffer) {
        cVar.h(stringBuffer == null ? null : stringBuffer.toString());
    }
}
