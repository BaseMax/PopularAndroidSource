package com.bumptech.glide.load.c;

import android.net.Uri;
import com.adjust.sdk.Constants;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class x<Data> implements n<Uri, Data> {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f2322a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"http", Constants.SCHEME})));

    /* renamed from: b  reason: collision with root package name */
    private final n<g, Data> f2323b;

    public static class a implements o<Uri, InputStream> {
        public final void teardown() {
        }

        public final n<Uri, InputStream> build(r rVar) {
            return new x(rVar.build(g.class, InputStream.class));
        }
    }

    public x(n<g, Data> nVar) {
        this.f2323b = nVar;
    }

    public final n.a<Data> buildLoadData(Uri uri, int i, int i2, g gVar) {
        return this.f2323b.buildLoadData(new g(uri.toString()), i, i2, gVar);
    }

    public final boolean handles(Uri uri) {
        return f2322a.contains(uri.getScheme());
    }
}
