package c.b.a.c.a.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import c.b.a.c.a.d;
import c.b.a.c.a.h;
import c.b.a.e;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ThumbFetcher */
public class c implements d<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f3766a;

    /* renamed from: b  reason: collision with root package name */
    public final e f3767b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3768c;

    /* compiled from: ThumbFetcher */
    static class a implements d {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f3769a = {"_data"};

        /* renamed from: b  reason: collision with root package name */
        public final ContentResolver f3770b;

        public a(ContentResolver contentResolver) {
            this.f3770b = contentResolver;
        }

        public Cursor a(Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            return this.f3770b.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f3769a, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
        }
    }

    /* compiled from: ThumbFetcher */
    static class b implements d {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f3771a = {"_data"};

        /* renamed from: b  reason: collision with root package name */
        public final ContentResolver f3772b;

        public b(ContentResolver contentResolver) {
            this.f3772b = contentResolver;
        }

        public Cursor a(Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            return this.f3772b.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f3771a, "kind = 1 AND video_id = ?", new String[]{lastPathSegment}, null);
        }
    }

    public c(Uri uri, e eVar) {
        this.f3766a = uri;
        this.f3767b = eVar;
    }

    public static c a(Context context, Uri uri) {
        return a(context, uri, new a(context.getContentResolver()));
    }

    public static c b(Context context, Uri uri) {
        return a(context, uri, new b(context.getContentResolver()));
    }

    public DataSource c() {
        return DataSource.LOCAL;
    }

    public void cancel() {
    }

    public final InputStream d() {
        InputStream c2 = this.f3767b.c(this.f3766a);
        int a2 = c2 != null ? this.f3767b.a(this.f3766a) : -1;
        return a2 != -1 ? new h(c2, a2) : c2;
    }

    public static c a(Context context, Uri uri, d dVar) {
        return new c(uri, new e(e.b(context).h().a(), dVar, e.b(context).c(), context.getContentResolver()));
    }

    public void b() {
        InputStream inputStream = this.f3768c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public void a(Priority priority, d.a<? super InputStream> aVar) {
        try {
            this.f3768c = d();
            aVar.a(this.f3768c);
        } catch (FileNotFoundException e2) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e2);
            }
            aVar.a((Exception) e2);
        }
    }

    public Class<InputStream> a() {
        return InputStream.class;
    }
}
