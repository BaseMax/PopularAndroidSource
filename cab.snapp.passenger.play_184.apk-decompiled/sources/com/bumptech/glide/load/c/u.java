package com.bumptech.glide.load.c;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.io.File;
import java.io.InputStream;

public final class u<Data> implements n<String, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final n<Uri, Data> f2313a;

    public static final class a implements o<String, AssetFileDescriptor> {
        public final void teardown() {
        }

        public final n<String, AssetFileDescriptor> build(r rVar) {
            return new u(rVar.build(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class b implements o<String, ParcelFileDescriptor> {
        public final void teardown() {
        }

        public final n<String, ParcelFileDescriptor> build(r rVar) {
            return new u(rVar.build(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public static class c implements o<String, InputStream> {
        public final void teardown() {
        }

        public final n<String, InputStream> build(r rVar) {
            return new u(rVar.build(Uri.class, InputStream.class));
        }
    }

    public final boolean handles(String str) {
        return true;
    }

    public u(n<Uri, Data> nVar) {
        this.f2313a = nVar;
    }

    private static Uri a(String str) {
        return Uri.fromFile(new File(str));
    }

    public final n.a<Data> buildLoadData(String str, int i, int i2, g gVar) {
        Uri uri;
        if (TextUtils.isEmpty(str)) {
            uri = null;
        } else if (str.charAt(0) == '/') {
            uri = a(str);
        } else {
            Uri parse = Uri.parse(str);
            if (parse.getScheme() == null) {
                uri = a(str);
            } else {
                uri = parse;
            }
        }
        if (uri == null || !this.f2313a.handles(uri)) {
            return null;
        }
        return this.f2313a.buildLoadData(uri, i, i2, gVar);
    }
}
