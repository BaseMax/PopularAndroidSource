package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzic;
import java.nio.ByteBuffer;

public final class Lc extends Kc {
    public final int a(int i2, byte[] bArr, int i3, int i4) {
        while (r9 < i4 && bArr[r9] >= 0) {
            i3 = r9 + 1;
        }
        if (r9 >= i4) {
            return 0;
        }
        while (r9 < i4) {
            int i5 = r9 + 1;
            byte b2 = bArr[r9];
            if (b2 < 0) {
                if (b2 < -32) {
                    if (i5 >= i4) {
                        return b2;
                    }
                    if (b2 >= -62) {
                        r9 = i5 + 1;
                        if (bArr[i5] > -65) {
                        }
                    }
                    return -1;
                } else if (b2 < -16) {
                    if (i5 >= i4 - 1) {
                        return Hc.b(bArr, i5, i4);
                    }
                    int i6 = i5 + 1;
                    byte b3 = bArr[i5];
                    if (b3 <= -65 && ((b2 != -32 || b3 >= -96) && (b2 != -19 || b3 < -96))) {
                        r9 = i6 + 1;
                        if (bArr[i6] > -65) {
                        }
                    }
                    return -1;
                } else if (i5 >= i4 - 2) {
                    return Hc.b(bArr, i5, i4);
                } else {
                    int i7 = i5 + 1;
                    byte b4 = bArr[i5];
                    if (b4 <= -65 && (((b2 << 28) + (b4 + 112)) >> 30) == 0) {
                        int i8 = i7 + 1;
                        if (bArr[i7] <= -65) {
                            i5 = i8 + 1;
                            if (bArr[i8] > -65) {
                            }
                        }
                    }
                    return -1;
                }
            }
            r9 = i5;
        }
        return 0;
    }

    public final String b(byte[] bArr, int i2, int i3) {
        if ((i2 | i3 | ((bArr.length - i2) - i3)) >= 0) {
            int i4 = i2 + i3;
            char[] cArr = new char[i3];
            int i5 = 0;
            while (r13 < i4) {
                byte b2 = bArr[r13];
                if (!Ic.a(b2)) {
                    break;
                }
                i2 = r13 + 1;
                Ic.a(b2, cArr, i5);
                i5++;
            }
            int i6 = i5;
            while (r13 < i4) {
                int i7 = r13 + 1;
                byte b3 = bArr[r13];
                if (Ic.a(b3)) {
                    int i8 = i6 + 1;
                    Ic.a(b3, cArr, i6);
                    while (i7 < i4) {
                        byte b4 = bArr[i7];
                        if (!Ic.a(b4)) {
                            break;
                        }
                        i7++;
                        Ic.a(b4, cArr, i8);
                        i8++;
                    }
                    r13 = i7;
                    i6 = i8;
                } else if (Ic.b(b3)) {
                    if (i7 < i4) {
                        Ic.a(b3, bArr[i7], cArr, i6);
                        r13 = i7 + 1;
                        i6++;
                    } else {
                        throw zzfh.i();
                    }
                } else if (Ic.c(b3)) {
                    if (i7 < i4 - 1) {
                        int i9 = i7 + 1;
                        Ic.a(b3, bArr[i7], bArr[i9], cArr, i6);
                        r13 = i9 + 1;
                        i6++;
                    } else {
                        throw zzfh.i();
                    }
                } else if (i7 < i4 - 2) {
                    int i10 = i7 + 1;
                    byte b5 = bArr[i7];
                    int i11 = i10 + 1;
                    Ic.a(b3, b5, bArr[i10], bArr[i11], cArr, i6);
                    r13 = i11 + 1;
                    i6 = i6 + 1 + 1;
                } else {
                    throw zzfh.i();
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)}));
    }

    public final int a(CharSequence charSequence, byte[] bArr, int i2, int i3) {
        int i4;
        int length = charSequence.length();
        int i5 = i3 + i2;
        int i6 = 0;
        while (i6 < length) {
            int i7 = i6 + i2;
            if (i7 >= i5) {
                break;
            }
            char charAt = charSequence.charAt(i6);
            if (charAt >= 128) {
                break;
            }
            bArr[i7] = (byte) charAt;
            i6++;
        }
        if (i6 == length) {
            return i2 + length;
        }
        int i8 = i2 + i6;
        while (i6 < length) {
            char charAt2 = charSequence.charAt(i6);
            if (charAt2 < 128 && i8 < i5) {
                i4 = i8 + 1;
                bArr[i8] = (byte) charAt2;
            } else if (charAt2 < 2048 && i8 <= i5 - 2) {
                int i9 = i8 + 1;
                bArr[i8] = (byte) ((charAt2 >>> 6) | 960);
                i8 = i9 + 1;
                bArr[i9] = (byte) ((charAt2 & '?') | 128);
                i6++;
            } else if ((charAt2 < 55296 || 57343 < charAt2) && i8 <= i5 - 3) {
                int i10 = i8 + 1;
                bArr[i8] = (byte) ((charAt2 >>> 12) | 480);
                int i11 = i10 + 1;
                bArr[i10] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i4 = i11 + 1;
                bArr[i11] = (byte) ((charAt2 & '?') | 128);
            } else if (i8 <= i5 - 4) {
                int i12 = i6 + 1;
                if (i12 != charSequence.length()) {
                    char charAt3 = charSequence.charAt(i12);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                        int i13 = i8 + 1;
                        bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) (((codePoint >>> 12) & 63) | 128);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((codePoint >>> 6) & 63) | 128);
                        i8 = i15 + 1;
                        bArr[i15] = (byte) ((codePoint & 63) | 128);
                        i6 = i12;
                        i6++;
                    } else {
                        i6 = i12;
                    }
                }
                throw new zzic(i6 - 1, length);
            } else {
                if (55296 <= charAt2 && charAt2 <= 57343) {
                    int i16 = i6 + 1;
                    if (i16 == charSequence.length() || !Character.isSurrogatePair(charAt2, charSequence.charAt(i16))) {
                        throw new zzic(i6, length);
                    }
                }
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(charAt2);
                sb.append(" at index ");
                sb.append(i8);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            i8 = i4;
            i6++;
        }
        return i8;
    }

    public final void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        Kc.b(charSequence, byteBuffer);
    }
}
