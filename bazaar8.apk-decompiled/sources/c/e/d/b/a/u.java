package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import java.math.BigDecimal;

/* compiled from: TypeAdapters */
class u extends x<BigDecimal> {
    public BigDecimal a(b bVar) {
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        try {
            return new BigDecimal(bVar.I());
        } catch (NumberFormatException e2) {
            throw new JsonSyntaxException((Throwable) e2);
        }
    }

    public void a(c cVar, BigDecimal bigDecimal) {
        cVar.a((Number) bigDecimal);
    }
}
