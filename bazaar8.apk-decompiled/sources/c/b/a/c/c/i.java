package c.b.a.c.c;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import c.b.a.c.a.d;
import c.b.a.c.c.u;
import c.b.a.c.f;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: FileLoader */
public class i<Data> implements u<File, Data> {

    /* renamed from: a  reason: collision with root package name */
    public final d<Data> f4086a;

    /* compiled from: FileLoader */
    public static class a<Data> implements v<File, Data> {

        /* renamed from: a  reason: collision with root package name */
        public final d<Data> f4087a;

        public a(d<Data> dVar) {
            this.f4087a = dVar;
        }

        public final u<File, Data> a(y yVar) {
            return new i(this.f4087a);
        }
    }

    /* compiled from: FileLoader */
    public static class b extends a<ParcelFileDescriptor> {
        public b() {
            super(new j());
        }
    }

    /* compiled from: FileLoader */
    private static final class c<Data> implements c.b.a.c.a.d<Data> {

        /* renamed from: a  reason: collision with root package name */
        public final File f4088a;

        /* renamed from: b  reason: collision with root package name */
        public final d<Data> f4089b;

        /* renamed from: c  reason: collision with root package name */
        public Data f4090c;

        public c(File file, d<Data> dVar) {
            this.f4088a = file;
            this.f4089b = dVar;
        }

        public void a(Priority priority, d.a<? super Data> aVar) {
            try {
                this.f4090c = this.f4089b.a(this.f4088a);
                aVar.a(this.f4090c);
            } catch (FileNotFoundException e2) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e2);
                }
                aVar.a((Exception) e2);
            }
        }

        public void b() {
            Data data = this.f4090c;
            if (data != null) {
                try {
                    this.f4089b.a(data);
                } catch (IOException unused) {
                }
            }
        }

        public DataSource c() {
            return DataSource.LOCAL;
        }

        public void cancel() {
        }

        public Class<Data> a() {
            return this.f4089b.a();
        }
    }

    /* compiled from: FileLoader */
    public interface d<Data> {
        Class<Data> a();

        Data a(File file);

        void a(Data data);
    }

    /* compiled from: FileLoader */
    public static class e extends a<InputStream> {
        public e() {
            super(new k());
        }
    }

    public i(d<Data> dVar) {
        this.f4086a = dVar;
    }

    public boolean a(File file) {
        return true;
    }

    public u.a<Data> a(File file, int i2, int i3, f fVar) {
        return new u.a<>(new c.b.a.h.b(file), new c(file, this.f4086a));
    }
}
