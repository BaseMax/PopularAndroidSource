package c.b.a.c.c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import c.b.a.c.a.d;
import c.b.a.c.c.u;
import c.b.a.c.f;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.FileNotFoundException;

/* compiled from: MediaStoreFileLoader */
public final class q implements u<Uri, File> {

    /* renamed from: a  reason: collision with root package name */
    public final Context f4108a;

    /* compiled from: MediaStoreFileLoader */
    public static final class a implements v<Uri, File> {

        /* renamed from: a  reason: collision with root package name */
        public final Context f4109a;

        public a(Context context) {
            this.f4109a = context;
        }

        public u<Uri, File> a(y yVar) {
            return new q(this.f4109a);
        }
    }

    /* compiled from: MediaStoreFileLoader */
    private static class b implements d<File> {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f4110a = {"_data"};

        /* renamed from: b  reason: collision with root package name */
        public final Context f4111b;

        /* renamed from: c  reason: collision with root package name */
        public final Uri f4112c;

        public b(Context context, Uri uri) {
            this.f4111b = context;
            this.f4112c = uri;
        }

        public void a(Priority priority, d.a<? super File> aVar) {
            Cursor query = this.f4111b.getContentResolver().query(this.f4112c, f4110a, null, null, null);
            String str = null;
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(str)) {
                aVar.a((Exception) new FileNotFoundException("Failed to find file path for: " + this.f4112c));
                return;
            }
            aVar.a(new File(str));
        }

        public void b() {
        }

        public DataSource c() {
            return DataSource.LOCAL;
        }

        public void cancel() {
        }

        public Class<File> a() {
            return File.class;
        }
    }

    public q(Context context) {
        this.f4108a = context;
    }

    public u.a<File> a(Uri uri, int i2, int i3, f fVar) {
        return new u.a<>(new c.b.a.h.b(uri), new b(this.f4108a, uri));
    }

    public boolean a(Uri uri) {
        return c.b.a.c.a.a.b.b(uri);
    }
}
