package com.google.zxing.qrcode.decoder;

import com.google.zxing.DecodeHintType;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.c;
import com.google.zxing.common.k;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f4413a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:".toCharArray();

    private d() {
    }

    static com.google.zxing.common.d a(byte[] bArr, h hVar, ErrorCorrectionLevel errorCorrectionLevel, Map<DecodeHintType, ?> map) throws com.google.zxing.d {
        Mode forBits;
        Mode mode;
        String str;
        int i;
        int readBits;
        int i2;
        h hVar2 = hVar;
        c cVar = new c(bArr);
        StringBuilder sb = new StringBuilder(50);
        int i3 = 1;
        ArrayList arrayList = new ArrayList(1);
        CharacterSetECI characterSetECI = null;
        boolean z = false;
        int i4 = -1;
        int i5 = -1;
        while (true) {
            try {
                if (cVar.available() < 4) {
                    forBits = Mode.TERMINATOR;
                } else {
                    forBits = Mode.forBits(cVar.readBits(4));
                }
                Mode mode2 = forBits;
                switch (mode2) {
                    case TERMINATOR:
                        break;
                    case FNC1_FIRST_POSITION:
                    case FNC1_SECOND_POSITION:
                        mode = mode2;
                        z = true;
                        break;
                    case STRUCTURED_APPEND:
                        if (cVar.available() >= 16) {
                            i4 = cVar.readBits(8);
                            i5 = cVar.readBits(8);
                            break;
                        } else {
                            throw com.google.zxing.d.getFormatInstance();
                        }
                    case ECI:
                        int readBits2 = cVar.readBits(8);
                        if ((readBits2 & 128) == 0) {
                            i = readBits2 & 127;
                        } else {
                            if ((readBits2 & 192) == 128) {
                                readBits = cVar.readBits(8);
                                i2 = (readBits2 & 63) << 8;
                            } else if ((readBits2 & 224) == 192) {
                                readBits = cVar.readBits(16);
                                i2 = (readBits2 & 31) << 16;
                            } else {
                                throw com.google.zxing.d.getFormatInstance();
                            }
                            i = i2 | readBits;
                        }
                        characterSetECI = CharacterSetECI.getCharacterSetECIByValue(i);
                        if (characterSetECI != null) {
                            break;
                        } else {
                            throw com.google.zxing.d.getFormatInstance();
                        }
                    case HANZI:
                        int readBits3 = cVar.readBits(4);
                        int readBits4 = cVar.readBits(mode2.getCharacterCountBits(hVar2));
                        if (readBits3 == i3) {
                            a(cVar, sb, readBits4);
                            break;
                        }
                        break;
                    default:
                        int readBits5 = cVar.readBits(mode2.getCharacterCountBits(hVar2));
                        int i6 = AnonymousClass1.f4414a[mode2.ordinal()];
                        if (i6 != i3) {
                            if (i6 != 2) {
                                if (i6 == 3) {
                                    mode = mode2;
                                    a(cVar, sb, readBits5, characterSetECI, arrayList, map);
                                    break;
                                } else if (i6 == 4) {
                                    b(cVar, sb, readBits5);
                                    break;
                                } else {
                                    throw com.google.zxing.d.getFormatInstance();
                                }
                            } else {
                                mode = mode2;
                                a(cVar, sb, readBits5, z);
                                break;
                            }
                        } else {
                            mode = mode2;
                            c(cVar, sb, readBits5);
                            break;
                        }
                }
                mode = mode2;
                if (mode == Mode.TERMINATOR) {
                    String sb2 = sb.toString();
                    ArrayList arrayList2 = arrayList.isEmpty() ? null : arrayList;
                    if (errorCorrectionLevel == null) {
                        str = null;
                    } else {
                        str = errorCorrectionLevel.toString();
                    }
                    com.google.zxing.common.d dVar = new com.google.zxing.common.d(bArr, sb2, arrayList2, str, i4, i5);
                    return dVar;
                }
                i3 = 1;
            } catch (IllegalArgumentException unused) {
                throw com.google.zxing.d.getFormatInstance();
            }
        }
    }

    private static void a(c cVar, StringBuilder sb, int i) throws com.google.zxing.d {
        if (i * 13 <= cVar.available()) {
            byte[] bArr = new byte[(i * 2)];
            int i2 = 0;
            while (i > 0) {
                int readBits = cVar.readBits(13);
                int i3 = (readBits % 96) | ((readBits / 96) << 8);
                int i4 = i3 + (i3 < 959 ? 41377 : 42657);
                bArr[i2] = (byte) (i4 >> 8);
                bArr[i2 + 1] = (byte) i4;
                i2 += 2;
                i--;
            }
            try {
                sb.append(new String(bArr, k.GB2312));
            } catch (UnsupportedEncodingException unused) {
                throw com.google.zxing.d.getFormatInstance();
            }
        } else {
            throw com.google.zxing.d.getFormatInstance();
        }
    }

    private static void b(c cVar, StringBuilder sb, int i) throws com.google.zxing.d {
        if (i * 13 <= cVar.available()) {
            byte[] bArr = new byte[(i * 2)];
            int i2 = 0;
            while (i > 0) {
                int readBits = cVar.readBits(13);
                int i3 = (readBits % 192) | ((readBits / 192) << 8);
                int i4 = i3 + (i3 < 7936 ? 33088 : 49472);
                bArr[i2] = (byte) (i4 >> 8);
                bArr[i2 + 1] = (byte) i4;
                i2 += 2;
                i--;
            }
            try {
                sb.append(new String(bArr, k.SHIFT_JIS));
            } catch (UnsupportedEncodingException unused) {
                throw com.google.zxing.d.getFormatInstance();
            }
        } else {
            throw com.google.zxing.d.getFormatInstance();
        }
    }

    private static void a(c cVar, StringBuilder sb, int i, CharacterSetECI characterSetECI, Collection<byte[]> collection, Map<DecodeHintType, ?> map) throws com.google.zxing.d {
        String str;
        if ((i << 3) <= cVar.available()) {
            byte[] bArr = new byte[i];
            for (int i2 = 0; i2 < i; i2++) {
                bArr[i2] = (byte) cVar.readBits(8);
            }
            if (characterSetECI == null) {
                str = k.guessEncoding(bArr, map);
            } else {
                str = characterSetECI.name();
            }
            try {
                sb.append(new String(bArr, str));
                collection.add(bArr);
            } catch (UnsupportedEncodingException unused) {
                throw com.google.zxing.d.getFormatInstance();
            }
        } else {
            throw com.google.zxing.d.getFormatInstance();
        }
    }

    private static char a(int i) throws com.google.zxing.d {
        char[] cArr = f4413a;
        if (i < cArr.length) {
            return cArr[i];
        }
        throw com.google.zxing.d.getFormatInstance();
    }

    private static void a(c cVar, StringBuilder sb, int i, boolean z) throws com.google.zxing.d {
        while (i > 1) {
            if (cVar.available() >= 11) {
                int readBits = cVar.readBits(11);
                sb.append(a(readBits / 45));
                sb.append(a(readBits % 45));
                i -= 2;
            } else {
                throw com.google.zxing.d.getFormatInstance();
            }
        }
        if (i == 1) {
            if (cVar.available() >= 6) {
                sb.append(a(cVar.readBits(6)));
            } else {
                throw com.google.zxing.d.getFormatInstance();
            }
        }
        if (z) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i2 = length + 1;
                        if (sb.charAt(i2) == '%') {
                            sb.deleteCharAt(i2);
                        }
                    }
                    sb.setCharAt(length, 29);
                }
            }
        }
    }

    private static void c(c cVar, StringBuilder sb, int i) throws com.google.zxing.d {
        while (i >= 3) {
            if (cVar.available() >= 10) {
                int readBits = cVar.readBits(10);
                if (readBits < 1000) {
                    sb.append(a(readBits / 100));
                    sb.append(a((readBits / 10) % 10));
                    sb.append(a(readBits % 10));
                    i -= 3;
                } else {
                    throw com.google.zxing.d.getFormatInstance();
                }
            } else {
                throw com.google.zxing.d.getFormatInstance();
            }
        }
        if (i != 2) {
            if (i == 1) {
                if (cVar.available() >= 4) {
                    int readBits2 = cVar.readBits(4);
                    if (readBits2 < 10) {
                        sb.append(a(readBits2));
                    } else {
                        throw com.google.zxing.d.getFormatInstance();
                    }
                } else {
                    throw com.google.zxing.d.getFormatInstance();
                }
            }
        } else if (cVar.available() >= 7) {
            int readBits3 = cVar.readBits(7);
            if (readBits3 < 100) {
                sb.append(a(readBits3 / 10));
                sb.append(a(readBits3 % 10));
                return;
            }
            throw com.google.zxing.d.getFormatInstance();
        } else {
            throw com.google.zxing.d.getFormatInstance();
        }
    }
}
