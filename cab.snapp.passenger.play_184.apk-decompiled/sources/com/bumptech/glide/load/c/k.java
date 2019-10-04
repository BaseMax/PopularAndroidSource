package com.bumptech.glide.load.c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.Priority;
import com.bumptech.glide.f.c;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.io.File;
import java.io.FileNotFoundException;

public final class k implements n<Uri, File> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f2286a;

    public static final class a implements o<Uri, File> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f2287a;

        public final void teardown() {
        }

        public a(Context context) {
            this.f2287a = context;
        }

        public final n<Uri, File> build(r rVar) {
            return new k(this.f2287a);
        }
    }

    static class b implements d<File> {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f2288a = {"_data"};

        /* renamed from: b  reason: collision with root package name */
        private final Context f2289b;
        private final Uri c;

        public final void cancel() {
        }

        public final void cleanup() {
        }

        b(Context context, Uri uri) {
            this.f2289b = context;
            this.c = uri;
        }

        public final void loadData(Priority priority, d.a<? super File> aVar) {
            Cursor query = this.f2289b.getContentResolver().query(this.c, f2288a, null, null, null);
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
                aVar.onLoadFailed(new FileNotFoundException("Failed to find file path for: " + this.c));
                return;
            }
            aVar.onDataReady(new File(str));
        }

        public final Class<File> getDataClass() {
            return File.class;
        }

        public final DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    public k(Context context) {
        this.f2286a = context;
    }

    public final n.a<File> buildLoadData(Uri uri, int i, int i2, g gVar) {
        return new n.a<>(new c(uri), new b(this.f2286a, uri));
    }

    public final boolean handles(Uri uri) {
        return com.bumptech.glide.load.a.a.b.isMediaStoreUri(uri);
    }
}
