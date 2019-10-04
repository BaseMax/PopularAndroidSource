package com.google.zxing.a.a;

import androidx.exifinterface.media.ExifInterface;
import com.google.zxing.common.b.c;
import com.google.zxing.common.d;
import io.fabric.sdk.android.services.b.b;
import java.util.Arrays;
import org.eclipse.paho.a.a.w;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f4229a = {"CTRL_PS", " ", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f4230b = {"CTRL_PS", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    private static final String[] c = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", b.ROLL_OVER_FILE_NAME_SEPARATOR, "`", "|", "~", "", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};
    private static final String[] d = {"", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", w.MULTI_LEVEL_WILDCARD, "$", "%", "&", "'", "(", ")", "*", w.SINGLE_LEVEL_WILDCARD, ",", "-", ".", w.TOPIC_LEVEL_SEPARATOR, ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL"};
    private static final String[] e = {"CTRL_PS", " ", "0", "1", ExifInterface.GPS_MEASUREMENT_2D, ExifInterface.GPS_MEASUREMENT_3D, "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US"};
    private com.google.zxing.a.a f;

    /* renamed from: com.google.zxing.a.a.a$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4231a = new int[C0080a.values$17d9718f().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|12) */
        /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0011 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0019 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0021 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0029 */
        static {
            /*
                int[] r0 = com.google.zxing.a.a.a.C0080a.values$17d9718f()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f4231a = r0
                r0 = 1
                int[] r1 = f4231a     // Catch:{ NoSuchFieldError -> 0x0011 }
                int r2 = com.google.zxing.a.a.a.C0080a.UPPER$2679db95     // Catch:{ NoSuchFieldError -> 0x0011 }
                int r2 = r2 - r0
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0011 }
            L_0x0011:
                int[] r1 = f4231a     // Catch:{ NoSuchFieldError -> 0x0019 }
                int r2 = com.google.zxing.a.a.a.C0080a.LOWER$2679db95     // Catch:{ NoSuchFieldError -> 0x0019 }
                int r2 = r2 - r0
                r3 = 2
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0019 }
            L_0x0019:
                int[] r1 = f4231a     // Catch:{ NoSuchFieldError -> 0x0021 }
                int r2 = com.google.zxing.a.a.a.C0080a.MIXED$2679db95     // Catch:{ NoSuchFieldError -> 0x0021 }
                int r2 = r2 - r0
                r3 = 3
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0021 }
            L_0x0021:
                int[] r1 = f4231a     // Catch:{ NoSuchFieldError -> 0x0029 }
                int r2 = com.google.zxing.a.a.a.C0080a.PUNCT$2679db95     // Catch:{ NoSuchFieldError -> 0x0029 }
                int r2 = r2 - r0
                r3 = 4
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0029 }
            L_0x0029:
                int[] r1 = f4231a     // Catch:{ NoSuchFieldError -> 0x0031 }
                int r2 = com.google.zxing.a.a.a.C0080a.DIGIT$2679db95     // Catch:{ NoSuchFieldError -> 0x0031 }
                int r2 = r2 - r0
                r0 = 5
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0031 }
            L_0x0031:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.a.a.a.AnonymousClass1.<clinit>():void");
        }
    }

    /* renamed from: com.google.zxing.a.a.a$a  reason: collision with other inner class name */
    enum C0080a {
        ;
        
        public static final int BINARY$2679db95 = 6;
        public static final int DIGIT$2679db95 = 4;
        public static final int LOWER$2679db95 = 2;
        public static final int MIXED$2679db95 = 3;
        public static final int PUNCT$2679db95 = 5;
        public static final int UPPER$2679db95 = 1;

        static {
            f4232a = new int[]{UPPER$2679db95, LOWER$2679db95, MIXED$2679db95, DIGIT$2679db95, PUNCT$2679db95, BINARY$2679db95};
        }

        public static int[] values$17d9718f() {
            return (int[]) f4232a.clone();
        }
    }

    public final d decode(com.google.zxing.a.a aVar) throws com.google.zxing.d {
        int i;
        this.f = aVar;
        com.google.zxing.common.b bits = aVar.getBits();
        boolean isCompact = this.f.isCompact();
        int nbLayers = this.f.getNbLayers();
        int i2 = (isCompact ? 11 : 14) + (nbLayers << 2);
        int[] iArr = new int[i2];
        boolean[] zArr = new boolean[(((isCompact ? 88 : 112) + (nbLayers << 4)) * nbLayers)];
        int i3 = 2;
        if (isCompact) {
            for (int i4 = 0; i4 < iArr.length; i4++) {
                iArr[i4] = i4;
            }
        } else {
            int i5 = i2 / 2;
            int i6 = ((i2 + 1) + (((i5 - 1) / 15) * 2)) / 2;
            for (int i7 = 0; i7 < i5; i7++) {
                int i8 = (i7 / 15) + i7;
                iArr[(i5 - i7) - 1] = (i6 - i8) - 1;
                iArr[i5 + i7] = i8 + i6 + 1;
            }
        }
        int i9 = 0;
        int i10 = 0;
        while (i9 < nbLayers) {
            int i11 = ((nbLayers - i9) << i3) + (isCompact ? 9 : 12);
            int i12 = i9 << 1;
            int i13 = (i2 - 1) - i12;
            int i14 = 0;
            while (i14 < i11) {
                int i15 = i14 << 1;
                int i16 = 0;
                while (i16 < i3) {
                    int i17 = i12 + i16;
                    int i18 = i12 + i14;
                    zArr[i10 + i15 + i16] = bits.get(iArr[i17], iArr[i18]);
                    int i19 = i13 - i16;
                    zArr[(i11 * 2) + i10 + i15 + i16] = bits.get(iArr[i18], iArr[i19]);
                    int i20 = i13 - i14;
                    zArr[(i11 * 4) + i10 + i15 + i16] = bits.get(iArr[i19], iArr[i20]);
                    zArr[(i11 * 6) + i10 + i15 + i16] = bits.get(iArr[i20], iArr[i17]);
                    i16++;
                    i2 = i2;
                    nbLayers = nbLayers;
                    isCompact = isCompact;
                    i3 = 2;
                }
                boolean z = isCompact;
                int i21 = nbLayers;
                int i22 = i2;
                i14++;
                i3 = 2;
            }
            int i23 = nbLayers;
            int i24 = i2;
            i10 += i11 << 3;
            i9++;
            isCompact = isCompact;
            i3 = 2;
        }
        boolean[] b2 = b(zArr);
        byte[] bArr = new byte[((b2.length + 7) / 8)];
        for (int i25 = 0; i25 < bArr.length; i25++) {
            int i26 = i25 << 3;
            int length = b2.length - i26;
            if (length >= 8) {
                i = a(b2, i26, 8);
            } else {
                i = a(b2, i26, length) << (8 - length);
            }
            bArr[i25] = (byte) i;
        }
        d dVar = new d(bArr, a(b2), null, null);
        dVar.setNumBits(b2.length);
        return dVar;
    }

    public static String highLevelDecode(boolean[] zArr) {
        return a(zArr);
    }

    private static String a(boolean[] zArr) {
        int length = zArr.length;
        int i = C0080a.UPPER$2679db95;
        int i2 = C0080a.UPPER$2679db95;
        StringBuilder sb = new StringBuilder(20);
        int i3 = i;
        int i4 = 0;
        while (i4 < length) {
            if (i2 == C0080a.BINARY$2679db95) {
                if (length - i4 < 5) {
                    break;
                }
                int a2 = a(zArr, i4, 5);
                int i5 = i4 + 5;
                if (a2 == 0) {
                    if (length - i5 < 11) {
                        break;
                    }
                    a2 = a(zArr, i5, 11) + 31;
                    i5 += 11;
                }
                int i6 = i5;
                int i7 = 0;
                while (true) {
                    if (i7 >= a2) {
                        i4 = i6;
                        break;
                    } else if (length - i6 < 8) {
                        i4 = length;
                        break;
                    } else {
                        sb.append((char) a(zArr, i6, 8));
                        i6 += 8;
                        i7++;
                    }
                }
            } else {
                int i8 = i2 == C0080a.DIGIT$2679db95 ? 4 : 5;
                if (length - i4 < i8) {
                    break;
                }
                int a3 = a(zArr, i4, i8);
                i4 += i8;
                String a4 = a(i2, a3);
                if (a4.startsWith("CTRL_")) {
                    i3 = a(a4.charAt(5));
                    if (a4.charAt(6) != 'L') {
                        int i9 = i3;
                        i3 = i2;
                        i2 = i9;
                    }
                } else {
                    sb.append(a4);
                }
            }
            i2 = i3;
        }
        return sb.toString();
    }

    private static int a(char c2) {
        if (c2 == 'B') {
            return C0080a.BINARY$2679db95;
        }
        if (c2 == 'D') {
            return C0080a.DIGIT$2679db95;
        }
        if (c2 == 'P') {
            return C0080a.PUNCT$2679db95;
        }
        if (c2 == 'L') {
            return C0080a.LOWER$2679db95;
        }
        if (c2 != 'M') {
            return C0080a.UPPER$2679db95;
        }
        return C0080a.MIXED$2679db95;
    }

    private static String a(int i, int i2) {
        int i3 = AnonymousClass1.f4231a[i - 1];
        if (i3 == 1) {
            return f4229a[i2];
        }
        if (i3 == 2) {
            return f4230b[i2];
        }
        if (i3 == 3) {
            return c[i2];
        }
        if (i3 == 4) {
            return d[i2];
        }
        if (i3 == 5) {
            return e[i2];
        }
        throw new IllegalStateException("Bad table");
    }

    private boolean[] b(boolean[] zArr) throws com.google.zxing.d {
        com.google.zxing.common.b.a aVar;
        int i = 8;
        if (this.f.getNbLayers() <= 2) {
            i = 6;
            aVar = com.google.zxing.common.b.a.AZTEC_DATA_6;
        } else if (this.f.getNbLayers() <= 8) {
            aVar = com.google.zxing.common.b.a.AZTEC_DATA_8;
        } else if (this.f.getNbLayers() <= 22) {
            i = 10;
            aVar = com.google.zxing.common.b.a.AZTEC_DATA_10;
        } else {
            i = 12;
            aVar = com.google.zxing.common.b.a.AZTEC_DATA_12;
        }
        int nbDatablocks = this.f.getNbDatablocks();
        int length = zArr.length / i;
        if (length >= nbDatablocks) {
            int[] iArr = new int[length];
            int length2 = zArr.length % i;
            int i2 = 0;
            while (i2 < length) {
                iArr[i2] = a(zArr, length2, i);
                i2++;
                length2 += i;
            }
            try {
                new c(aVar).decode(iArr, length - nbDatablocks);
                int i3 = (1 << i) - 1;
                int i4 = 0;
                for (int i5 = 0; i5 < nbDatablocks; i5++) {
                    int i6 = iArr[i5];
                    if (i6 == 0 || i6 == i3) {
                        throw com.google.zxing.d.getFormatInstance();
                    }
                    if (i6 == 1 || i6 == i3 - 1) {
                        i4++;
                    }
                }
                boolean[] zArr2 = new boolean[((nbDatablocks * i) - i4)];
                int i7 = 0;
                for (int i8 = 0; i8 < nbDatablocks; i8++) {
                    int i9 = iArr[i8];
                    if (i9 == 1 || i9 == i3 - 1) {
                        Arrays.fill(zArr2, i7, (i7 + i) - 1, i9 > 1);
                        i7 += i - 1;
                    } else {
                        int i10 = i - 1;
                        while (i10 >= 0) {
                            int i11 = i7 + 1;
                            zArr2[i7] = ((1 << i10) & i9) != 0;
                            i10--;
                            i7 = i11;
                        }
                    }
                }
                return zArr2;
            } catch (com.google.zxing.common.b.d e2) {
                throw com.google.zxing.d.getFormatInstance(e2);
            }
        } else {
            throw com.google.zxing.d.getFormatInstance();
        }
    }

    private static int a(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }
}
