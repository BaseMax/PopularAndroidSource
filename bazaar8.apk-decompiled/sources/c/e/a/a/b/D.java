package c.e.a.a.b;

import c.e.a.a.o.I;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;

/* compiled from: SilenceSkippingAudioProcessor */
public final class D extends u {

    /* renamed from: g  reason: collision with root package name */
    public int f7380g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7381h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f7382i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f7383j;

    /* renamed from: k  reason: collision with root package name */
    public int f7384k;

    /* renamed from: l  reason: collision with root package name */
    public int f7385l;
    public int m;
    public boolean n;
    public long o;

    public D() {
        byte[] bArr = I.f9570f;
        this.f7382i = bArr;
        this.f7383j = bArr;
    }

    public void a(boolean z) {
        this.f7381h = z;
        flush();
    }

    public void b() {
        if (s()) {
            int a2 = a(150000) * this.f7380g;
            if (this.f7382i.length != a2) {
                this.f7382i = new byte[a2];
            }
            this.m = a(20000) * this.f7380g;
            int length = this.f7383j.length;
            int i2 = this.m;
            if (length != i2) {
                this.f7383j = new byte[i2];
            }
        }
        this.f7384k = 0;
        this.o = 0;
        this.f7385l = 0;
        this.n = false;
    }

    public void c() {
        int i2 = this.f7385l;
        if (i2 > 0) {
            a(this.f7382i, i2);
        }
        if (!this.n) {
            this.o += (long) (this.m / this.f7380g);
        }
    }

    public final void d(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        a(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.n = true;
        }
    }

    public void e() {
        this.f7381h = false;
        this.m = 0;
        byte[] bArr = I.f9570f;
        this.f7382i = bArr;
        this.f7383j = bArr;
    }

    public long f() {
        return this.o;
    }

    public final void g(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int c2 = c(byteBuffer);
        byteBuffer.limit(c2);
        this.o += (long) (byteBuffer.remaining() / this.f7380g);
        a(byteBuffer, this.f7383j, this.m);
        if (c2 < limit) {
            a(this.f7383j, this.m);
            this.f7384k = 0;
            byteBuffer.limit(limit);
        }
    }

    public boolean s() {
        return super.s() && this.f7381h;
    }

    public final void f(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f7382i.length));
        int b2 = b(byteBuffer);
        if (b2 == byteBuffer.position()) {
            this.f7384k = 1;
        } else {
            byteBuffer.limit(b2);
            d(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    public boolean a(int i2, int i3, int i4) {
        if (i4 == 2) {
            this.f7380g = i3 * 2;
            return b(i2, i3, i4);
        }
        throw new AudioProcessor.UnhandledFormatException(i2, i3, i4);
    }

    public final int c(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position() + 1; position < byteBuffer.limit(); position += 2) {
            if (Math.abs(byteBuffer.get(position)) > 4) {
                int i2 = this.f7380g;
                return i2 * (position / i2);
            }
        }
        return byteBuffer.limit();
    }

    public final void e(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int c2 = c(byteBuffer);
        int position = c2 - byteBuffer.position();
        byte[] bArr = this.f7382i;
        int length = bArr.length;
        int i2 = this.f7385l;
        int i3 = length - i2;
        if (c2 >= limit || position >= i3) {
            int min = Math.min(position, i3);
            byteBuffer.limit(byteBuffer.position() + min);
            byteBuffer.get(this.f7382i, this.f7385l, min);
            this.f7385l += min;
            int i4 = this.f7385l;
            byte[] bArr2 = this.f7382i;
            if (i4 == bArr2.length) {
                if (this.n) {
                    a(bArr2, this.m);
                    this.o += (long) ((this.f7385l - (this.m * 2)) / this.f7380g);
                } else {
                    this.o += (long) ((i4 - this.m) / this.f7380g);
                }
                a(byteBuffer, this.f7382i, this.f7385l);
                this.f7385l = 0;
                this.f7384k = 2;
            }
            byteBuffer.limit(limit);
            return;
        }
        a(bArr, i2);
        this.f7385l = 0;
        this.f7384k = 0;
    }

    public void a(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !a()) {
            int i2 = this.f7384k;
            if (i2 == 0) {
                f(byteBuffer);
            } else if (i2 == 1) {
                e(byteBuffer);
            } else if (i2 == 2) {
                g(byteBuffer);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    public final void a(byte[] bArr, int i2) {
        a(i2).put(bArr, 0, i2).flip();
        if (i2 > 0) {
            this.n = true;
        }
    }

    public final int b(ByteBuffer byteBuffer) {
        for (int limit = byteBuffer.limit() - 1; limit >= byteBuffer.position(); limit -= 2) {
            if (Math.abs(byteBuffer.get(limit)) > 4) {
                int i2 = this.f7380g;
                return ((limit / i2) * i2) + i2;
            }
        }
        return byteBuffer.position();
    }

    public final void a(ByteBuffer byteBuffer, byte[] bArr, int i2) {
        int min = Math.min(byteBuffer.remaining(), this.m);
        int i3 = this.m - min;
        System.arraycopy(bArr, i2 - i3, this.f7383j, 0, i3);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f7383j, i3, min);
    }

    public final int a(long j2) {
        return (int) ((j2 * ((long) this.f7503a)) / RetryManager.NANOSECONDS_IN_MS);
    }
}
