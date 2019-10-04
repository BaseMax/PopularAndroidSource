package com.bumptech.glide.load.c;

import com.bumptech.glide.Priority;
import com.bumptech.glide.f.c;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class d implements n<File, ByteBuffer> {

    static final class a implements com.bumptech.glide.load.a.d<ByteBuffer> {

        /* renamed from: a  reason: collision with root package name */
        private final File f2269a;

        public final void cancel() {
        }

        public final void cleanup() {
        }

        a(File file) {
            this.f2269a = file;
        }

        public final void loadData(Priority priority, d.a<? super ByteBuffer> aVar) {
            try {
                aVar.onDataReady(com.bumptech.glide.g.a.fromFile(this.f2269a));
            } catch (IOException e) {
                aVar.onLoadFailed(e);
            }
        }

        public final Class<ByteBuffer> getDataClass() {
            return ByteBuffer.class;
        }

        public final DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    public static class b implements o<File, ByteBuffer> {
        public final void teardown() {
        }

        public final n<File, ByteBuffer> build(r rVar) {
            return new d();
        }
    }

    public final boolean handles(File file) {
        return true;
    }

    public final n.a<ByteBuffer> buildLoadData(File file, int i, int i2, g gVar) {
        return new n.a<>(new c(file), new a(file));
    }
}
