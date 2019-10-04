package c.b.a.c.d.b;

import c.b.a.c.a.e;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferRewinder */
public class a implements e<ByteBuffer> {

    /* renamed from: a  reason: collision with root package name */
    public final ByteBuffer f4212a;

    /* renamed from: c.b.a.c.d.b.a$a  reason: collision with other inner class name */
    /* compiled from: ByteBufferRewinder */
    public static class C0060a implements e.a<ByteBuffer> {
        public e<ByteBuffer> a(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }

        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }
    }

    public a(ByteBuffer byteBuffer) {
        this.f4212a = byteBuffer;
    }

    public void b() {
    }

    public ByteBuffer a() {
        this.f4212a.position(0);
        return this.f4212a;
    }
}
