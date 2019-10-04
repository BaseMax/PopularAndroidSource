package com.bumptech.glide.load.c.a;

import com.bumptech.glide.load.c.g;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.c.o;
import com.bumptech.glide.load.c.r;
import java.io.InputStream;
import java.net.URL;

public final class e implements n<URL, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final n<g, InputStream> f2263a;

    public static class a implements o<URL, InputStream> {
        public final void teardown() {
        }

        public final n<URL, InputStream> build(r rVar) {
            return new e(rVar.build(g.class, InputStream.class));
        }
    }

    public final boolean handles(URL url) {
        return true;
    }

    public e(n<g, InputStream> nVar) {
        this.f2263a = nVar;
    }

    public final n.a<InputStream> buildLoadData(URL url, int i, int i2, com.bumptech.glide.load.g gVar) {
        return this.f2263a.buildLoadData(new g(url), i, i2, gVar);
    }
}
