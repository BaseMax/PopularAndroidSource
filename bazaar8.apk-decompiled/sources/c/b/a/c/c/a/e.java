package c.b.a.c.c.a;

import c.b.a.c.c.l;
import c.b.a.c.c.u;
import c.b.a.c.c.v;
import c.b.a.c.c.y;
import c.b.a.c.f;
import java.io.InputStream;
import java.net.URL;

/* compiled from: UrlLoader */
public class e implements u<URL, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    public final u<l, InputStream> f4073a;

    /* compiled from: UrlLoader */
    public static class a implements v<URL, InputStream> {
        public u<URL, InputStream> a(y yVar) {
            return new e(yVar.a(l.class, InputStream.class));
        }
    }

    public e(u<l, InputStream> uVar) {
        this.f4073a = uVar;
    }

    public boolean a(URL url) {
        return true;
    }

    public u.a<InputStream> a(URL url, int i2, int i3, f fVar) {
        return this.f4073a.a(new l(url), i2, i3, fVar);
    }
}
