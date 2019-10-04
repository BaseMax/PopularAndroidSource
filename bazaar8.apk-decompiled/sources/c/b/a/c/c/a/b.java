package c.b.a.c.c.a;

import android.net.Uri;
import c.b.a.c.c.l;
import c.b.a.c.c.u;
import c.b.a.c.c.v;
import c.b.a.c.c.y;
import c.b.a.c.f;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: HttpUriLoader */
public class b implements u<Uri, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<String> f4066a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"http", "https"})));

    /* renamed from: b  reason: collision with root package name */
    public final u<l, InputStream> f4067b;

    /* compiled from: HttpUriLoader */
    public static class a implements v<Uri, InputStream> {
        public u<Uri, InputStream> a(y yVar) {
            return new b(yVar.a(l.class, InputStream.class));
        }
    }

    public b(u<l, InputStream> uVar) {
        this.f4067b = uVar;
    }

    public u.a<InputStream> a(Uri uri, int i2, int i3, f fVar) {
        return this.f4067b.a(new l(uri.toString()), i2, i3, fVar);
    }

    public boolean a(Uri uri) {
        return f4066a.contains(uri.getScheme());
    }
}
