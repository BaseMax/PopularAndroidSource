package c.e.a.a.o;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import e.a.a.a.a.d.c;
import java.util.ArrayList;

/* renamed from: c.e.a.a.o.g  reason: case insensitive filesystem */
/* compiled from: CodecSpecificDataUtil */
public final class C0739g {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f9583a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f9584b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, c.MAX_BYTE_SIZE_PER_FILE, 7350};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f9585c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static Pair<Integer, Integer> a(byte[] bArr) {
        return a(new u(bArr), false);
    }

    public static String b(int i2, int i3, int i4) {
        return String.format("avc1.%02X%02X%02X", new Object[]{Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)});
    }

    public static Pair<Integer, Integer> a(u uVar, boolean z) {
        int a2 = a(uVar);
        int b2 = b(uVar);
        int a3 = uVar.a(4);
        if (a2 == 5 || a2 == 29) {
            b2 = b(uVar);
            a2 = a(uVar);
            if (a2 == 22) {
                a3 = uVar.a(4);
            }
        }
        boolean z2 = true;
        if (z) {
            if (!(a2 == 1 || a2 == 2 || a2 == 3 || a2 == 4 || a2 == 6 || a2 == 7 || a2 == 17)) {
                switch (a2) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw new ParserException("Unsupported audio object type: " + a2);
                }
            }
            a(uVar, a2, a3);
            switch (a2) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int a4 = uVar.a(2);
                    if (a4 == 2 || a4 == 3) {
                        throw new ParserException("Unsupported epConfig: " + a4);
                    }
            }
        }
        int i2 = f9585c[a3];
        if (i2 == -1) {
            z2 = false;
        }
        C0737e.a(z2);
        return Pair.create(Integer.valueOf(b2), Integer.valueOf(i2));
    }

    public static byte[][] b(byte[] bArr) {
        if (!b(bArr, 0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        do {
            arrayList.add(Integer.valueOf(i2));
            i2 = a(bArr, i2 + f9583a.length);
        } while (i2 != -1);
        byte[][] bArr2 = new byte[arrayList.size()][];
        int i3 = 0;
        while (i3 < arrayList.size()) {
            int intValue = ((Integer) arrayList.get(i3)).intValue();
            byte[] bArr3 = new byte[((i3 < arrayList.size() + -1 ? ((Integer) arrayList.get(i3 + 1)).intValue() : bArr.length) - intValue)];
            System.arraycopy(bArr, intValue, bArr3, 0, bArr3.length);
            bArr2[i3] = bArr3;
            i3++;
        }
        return bArr2;
    }

    public static byte[] a(int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        int i6 = -1;
        while (true) {
            int[] iArr = f9584b;
            if (i5 >= iArr.length) {
                break;
            }
            if (i2 == iArr[i5]) {
                i6 = i5;
            }
            i5++;
        }
        int i7 = -1;
        while (true) {
            int[] iArr2 = f9585c;
            if (i4 >= iArr2.length) {
                break;
            }
            if (i3 == iArr2[i4]) {
                i7 = i4;
            }
            i4++;
        }
        if (i2 != -1 && i7 != -1) {
            return a(2, i6, i7);
        }
        throw new IllegalArgumentException("Invalid sample rate or number of channels: " + i2 + ", " + i3);
    }

    public static boolean b(byte[] bArr, int i2) {
        if (bArr.length - i2 <= f9583a.length) {
            return false;
        }
        int i3 = 0;
        while (true) {
            byte[] bArr2 = f9583a;
            if (i3 >= bArr2.length) {
                return true;
            }
            if (bArr[i2 + i3] != bArr2[i3]) {
                return false;
            }
            i3++;
        }
    }

    public static int b(u uVar) {
        int a2 = uVar.a(4);
        if (a2 == 15) {
            return uVar.a(24);
        }
        C0737e.a(a2 < 13);
        return f9584b[a2];
    }

    public static byte[] a(int i2, int i3, int i4) {
        return new byte[]{(byte) (((i2 << 3) & 248) | ((i3 >> 1) & 7)), (byte) (((i3 << 7) & 128) | ((i4 << 3) & 120))};
    }

    public static byte[] a(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = f9583a;
        byte[] bArr3 = new byte[(bArr2.length + i3)];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i2, bArr3, f9583a.length, i3);
        return bArr3;
    }

    public static int a(byte[] bArr, int i2) {
        int length = bArr.length - f9583a.length;
        while (i2 <= length) {
            if (b(bArr, i2)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int a(u uVar) {
        int a2 = uVar.a(5);
        return a2 == 31 ? uVar.a(6) + 32 : a2;
    }

    public static void a(u uVar, int i2, int i3) {
        uVar.c(1);
        if (uVar.f()) {
            uVar.c(14);
        }
        boolean f2 = uVar.f();
        if (i3 != 0) {
            if (i2 == 6 || i2 == 20) {
                uVar.c(3);
            }
            if (f2) {
                if (i2 == 22) {
                    uVar.c(16);
                }
                if (i2 == 17 || i2 == 19 || i2 == 20 || i2 == 23) {
                    uVar.c(3);
                }
                uVar.c(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }
}
