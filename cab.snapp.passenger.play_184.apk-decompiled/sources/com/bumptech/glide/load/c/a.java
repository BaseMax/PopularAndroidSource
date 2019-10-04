package com.bumptech.glide.load.c;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.a.h;
import com.bumptech.glide.load.a.m;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.io.InputStream;

public final class a<Data> implements n<Uri, Data> {

    /* renamed from: a  reason: collision with root package name */
    private static final int f2251a = 22;

    /* renamed from: b  reason: collision with root package name */
    private final AssetManager f2252b;
    private final C0043a<Data> c;

    /* renamed from: com.bumptech.glide.load.c.a$a  reason: collision with other inner class name */
    public interface C0043a<Data> {
        d<Data> buildFetcher(AssetManager assetManager, String str);
    }

    public static class b implements C0043a<ParcelFileDescriptor>, o<Uri, ParcelFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final AssetManager f2255a;

        public final void teardown() {
        }

        public b(AssetManager assetManager) {
            this.f2255a = assetManager;
        }

        public final n<Uri, ParcelFileDescriptor> build(r rVar) {
            return new a(this.f2255a, this);
        }

        public final d<ParcelFileDescriptor> buildFetcher(AssetManager assetManager, String str) {
            return new h(assetManager, str);
        }
    }

    public static class c implements C0043a<InputStream>, o<Uri, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final AssetManager f2258a;

        public final void teardown() {
        }

        public c(AssetManager assetManager) {
            this.f2258a = assetManager;
        }

        public final n<Uri, InputStream> build(r rVar) {
            return new a(this.f2258a, this);
        }

        public final d<InputStream> buildFetcher(AssetManager assetManager, String str) {
            return new m(assetManager, str);
        }
    }

    public a(AssetManager assetManager, C0043a<Data> aVar) {
        this.f2252b = assetManager;
        this.c = aVar;
    }

    public final n.a<Data> buildLoadData(Uri uri, int i, int i2, g gVar) {
        return new n.a<>(new com.bumptech.glide.f.c(uri), this.c.buildFetcher(this.f2252b, uri.toString().substring(f2251a)));
    }

    public final boolean handles(Uri uri) {
        if (!"file".equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || !"android_asset".equals(uri.getPathSegments().get(0))) {
            return false;
        }
        return true;
    }
}
