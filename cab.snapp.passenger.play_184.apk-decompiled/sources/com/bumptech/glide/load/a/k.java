package com.bumptech.glide.load.a;

import com.bumptech.glide.load.a.e;
import com.bumptech.glide.load.b.a.b;
import com.bumptech.glide.load.resource.bitmap.r;
import java.io.IOException;
import java.io.InputStream;

public final class k implements e<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final r f2112a;

    public static final class a implements e.a<InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final b f2113a;

        public a(b bVar) {
            this.f2113a = bVar;
        }

        public final e<InputStream> build(InputStream inputStream) {
            return new k(inputStream, this.f2113a);
        }

        public final Class<InputStream> getDataClass() {
            return InputStream.class;
        }
    }

    k(InputStream inputStream, b bVar) {
        this.f2112a = new r(inputStream, bVar);
        this.f2112a.mark(5242880);
    }

    public final InputStream rewindAndGet() throws IOException {
        this.f2112a.reset();
        return this.f2112a;
    }

    public final void cleanup() {
        this.f2112a.release();
    }
}
