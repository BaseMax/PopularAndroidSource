package com.bumptech.glide.load.c.a;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.f.c;
import com.bumptech.glide.load.a.a.b;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.c.o;
import com.bumptech.glide.load.c.r;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.resource.bitmap.w;
import java.io.InputStream;

public final class d implements n<Uri, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f2261a;

    public static class a implements o<Uri, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f2262a;

        public final void teardown() {
        }

        public a(Context context) {
            this.f2262a = context;
        }

        public final n<Uri, InputStream> build(r rVar) {
            return new d(this.f2262a);
        }
    }

    public d(Context context) {
        this.f2261a = context.getApplicationContext();
    }

    public final n.a<InputStream> buildLoadData(Uri uri, int i, int i2, g gVar) {
        if (b.isThumbnailSize(i, i2)) {
            Long l = (Long) gVar.get(w.TARGET_FRAME);
            if (l != null && l.longValue() == -1) {
                return new n.a<>(new c(uri), com.bumptech.glide.load.a.a.c.buildVideoFetcher(this.f2261a, uri));
            }
        }
        return null;
    }

    public final boolean handles(Uri uri) {
        return b.isMediaStoreVideoUri(uri);
    }
}
