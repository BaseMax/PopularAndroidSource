package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzic;
import java.nio.ByteBuffer;

public final class Hc {

    /* renamed from: a  reason: collision with root package name */
    public static final Kc f10176a;

    static {
        Kc kc;
        if (!(Fc.b() && Fc.c()) || Ga.a()) {
            kc = new Lc();
        } else {
            kc = new Mc();
        }
        f10176a = kc;
    }

    public static int a(int i2) {
        if (i2 > -12) {
            return -1;
        }
        return i2;
    }

    public static int a(int i2, int i3) {
        if (i2 > -12 || i3 > -65) {
            return -1;
        }
        return i2 ^ (i3 << 8);
    }

    public static int a(int i2, int i3, int i4) {
        if (i2 > -12 || i3 > -65 || i4 > -65) {
            return -1;
        }
        return (i2 ^ (i3 << 8)) ^ (i4 << 16);
    }

    public static boolean a(byte[] bArr) {
        return f10176a.a(bArr, 0, bArr.length);
    }

    public static int b(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2 - 1];
        int i4 = i3 - i2;
        if (i4 == 0) {
            return a((int) b2);
        }
        if (i4 == 1) {
            return a((int) b2, (int) bArr[i2]);
        }
        if (i4 == 2) {
            return a((int) b2, (int) bArr[i2], (int) bArr[i2 + 1]);
        }
        throw new AssertionError();
    }

    public static String c(byte[] bArr, int i2, int i3) {
        return f10176a.b(bArr, i2, i3);
    }

    public static boolean a(byte[] bArr, int i2, int i3) {
        return f10176a.a(bArr, i2, i3);
    }

    public static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i2 += (127 - charAt2) >>> 31;
                    } else {
                        i2 += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i3) >= 65536) {
                                i3++;
                            } else {
                                throw new zzic(i3, length2);
                            }
                        }
                    }
                    i3++;
                }
                i4 += i2;
            }
        }
        if (i4 >= length) {
            return i4;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(((long) i4) + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    public static int a(CharSequence charSequence, byte[] bArr, int i2, int i3) {
        return f10176a.a(charSequence, bArr, i2, i3);
    }

    public static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        Kc kc = f10176a;
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(a(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
        } else if (byteBuffer.isDirect()) {
            kc.a(charSequence, byteBuffer);
        } else {
            Kc.b(charSequence, byteBuffer);
        }
    }
}
