package com.google.zxing.pdf417.a;

import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.d;
import com.google.zxing.pdf417.c;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f4373a = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f4374b = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();
    private static final BigInteger[] c;

    /* renamed from: com.google.zxing.pdf417.a.e$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4375a = new int[a.values$a5b57b().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|(3:11|12|14)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(14:0|1|2|3|4|5|6|7|8|9|10|11|12|14) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0031 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0011 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0019 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0021 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0029 */
        static {
            /*
                int[] r0 = com.google.zxing.pdf417.a.e.a.values$a5b57b()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f4375a = r0
                r0 = 1
                int[] r1 = f4375a     // Catch:{ NoSuchFieldError -> 0x0011 }
                int r2 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b     // Catch:{ NoSuchFieldError -> 0x0011 }
                int r2 = r2 - r0
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0011 }
            L_0x0011:
                int[] r1 = f4375a     // Catch:{ NoSuchFieldError -> 0x0019 }
                int r2 = com.google.zxing.pdf417.a.e.a.LOWER$72b0c14b     // Catch:{ NoSuchFieldError -> 0x0019 }
                int r2 = r2 - r0
                r3 = 2
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0019 }
            L_0x0019:
                int[] r1 = f4375a     // Catch:{ NoSuchFieldError -> 0x0021 }
                int r2 = com.google.zxing.pdf417.a.e.a.MIXED$72b0c14b     // Catch:{ NoSuchFieldError -> 0x0021 }
                int r2 = r2 - r0
                r3 = 3
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0021 }
            L_0x0021:
                int[] r1 = f4375a     // Catch:{ NoSuchFieldError -> 0x0029 }
                int r2 = com.google.zxing.pdf417.a.e.a.PUNCT$72b0c14b     // Catch:{ NoSuchFieldError -> 0x0029 }
                int r2 = r2 - r0
                r3 = 4
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0029 }
            L_0x0029:
                int[] r1 = f4375a     // Catch:{ NoSuchFieldError -> 0x0031 }
                int r2 = com.google.zxing.pdf417.a.e.a.ALPHA_SHIFT$72b0c14b     // Catch:{ NoSuchFieldError -> 0x0031 }
                int r2 = r2 - r0
                r3 = 5
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0031 }
            L_0x0031:
                int[] r1 = f4375a     // Catch:{ NoSuchFieldError -> 0x0039 }
                int r2 = com.google.zxing.pdf417.a.e.a.PUNCT_SHIFT$72b0c14b     // Catch:{ NoSuchFieldError -> 0x0039 }
                int r2 = r2 - r0
                r0 = 6
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0039 }
            L_0x0039:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.a.e.AnonymousClass1.<clinit>():void");
        }
    }

    enum a {
        ;
        
        public static final int ALPHA$72b0c14b = 1;
        public static final int ALPHA_SHIFT$72b0c14b = 5;
        public static final int LOWER$72b0c14b = 2;
        public static final int MIXED$72b0c14b = 3;
        public static final int PUNCT$72b0c14b = 4;
        public static final int PUNCT_SHIFT$72b0c14b = 6;

        static {
            f4376a = new int[]{ALPHA$72b0c14b, LOWER$72b0c14b, MIXED$72b0c14b, PUNCT$72b0c14b, ALPHA_SHIFT$72b0c14b, PUNCT_SHIFT$72b0c14b};
        }

        public static int[] values$a5b57b() {
            return (int[]) f4376a.clone();
        }
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        c = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger valueOf = BigInteger.valueOf(900);
        c[1] = valueOf;
        int i = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = c;
            if (i < bigIntegerArr2.length) {
                bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(valueOf);
                i++;
            } else {
                return;
            }
        }
    }

    private e() {
    }

    static d a(int[] iArr, String str) throws com.google.zxing.d {
        int i;
        StringBuilder sb = new StringBuilder(iArr.length << 1);
        Charset charset = StandardCharsets.ISO_8859_1;
        int i2 = iArr[1];
        c cVar = new c();
        int i3 = 2;
        while (i3 < iArr[0]) {
            if (i2 != 913) {
                switch (i2) {
                    case 900:
                        i = a(iArr, i3, sb);
                        break;
                    case 901:
                        i = a(i2, iArr, charset, i3, sb);
                        break;
                    case 902:
                        i = b(iArr, i3, sb);
                        break;
                    default:
                        switch (i2) {
                            case 922:
                            case 923:
                                throw com.google.zxing.d.getFormatInstance();
                            case 924:
                                break;
                            case 925:
                                i = i3 + 1;
                                break;
                            case 926:
                                i = i3 + 2;
                                break;
                            case 927:
                                i = i3 + 1;
                                charset = Charset.forName(CharacterSetECI.getCharacterSetECIByValue(iArr[i3]).name());
                                break;
                            case com.google.zxing.pdf417.a.MAX_CODEWORDS_IN_BARCODE:
                                i = a(iArr, i3, cVar);
                                break;
                            default:
                                i = a(iArr, i3 - 1, sb);
                                break;
                        }
                        i = a(i2, iArr, charset, i3, sb);
                        break;
                }
            } else {
                i = i3 + 1;
                sb.append((char) iArr[i3]);
            }
            if (i < iArr.length) {
                i3 = i + 1;
                i2 = iArr[i];
            } else {
                throw com.google.zxing.d.getFormatInstance();
            }
        }
        if (sb.length() != 0) {
            d dVar = new d(null, sb.toString(), null, str);
            dVar.setOther(cVar);
            return dVar;
        }
        throw com.google.zxing.d.getFormatInstance();
    }

    private static int a(int[] iArr, int i, c cVar) throws com.google.zxing.d {
        if (i + 2 <= iArr[0]) {
            int[] iArr2 = new int[2];
            int i2 = i;
            int i3 = 0;
            while (i3 < 2) {
                iArr2[i3] = iArr[i2];
                i3++;
                i2++;
            }
            cVar.setSegmentIndex(Integer.parseInt(a(iArr2, 2)));
            StringBuilder sb = new StringBuilder();
            int a2 = a(iArr, i2, sb);
            cVar.setFileId(sb.toString());
            int i4 = iArr[a2] == 923 ? a2 + 1 : -1;
            while (a2 < iArr[0]) {
                int i5 = iArr[a2];
                if (i5 == 922) {
                    a2++;
                    cVar.setLastSegment(true);
                } else if (i5 == 923) {
                    int i6 = a2 + 1;
                    switch (iArr[i6]) {
                        case 0:
                            StringBuilder sb2 = new StringBuilder();
                            a2 = a(iArr, i6 + 1, sb2);
                            cVar.setFileName(sb2.toString());
                            break;
                        case 1:
                            StringBuilder sb3 = new StringBuilder();
                            a2 = b(iArr, i6 + 1, sb3);
                            cVar.setSegmentCount(Integer.parseInt(sb3.toString()));
                            break;
                        case 2:
                            StringBuilder sb4 = new StringBuilder();
                            a2 = b(iArr, i6 + 1, sb4);
                            cVar.setTimestamp(Long.parseLong(sb4.toString()));
                            break;
                        case 3:
                            StringBuilder sb5 = new StringBuilder();
                            a2 = a(iArr, i6 + 1, sb5);
                            cVar.setSender(sb5.toString());
                            break;
                        case 4:
                            StringBuilder sb6 = new StringBuilder();
                            a2 = a(iArr, i6 + 1, sb6);
                            cVar.setAddressee(sb6.toString());
                            break;
                        case 5:
                            StringBuilder sb7 = new StringBuilder();
                            a2 = b(iArr, i6 + 1, sb7);
                            cVar.setFileSize(Long.parseLong(sb7.toString()));
                            break;
                        case 6:
                            StringBuilder sb8 = new StringBuilder();
                            a2 = b(iArr, i6 + 1, sb8);
                            cVar.setChecksum(Integer.parseInt(sb8.toString()));
                            break;
                        default:
                            throw com.google.zxing.d.getFormatInstance();
                    }
                } else {
                    throw com.google.zxing.d.getFormatInstance();
                }
            }
            if (i4 != -1) {
                int i7 = a2 - i4;
                if (cVar.isLastSegment()) {
                    i7--;
                }
                cVar.setOptionalData(Arrays.copyOfRange(iArr, i4, i7 + i4));
            }
            return a2;
        }
        throw com.google.zxing.d.getFormatInstance();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0086, code lost:
        r6 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0096, code lost:
        r13 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0097, code lost:
        r6 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x0111, code lost:
        r11 = (char) r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0112, code lost:
        r13 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x011e, code lost:
        r13 = 0;
        r16 = r8;
        r8 = r6;
        r6 = r16;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x0134, code lost:
        r13 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x0135, code lost:
        if (r13 == 0) goto L_0x013a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x0137, code lost:
        r0.append(r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x013a, code lost:
        r3 = r3 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int a(int[] r17, int r18, java.lang.StringBuilder r19) {
        /*
            r0 = r19
            r1 = 0
            r2 = r17[r1]
            int r2 = r2 - r18
            r3 = 1
            int r2 = r2 << r3
            int[] r2 = new int[r2]
            r4 = r17[r1]
            int r4 = r4 - r18
            int r4 = r4 << r3
            int[] r4 = new int[r4]
            r5 = r18
            r6 = 0
            r7 = 0
        L_0x0016:
            r8 = r17[r1]
            r9 = 913(0x391, float:1.28E-42)
            r10 = 900(0x384, float:1.261E-42)
            if (r5 >= r8) goto L_0x0056
            if (r6 != 0) goto L_0x0056
            int r8 = r5 + 1
            r5 = r17[r5]
            if (r5 >= r10) goto L_0x0034
            int r9 = r5 / 30
            r2[r7] = r9
            int r9 = r7 + 1
            int r5 = r5 % 30
            r2[r9] = r5
            int r7 = r7 + 2
        L_0x0032:
            r5 = r8
            goto L_0x0016
        L_0x0034:
            if (r5 == r9) goto L_0x004b
            r9 = 928(0x3a0, float:1.3E-42)
            if (r5 == r9) goto L_0x0047
            switch(r5) {
                case 900: goto L_0x0041;
                case 901: goto L_0x0047;
                case 902: goto L_0x0047;
                default: goto L_0x003d;
            }
        L_0x003d:
            switch(r5) {
                case 922: goto L_0x0047;
                case 923: goto L_0x0047;
                case 924: goto L_0x0047;
                default: goto L_0x0040;
            }
        L_0x0040:
            goto L_0x0032
        L_0x0041:
            int r5 = r7 + 1
            r2[r7] = r10
            r7 = r5
            goto L_0x0032
        L_0x0047:
            int r5 = r8 + -1
            r6 = 1
            goto L_0x0016
        L_0x004b:
            r2[r7] = r9
            int r5 = r8 + 1
            r8 = r17[r8]
            r4[r7] = r8
            int r7 = r7 + 1
            goto L_0x0016
        L_0x0056:
            int r3 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
            int r6 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
            r8 = r6
            r6 = r3
            r3 = 0
        L_0x005d:
            if (r3 >= r7) goto L_0x013e
            r11 = r2[r3]
            int[] r12 = com.google.zxing.pdf417.a.e.AnonymousClass1.f4375a
            int r13 = r6 + -1
            r12 = r12[r13]
            r13 = 32
            r14 = 29
            r15 = 26
            switch(r12) {
                case 1: goto L_0x010d;
                case 2: goto L_0x00ed;
                case 3: goto L_0x00c3;
                case 4: goto L_0x00a3;
                case 5: goto L_0x0091;
                case 6: goto L_0x0072;
                default: goto L_0x0070;
            }
        L_0x0070:
            goto L_0x0134
        L_0x0072:
            if (r11 >= r14) goto L_0x0079
            char[] r6 = f4373a
            char r6 = r6[r11]
            goto L_0x0096
        L_0x0079:
            if (r11 == r14) goto L_0x008d
            if (r11 == r10) goto L_0x0089
            if (r11 == r9) goto L_0x0080
            goto L_0x0086
        L_0x0080:
            r6 = r4[r3]
            char r6 = (char) r6
            r0.append(r6)
        L_0x0086:
            r6 = r8
            goto L_0x0134
        L_0x0089:
            int r6 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
            goto L_0x0134
        L_0x008d:
            int r6 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
            goto L_0x0134
        L_0x0091:
            if (r11 >= r15) goto L_0x009a
            int r11 = r11 + 65
            char r6 = (char) r11
        L_0x0096:
            r13 = r6
        L_0x0097:
            r6 = r8
            goto L_0x0135
        L_0x009a:
            if (r11 == r15) goto L_0x0097
            if (r11 == r10) goto L_0x009f
            goto L_0x0086
        L_0x009f:
            int r6 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
            goto L_0x0134
        L_0x00a3:
            if (r11 >= r14) goto L_0x00ab
            char[] r12 = f4373a
            char r11 = r12[r11]
            goto L_0x0112
        L_0x00ab:
            if (r11 == r14) goto L_0x00bf
            if (r11 == r10) goto L_0x00bb
            if (r11 == r9) goto L_0x00b3
            goto L_0x0134
        L_0x00b3:
            r11 = r4[r3]
            char r11 = (char) r11
            r0.append(r11)
            goto L_0x0134
        L_0x00bb:
            int r6 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
            goto L_0x0134
        L_0x00bf:
            int r6 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
            goto L_0x0134
        L_0x00c3:
            r12 = 25
            if (r11 >= r12) goto L_0x00cc
            char[] r12 = f4374b
            char r11 = r12[r11]
            goto L_0x0112
        L_0x00cc:
            if (r11 == r10) goto L_0x00ea
            if (r11 == r9) goto L_0x00e3
            switch(r11) {
                case 25: goto L_0x00e0;
                case 26: goto L_0x0135;
                case 27: goto L_0x00dc;
                case 28: goto L_0x00d8;
                case 29: goto L_0x00d5;
                default: goto L_0x00d3;
            }
        L_0x00d3:
            goto L_0x0134
        L_0x00d5:
            int r8 = com.google.zxing.pdf417.a.e.a.PUNCT_SHIFT$72b0c14b
            goto L_0x011e
        L_0x00d8:
            int r6 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
            goto L_0x0134
        L_0x00dc:
            int r6 = com.google.zxing.pdf417.a.e.a.LOWER$72b0c14b
            goto L_0x0134
        L_0x00e0:
            int r6 = com.google.zxing.pdf417.a.e.a.PUNCT$72b0c14b
            goto L_0x0134
        L_0x00e3:
            r11 = r4[r3]
            char r11 = (char) r11
            r0.append(r11)
            goto L_0x0134
        L_0x00ea:
            int r6 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
            goto L_0x0134
        L_0x00ed:
            if (r11 >= r15) goto L_0x00f2
            int r11 = r11 + 97
            goto L_0x0111
        L_0x00f2:
            if (r11 == r10) goto L_0x010a
            if (r11 == r9) goto L_0x0103
            switch(r11) {
                case 26: goto L_0x0135;
                case 27: goto L_0x0100;
                case 28: goto L_0x00fd;
                case 29: goto L_0x00fa;
                default: goto L_0x00f9;
            }
        L_0x00f9:
            goto L_0x0134
        L_0x00fa:
            int r8 = com.google.zxing.pdf417.a.e.a.PUNCT_SHIFT$72b0c14b
            goto L_0x011e
        L_0x00fd:
            int r6 = com.google.zxing.pdf417.a.e.a.MIXED$72b0c14b
            goto L_0x0134
        L_0x0100:
            int r8 = com.google.zxing.pdf417.a.e.a.ALPHA_SHIFT$72b0c14b
            goto L_0x011e
        L_0x0103:
            r11 = r4[r3]
            char r11 = (char) r11
            r0.append(r11)
            goto L_0x0134
        L_0x010a:
            int r6 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
            goto L_0x0134
        L_0x010d:
            if (r11 >= r15) goto L_0x0114
            int r11 = r11 + 65
        L_0x0111:
            char r11 = (char) r11
        L_0x0112:
            r13 = r11
            goto L_0x0135
        L_0x0114:
            if (r11 == r10) goto L_0x0132
            if (r11 == r9) goto L_0x012b
            switch(r11) {
                case 26: goto L_0x0135;
                case 27: goto L_0x0128;
                case 28: goto L_0x0125;
                case 29: goto L_0x011c;
                default: goto L_0x011b;
            }
        L_0x011b:
            goto L_0x0134
        L_0x011c:
            int r8 = com.google.zxing.pdf417.a.e.a.PUNCT_SHIFT$72b0c14b
        L_0x011e:
            r13 = 0
            r16 = r8
            r8 = r6
            r6 = r16
            goto L_0x0135
        L_0x0125:
            int r6 = com.google.zxing.pdf417.a.e.a.MIXED$72b0c14b
            goto L_0x0134
        L_0x0128:
            int r6 = com.google.zxing.pdf417.a.e.a.LOWER$72b0c14b
            goto L_0x0134
        L_0x012b:
            r11 = r4[r3]
            char r11 = (char) r11
            r0.append(r11)
            goto L_0x0134
        L_0x0132:
            int r6 = com.google.zxing.pdf417.a.e.a.ALPHA$72b0c14b
        L_0x0134:
            r13 = 0
        L_0x0135:
            if (r13 == 0) goto L_0x013a
            r0.append(r13)
        L_0x013a:
            int r3 = r3 + 1
            goto L_0x005d
        L_0x013e:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.a.e.a(int[], int, java.lang.StringBuilder):int");
    }

    private static int a(int i, int[] iArr, Charset charset, int i2, StringBuilder sb) {
        int i3;
        long j;
        int i4;
        int i5;
        int i6 = i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        long j2 = 900;
        int i7 = 6;
        if (i6 == 901) {
            int[] iArr2 = new int[6];
            int i8 = i2 + 1;
            int i9 = iArr[i2];
            boolean z = false;
            while (true) {
                i5 = 0;
                long j3 = 0;
                while (i4 < iArr[0] && !z) {
                    int i10 = i5 + 1;
                    iArr2[i5] = i9;
                    j3 = (j3 * j) + ((long) i9);
                    int i11 = i4 + 1;
                    i9 = iArr[i4];
                    if (i9 != 928) {
                        switch (i9) {
                            case 900:
                            case 901:
                            case 902:
                                break;
                            default:
                                switch (i9) {
                                    case 922:
                                    case 923:
                                    case 924:
                                        break;
                                    default:
                                        if (i10 % 5 != 0 || i10 <= 0) {
                                            z = z;
                                            i4 = i11;
                                            i5 = i10;
                                            j = 900;
                                            i7 = 6;
                                            break;
                                        } else {
                                            int i12 = 0;
                                            while (i12 < i7) {
                                                byteArrayOutputStream.write((byte) ((int) (j3 >> ((5 - i12) * 8))));
                                                i12++;
                                                i7 = 6;
                                                z = z;
                                            }
                                            boolean z2 = z;
                                            i8 = i11;
                                            j2 = 900;
                                        }
                                }
                                break;
                        }
                    }
                    i4 = i11 - 1;
                    i5 = i10;
                    j = 900;
                    i7 = 6;
                    z = true;
                }
            }
            if (i4 == iArr[0] && i9 < 900) {
                iArr2[i5] = i9;
                i5++;
            }
            for (int i13 = 0; i13 < i5; i13++) {
                byteArrayOutputStream.write((byte) iArr2[i13]);
            }
            i3 = i4;
        } else if (i6 != 924) {
            i3 = i2;
        } else {
            i3 = i2;
            boolean z3 = false;
            while (true) {
                int i14 = 0;
                long j4 = 0;
                while (i3 < iArr[0] && !z3) {
                    int i15 = i3 + 1;
                    int i16 = iArr[i3];
                    if (i16 < 900) {
                        i14++;
                        j4 = (j4 * 900) + ((long) i16);
                    } else {
                        if (i16 != 928) {
                            switch (i16) {
                                case 900:
                                case 901:
                                case 902:
                                    break;
                                default:
                                    switch (i16) {
                                        case 922:
                                        case 923:
                                        case 924:
                                            break;
                                    }
                            }
                        }
                        i3 = i15 - 1;
                        z3 = true;
                        if (i14 % 5 != 0 && i14 > 0) {
                            for (int i17 = 0; i17 < 6; i17++) {
                                byteArrayOutputStream.write((byte) ((int) (j4 >> ((5 - i17) * 8))));
                            }
                        }
                    }
                    i3 = i15;
                    if (i14 % 5 != 0) {
                    }
                }
            }
        }
        sb.append(new String(byteArrayOutputStream.toByteArray(), charset));
        return i3;
    }

    private static int b(int[] iArr, int i, StringBuilder sb) throws com.google.zxing.d {
        int[] iArr2 = new int[15];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i3 == iArr[0]) {
                z = true;
            }
            if (i4 < 900) {
                iArr2[i2] = i4;
                i2++;
            } else {
                if (!(i4 == 900 || i4 == 901 || i4 == 928)) {
                    switch (i4) {
                        case 922:
                        case 923:
                        case 924:
                            break;
                    }
                }
                i3--;
                z = true;
            }
            if ((i2 % 15 == 0 || i4 == 902 || z) && i2 > 0) {
                sb.append(a(iArr2, i2));
                i2 = 0;
            }
            i = i3;
        }
        return i;
    }

    private static String a(int[] iArr, int i) throws com.google.zxing.d {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigInteger = bigInteger.add(c[(i - i2) - 1].multiply(BigInteger.valueOf((long) iArr[i2])));
        }
        String bigInteger2 = bigInteger.toString();
        if (bigInteger2.charAt(0) == '1') {
            return bigInteger2.substring(1);
        }
        throw com.google.zxing.d.getFormatInstance();
    }
}
