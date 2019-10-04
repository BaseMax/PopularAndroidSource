package c.b.a.c.c;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import c.b.a.c.c.u;
import c.b.a.c.f;
import java.io.File;
import java.io.InputStream;

/* compiled from: StringLoader */
public class B<Data> implements u<String, Data> {

    /* renamed from: a  reason: collision with root package name */
    public final u<Uri, Data> f4048a;

    /* compiled from: StringLoader */
    public static final class a implements v<String, AssetFileDescriptor> {
        public u<String, AssetFileDescriptor> a(y yVar) {
            return new B(yVar.a(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* compiled from: StringLoader */
    public static class b implements v<String, ParcelFileDescriptor> {
        public u<String, ParcelFileDescriptor> a(y yVar) {
            return new B(yVar.a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* compiled from: StringLoader */
    public static class c implements v<String, InputStream> {
        public u<String, InputStream> a(y yVar) {
            return new B(yVar.a(Uri.class, InputStream.class));
        }
    }

    public B(u<Uri, Data> uVar) {
        this.f4048a = uVar;
    }

    public static Uri b(String str) {
        Uri uri;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.charAt(0) == '/') {
            uri = c(str);
        } else {
            Uri parse = Uri.parse(str);
            uri = parse.getScheme() == null ? c(str) : parse;
        }
        return uri;
    }

    public static Uri c(String str) {
        return Uri.fromFile(new File(str));
    }

    public boolean a(String str) {
        return true;
    }

    public u.a<Data> a(String str, int i2, int i3, f fVar) {
        Uri b2 = b(str);
        if (b2 == null || !this.f4048a.a(b2)) {
            return null;
        }
        return this.f4048a.a(b2, i2, i3, fVar);
    }
}
