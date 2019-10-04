package com.bumptech.glide.load.a.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.b.a.b;
import com.bumptech.glide.load.c;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final a f2099a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final a f2100b;
    private final d c;
    private final b d;
    private final ContentResolver e;
    private final List<ImageHeaderParser> f;

    e(List<ImageHeaderParser> list, d dVar, b bVar, ContentResolver contentResolver) {
        this(list, f2099a, dVar, bVar, contentResolver);
    }

    private e(List<ImageHeaderParser> list, a aVar, d dVar, b bVar, ContentResolver contentResolver) {
        this.f2100b = aVar;
        this.c = dVar;
        this.d = bVar;
        this.e = contentResolver;
        this.f = list;
    }

    /* access modifiers changed from: package-private */
    public final int a(Uri uri) {
        InputStream inputStream = null;
        try {
            InputStream openInputStream = this.e.openInputStream(uri);
            int orientation = c.getOrientation(this.f, openInputStream, this.d);
            if (openInputStream != null) {
                try {
                    openInputStream.close();
                } catch (IOException unused) {
                }
            }
            return orientation;
        } catch (IOException | NullPointerException unused2) {
            if (Log.isLoggable("ThumbStreamOpener", 3)) {
                new StringBuilder("Failed to open uri: ").append(uri);
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
            }
            return -1;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    public final InputStream open(Uri uri) throws FileNotFoundException {
        String b2 = b(uri);
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        File file = this.f2100b.get(b2);
        if (!(this.f2100b.exists(file) && 0 < this.f2100b.length(file))) {
            return null;
        }
        Uri fromFile = Uri.fromFile(file);
        try {
            return this.e.openInputStream(fromFile);
        } catch (NullPointerException e2) {
            throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e2));
        }
    }

    private String b(Uri uri) {
        Cursor query = this.c.query(uri);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    return query.getString(0);
                }
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }
        if (query != null) {
            query.close();
        }
        return null;
    }
}
