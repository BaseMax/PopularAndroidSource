package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.JsonIOException;
import com.google.gson.stream.JsonToken;
import java.net.URI;
import java.net.URISyntaxException;

/* compiled from: TypeAdapters */
class A extends x<URI> {
    public URI a(b bVar) {
        URI uri = null;
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        try {
            String I = bVar.I();
            if (!"null".equals(I)) {
                uri = new URI(I);
            }
            return uri;
        } catch (URISyntaxException e2) {
            throw new JsonIOException((Throwable) e2);
        }
    }

    public void a(c cVar, URI uri) {
        cVar.h(uri == null ? null : uri.toASCIIString());
    }
}
