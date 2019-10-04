package c.e.a.a.b;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: BaseAudioProcessor */
public abstract class u implements AudioProcessor {

    /* renamed from: a  reason: collision with root package name */
    public int f7503a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f7504b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f7505c = -1;

    /* renamed from: d  reason: collision with root package name */
    public ByteBuffer f7506d;

    /* renamed from: e  reason: collision with root package name */
    public ByteBuffer f7507e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7508f;

    public u() {
        ByteBuffer byteBuffer = AudioProcessor.f12518a;
        this.f7506d = byteBuffer;
        this.f7507e = byteBuffer;
    }

    public final ByteBuffer a(int i2) {
        if (this.f7506d.capacity() < i2) {
            this.f7506d = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
        } else {
            this.f7506d.clear();
        }
        ByteBuffer byteBuffer = this.f7506d;
        this.f7507e = byteBuffer;
        return byteBuffer;
    }

    public void b() {
    }

    public final boolean b(int i2, int i3, int i4) {
        if (i2 == this.f7503a && i3 == this.f7504b && i4 == this.f7505c) {
            return false;
        }
        this.f7503a = i2;
        this.f7504b = i3;
        this.f7505c = i4;
        return true;
    }

    public void c() {
    }

    public boolean d() {
        return this.f7508f && this.f7507e == AudioProcessor.f12518a;
    }

    public void e() {
    }

    public final void flush() {
        this.f7507e = AudioProcessor.f12518a;
        this.f7508f = false;
        b();
    }

    public final void reset() {
        flush();
        this.f7506d = AudioProcessor.f12518a;
        this.f7503a = -1;
        this.f7504b = -1;
        this.f7505c = -1;
        e();
    }

    public boolean s() {
        return this.f7503a != -1;
    }

    public ByteBuffer t() {
        ByteBuffer byteBuffer = this.f7507e;
        this.f7507e = AudioProcessor.f12518a;
        return byteBuffer;
    }

    public int u() {
        return this.f7504b;
    }

    public int v() {
        return this.f7503a;
    }

    public int w() {
        return this.f7505c;
    }

    public final void x() {
        this.f7508f = true;
        c();
    }

    public final boolean a() {
        return this.f7507e.hasRemaining();
    }
}
