package c.e.a.a.b;

import c.e.a.a.o.I;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;

/* compiled from: TrimmingAudioProcessor */
public final class G extends u {

    /* renamed from: g  reason: collision with root package name */
    public boolean f7410g;

    /* renamed from: h  reason: collision with root package name */
    public int f7411h;

    /* renamed from: i  reason: collision with root package name */
    public int f7412i;

    /* renamed from: j  reason: collision with root package name */
    public int f7413j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f7414k;

    /* renamed from: l  reason: collision with root package name */
    public int f7415l;
    public byte[] m = I.f9570f;
    public int n;
    public long o;

    public void a(int i2, int i3) {
        this.f7411h = i2;
        this.f7412i = i3;
    }

    public void b() {
        if (this.f7414k) {
            this.f7415l = 0;
        }
        this.n = 0;
    }

    public boolean d() {
        return super.d() && this.n == 0;
    }

    public void e() {
        this.m = I.f9570f;
    }

    public long f() {
        return this.o;
    }

    public void g() {
        this.o = 0;
    }

    public boolean s() {
        return this.f7410g;
    }

    public ByteBuffer t() {
        if (super.d()) {
            int i2 = this.n;
            if (i2 > 0) {
                a(i2).put(this.m, 0, this.n).flip();
                this.n = 0;
            }
        }
        return super.t();
    }

    public boolean a(int i2, int i3, int i4) {
        if (i4 == 2) {
            int i5 = this.n;
            if (i5 > 0) {
                this.o += (long) (i5 / this.f7413j);
            }
            this.f7413j = I.b(2, i3);
            int i6 = this.f7412i;
            int i7 = this.f7413j;
            this.m = new byte[(i6 * i7)];
            this.n = 0;
            int i8 = this.f7411h;
            this.f7415l = i7 * i8;
            boolean z = this.f7410g;
            this.f7410g = (i8 == 0 && i6 == 0) ? false : true;
            this.f7414k = false;
            b(i2, i3, i4);
            if (z != this.f7410g) {
                return true;
            }
            return false;
        }
        throw new AudioProcessor.UnhandledFormatException(i2, i3, i4);
    }

    public void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        if (i2 != 0) {
            this.f7414k = true;
            int min = Math.min(i2, this.f7415l);
            this.o += (long) (min / this.f7413j);
            this.f7415l -= min;
            byteBuffer.position(position + min);
            if (this.f7415l <= 0) {
                int i3 = i2 - min;
                int length = (this.n + i3) - this.m.length;
                ByteBuffer a2 = a(length);
                int a3 = I.a(length, 0, this.n);
                a2.put(this.m, 0, a3);
                int a4 = I.a(length - a3, 0, i3);
                byteBuffer.limit(byteBuffer.position() + a4);
                a2.put(byteBuffer);
                byteBuffer.limit(limit);
                int i4 = i3 - a4;
                this.n -= a3;
                byte[] bArr = this.m;
                System.arraycopy(bArr, a3, bArr, 0, this.n);
                byteBuffer.get(this.m, this.n, i4);
                this.n += i4;
                a2.flip();
            }
        }
    }
}
