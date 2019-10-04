package com.bumptech.glide.load.c.a;

import com.bumptech.glide.load.a.j;
import com.bumptech.glide.load.c.g;
import com.bumptech.glide.load.c.m;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.c.o;
import com.bumptech.glide.load.c.r;
import com.bumptech.glide.load.f;
import java.io.InputStream;

public final class a implements n<g, InputStream> {
    public static final f<Integer> TIMEOUT = f.memory("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    /* renamed from: a  reason: collision with root package name */
    private final m<g, g> f2253a;

    /* renamed from: com.bumptech.glide.load.c.a.a$a  reason: collision with other inner class name */
    public static class C0044a implements o<g, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final m<g, g> f2254a = new m<>(500);

        public final void teardown() {
        }

        public final n<g, InputStream> build(r rVar) {
            return new a(this.f2254a);
        }
    }

    public final boolean handles(g gVar) {
        return true;
    }

    public a() {
        this(null);
    }

    public a(m<g, g> mVar) {
        this.f2253a = mVar;
    }

    public final n.a<InputStream> buildLoadData(g gVar, int i, int i2, com.bumptech.glide.load.g gVar2) {
        m<g, g> mVar = this.f2253a;
        if (mVar != null) {
            g gVar3 = mVar.get(gVar, 0, 0);
            if (gVar3 == null) {
                this.f2253a.put(gVar, 0, 0, gVar);
            } else {
                gVar = gVar3;
            }
        }
        return new n.a<>(gVar, new j(gVar, ((Integer) gVar2.get(TIMEOUT)).intValue()));
    }
}
