package c.e.a.a.b;

import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* compiled from: SonicAudioProcessor */
public final class F implements AudioProcessor {

    /* renamed from: a  reason: collision with root package name */
    public int f7398a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f7399b = -1;

    /* renamed from: c  reason: collision with root package name */
    public float f7400c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    public float f7401d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    public int f7402e = -1;

    /* renamed from: f  reason: collision with root package name */
    public int f7403f = -1;

    /* renamed from: g  reason: collision with root package name */
    public boolean f7404g;

    /* renamed from: h  reason: collision with root package name */
    public E f7405h;

    /* renamed from: i  reason: collision with root package name */
    public ByteBuffer f7406i = AudioProcessor.f12518a;

    /* renamed from: j  reason: collision with root package name */
    public ShortBuffer f7407j = this.f7406i.asShortBuffer();

    /* renamed from: k  reason: collision with root package name */
    public ByteBuffer f7408k = AudioProcessor.f12518a;

    /* renamed from: l  reason: collision with root package name */
    public long f7409l;
    public long m;
    public boolean n;

    public float a(float f2) {
        float a2 = I.a(f2, 0.1f, 8.0f);
        if (this.f7401d != a2) {
            this.f7401d = a2;
            this.f7404g = true;
        }
        flush();
        return a2;
    }

    public float b(float f2) {
        float a2 = I.a(f2, 0.1f, 8.0f);
        if (this.f7400c != a2) {
            this.f7400c = a2;
            this.f7404g = true;
        }
        flush();
        return a2;
    }

    public boolean d() {
        if (this.n) {
            E e2 = this.f7405h;
            if (e2 == null || e2.b() == 0) {
                return true;
            }
        }
        return false;
    }

    public void flush() {
        if (s()) {
            if (this.f7404g) {
                E e2 = new E(this.f7399b, this.f7398a, this.f7400c, this.f7401d, this.f7402e);
                this.f7405h = e2;
            } else {
                E e3 = this.f7405h;
                if (e3 != null) {
                    e3.a();
                }
            }
        }
        this.f7408k = AudioProcessor.f12518a;
        this.f7409l = 0;
        this.m = 0;
        this.n = false;
    }

    public void reset() {
        this.f7400c = 1.0f;
        this.f7401d = 1.0f;
        this.f7398a = -1;
        this.f7399b = -1;
        this.f7402e = -1;
        this.f7406i = AudioProcessor.f12518a;
        this.f7407j = this.f7406i.asShortBuffer();
        this.f7408k = AudioProcessor.f12518a;
        this.f7403f = -1;
        this.f7404g = false;
        this.f7405h = null;
        this.f7409l = 0;
        this.m = 0;
        this.n = false;
    }

    public boolean s() {
        return this.f7399b != -1 && (Math.abs(this.f7400c - 1.0f) >= 0.01f || Math.abs(this.f7401d - 1.0f) >= 0.01f || this.f7402e != this.f7399b);
    }

    public ByteBuffer t() {
        ByteBuffer byteBuffer = this.f7408k;
        this.f7408k = AudioProcessor.f12518a;
        return byteBuffer;
    }

    public int u() {
        return this.f7398a;
    }

    public int v() {
        return this.f7402e;
    }

    public int w() {
        return 2;
    }

    public void x() {
        E e2 = this.f7405h;
        if (e2 != null) {
            e2.d();
        }
        this.n = true;
    }

    public long a(long j2) {
        long j3;
        long j4 = this.m;
        if (j4 >= 1024) {
            int i2 = this.f7402e;
            int i3 = this.f7399b;
            if (i2 == i3) {
                j3 = I.c(j2, this.f7409l, j4);
            } else {
                j3 = I.c(j2, this.f7409l * ((long) i2), j4 * ((long) i3));
            }
            return j3;
        }
        double d2 = (double) this.f7400c;
        double d3 = (double) j2;
        Double.isNaN(d2);
        Double.isNaN(d3);
        return (long) (d2 * d3);
    }

    public boolean a(int i2, int i3, int i4) {
        if (i4 == 2) {
            int i5 = this.f7403f;
            if (i5 == -1) {
                i5 = i2;
            }
            if (this.f7399b == i2 && this.f7398a == i3 && this.f7402e == i5) {
                return false;
            }
            this.f7399b = i2;
            this.f7398a = i3;
            this.f7402e = i5;
            this.f7404g = true;
            return true;
        }
        throw new AudioProcessor.UnhandledFormatException(i2, i3, i4);
    }

    public void a(ByteBuffer byteBuffer) {
        E e2 = this.f7405h;
        C0737e.a(e2);
        E e3 = e2;
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f7409l += (long) remaining;
            e3.b(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int b2 = e3.b() * this.f7398a * 2;
        if (b2 > 0) {
            if (this.f7406i.capacity() < b2) {
                this.f7406i = ByteBuffer.allocateDirect(b2).order(ByteOrder.nativeOrder());
                this.f7407j = this.f7406i.asShortBuffer();
            } else {
                this.f7406i.clear();
                this.f7407j.clear();
            }
            e3.a(this.f7407j);
            this.m += (long) b2;
            this.f7406i.limit(b2);
            this.f7408k = this.f7406i;
        }
    }
}
