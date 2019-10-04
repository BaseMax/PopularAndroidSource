package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.stream.JsonToken;
import java.net.URL;

/* compiled from: TypeAdapters */
class z extends x<URL> {
    public URL a(b bVar) {
        URL url = null;
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        String I = bVar.I();
        if (!"null".equals(I)) {
            url = new URL(I);
        }
        return url;
    }

    public void a(c cVar, URL url) {
        cVar.h(url == null ? null : url.toExternalForm());
    }
}
