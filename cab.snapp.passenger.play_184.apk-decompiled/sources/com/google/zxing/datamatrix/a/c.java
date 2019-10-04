package com.google.zxing.datamatrix.a;

import com.google.zxing.common.d;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;

final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f4331a = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f4332b = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_'};
    private static final char[] c = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final char[] d = f4332b;
    private static final char[] e = {'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', 127};

    /* renamed from: com.google.zxing.datamatrix.a.c$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4333a = new int[a.values$68f9f718().length];

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
                int[] r0 = com.google.zxing.datamatrix.a.c.a.values$68f9f718()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f4333a = r0
                r0 = 1
                int[] r1 = f4333a     // Catch:{ NoSuchFieldError -> 0x0011 }
                int r2 = com.google.zxing.datamatrix.a.c.a.C40_ENCODE$6e85352     // Catch:{ NoSuchFieldError -> 0x0011 }
                int r2 = r2 - r0
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0011 }
            L_0x0011:
                int[] r1 = f4333a     // Catch:{ NoSuchFieldError -> 0x0019 }
                int r2 = com.google.zxing.datamatrix.a.c.a.TEXT_ENCODE$6e85352     // Catch:{ NoSuchFieldError -> 0x0019 }
                int r2 = r2 - r0
                r3 = 2
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0019 }
            L_0x0019:
                int[] r1 = f4333a     // Catch:{ NoSuchFieldError -> 0x0021 }
                int r2 = com.google.zxing.datamatrix.a.c.a.ANSIX12_ENCODE$6e85352     // Catch:{ NoSuchFieldError -> 0x0021 }
                int r2 = r2 - r0
                r3 = 3
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0021 }
            L_0x0021:
                int[] r1 = f4333a     // Catch:{ NoSuchFieldError -> 0x0029 }
                int r2 = com.google.zxing.datamatrix.a.c.a.EDIFACT_ENCODE$6e85352     // Catch:{ NoSuchFieldError -> 0x0029 }
                int r2 = r2 - r0
                r3 = 4
                r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0029 }
            L_0x0029:
                int[] r1 = f4333a     // Catch:{ NoSuchFieldError -> 0x0031 }
                int r2 = com.google.zxing.datamatrix.a.c.a.BASE256_ENCODE$6e85352     // Catch:{ NoSuchFieldError -> 0x0031 }
                int r2 = r2 - r0
                r0 = 5
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0031 }
            L_0x0031:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.a.c.AnonymousClass1.<clinit>():void");
        }
    }

    enum a {
        ;
        
        public static final int ANSIX12_ENCODE$6e85352 = 5;
        public static final int ASCII_ENCODE$6e85352 = 2;
        public static final int BASE256_ENCODE$6e85352 = 7;
        public static final int C40_ENCODE$6e85352 = 3;
        public static final int EDIFACT_ENCODE$6e85352 = 6;
        public static final int PAD_ENCODE$6e85352 = 1;
        public static final int TEXT_ENCODE$6e85352 = 4;

        static {
            f4334a = new int[]{PAD_ENCODE$6e85352, ASCII_ENCODE$6e85352, C40_ENCODE$6e85352, TEXT_ENCODE$6e85352, ANSIX12_ENCODE$6e85352, EDIFACT_ENCODE$6e85352, BASE256_ENCODE$6e85352};
        }

        public static int[] values$68f9f718() {
            return (int[]) f4334a.clone();
        }
    }

    private c() {
    }

    static d a(byte[] bArr) throws com.google.zxing.d {
        com.google.zxing.common.c cVar = new com.google.zxing.common.c(bArr);
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(0);
        ArrayList arrayList = new ArrayList(1);
        int i = a.ASCII_ENCODE$6e85352;
        do {
            if (i == a.ASCII_ENCODE$6e85352) {
                i = a(cVar, sb, sb2);
            } else {
                int i2 = AnonymousClass1.f4333a[i - 1];
                if (i2 == 1) {
                    a(cVar, sb);
                } else if (i2 == 2) {
                    b(cVar, sb);
                } else if (i2 == 3) {
                    c(cVar, sb);
                } else if (i2 == 4) {
                    d(cVar, sb);
                } else if (i2 == 5) {
                    a(cVar, sb, (Collection<byte[]>) arrayList);
                } else {
                    throw com.google.zxing.d.getFormatInstance();
                }
                i = a.ASCII_ENCODE$6e85352;
            }
            if (i == a.PAD_ENCODE$6e85352) {
                break;
            }
        } while (cVar.available() > 0);
        if (sb2.length() > 0) {
            sb.append(sb2);
        }
        String sb3 = sb.toString();
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        return new d(bArr, sb3, arrayList, null);
    }

    private static int a(com.google.zxing.common.c cVar, StringBuilder sb, StringBuilder sb2) throws com.google.zxing.d {
        boolean z = false;
        do {
            int readBits = cVar.readBits(8);
            if (readBits == 0) {
                throw com.google.zxing.d.getFormatInstance();
            } else if (readBits <= 128) {
                if (z) {
                    readBits += 128;
                }
                sb.append((char) (readBits - 1));
                return a.ASCII_ENCODE$6e85352;
            } else if (readBits == 129) {
                return a.PAD_ENCODE$6e85352;
            } else {
                if (readBits <= 229) {
                    int i = readBits - 130;
                    if (i < 10) {
                        sb.append('0');
                    }
                    sb.append(i);
                } else {
                    switch (readBits) {
                        case 230:
                            return a.C40_ENCODE$6e85352;
                        case 231:
                            return a.BASE256_ENCODE$6e85352;
                        case 232:
                            sb.append(29);
                            break;
                        case 233:
                        case 234:
                        case 241:
                            break;
                        case 235:
                            z = true;
                            break;
                        case 236:
                            sb.append("[)>\u001e05\u001d");
                            sb2.insert(0, "\u001e\u0004");
                            break;
                        case 237:
                            sb.append("[)>\u001e06\u001d");
                            sb2.insert(0, "\u001e\u0004");
                            break;
                        case 238:
                            return a.ANSIX12_ENCODE$6e85352;
                        case 239:
                            return a.TEXT_ENCODE$6e85352;
                        case 240:
                            return a.EDIFACT_ENCODE$6e85352;
                        default:
                            if (!(readBits == 254 && cVar.available() == 0)) {
                                throw com.google.zxing.d.getFormatInstance();
                            }
                    }
                }
            }
        } while (cVar.available() > 0);
        return a.ASCII_ENCODE$6e85352;
    }

    private static void a(com.google.zxing.common.c cVar, StringBuilder sb) throws com.google.zxing.d {
        int[] iArr = new int[3];
        boolean z = false;
        int i = 0;
        while (cVar.available() != 8) {
            int readBits = cVar.readBits(8);
            if (readBits != 254) {
                a(readBits, cVar.readBits(8), iArr);
                boolean z2 = z;
                for (int i2 = 0; i2 < 3; i2++) {
                    int i3 = iArr[i2];
                    if (i != 0) {
                        if (i != 1) {
                            if (i == 2) {
                                char[] cArr = f4332b;
                                if (i3 < cArr.length) {
                                    char c2 = cArr[i3];
                                    if (z2) {
                                        sb.append((char) (c2 + 128));
                                    } else {
                                        sb.append(c2);
                                    }
                                } else if (i3 == 27) {
                                    sb.append(29);
                                } else if (i3 == 30) {
                                    z2 = true;
                                } else {
                                    throw com.google.zxing.d.getFormatInstance();
                                }
                                i = 0;
                            } else if (i != 3) {
                                throw com.google.zxing.d.getFormatInstance();
                            } else if (z2) {
                                sb.append((char) (i3 + 224));
                            } else {
                                sb.append((char) (i3 + 96));
                                i = 0;
                            }
                        } else if (z2) {
                            sb.append((char) (i3 + 128));
                        } else {
                            sb.append((char) i3);
                            i = 0;
                        }
                        z2 = false;
                        i = 0;
                    } else if (i3 < 3) {
                        i = i3 + 1;
                    } else {
                        char[] cArr2 = f4331a;
                        if (i3 < cArr2.length) {
                            char c3 = cArr2[i3];
                            if (z2) {
                                sb.append((char) (c3 + 128));
                                z2 = false;
                            } else {
                                sb.append(c3);
                            }
                        } else {
                            throw com.google.zxing.d.getFormatInstance();
                        }
                    }
                }
                if (cVar.available() > 0) {
                    z = z2;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private static void b(com.google.zxing.common.c cVar, StringBuilder sb) throws com.google.zxing.d {
        int[] iArr = new int[3];
        boolean z = false;
        int i = 0;
        while (cVar.available() != 8) {
            int readBits = cVar.readBits(8);
            if (readBits != 254) {
                a(readBits, cVar.readBits(8), iArr);
                boolean z2 = z;
                for (int i2 = 0; i2 < 3; i2++) {
                    int i3 = iArr[i2];
                    if (i != 0) {
                        if (i != 1) {
                            if (i == 2) {
                                char[] cArr = d;
                                if (i3 < cArr.length) {
                                    char c2 = cArr[i3];
                                    if (z2) {
                                        sb.append((char) (c2 + 128));
                                    } else {
                                        sb.append(c2);
                                    }
                                } else if (i3 == 27) {
                                    sb.append(29);
                                } else if (i3 == 30) {
                                    z2 = true;
                                } else {
                                    throw com.google.zxing.d.getFormatInstance();
                                }
                                i = 0;
                            } else if (i == 3) {
                                char[] cArr2 = e;
                                if (i3 < cArr2.length) {
                                    char c3 = cArr2[i3];
                                    if (z2) {
                                        sb.append((char) (c3 + 128));
                                    } else {
                                        sb.append(c3);
                                        i = 0;
                                    }
                                } else {
                                    throw com.google.zxing.d.getFormatInstance();
                                }
                            } else {
                                throw com.google.zxing.d.getFormatInstance();
                            }
                        } else if (z2) {
                            sb.append((char) (i3 + 128));
                        } else {
                            sb.append((char) i3);
                            i = 0;
                        }
                        z2 = false;
                        i = 0;
                    } else if (i3 < 3) {
                        i = i3 + 1;
                    } else {
                        char[] cArr3 = c;
                        if (i3 < cArr3.length) {
                            char c4 = cArr3[i3];
                            if (z2) {
                                sb.append((char) (c4 + 128));
                                z2 = false;
                            } else {
                                sb.append(c4);
                            }
                        } else {
                            throw com.google.zxing.d.getFormatInstance();
                        }
                    }
                }
                if (cVar.available() > 0) {
                    z = z2;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private static void c(com.google.zxing.common.c cVar, StringBuilder sb) throws com.google.zxing.d {
        int[] iArr = new int[3];
        while (cVar.available() != 8) {
            int readBits = cVar.readBits(8);
            if (readBits != 254) {
                a(readBits, cVar.readBits(8), iArr);
                for (int i = 0; i < 3; i++) {
                    int i2 = iArr[i];
                    if (i2 == 0) {
                        sb.append(13);
                    } else if (i2 == 1) {
                        sb.append('*');
                    } else if (i2 == 2) {
                        sb.append('>');
                    } else if (i2 == 3) {
                        sb.append(' ');
                    } else if (i2 < 14) {
                        sb.append((char) (i2 + 44));
                    } else if (i2 < 40) {
                        sb.append((char) (i2 + 51));
                    } else {
                        throw com.google.zxing.d.getFormatInstance();
                    }
                }
                if (cVar.available() <= 0) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private static void a(int i, int i2, int[] iArr) {
        int i3 = ((i << 8) + i2) - 1;
        int i4 = i3 / 1600;
        iArr[0] = i4;
        int i5 = i3 - (i4 * 1600);
        int i6 = i5 / 40;
        iArr[1] = i6;
        iArr[2] = i5 - (i6 * 40);
    }

    private static void d(com.google.zxing.common.c cVar, StringBuilder sb) {
        while (cVar.available() > 16) {
            for (int i = 0; i < 4; i++) {
                int readBits = cVar.readBits(6);
                if (readBits == 31) {
                    int bitOffset = 8 - cVar.getBitOffset();
                    if (bitOffset != 8) {
                        cVar.readBits(bitOffset);
                    }
                    return;
                }
                if ((readBits & 32) == 0) {
                    readBits |= 64;
                }
                sb.append((char) readBits);
            }
            if (cVar.available() <= 0) {
                return;
            }
        }
    }

    private static void a(com.google.zxing.common.c cVar, StringBuilder sb, Collection<byte[]> collection) throws com.google.zxing.d {
        int byteOffset = cVar.getByteOffset() + 1;
        int i = byteOffset + 1;
        int a2 = a(cVar.readBits(8), byteOffset);
        if (a2 == 0) {
            a2 = cVar.available() / 8;
        } else if (a2 >= 250) {
            a2 = ((a2 - 249) * 250) + a(cVar.readBits(8), i);
            i++;
        }
        if (a2 >= 0) {
            byte[] bArr = new byte[a2];
            int i2 = 0;
            while (i2 < a2) {
                if (cVar.available() >= 8) {
                    bArr[i2] = (byte) a(cVar.readBits(8), i);
                    i2++;
                    i++;
                } else {
                    throw com.google.zxing.d.getFormatInstance();
                }
            }
            collection.add(bArr);
            try {
                sb.append(new String(bArr, "ISO8859_1"));
            } catch (UnsupportedEncodingException e2) {
                throw new IllegalStateException("Platform does not support required encoding: ".concat(String.valueOf(e2)));
            }
        } else {
            throw com.google.zxing.d.getFormatInstance();
        }
    }

    private static int a(int i, int i2) {
        int i3 = i - (((i2 * 149) % 255) + 1);
        return i3 >= 0 ? i3 : i3 + 256;
    }
}
