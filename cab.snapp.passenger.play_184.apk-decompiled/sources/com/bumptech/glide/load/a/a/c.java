package com.bumptech.glide.load.a.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.a.g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public final class c implements d<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f2093a;

    /* renamed from: b  reason: collision with root package name */
    private final e f2094b;
    private InputStream c;

    static class a implements d {

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f2095b = {"_data"};

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f2096a;

        a(ContentResolver contentResolver) {
            this.f2096a = contentResolver;
        }

        public final Cursor query(Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            return this.f2096a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f2095b, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
        }
    }

    static class b implements d {

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f2097b = {"_data"};

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f2098a;

        b(ContentResolver contentResolver) {
            this.f2098a = contentResolver;
        }

        public final Cursor query(Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            return this.f2098a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f2097b, "kind = 1 AND video_id = ?", new String[]{lastPathSegment}, null);
        }
    }

    public final void cancel() {
    }

    public static c buildImageFetcher(Context context, Uri uri) {
        return a(context, uri, new a(context.getContentResolver()));
    }

    public static c buildVideoFetcher(Context context, Uri uri) {
        return a(context, uri, new b(context.getContentResolver()));
    }

    private static c a(Context context, Uri uri, d dVar) {
        return new c(uri, new e(com.bumptech.glide.c.get(context).getRegistry().getImageHeaderParsers(), dVar, com.bumptech.glide.c.get(context).getArrayPool(), context.getContentResolver()));
    }

    private c(Uri uri, e eVar) {
        this.f2093a = uri;
        this.f2094b = eVar;
    }

    public final void cleanup() {
        InputStream inputStream = this.c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    public final DataSource getDataSource() {
        return DataSource.LOCAL;
    }

    public final void loadData(Priority priority, d.a<? super InputStream> aVar) {
        try {
            InputStream open = this.f2094b.open(this.f2093a);
            int a2 = open != null ? this.f2094b.a(this.f2093a) : -1;
            if (a2 != -1) {
                open = new g(open, a2);
            }
            this.c = open;
            aVar.onDataReady(this.c);
        } catch (FileNotFoundException e) {
            aVar.onLoadFailed(e);
        }
    }
}
