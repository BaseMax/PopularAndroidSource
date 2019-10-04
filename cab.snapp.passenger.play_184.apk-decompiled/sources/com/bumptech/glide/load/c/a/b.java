package com.bumptech.glide.load.c.a;

import android.net.Uri;
import com.adjust.sdk.Constants;
import com.bumptech.glide.load.c.g;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.c.o;
import com.bumptech.glide.load.c.r;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class b implements n<Uri, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f2256a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"http", Constants.SCHEME})));

    /* renamed from: b  reason: collision with root package name */
    private final n<g, InputStream> f2257b;

    public static class a implements o<Uri, InputStream> {
        public final void teardown() {
        }

        public final n<Uri, InputStream> build(r rVar) {
            return new b(rVar.build(g.class, InputStream.class));
        }
    }

    public b(n<g, InputStream> nVar) {
        this.f2257b = nVar;
    }

    public final n.a<InputStream> buildLoadData(Uri uri, int i, int i2, com.bumptech.glide.load.g gVar) {
        return this.f2257b.buildLoadData(new g(uri.toString()), i, i2, gVar);
    }

    public final boolean handles(Uri uri) {
        return f2256a.contains(uri.getScheme());
    }
}
