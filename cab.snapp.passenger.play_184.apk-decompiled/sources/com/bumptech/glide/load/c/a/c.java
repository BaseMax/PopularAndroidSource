package com.bumptech.glide.load.c.a;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.a.a.b;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.c.o;
import com.bumptech.glide.load.c.r;
import com.bumptech.glide.load.g;
import java.io.InputStream;

public final class c implements n<Uri, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f2259a;

    public static class a implements o<Uri, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f2260a;

        public final void teardown() {
        }

        public a(Context context) {
            this.f2260a = context;
        }

        public final n<Uri, InputStream> build(r rVar) {
            return new c(this.f2260a);
        }
    }

    public c(Context context) {
        this.f2259a = context.getApplicationContext();
    }

    public final n.a<InputStream> buildLoadData(Uri uri, int i, int i2, g gVar) {
        if (b.isThumbnailSize(i, i2)) {
            return new n.a<>(new com.bumptech.glide.f.c(uri), com.bumptech.glide.load.a.a.c.buildImageFetcher(this.f2259a, uri));
        }
        return null;
    }

    public final boolean handles(Uri uri) {
        return b.isMediaStoreImageUri(uri);
    }
}
