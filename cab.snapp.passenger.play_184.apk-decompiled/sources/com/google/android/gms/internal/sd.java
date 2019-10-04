package com.google.android.gms.internal;

final class sd extends sa {
    sd() {
    }

    private static int a(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            return rz.b(i);
        }
        if (i2 == 1) {
            return rz.b(i, rx.a(bArr, j));
        }
        if (i2 == 2) {
            return rz.b(i, rx.a(bArr, j), rx.a(bArr, j + 1));
        }
        throw new AssertionError();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:0x004f, code lost:
        return -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00aa, code lost:
        return -1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int a(byte[] r11, long r12, int r14) {
        /*
            r0 = 0
            r1 = 1
            r3 = 16
            if (r14 >= r3) goto L_0x0009
            r3 = 0
            goto L_0x001b
        L_0x0009:
            r4 = r12
            r3 = 0
        L_0x000b:
            if (r3 >= r14) goto L_0x001a
            long r6 = r4 + r1
            byte r4 = com.google.android.gms.internal.rx.a((byte[]) r11, (long) r4)
            if (r4 >= 0) goto L_0x0016
            goto L_0x001b
        L_0x0016:
            int r3 = r3 + 1
            r4 = r6
            goto L_0x000b
        L_0x001a:
            r3 = r14
        L_0x001b:
            int r14 = r14 - r3
            long r3 = (long) r3
            long r12 = r12 + r3
        L_0x001e:
            r3 = 0
        L_0x001f:
            if (r14 <= 0) goto L_0x002f
            long r3 = r12 + r1
            byte r12 = com.google.android.gms.internal.rx.a((byte[]) r11, (long) r12)
            if (r12 < 0) goto L_0x0032
            int r14 = r14 + -1
            r9 = r3
            r3 = r12
            r12 = r9
            goto L_0x001f
        L_0x002f:
            r9 = r12
            r12 = r3
            r3 = r9
        L_0x0032:
            if (r14 != 0) goto L_0x0035
            return r0
        L_0x0035:
            int r14 = r14 + -1
            r13 = -32
            r5 = -65
            r6 = -1
            if (r12 >= r13) goto L_0x0050
            if (r14 != 0) goto L_0x0041
            return r12
        L_0x0041:
            int r14 = r14 + -1
            r13 = -62
            if (r12 < r13) goto L_0x004f
            long r12 = r3 + r1
            byte r3 = com.google.android.gms.internal.rx.a((byte[]) r11, (long) r3)
            if (r3 <= r5) goto L_0x001e
        L_0x004f:
            return r6
        L_0x0050:
            r7 = -16
            if (r12 >= r7) goto L_0x007b
            r7 = 2
            if (r14 >= r7) goto L_0x005c
            int r11 = a((byte[]) r11, (int) r12, (long) r3, (int) r14)
            return r11
        L_0x005c:
            int r14 = r14 + -2
            long r7 = r3 + r1
            byte r3 = com.google.android.gms.internal.rx.a((byte[]) r11, (long) r3)
            if (r3 > r5) goto L_0x007a
            r4 = -96
            if (r12 != r13) goto L_0x006c
            if (r3 < r4) goto L_0x007a
        L_0x006c:
            r13 = -19
            if (r12 != r13) goto L_0x0072
            if (r3 >= r4) goto L_0x007a
        L_0x0072:
            long r12 = r7 + r1
            byte r3 = com.google.android.gms.internal.rx.a((byte[]) r11, (long) r7)
            if (r3 <= r5) goto L_0x001e
        L_0x007a:
            return r6
        L_0x007b:
            r13 = 3
            if (r14 >= r13) goto L_0x0083
            int r11 = a((byte[]) r11, (int) r12, (long) r3, (int) r14)
            return r11
        L_0x0083:
            int r14 = r14 + -3
            long r7 = r3 + r1
            byte r13 = com.google.android.gms.internal.rx.a((byte[]) r11, (long) r3)
            if (r13 > r5) goto L_0x00aa
            int r12 = r12 << 28
            int r13 = r13 + 112
            int r12 = r12 + r13
            int r12 = r12 >> 30
            if (r12 != 0) goto L_0x00aa
            long r12 = r7 + r1
            byte r3 = com.google.android.gms.internal.rx.a((byte[]) r11, (long) r7)
            if (r3 > r5) goto L_0x00aa
            long r3 = r12 + r1
            byte r12 = com.google.android.gms.internal.rx.a((byte[]) r11, (long) r12)
            if (r12 <= r5) goto L_0x00a7
            goto L_0x00aa
        L_0x00a7:
            r12 = r3
            goto L_0x001e
        L_0x00aa:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.sd.a(byte[], long, int):int");
    }

    /* access modifiers changed from: package-private */
    public final int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char c;
        long j;
        long j2;
        long j3;
        CharSequence charSequence2 = charSequence;
        byte[] bArr2 = bArr;
        int i3 = i;
        int i4 = i2;
        long j4 = (long) i3;
        long j5 = ((long) i4) + j4;
        int length = charSequence.length();
        if (length > i4 || bArr2.length - i4 < i3) {
            char charAt = charSequence2.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(charAt);
            sb.append(" at index ");
            sb.append(i3 + i4);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i5 = 0;
        while (true) {
            c = 128;
            j = 1;
            if (i5 >= length) {
                break;
            }
            char charAt2 = charSequence2.charAt(i5);
            if (charAt2 >= 128) {
                break;
            }
            rx.a(bArr2, j4, (byte) charAt2);
            i5++;
            j4 = 1 + j4;
        }
        if (i5 == length) {
            return (int) j4;
        }
        while (i5 < length) {
            char charAt3 = charSequence2.charAt(i5);
            if (charAt3 < c && j4 < j5) {
                long j6 = j4 + j;
                rx.a(bArr2, j4, (byte) charAt3);
                j3 = j;
                j2 = j6;
            } else if (charAt3 < 2048 && j4 <= j5 - 2) {
                long j7 = j4 + j;
                rx.a(bArr2, j4, (byte) ((charAt3 >>> 6) | 960));
                rx.a(bArr2, j7, (byte) ((charAt3 & '?') | 128));
                j2 = j7 + j;
                j3 = j;
                i5++;
                c = 128;
                long j8 = j3;
                j4 = j2;
                j = j8;
            } else if ((charAt3 < 55296 || 57343 < charAt3) && j4 <= j5 - 3) {
                long j9 = j4 + j;
                rx.a(bArr2, j4, (byte) ((charAt3 >>> 12) | 480));
                long j10 = j9 + j;
                rx.a(bArr2, j9, (byte) (((charAt3 >>> 6) & 63) | 128));
                rx.a(bArr2, j10, (byte) ((charAt3 & '?') | 128));
                j2 = j10 + 1;
                j3 = 1;
            } else if (j4 <= j5 - 4) {
                int i6 = i5 + 1;
                if (i6 != length) {
                    char charAt4 = charSequence2.charAt(i6);
                    if (Character.isSurrogatePair(charAt3, charAt4)) {
                        int codePoint = Character.toCodePoint(charAt3, charAt4);
                        long j11 = j4 + 1;
                        rx.a(bArr2, j4, (byte) ((codePoint >>> 18) | 240));
                        long j12 = j11 + 1;
                        rx.a(bArr2, j11, (byte) (((codePoint >>> 12) & 63) | 128));
                        long j13 = j12 + 1;
                        rx.a(bArr2, j12, (byte) (((codePoint >>> 6) & 63) | 128));
                        j3 = 1;
                        j2 = j13 + 1;
                        rx.a(bArr2, j13, (byte) ((codePoint & 63) | 128));
                        i5 = i6;
                        i5++;
                        c = 128;
                        long j82 = j3;
                        j4 = j2;
                        j = j82;
                    } else {
                        i5 = i6;
                    }
                }
                throw new sc(i5 - 1, length);
            } else {
                if (55296 <= charAt3 && charAt3 <= 57343) {
                    int i7 = i5 + 1;
                    if (i7 == length || !Character.isSurrogatePair(charAt3, charSequence2.charAt(i7))) {
                        throw new sc(i5, length);
                    }
                }
                StringBuilder sb2 = new StringBuilder(46);
                sb2.append("Failed writing ");
                sb2.append(charAt3);
                sb2.append(" at index ");
                sb2.append(j4);
                throw new ArrayIndexOutOfBoundsException(sb2.toString());
            }
            i5++;
            c = 128;
            long j822 = j3;
            j4 = j2;
            j = j822;
        }
        return (int) j4;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i, int i2) {
        if ((i | i2 | (bArr.length - i2)) >= 0) {
            long j = (long) i;
            return a(bArr, j, (int) (((long) i2) - j));
        }
        throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)}));
    }
}
