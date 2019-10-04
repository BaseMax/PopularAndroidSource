package c.b.a.c.c;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import c.b.a.c.a.d;
import c.b.a.c.a.i;
import c.b.a.c.a.n;
import c.b.a.c.c.u;
import c.b.a.c.f;
import java.io.InputStream;

/* renamed from: c.b.a.c.c.a  reason: case insensitive filesystem */
/* compiled from: AssetUriLoader */
public class C0366a<Data> implements u<Uri, Data> {

    /* renamed from: a  reason: collision with root package name */
    public static final int f4059a = 22;

    /* renamed from: b  reason: collision with root package name */
    public final AssetManager f4060b;

    /* renamed from: c  reason: collision with root package name */
    public final C0056a<Data> f4061c;

    /* renamed from: c.b.a.c.c.a$a  reason: collision with other inner class name */
    /* compiled from: AssetUriLoader */
    public interface C0056a<Data> {
        d<Data> a(AssetManager assetManager, String str);
    }

    /* renamed from: c.b.a.c.c.a$b */
    /* compiled from: AssetUriLoader */
    public static class b implements v<Uri, ParcelFileDescriptor>, C0056a<ParcelFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        public final AssetManager f4065a;

        public b(AssetManager assetManager) {
            this.f4065a = assetManager;
        }

        public u<Uri, ParcelFileDescriptor> a(y yVar) {
            return new C0366a(this.f4065a, this);
        }

        public d<ParcelFileDescriptor> a(AssetManager assetManager, String str) {
            return new i(assetManager, str);
        }
    }

    /* renamed from: c.b.a.c.c.a$c */
    /* compiled from: AssetUriLoader */
    public static class c implements v<Uri, InputStream>, C0056a<InputStream> {

        /* renamed from: a  reason: collision with root package name */
        public final AssetManager f4068a;

        public c(AssetManager assetManager) {
            this.f4068a = assetManager;
        }

        public u<Uri, InputStream> a(y yVar) {
            return new C0366a(this.f4068a, this);
        }

        public d<InputStream> a(AssetManager assetManager, String str) {
            return new n(assetManager, str);
        }
    }

    public C0366a(AssetManager assetManager, C0056a<Data> aVar) {
        this.f4060b = assetManager;
        this.f4061c = aVar;
    }

    public u.a<Data> a(Uri uri, int i2, int i3, f fVar) {
        return new u.a<>(new c.b.a.h.b(uri), this.f4061c.a(this.f4060b, uri.toString().substring(f4059a)));
    }

    public boolean a(Uri uri) {
        if (!"file".equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || !"android_asset".equals(uri.getPathSegments().get(0))) {
            return false;
        }
        return true;
    }
}
