package c.b.a.c.c.a;

import android.content.Context;
import android.net.Uri;
import c.b.a.c.a.a.b;
import c.b.a.c.c.u;
import c.b.a.c.c.v;
import c.b.a.c.c.y;
import c.b.a.c.f;
import java.io.InputStream;

/* compiled from: MediaStoreImageThumbLoader */
public class c implements u<Uri, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    public final Context f4069a;

    /* compiled from: MediaStoreImageThumbLoader */
    public static class a implements v<Uri, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        public final Context f4070a;

        public a(Context context) {
            this.f4070a = context;
        }

        public u<Uri, InputStream> a(y yVar) {
            return new c(this.f4070a);
        }
    }

    public c(Context context) {
        this.f4069a = context.getApplicationContext();
    }

    public u.a<InputStream> a(Uri uri, int i2, int i3, f fVar) {
        if (b.a(i2, i3)) {
            return new u.a<>(new c.b.a.h.b(uri), c.b.a.c.a.a.c.a(this.f4069a, uri));
        }
        return null;
    }

    public boolean a(Uri uri) {
        return b.a(uri);
    }
}
