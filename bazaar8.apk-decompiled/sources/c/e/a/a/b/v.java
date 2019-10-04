package c.e.a.a.b;

import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: ChannelMappingAudioProcessor */
public final class v extends u {

    /* renamed from: g  reason: collision with root package name */
    public int[] f7509g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7510h;

    /* renamed from: i  reason: collision with root package name */
    public int[] f7511i;

    public void a(int[] iArr) {
        this.f7509g = iArr;
    }

    public void e() {
        this.f7511i = null;
        this.f7509g = null;
        this.f7510h = false;
    }

    public boolean s() {
        return this.f7510h;
    }

    public int u() {
        int[] iArr = this.f7511i;
        return iArr == null ? this.f7504b : iArr.length;
    }

    public boolean a(int i2, int i3, int i4) {
        boolean z = !Arrays.equals(this.f7509g, this.f7511i);
        this.f7511i = this.f7509g;
        int[] iArr = this.f7511i;
        if (iArr == null) {
            this.f7510h = false;
            return z;
        } else if (i4 != 2) {
            throw new AudioProcessor.UnhandledFormatException(i2, i3, i4);
        } else if (!z && !b(i2, i3, i4)) {
            return false;
        } else {
            this.f7510h = i3 != iArr.length;
            int i5 = 0;
            while (i5 < iArr.length) {
                int i6 = iArr[i5];
                if (i6 < i3) {
                    this.f7510h = (i6 != i5) | this.f7510h;
                    i5++;
                } else {
                    throw new AudioProcessor.UnhandledFormatException(i2, i3, i4);
                }
            }
            return true;
        }
    }

    public void a(ByteBuffer byteBuffer) {
        int[] iArr = this.f7511i;
        C0737e.a(iArr);
        int[] iArr2 = iArr;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer a2 = a(((limit - position) / (this.f7504b * 2)) * iArr2.length * 2);
        while (position < limit) {
            for (int i2 : iArr2) {
                a2.putShort(byteBuffer.getShort((i2 * 2) + position));
            }
            position += this.f7504b * 2;
        }
        byteBuffer.position(limit);
        a2.flip();
    }
}
