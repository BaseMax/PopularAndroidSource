package com.bumptech.glide.load.c;

import android.util.Base64;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class e<Model, Data> implements n<Model, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final a<Data> f2270a;

    public interface a<Data> {
        void close(Data data) throws IOException;

        Data decode(String str) throws IllegalArgumentException;

        Class<Data> getDataClass();
    }

    static final class b<Data> implements d<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final String f2271a;

        /* renamed from: b  reason: collision with root package name */
        private final a<Data> f2272b;
        private Data c;

        public final void cancel() {
        }

        b(String str, a<Data> aVar) {
            this.f2271a = str;
            this.f2272b = aVar;
        }

        public final void loadData(Priority priority, d.a<? super Data> aVar) {
            try {
                this.c = this.f2272b.decode(this.f2271a);
                aVar.onDataReady(this.c);
            } catch (IllegalArgumentException e) {
                aVar.onLoadFailed(e);
            }
        }

        public final void cleanup() {
            try {
                this.f2272b.close(this.c);
            } catch (IOException unused) {
            }
        }

        public final Class<Data> getDataClass() {
            return this.f2272b.getDataClass();
        }

        public final DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    public static final class c<Model> implements o<Model, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final a<InputStream> f2273a = new a<InputStream>() {
            public final InputStream decode(String str) {
                if (str.startsWith("data:image")) {
                    int indexOf = str.indexOf(44);
                    if (indexOf == -1) {
                        throw new IllegalArgumentException("Missing comma in data URL.");
                    } else if (str.substring(0, indexOf).endsWith(";base64")) {
                        return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                    } else {
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                } else {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
            }

            public final void close(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            public final Class<InputStream> getDataClass() {
                return InputStream.class;
            }
        };

        public final void teardown() {
        }

        public final n<Model, InputStream> build(r rVar) {
            return new e(this.f2273a);
        }
    }

    public e(a<Data> aVar) {
        this.f2270a = aVar;
    }

    public final n.a<Data> buildLoadData(Model model, int i, int i2, g gVar) {
        return new n.a<>(new com.bumptech.glide.f.c(model), new b(model.toString(), this.f2270a));
    }

    public final boolean handles(Model model) {
        return model.toString().startsWith("data:image");
    }
}
