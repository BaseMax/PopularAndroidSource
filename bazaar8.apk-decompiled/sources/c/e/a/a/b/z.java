package c.e.a.a.b;

import c.e.a.a.o.I;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;

/* compiled from: FloatResamplingAudioProcessor */
public final class z extends u {

    /* renamed from: g  reason: collision with root package name */
    public static final int f7519g = Float.floatToIntBits(Float.NaN);

    public boolean a(int i2, int i3, int i4) {
        if (I.e(i4)) {
            return b(i2, i3, i4);
        }
        throw new AudioProcessor.UnhandledFormatException(i2, i3, i4);
    }

    public boolean s() {
        return I.e(this.f7505c);
    }

    public int w() {
        return 4;
    }

    public void a(ByteBuffer byteBuffer) {
        boolean z = this.f7505c == 1073741824;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        if (!z) {
            i2 = (i2 / 3) * 4;
        }
        ByteBuffer a2 = a(i2);
        if (z) {
            while (position < limit) {
                a((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), a2);
                position += 4;
            }
        } else {
            while (position < limit) {
                a(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), a2);
                position += 3;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        a2.flip();
    }

    public static void a(int i2, ByteBuffer byteBuffer) {
        double d2 = (double) i2;
        Double.isNaN(d2);
        int floatToIntBits = Float.floatToIntBits((float) (d2 * 4.656612875245797E-10d));
        if (floatToIntBits == f7519g) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }
}
