package c.b.a.c.c;

import android.net.Uri;
import c.b.a.c.c.u;
import c.b.a.c.f;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: UrlUriLoader */
public class E<Data> implements u<Uri, Data> {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<String> f4057a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"http", "https"})));

    /* renamed from: b  reason: collision with root package name */
    public final u<l, Data> f4058b;

    /* compiled from: UrlUriLoader */
    public static class a implements v<Uri, InputStream> {
        public u<Uri, InputStream> a(y yVar) {
            return new E(yVar.a(l.class, InputStream.class));
        }
    }

    public E(u<l, Data> uVar) {
        this.f4058b = uVar;
    }

    public u.a<Data> a(Uri uri, int i2, int i3, f fVar) {
        return this.f4058b.a(new l(uri.toString()), i2, i3, fVar);
    }

    public boolean a(Uri uri) {
        return f4057a.contains(uri.getScheme());
    }
}
