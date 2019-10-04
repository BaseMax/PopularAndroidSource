package com.bumptech.glide.load.c;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.a.i;
import com.bumptech.glide.load.a.n;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class w<Data> implements n<Uri, Data> {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f2317a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"file", "android.resource", FirebaseAnalytics.b.CONTENT})));

    /* renamed from: b  reason: collision with root package name */
    private final c<Data> f2318b;

    public static final class a implements o<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f2319a;

        public final void teardown() {
        }

        public a(ContentResolver contentResolver) {
            this.f2319a = contentResolver;
        }

        public final n<Uri, AssetFileDescriptor> build(r rVar) {
            return new w(this);
        }

        public final com.bumptech.glide.load.a.d<AssetFileDescriptor> build(Uri uri) {
            return new com.bumptech.glide.load.a.a(this.f2319a, uri);
        }
    }

    public static class b implements o<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f2320a;

        public final void teardown() {
        }

        public b(ContentResolver contentResolver) {
            this.f2320a = contentResolver;
        }

        public final com.bumptech.glide.load.a.d<ParcelFileDescriptor> build(Uri uri) {
            return new i(this.f2320a, uri);
        }

        public final n<Uri, ParcelFileDescriptor> build(r rVar) {
            return new w(this);
        }
    }

    public interface c<Data> {
        com.bumptech.glide.load.a.d<Data> build(Uri uri);
    }

    public static class d implements o<Uri, InputStream>, c<InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f2321a;

        public final void teardown() {
        }

        public d(ContentResolver contentResolver) {
            this.f2321a = contentResolver;
        }

        public final com.bumptech.glide.load.a.d<InputStream> build(Uri uri) {
            return new n(this.f2321a, uri);
        }

        public final n<Uri, InputStream> build(r rVar) {
            return new w(this);
        }
    }

    public w(c<Data> cVar) {
        this.f2318b = cVar;
    }

    public final n.a<Data> buildLoadData(Uri uri, int i, int i2, g gVar) {
        return new n.a<>(new com.bumptech.glide.f.c(uri), this.f2318b.build(uri));
    }

    public final boolean handles(Uri uri) {
        return f2317a.contains(uri.getScheme());
    }
}
