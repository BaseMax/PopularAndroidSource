package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.stream.JsonToken;
import java.util.UUID;

/* compiled from: TypeAdapters */
class C extends x<UUID> {
    public UUID a(b bVar) {
        if (bVar.K() != JsonToken.NULL) {
            return UUID.fromString(bVar.I());
        }
        bVar.H();
        return null;
    }

    public void a(c cVar, UUID uuid) {
        cVar.h(uuid == null ? null : uuid.toString());
    }
}
