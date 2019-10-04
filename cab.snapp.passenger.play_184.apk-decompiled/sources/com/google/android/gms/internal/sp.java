package com.google.android.gms.internal;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

public final class sp {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f3518a;

    private sp(ByteBuffer byteBuffer) {
        this.f3518a = byteBuffer;
        this.f3518a.order(ByteOrder.LITTLE_ENDIAN);
    }

    private sp(byte[] bArr, int i) {
        this(ByteBuffer.wrap(bArr, 0, i));
    }

    private static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char charAt2 = charSequence.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) >= 65536) {
                                i2++;
                            } else {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i2);
                                throw new IllegalArgumentException(sb.toString());
                            }
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(((long) i3) + 4294967296L);
        throw new IllegalArgumentException(sb2.toString());
    }

    private static int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int length = charSequence.length();
        int i4 = i2 + i;
        int i5 = 0;
        while (i5 < length) {
            int i6 = i5 + i;
            if (i6 >= i4) {
                break;
            }
            char charAt = charSequence.charAt(i5);
            if (charAt >= 128) {
                break;
            }
            bArr[i6] = (byte) charAt;
            i5++;
        }
        if (i5 == length) {
            return i + length;
        }
        int i7 = i + i5;
        while (i5 < length) {
            char charAt2 = charSequence.charAt(i5);
            if (charAt2 < 128 && i7 < i4) {
                i3 = i7 + 1;
                bArr[i7] = (byte) charAt2;
            } else if (charAt2 < 2048 && i7 <= i4 - 2) {
                int i8 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 >>> 6) | 960);
                i7 = i8 + 1;
                bArr[i8] = (byte) ((charAt2 & '?') | 128);
                i5++;
            } else if ((charAt2 < 55296 || 57343 < charAt2) && i7 <= i4 - 3) {
                int i9 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 >>> 12) | 480);
                int i10 = i9 + 1;
                bArr[i9] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i3 = i10 + 1;
                bArr[i10] = (byte) ((charAt2 & '?') | 128);
            } else if (i7 <= i4 - 4) {
                int i11 = i5 + 1;
                if (i11 != charSequence.length()) {
                    char charAt3 = charSequence.charAt(i11);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                        int i12 = i7 + 1;
                        bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                        int i13 = i12 + 1;
                        bArr[i12] = (byte) (((codePoint >>> 12) & 63) | 128);
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) (((codePoint >>> 6) & 63) | 128);
                        i7 = i14 + 1;
                        bArr[i14] = (byte) ((codePoint & 63) | 128);
                        i5 = i11;
                        i5++;
                    } else {
                        i5 = i11;
                    }
                }
                StringBuilder sb = new StringBuilder(39);
                sb.append("Unpaired surrogate at index ");
                sb.append(i5 - 1);
                throw new IllegalArgumentException(sb.toString());
            } else {
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("Failed writing ");
                sb2.append(charAt2);
                sb2.append(" at index ");
                sb2.append(i7);
                throw new ArrayIndexOutOfBoundsException(sb2.toString());
            }
            i7 = i3;
            i5++;
        }
        return i7;
    }

    private final void a(int i) throws IOException {
        byte b2 = (byte) i;
        if (this.f3518a.hasRemaining()) {
            this.f3518a.put(b2);
            return;
        }
        throw new sq(this.f3518a.position(), this.f3518a.limit());
    }

    private final void a(long j) throws IOException {
        while ((-128 & j) != 0) {
            a((((int) j) & 127) | 128);
            j >>>= 7;
        }
        a((int) j);
    }

    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        } else if (byteBuffer.hasArray()) {
            try {
                byteBuffer.position(a(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        } else {
            b(charSequence, byteBuffer);
        }
    }

    private final void b(long j) throws IOException {
        if (this.f3518a.remaining() >= 8) {
            this.f3518a.putLong(j);
            return;
        }
        throw new sq(this.f3518a.position(), this.f3518a.limit());
    }

    private static void b(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt >= 128) {
                if (charAt < 2048) {
                    i = (charAt >>> 6) | 960;
                } else if (charAt < 55296 || 57343 < charAt) {
                    byteBuffer.put((byte) ((charAt >>> 12) | 480));
                    i = ((charAt >>> 6) & 63) | 128;
                } else {
                    int i3 = i2 + 1;
                    if (i3 != charSequence.length()) {
                        char charAt2 = charSequence.charAt(i3);
                        if (Character.isSurrogatePair(charAt, charAt2)) {
                            int codePoint = Character.toCodePoint(charAt, charAt2);
                            byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                            byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                            byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                            byteBuffer.put((byte) ((codePoint & 63) | 128));
                            i2 = i3;
                            i2++;
                        } else {
                            i2 = i3;
                        }
                    }
                    StringBuilder sb = new StringBuilder(39);
                    sb.append("Unpaired surrogate at index ");
                    sb.append(i2 - 1);
                    throw new IllegalArgumentException(sb.toString());
                }
                byteBuffer.put((byte) i);
                charAt = (charAt & '?') | 128;
            }
            byteBuffer.put((byte) charAt);
            i2++;
        }
    }

    private static long c(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzad(int i, int i2) {
        return zzlg(i) + zzlh(i2);
    }

    public static int zzb(int i, sx sxVar) {
        int zzlg = zzlg(i);
        int zzho = sxVar.zzho();
        return zzlg + zzlp(zzho) + zzho;
    }

    public static sp zzbf(byte[] bArr) {
        return zzo(bArr, 0, bArr.length);
    }

    public static int zzbg(byte[] bArr) {
        return zzlp(bArr.length) + bArr.length;
    }

    public static int zzc(int i, long j) {
        return zzlg(i) + zzdi(j);
    }

    public static int zzd(int i, byte[] bArr) {
        return zzlg(i) + zzbg(bArr);
    }

    public static int zzdi(long j) {
        if ((-128 & j) == 0) {
            return 1;
        }
        if ((-16384 & j) == 0) {
            return 2;
        }
        if ((-2097152 & j) == 0) {
            return 3;
        }
        if ((-268435456 & j) == 0) {
            return 4;
        }
        if ((-34359738368L & j) == 0) {
            return 5;
        }
        if ((-4398046511104L & j) == 0) {
            return 6;
        }
        if ((-562949953421312L & j) == 0) {
            return 7;
        }
        if ((-72057594037927936L & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int zzh(int i, long j) {
        return zzlg(i) + zzdi(c(j));
    }

    public static int zzlg(int i) {
        return zzlp(i << 3);
    }

    public static int zzlh(int i) {
        if (i >= 0) {
            return zzlp(i);
        }
        return 10;
    }

    public static int zzlo(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static int zzlp(int i) {
        if ((i & -128) == 0) {
            return 1;
        }
        if ((i & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & i) == 0) {
            return 3;
        }
        return (i & -268435456) == 0 ? 4 : 5;
    }

    public static int zzo(int i, String str) {
        return zzlg(i) + zztt(str);
    }

    public static sp zzo(byte[] bArr, int i, int i2) {
        return new sp(bArr, i2);
    }

    public static int zztt(String str) {
        int a2 = a((CharSequence) str);
        return zzlp(a2) + a2;
    }

    public final void zza(int i, double d) throws IOException {
        zzz(i, 1);
        b(Double.doubleToLongBits(d));
    }

    public final void zza(int i, long j) throws IOException {
        zzz(i, 0);
        a(j);
    }

    public final void zza(int i, sx sxVar) throws IOException {
        zzz(i, 2);
        zzb(sxVar);
    }

    public final void zzaa(int i, int i2) throws IOException {
        zzz(i, 0);
        if (i2 >= 0) {
            zzmi(i2);
        } else {
            a((long) i2);
        }
    }

    public final void zzb(int i, long j) throws IOException {
        zzz(i, 1);
        b(j);
    }

    public final void zzb(sx sxVar) throws IOException {
        zzmi(sxVar.zzdam());
        sxVar.zza(this);
    }

    public final void zzbh(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.f3518a.remaining() >= length) {
            this.f3518a.put(bArr, 0, length);
            return;
        }
        throw new sq(this.f3518a.position(), this.f3518a.limit());
    }

    public final void zzc(int i, float f) throws IOException {
        zzz(i, 5);
        int floatToIntBits = Float.floatToIntBits(f);
        if (this.f3518a.remaining() >= 4) {
            this.f3518a.putInt(floatToIntBits);
            return;
        }
        throw new sq(this.f3518a.position(), this.f3518a.limit());
    }

    public final void zzc(int i, byte[] bArr) throws IOException {
        zzz(i, 2);
        zzmi(bArr.length);
        zzbh(bArr);
    }

    public final void zzcwt() {
        if (this.f3518a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", new Object[]{Integer.valueOf(this.f3518a.remaining())}));
        }
    }

    public final void zzf(int i, long j) throws IOException {
        zzz(i, 0);
        a(j);
    }

    public final void zzg(int i, long j) throws IOException {
        zzz(i, 0);
        a(c(j));
    }

    public final void zzl(int i, boolean z) throws IOException {
        zzz(i, 0);
        byte b2 = z ? (byte) 1 : 0;
        if (this.f3518a.hasRemaining()) {
            this.f3518a.put(b2);
            return;
        }
        throw new sq(this.f3518a.position(), this.f3518a.limit());
    }

    public final void zzmi(int i) throws IOException {
        while ((i & -128) != 0) {
            a((i & 127) | 128);
            i >>>= 7;
        }
        a(i);
    }

    public final void zzn(int i, String str) throws IOException {
        zzz(i, 2);
        try {
            int zzlp = zzlp(str.length());
            if (zzlp == zzlp(str.length() * 3)) {
                int position = this.f3518a.position();
                if (this.f3518a.remaining() >= zzlp) {
                    this.f3518a.position(position + zzlp);
                    a(str, this.f3518a);
                    int position2 = this.f3518a.position();
                    this.f3518a.position(position);
                    zzmi((position2 - position) - zzlp);
                    this.f3518a.position(position2);
                    return;
                }
                throw new sq(position + zzlp, this.f3518a.limit());
            }
            zzmi(a((CharSequence) str));
            a(str, this.f3518a);
        } catch (BufferOverflowException e) {
            sq sqVar = new sq(this.f3518a.position(), this.f3518a.limit());
            sqVar.initCause(e);
            throw sqVar;
        }
    }

    public final void zzz(int i, int i2) throws IOException {
        zzmi((i << 3) | i2);
    }
}
