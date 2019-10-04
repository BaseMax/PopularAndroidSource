package com.bumptech.glide.load.c;

import android.os.ParcelFileDescriptor;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.g;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public final class f<Data> implements n<File, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final d<Data> f2275a;

    public static class a<Data> implements o<File, Data> {

        /* renamed from: a  reason: collision with root package name */
        private final d<Data> f2276a;

        public final void teardown() {
        }

        public a(d<Data> dVar) {
            this.f2276a = dVar;
        }

        public final n<File, Data> build(r rVar) {
            return new f(this.f2276a);
        }
    }

    public static class b extends a<ParcelFileDescriptor> {
        public b() {
            super(new d<ParcelFileDescriptor>() {
                public final ParcelFileDescriptor open(File file) throws FileNotFoundException {
                    return ParcelFileDescriptor.open(file, 268435456);
                }

                public final void close(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                    parcelFileDescriptor.close();
                }

                public final Class<ParcelFileDescriptor> getDataClass() {
                    return ParcelFileDescriptor.class;
                }
            });
        }
    }

    static final class c<Data> implements com.bumptech.glide.load.a.d<Data> {

        /* renamed from: a  reason: collision with root package name */
        private final File f2277a;

        /* renamed from: b  reason: collision with root package name */
        private final d<Data> f2278b;
        private Data c;

        public final void cancel() {
        }

        c(File file, d<Data> dVar) {
            this.f2277a = file;
            this.f2278b = dVar;
        }

        public final void loadData(Priority priority, d.a<? super Data> aVar) {
            try {
                this.c = this.f2278b.open(this.f2277a);
                aVar.onDataReady(this.c);
            } catch (FileNotFoundException e) {
                aVar.onLoadFailed(e);
            }
        }

        public final void cleanup() {
            Data data = this.c;
            if (data != null) {
                try {
                    this.f2278b.close(data);
                } catch (IOException unused) {
                }
            }
        }

        public final Class<Data> getDataClass() {
            return this.f2278b.getDataClass();
        }

        public final DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    public interface d<Data> {
        void close(Data data) throws IOException;

        Class<Data> getDataClass();

        Data open(File file) throws FileNotFoundException;
    }

    public static class e extends a<InputStream> {
        public e() {
            super(new d<InputStream>() {
                public final InputStream open(File file) throws FileNotFoundException {
                    return new FileInputStream(file);
                }

                public final void close(InputStream inputStream) throws IOException {
                    inputStream.close();
                }

                public final Class<InputStream> getDataClass() {
                    return InputStream.class;
                }
            });
        }
    }

    public final boolean handles(File file) {
        return true;
    }

    public f(d<Data> dVar) {
        this.f2275a = dVar;
    }

    public final n.a<Data> buildLoadData(File file, int i, int i2, g gVar) {
        return new n.a<>(new com.bumptech.glide.f.c(file), new c(file, this.f2275a));
    }
}
