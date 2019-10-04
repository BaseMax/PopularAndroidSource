package c.b.a.c.c;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import c.b.a.c.a.j;
import c.b.a.c.a.o;
import c.b.a.c.c.u;
import c.b.a.c.f;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: UriLoader */
public class D<Data> implements u<Uri, Data> {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<String> f4052a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"file", "android.resource", "content"})));

    /* renamed from: b  reason: collision with root package name */
    public final c<Data> f4053b;

    /* compiled from: UriLoader */
    public static final class a implements v<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        public final ContentResolver f4054a;

        public a(ContentResolver contentResolver) {
            this.f4054a = contentResolver;
        }

        public u<Uri, AssetFileDescriptor> a(y yVar) {
            return new D(this);
        }

        public c.b.a.c.a.d<AssetFileDescriptor> a(Uri uri) {
            return new c.b.a.c.a.a(this.f4054a, uri);
        }
    }

    /* compiled from: UriLoader */
    public static class b implements v<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        public final ContentResolver f4055a;

        public b(ContentResolver contentResolver) {
            this.f4055a = contentResolver;
        }

        public c.b.a.c.a.d<ParcelFileDescriptor> a(Uri uri) {
            return new j(this.f4055a, uri);
        }

        public u<Uri, ParcelFileDescriptor> a(y yVar) {
            return new D(this);
        }
    }

    /* compiled from: UriLoader */
    public interface c<Data> {
        c.b.a.c.a.d<Data> a(Uri uri);
    }

    /* compiled from: UriLoader */
    public static class d implements v<Uri, InputStream>, c<InputStream> {

        /* renamed from: a  reason: collision with root package name */
        public final ContentResolver f4056a;

        public d(ContentResolver contentResolver) {
            this.f4056a = contentResolver;
        }

        public c.b.a.c.a.d<InputStream> a(Uri uri) {
            return new o(this.f4056a, uri);
        }

        public u<Uri, InputStream> a(y yVar) {
            return new D(this);
        }
    }

    public D(c<Data> cVar) {
        this.f4053b = cVar;
    }

    public u.a<Data> a(Uri uri, int i2, int i3, f fVar) {
        return new u.a<>(new c.b.a.h.b(uri), this.f4053b.a(uri));
    }

    public boolean a(Uri uri) {
        return f4052a.contains(uri.getScheme());
    }
}
