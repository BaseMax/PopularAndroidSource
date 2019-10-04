package c.e.a.a.c;

import java.nio.ByteBuffer;

/* compiled from: DecoderInputBuffer */
public class f extends a {

    /* renamed from: b  reason: collision with root package name */
    public final c f7544b = new c();

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f7545c;

    /* renamed from: d  reason: collision with root package name */
    public long f7546d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7547e;

    public f(int i2) {
        this.f7547e = i2;
    }

    public static f n() {
        return new f(0);
    }

    public final ByteBuffer f(int i2) {
        int i3 = this.f7547e;
        if (i3 == 1) {
            return ByteBuffer.allocate(i2);
        }
        if (i3 == 2) {
            return ByteBuffer.allocateDirect(i2);
        }
        ByteBuffer byteBuffer = this.f7545c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        throw new IllegalStateException("Buffer too small (" + capacity + " < " + i2 + ")");
    }

    public void g(int i2) {
        ByteBuffer byteBuffer = this.f7545c;
        if (byteBuffer == null) {
            this.f7545c = f(i2);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f7545c.position();
        int i3 = i2 + position;
        if (capacity < i3) {
            ByteBuffer f2 = f(i3);
            if (position > 0) {
                this.f7545c.position(0);
                this.f7545c.limit(position);
                f2.put(this.f7545c);
            }
            this.f7545c = f2;
        }
    }

    public final void k() {
        this.f7545c.flip();
    }

    public final boolean l() {
        return d(1073741824);
    }

    public final boolean m() {
        return this.f7545c == null && this.f7547e == 0;
    }

    public void g() {
        super.g();
        ByteBuffer byteBuffer = this.f7545c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }
}
