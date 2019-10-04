package c.b.a.c.c;

import c.b.a.c.a.d;
import c.b.a.c.c.u;
import c.b.a.c.f;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* renamed from: c.b.a.c.c.c  reason: case insensitive filesystem */
/* compiled from: ByteArrayLoader */
public class C0368c<Data> implements u<byte[], Data> {

    /* renamed from: a  reason: collision with root package name */
    public final b<Data> f4075a;

    /* renamed from: c.b.a.c.c.c$a */
    /* compiled from: ByteArrayLoader */
    public static class a implements v<byte[], ByteBuffer> {
        public u<byte[], ByteBuffer> a(y yVar) {
            return new C0368c(new C0367b(this));
        }
    }

    /* renamed from: c.b.a.c.c.c$b */
    /* compiled from: ByteArrayLoader */
    public interface b<Data> {
        Class<Data> a();

        Data a(byte[] bArr);
    }

    /* renamed from: c.b.a.c.c.c$c  reason: collision with other inner class name */
    /* compiled from: ByteArrayLoader */
    private static class C0058c<Data> implements c.b.a.c.a.d<Data> {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f4076a;

        /* renamed from: b  reason: collision with root package name */
        public final b<Data> f4077b;

        public C0058c(byte[] bArr, b<Data> bVar) {
            this.f4076a = bArr;
            this.f4077b = bVar;
        }

        public void a(Priority priority, d.a<? super Data> aVar) {
            aVar.a(this.f4077b.a(this.f4076a));
        }

        public void b() {
        }

        public DataSource c() {
            return DataSource.LOCAL;
        }

        public void cancel() {
        }

        public Class<Data> a() {
            return this.f4077b.a();
        }
    }

    /* renamed from: c.b.a.c.c.c$d */
    /* compiled from: ByteArrayLoader */
    public static class d implements v<byte[], InputStream> {
        public u<byte[], InputStream> a(y yVar) {
            return new C0368c(new C0369d(this));
        }
    }

    public C0368c(b<Data> bVar) {
        this.f4075a = bVar;
    }

    public boolean a(byte[] bArr) {
        return true;
    }

    public u.a<Data> a(byte[] bArr, int i2, int i3, f fVar) {
        return new u.a<>(new c.b.a.h.b(bArr), new C0058c(bArr, this.f4075a));
    }
}
