package c.b.a.c.a.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import c.b.a.c.b.a.b;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: ThumbnailStreamOpener */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static final a f3773a = new a();

    /* renamed from: b  reason: collision with root package name */
    public final a f3774b;

    /* renamed from: c  reason: collision with root package name */
    public final d f3775c;

    /* renamed from: d  reason: collision with root package name */
    public final b f3776d;

    /* renamed from: e  reason: collision with root package name */
    public final ContentResolver f3777e;

    /* renamed from: f  reason: collision with root package name */
    public final List<ImageHeaderParser> f3778f;

    public e(List<ImageHeaderParser> list, d dVar, b bVar, ContentResolver contentResolver) {
        this(list, f3773a, dVar, bVar, contentResolver);
    }

    public int a(Uri uri) {
        InputStream inputStream = null;
        try {
            InputStream openInputStream = this.f3777e.openInputStream(uri);
            int a2 = c.b.a.c.b.a(this.f3778f, openInputStream, this.f3776d);
            if (openInputStream != null) {
                try {
                    openInputStream.close();
                } catch (IOException unused) {
                }
            }
            return a2;
        } catch (IOException | NullPointerException e2) {
            if (Log.isLoggable("ThumbStreamOpener", 3)) {
                Log.d("ThumbStreamOpener", "Failed to open uri: " + uri, e2);
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            return -1;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
            }
            throw th;
        }
    }

    public final String b(Uri uri) {
        Cursor a2 = this.f3775c.a(uri);
        if (a2 != null) {
            try {
                if (a2.moveToFirst()) {
                    return a2.getString(0);
                }
            } finally {
                if (a2 != null) {
                    a2.close();
                }
            }
        }
        if (a2 != null) {
            a2.close();
        }
        return null;
    }

    public InputStream c(Uri uri) {
        String b2 = b(uri);
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        File a2 = this.f3774b.a(b2);
        if (!a(a2)) {
            return null;
        }
        Uri fromFile = Uri.fromFile(a2);
        try {
            return this.f3777e.openInputStream(fromFile);
        } catch (NullPointerException e2) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e2));
        }
    }

    public e(List<ImageHeaderParser> list, a aVar, d dVar, b bVar, ContentResolver contentResolver) {
        this.f3774b = aVar;
        this.f3775c = dVar;
        this.f3776d = bVar;
        this.f3777e = contentResolver;
        this.f3778f = list;
    }

    public final boolean a(File file) {
        return this.f3774b.a(file) && 0 < this.f3774b.b(file);
    }
}
