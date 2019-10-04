package c.e.a.a.b;

import c.e.a.a.o.u;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import e.a.a.a.a.d.c;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;

/* compiled from: DtsUtil */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f7516a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f7517b = {-1, c.MAX_BYTE_SIZE_PER_FILE, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f7518c = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, CodedOutputStream.DEFAULT_BUFFER_SIZE, 6144, 7680};

    public static Format a(byte[] bArr, String str, String str2, DrmInitData drmInitData) {
        u b2 = b(bArr);
        b2.c(60);
        int i2 = f7516a[b2.a(6)];
        int i3 = f7517b[b2.a(4)];
        int a2 = b2.a(5);
        int[] iArr = f7518c;
        int i4 = a2 >= iArr.length ? -1 : (iArr[a2] * AnswersRetryFilesSender.BACKOFF_MS) / 2;
        b2.c(10);
        return Format.a(str, "audio/vnd.dts", (String) null, i4, -1, i2 + (b2.a(2) > 0 ? 1 : 0), i3, (List<byte[]>) null, drmInitData, 0, str2);
    }

    public static boolean a(int i2) {
        return i2 == 2147385345 || i2 == -25230976 || i2 == 536864768 || i2 == -14745368;
    }

    public static u b(byte[] bArr) {
        if (bArr[0] == Byte.MAX_VALUE) {
            return new u(bArr);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        if (c(copyOf)) {
            for (int i2 = 0; i2 < copyOf.length - 1; i2 += 2) {
                byte b2 = copyOf[i2];
                int i3 = i2 + 1;
                copyOf[i2] = copyOf[i3];
                copyOf[i3] = b2;
            }
        }
        u uVar = new u(copyOf);
        if (copyOf[0] == 31) {
            u uVar2 = new u(copyOf);
            while (uVar2.b() >= 16) {
                uVar2.c(2);
                uVar.a(uVar2.a(14), 14);
            }
        }
        uVar.a(copyOf);
        return uVar;
    }

    public static boolean c(byte[] bArr) {
        return bArr[0] == -2 || bArr[0] == -1;
    }

    public static int d(byte[] bArr) {
        int i2;
        byte b2;
        byte b3;
        int i3;
        byte b4;
        byte b5 = bArr[0];
        if (b5 != -2) {
            if (b5 == -1) {
                i3 = (bArr[4] & 7) << 4;
                b4 = bArr[7];
            } else if (b5 != 31) {
                i2 = (bArr[4] & 1) << 6;
                b2 = bArr[5];
            } else {
                i3 = (bArr[5] & 7) << 4;
                b4 = bArr[6];
            }
            b3 = b4 & 60;
            return (((b3 >> 2) | i3) + 1) * 32;
        }
        i2 = (bArr[5] & 1) << 6;
        b2 = bArr[4];
        b3 = b2 & 252;
        return (((b3 >> 2) | i3) + 1) * 32;
    }

    public static int a(ByteBuffer byteBuffer) {
        int i2;
        byte b2;
        byte b3;
        int i3;
        byte b4;
        int position = byteBuffer.position();
        byte b5 = byteBuffer.get(position);
        if (b5 != -2) {
            if (b5 == -1) {
                i3 = (byteBuffer.get(position + 4) & 7) << 4;
                b4 = byteBuffer.get(position + 7);
            } else if (b5 != 31) {
                i2 = (byteBuffer.get(position + 4) & 1) << 6;
                b2 = byteBuffer.get(position + 5);
            } else {
                i3 = (byteBuffer.get(position + 5) & 7) << 4;
                b4 = byteBuffer.get(position + 6);
            }
            b3 = b4 & 60;
            return (((b3 >> 2) | i3) + 1) * 32;
        }
        i2 = (byteBuffer.get(position + 5) & 1) << 6;
        b2 = byteBuffer.get(position + 4);
        b3 = b2 & 252;
        return (((b3 >> 2) | i3) + 1) * 32;
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int a(byte[] r7) {
        /*
            r0 = 0
            byte r1 = r7[r0]
            r2 = -2
            r3 = 7
            r4 = 6
            r5 = 1
            r6 = 4
            if (r1 == r2) goto L_0x004f
            r2 = -1
            if (r1 == r2) goto L_0x0037
            r2 = 31
            if (r1 == r2) goto L_0x0026
            r1 = 5
            byte r1 = r7[r1]
            r1 = r1 & 3
            int r1 = r1 << 12
            byte r2 = r7[r4]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            byte r7 = r7[r3]
        L_0x0020:
            r7 = r7 & 240(0xf0, float:3.36E-43)
            int r7 = r7 >> r6
            r7 = r7 | r1
            int r7 = r7 + r5
            goto L_0x005e
        L_0x0026:
            byte r0 = r7[r4]
            r0 = r0 & 3
            int r0 = r0 << 12
            byte r1 = r7[r3]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 8
            byte r7 = r7[r1]
            goto L_0x0047
        L_0x0037:
            byte r0 = r7[r3]
            r0 = r0 & 3
            int r0 = r0 << 12
            byte r1 = r7[r4]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 9
            byte r7 = r7[r1]
        L_0x0047:
            r7 = r7 & 60
            int r7 = r7 >> 2
            r7 = r7 | r0
            int r7 = r7 + r5
            r0 = 1
            goto L_0x005e
        L_0x004f:
            byte r1 = r7[r6]
            r1 = r1 & 3
            int r1 = r1 << 12
            byte r2 = r7[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            byte r7 = r7[r4]
            goto L_0x0020
        L_0x005e:
            if (r0 == 0) goto L_0x0064
            int r7 = r7 * 16
            int r7 = r7 / 14
        L_0x0064:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.b.y.a(byte[]):int");
    }
}
