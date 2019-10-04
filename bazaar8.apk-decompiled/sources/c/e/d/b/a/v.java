package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import java.math.BigInteger;

/* compiled from: TypeAdapters */
class v extends x<BigInteger> {
    public BigInteger a(b bVar) {
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        try {
            return new BigInteger(bVar.I());
        } catch (NumberFormatException e2) {
            throw new JsonSyntaxException((Throwable) e2);
        }
    }

    public void a(c cVar, BigInteger bigInteger) {
        cVar.a((Number) bigInteger);
    }
}
