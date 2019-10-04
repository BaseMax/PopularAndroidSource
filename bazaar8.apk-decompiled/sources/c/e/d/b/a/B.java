package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.stream.JsonToken;
import java.net.InetAddress;

/* compiled from: TypeAdapters */
class B extends x<InetAddress> {
    public InetAddress a(b bVar) {
        if (bVar.K() != JsonToken.NULL) {
            return InetAddress.getByName(bVar.I());
        }
        bVar.H();
        return null;
    }

    public void a(c cVar, InetAddress inetAddress) {
        cVar.h(inetAddress == null ? null : inetAddress.getHostAddress());
    }
}
