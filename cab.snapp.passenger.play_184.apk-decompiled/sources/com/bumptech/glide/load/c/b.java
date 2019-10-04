package com.bumptech.glide.load.c;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class b<Data> implements n<byte[], Data> {

    /* renamed from: a  reason: collision with root package name */
    private final C0045b<Data> f2264a;

    public static class a implements o<byte[], ByteBuffer> {
        public final void teardown() {
        }

        public final n<byte[], ByteBuffer> build(r rVar) {
            return new b(new C0045b<ByteBuffer>() {
                public final ByteBuffer convert(byte[] bArr) {
                    return ByteBuffer.wrap(bArr);
                }

                public final Class<ByteBuffer> getDataClass() {
                    return ByteBuffer.class;
                }
            });
        }
    }

    /* renamed from: com.bumptech.glide.load.c.b$b  reason: collision with other inner class name */
    public interface C0045b<Data> {
        Data convert(byte[] bArr);

        Class<Data> getDataClass();
    }

    static class c<Data> implements com.bumptech.glide.load.a.d<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f2266a;

        /* renamed from: b  reason: collision with root package name */
        private final C0045b<Data> f2267b;

        public final void cancel() {
        }

        public final void cleanup() {
        }

        c(byte[] bArr, C0045b<Data> bVar) {
            this.f2266a = bArr;
            this.f2267b = bVar;
        }

        public final void loadData(Priority priority, d.a<? super Data> aVar) {
            aVar.onDataReady(this.f2267b.convert(this.f2266a));
        }

        public final Class<Data> getDataClass() {
            return this.f2267b.getDataClass();
        }

        public final DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    public static class d implements o<byte[], InputStream> {
        public final void teardown() {
        }

        public final n<byte[], InputStream> build(r rVar) {
            return new b(new C0045b<InputStream>() {
                public final InputStream convert(byte[] bArr) {
                    return new ByteArrayInputStream(bArr);
                }

                public final Class<InputStream> getDataClass() {
                    return InputStream.class;
                }
            });
        }
    }

    public final boolean handles(byte[] bArr) {
        return true;
    }

    public b(C0045b<Data> bVar) {
        this.f2264a = bVar;
    }

    public final n.a<Data> buildLoadData(byte[] bArr, int i, int i2, g gVar) {
        return new n.a<>(new com.bumptech.glide.f.c(bArr), new c(bArr, this.f2264a));
    }
}
