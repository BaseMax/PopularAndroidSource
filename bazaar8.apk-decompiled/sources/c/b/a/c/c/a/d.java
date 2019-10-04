package c.b.a.c.c.a;

import android.content.Context;
import android.net.Uri;
import c.b.a.c.a.a.b;
import c.b.a.c.a.a.c;
import c.b.a.c.c.u;
import c.b.a.c.c.v;
import c.b.a.c.c.y;
import c.b.a.c.d.a.z;
import c.b.a.c.f;
import java.io.InputStream;

/* compiled from: MediaStoreVideoThumbLoader */
public class d implements u<Uri, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    public final Context f4071a;

    /* compiled from: MediaStoreVideoThumbLoader */
    public static class a implements v<Uri, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        public final Context f4072a;

        public a(Context context) {
            this.f4072a = context;
        }

        public u<Uri, InputStream> a(y yVar) {
            return new d(this.f4072a);
        }
    }

    public d(Context context) {
        this.f4071a = context.getApplicationContext();
    }

    public u.a<InputStream> a(Uri uri, int i2, int i3, f fVar) {
        if (!b.a(i2, i3) || !a(fVar)) {
            return null;
        }
        return new u.a<>(new c.b.a.h.b(uri), c.b(this.f4071a, uri));
    }

    public final boolean a(f fVar) {
        Long l2 = (Long) fVar.a(z.f4205a);
        return l2 != null && l2.longValue() == -1;
    }

    public boolean a(Uri uri) {
        return b.c(uri);
    }
}
