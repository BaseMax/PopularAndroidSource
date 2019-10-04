package c.e.a.a.f;

import android.media.MediaFormat;
import com.google.android.exoplayer2.video.ColorInfo;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: MediaFormatUtil */
public final class e {
    public static void a(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mediaFormat.setByteBuffer("csd-" + i2, ByteBuffer.wrap(list.get(i2)));
        }
    }

    public static void a(MediaFormat mediaFormat, String str, int i2) {
        if (i2 != -1) {
            mediaFormat.setInteger(str, i2);
        }
    }

    public static void a(MediaFormat mediaFormat, String str, float f2) {
        if (f2 != -1.0f) {
            mediaFormat.setFloat(str, f2);
        }
    }

    public static void a(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void a(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            a(mediaFormat, "color-transfer", colorInfo.f12913c);
            a(mediaFormat, "color-standard", colorInfo.f12911a);
            a(mediaFormat, "color-range", colorInfo.f12912b);
            a(mediaFormat, "hdr-static-info", colorInfo.f12914d);
        }
    }
}
