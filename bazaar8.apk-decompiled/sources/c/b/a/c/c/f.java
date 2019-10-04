package c.b.a.c.c;

import android.util.Log;
import c.b.a.c.a.d;
import c.b.a.c.c.u;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferFileLoader */
public class f implements u<File, ByteBuffer> {

    /* compiled from: ByteBufferFileLoader */
    private static final class a implements d<ByteBuffer> {

        /* renamed from: a  reason: collision with root package name */
        public final File f4079a;

        public a(File file) {
            this.f4079a = file;
        }

        public void a(Priority priority, d.a<? super ByteBuffer> aVar) {
            try {
                aVar.a(c.b.a.i.a.a(this.f4079a));
            } catch (IOException e2) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e2);
                }
                aVar.a((Exception) e2);
            }
        }

        public void b() {
        }

        public DataSource c() {
            return DataSource.LOCAL;
        }

        public void cancel() {
        }

        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }
    }

    /* compiled from: ByteBufferFileLoader */
    public static class b implements v<File, ByteBuffer> {
        public u<File, ByteBuffer> a(y yVar) {
            return new f();
        }
    }

    public boolean a(File file) {
        return true;
    }

    public u.a<ByteBuffer> a(File file, int i2, int i3, c.b.a.c.f fVar) {
        return new u.a<>(new c.b.a.h.b(file), new a(file));
    }
}
