package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzic;
import java.nio.ByteBuffer;

public final class Mc extends Kc {
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0061, code lost:
        return -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00b9, code lost:
        return -1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int a(int r16, byte[] r17, int r18, int r19) {
        /*
            r15 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = r1 | r2
            int r4 = r0.length
            int r4 = r4 - r2
            r3 = r3 | r4
            r4 = 2
            r5 = 3
            r6 = 0
            if (r3 < 0) goto L_0x00ba
            long r7 = (long) r1
            long r1 = (long) r2
            long r1 = r1 - r7
            int r2 = (int) r1
            r1 = 16
            r9 = 1
            if (r2 >= r1) goto L_0x001c
            r1 = 0
            goto L_0x002e
        L_0x001c:
            r11 = r7
            r1 = 0
        L_0x001e:
            if (r1 >= r2) goto L_0x002d
            long r13 = r11 + r9
            byte r3 = c.e.a.b.g.f.Fc.a((byte[]) r0, (long) r11)
            if (r3 >= 0) goto L_0x0029
            goto L_0x002e
        L_0x0029:
            int r1 = r1 + 1
            r11 = r13
            goto L_0x001e
        L_0x002d:
            r1 = r2
        L_0x002e:
            int r2 = r2 - r1
            long r11 = (long) r1
            long r7 = r7 + r11
        L_0x0031:
            r1 = 0
        L_0x0032:
            if (r2 <= 0) goto L_0x0040
            long r11 = r7 + r9
            byte r1 = c.e.a.b.g.f.Fc.a((byte[]) r0, (long) r7)
            if (r1 < 0) goto L_0x0041
            int r2 = r2 + -1
            r7 = r11
            goto L_0x0032
        L_0x0040:
            r11 = r7
        L_0x0041:
            if (r2 != 0) goto L_0x0044
            return r6
        L_0x0044:
            int r2 = r2 + -1
            r3 = -32
            r7 = -65
            r8 = -1
            if (r1 >= r3) goto L_0x0062
            if (r2 != 0) goto L_0x0050
            return r1
        L_0x0050:
            int r2 = r2 + -1
            r3 = -62
            if (r1 < r3) goto L_0x0061
            long r13 = r11 + r9
            byte r1 = c.e.a.b.g.f.Fc.a((byte[]) r0, (long) r11)
            if (r1 <= r7) goto L_0x005f
            goto L_0x0061
        L_0x005f:
            r7 = r13
            goto L_0x0031
        L_0x0061:
            return r8
        L_0x0062:
            r13 = -16
            if (r1 >= r13) goto L_0x008f
            if (r2 >= r4) goto L_0x006d
            int r0 = a((byte[]) r0, (int) r1, (long) r11, (int) r2)
            return r0
        L_0x006d:
            int r2 = r2 + -2
            long r13 = r11 + r9
            byte r11 = c.e.a.b.g.f.Fc.a((byte[]) r0, (long) r11)
            if (r11 > r7) goto L_0x008e
            r12 = -96
            if (r1 != r3) goto L_0x007d
            if (r11 < r12) goto L_0x008e
        L_0x007d:
            r3 = -19
            if (r1 != r3) goto L_0x0083
            if (r11 >= r12) goto L_0x008e
        L_0x0083:
            long r11 = r13 + r9
            byte r1 = c.e.a.b.g.f.Fc.a((byte[]) r0, (long) r13)
            if (r1 <= r7) goto L_0x008c
            goto L_0x008e
        L_0x008c:
            r7 = r11
            goto L_0x0031
        L_0x008e:
            return r8
        L_0x008f:
            if (r2 >= r5) goto L_0x0096
            int r0 = a((byte[]) r0, (int) r1, (long) r11, (int) r2)
            return r0
        L_0x0096:
            int r2 = r2 + -3
            long r13 = r11 + r9
            byte r3 = c.e.a.b.g.f.Fc.a((byte[]) r0, (long) r11)
            if (r3 > r7) goto L_0x00b9
            int r1 = r1 << 28
            int r3 = r3 + 112
            int r1 = r1 + r3
            int r1 = r1 >> 30
            if (r1 != 0) goto L_0x00b9
            long r11 = r13 + r9
            byte r1 = c.e.a.b.g.f.Fc.a((byte[]) r0, (long) r13)
            if (r1 > r7) goto L_0x00b9
            long r13 = r11 + r9
            byte r1 = c.e.a.b.g.f.Fc.a((byte[]) r0, (long) r11)
            if (r1 <= r7) goto L_0x005f
        L_0x00b9:
            return r8
        L_0x00ba:
            java.lang.ArrayIndexOutOfBoundsException r3 = new java.lang.ArrayIndexOutOfBoundsException
            java.lang.Object[] r5 = new java.lang.Object[r5]
            int r0 = r0.length
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r5[r6] = r0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r18)
            r1 = 1
            r5[r1] = r0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r19)
            r5[r4] = r0
            java.lang.String r0 = "Array length=%d, index=%d, limit=%d"
            java.lang.String r0 = java.lang.String.format(r0, r5)
            r3.<init>(r0)
            goto L_0x00dd
        L_0x00dc:
            throw r3
        L_0x00dd:
            goto L_0x00dc
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Mc.a(int, byte[], int, int):int");
    }

    public final String b(byte[] bArr, int i2, int i3) {
        if ((i2 | i3 | ((bArr.length - i2) - i3)) >= 0) {
            int i4 = i2 + i3;
            char[] cArr = new char[i3];
            int i5 = 0;
            while (r13 < i4) {
                byte a2 = Fc.a(bArr, (long) r13);
                if (!Ic.a(a2)) {
                    break;
                }
                i2 = r13 + 1;
                Ic.a(a2, cArr, i5);
                i5++;
            }
            int i6 = i5;
            while (r13 < i4) {
                int i7 = r13 + 1;
                byte a3 = Fc.a(bArr, (long) r13);
                if (Ic.a(a3)) {
                    int i8 = i6 + 1;
                    Ic.a(a3, cArr, i6);
                    while (i7 < i4) {
                        byte a4 = Fc.a(bArr, (long) i7);
                        if (!Ic.a(a4)) {
                            break;
                        }
                        i7++;
                        Ic.a(a4, cArr, i8);
                        i8++;
                    }
                    r13 = i7;
                    i6 = i8;
                } else if (Ic.b(a3)) {
                    if (i7 < i4) {
                        int i9 = i7 + 1;
                        Ic.a(a3, Fc.a(bArr, (long) i7), cArr, i6);
                        r13 = i9;
                        i6++;
                    } else {
                        throw zzfh.i();
                    }
                } else if (Ic.c(a3)) {
                    if (i7 < i4 - 1) {
                        int i10 = i7 + 1;
                        int i11 = i10 + 1;
                        Ic.a(a3, Fc.a(bArr, (long) i7), Fc.a(bArr, (long) i10), cArr, i6);
                        r13 = i11;
                        i6++;
                    } else {
                        throw zzfh.i();
                    }
                } else if (i7 < i4 - 2) {
                    int i12 = i7 + 1;
                    byte a5 = Fc.a(bArr, (long) i7);
                    int i13 = i12 + 1;
                    Ic.a(a3, a5, Fc.a(bArr, (long) i12), Fc.a(bArr, (long) i13), cArr, i6);
                    r13 = i13 + 1;
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
        char c2;
        long j2;
        long j3;
        long j4;
        CharSequence charSequence2 = charSequence;
        byte[] bArr2 = bArr;
        int i4 = i2;
        int i5 = i3;
        long j5 = (long) i4;
        long j6 = ((long) i5) + j5;
        int length = charSequence.length();
        if (length > i5 || bArr2.length - i5 < i4) {
            char charAt = charSequence2.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(charAt);
            sb.append(" at index ");
            sb.append(i4 + i5);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i6 = 0;
        while (true) {
            c2 = 128;
            j2 = 1;
            if (i6 >= length) {
                break;
            }
            char charAt2 = charSequence2.charAt(i6);
            if (charAt2 >= 128) {
                break;
            }
            Fc.a(bArr2, j5, (byte) charAt2);
            i6++;
            j5 = 1 + j5;
        }
        if (i6 == length) {
            return (int) j5;
        }
        while (i6 < length) {
            char charAt3 = charSequence2.charAt(i6);
            if (charAt3 < c2 && j5 < j6) {
                long j7 = j5 + j2;
                Fc.a(bArr2, j5, (byte) charAt3);
                j4 = j2;
                j3 = j7;
            } else if (charAt3 < 2048 && j5 <= j6 - 2) {
                long j8 = j5 + j2;
                Fc.a(bArr2, j5, (byte) ((charAt3 >>> 6) | 960));
                Fc.a(bArr2, j8, (byte) ((charAt3 & '?') | 128));
                j3 = j8 + j2;
                j4 = j2;
                i6++;
                c2 = 128;
                long j9 = j4;
                j5 = j3;
                j2 = j9;
            } else if ((charAt3 < 55296 || 57343 < charAt3) && j5 <= j6 - 3) {
                long j10 = j5 + j2;
                Fc.a(bArr2, j5, (byte) ((charAt3 >>> 12) | 480));
                long j11 = j10 + j2;
                Fc.a(bArr2, j10, (byte) (((charAt3 >>> 6) & 63) | 128));
                Fc.a(bArr2, j11, (byte) ((charAt3 & '?') | 128));
                j3 = j11 + 1;
                j4 = 1;
            } else if (j5 <= j6 - 4) {
                int i7 = i6 + 1;
                if (i7 != length) {
                    char charAt4 = charSequence2.charAt(i7);
                    if (Character.isSurrogatePair(charAt3, charAt4)) {
                        int codePoint = Character.toCodePoint(charAt3, charAt4);
                        long j12 = j5 + 1;
                        Fc.a(bArr2, j5, (byte) ((codePoint >>> 18) | 240));
                        long j13 = j12 + 1;
                        Fc.a(bArr2, j12, (byte) (((codePoint >>> 12) & 63) | 128));
                        long j14 = j13 + 1;
                        Fc.a(bArr2, j13, (byte) (((codePoint >>> 6) & 63) | 128));
                        j4 = 1;
                        j3 = j14 + 1;
                        Fc.a(bArr2, j14, (byte) ((codePoint & 63) | 128));
                        i6 = i7;
                        i6++;
                        c2 = 128;
                        long j92 = j4;
                        j5 = j3;
                        j2 = j92;
                    } else {
                        i6 = i7;
                    }
                }
                throw new zzic(i6 - 1, length);
            } else {
                if (55296 <= charAt3 && charAt3 <= 57343) {
                    int i8 = i6 + 1;
                    if (i8 == length || !Character.isSurrogatePair(charAt3, charSequence2.charAt(i8))) {
                        throw new zzic(i6, length);
                    }
                }
                StringBuilder sb2 = new StringBuilder(46);
                sb2.append("Failed writing ");
                sb2.append(charAt3);
                sb2.append(" at index ");
                sb2.append(j5);
                throw new ArrayIndexOutOfBoundsException(sb2.toString());
            }
            i6++;
            c2 = 128;
            long j922 = j4;
            j5 = j3;
            j2 = j922;
        }
        return (int) j5;
    }

    public final void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        long j2;
        char c2;
        long j3;
        CharSequence charSequence2 = charSequence;
        ByteBuffer byteBuffer2 = byteBuffer;
        long a2 = Fc.a(byteBuffer);
        long position = ((long) byteBuffer.position()) + a2;
        long limit = ((long) byteBuffer.limit()) + a2;
        int length = charSequence.length();
        if (((long) length) <= limit - position) {
            int i2 = 0;
            while (true) {
                c2 = 128;
                if (i2 >= length) {
                    break;
                }
                char charAt = charSequence2.charAt(i2);
                if (charAt >= 128) {
                    break;
                }
                Fc.a(j2, (byte) charAt);
                i2++;
                position = 1 + j2;
            }
            if (i2 == length) {
                byteBuffer2.position((int) (j2 - a2));
                return;
            }
            while (i2 < length) {
                char charAt2 = charSequence2.charAt(i2);
                if (charAt2 < c2 && j2 < limit) {
                    Fc.a(j2, (byte) charAt2);
                    j2++;
                    j3 = a2;
                } else if (charAt2 >= 2048 || j2 > limit - 2) {
                    j3 = a2;
                    if ((charAt2 < 55296 || 57343 < charAt2) && j2 <= limit - 3) {
                        long j4 = j2 + 1;
                        Fc.a(j2, (byte) ((charAt2 >>> 12) | 480));
                        long j5 = j4 + 1;
                        Fc.a(j4, (byte) (((charAt2 >>> 6) & 63) | 128));
                        Fc.a(j5, (byte) ((charAt2 & '?') | 128));
                        j2 = j5 + 1;
                    } else if (j2 <= limit - 4) {
                        int i3 = i2 + 1;
                        if (i3 != length) {
                            char charAt3 = charSequence2.charAt(i3);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                long j6 = j2 + 1;
                                Fc.a(j2, (byte) ((codePoint >>> 18) | 240));
                                long j7 = j6 + 1;
                                Fc.a(j6, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j8 = j7 + 1;
                                Fc.a(j7, (byte) (((codePoint >>> 6) & 63) | 128));
                                long j9 = j8 + 1;
                                Fc.a(j8, (byte) ((codePoint & 63) | 128));
                                i2 = i3;
                                j2 = j9;
                            }
                        } else {
                            i3 = i2;
                        }
                        throw new zzic(i3 - 1, length);
                    } else {
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            int i4 = i2 + 1;
                            if (i4 == length || !Character.isSurrogatePair(charAt2, charSequence2.charAt(i4))) {
                                throw new zzic(i2, length);
                            }
                        }
                        StringBuilder sb = new StringBuilder(46);
                        sb.append("Failed writing ");
                        sb.append(charAt2);
                        sb.append(" at index ");
                        sb.append(j2);
                        throw new ArrayIndexOutOfBoundsException(sb.toString());
                    }
                } else {
                    j3 = a2;
                    long j10 = j2 + 1;
                    Fc.a(j2, (byte) ((charAt2 >>> 6) | 960));
                    Fc.a(j10, (byte) ((charAt2 & '?') | 128));
                    j2 = j10 + 1;
                }
                i2++;
                ByteBuffer byteBuffer3 = byteBuffer;
                a2 = j3;
                c2 = 128;
            }
            byteBuffer.position((int) (j2 - a2));
            return;
        }
        char charAt4 = charSequence2.charAt(length - 1);
        int limit2 = byteBuffer.limit();
        StringBuilder sb2 = new StringBuilder(37);
        sb2.append("Failed writing ");
        sb2.append(charAt4);
        sb2.append(" at index ");
        sb2.append(limit2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    public static int a(byte[] bArr, int i2, long j2, int i3) {
        if (i3 == 0) {
            return Hc.a(i2);
        }
        if (i3 == 1) {
            return Hc.a(i2, (int) Fc.a(bArr, j2));
        }
        if (i3 == 2) {
            return Hc.a(i2, (int) Fc.a(bArr, j2), (int) Fc.a(bArr, j2 + 1));
        }
        throw new AssertionError();
    }
}
