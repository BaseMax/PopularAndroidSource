package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzeg;
import com.google.android.gms.internal.measurement.zzio;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

public final class Qc {

    /* renamed from: a  reason: collision with root package name */
    public final ByteBuffer f10208a;

    /* renamed from: b  reason: collision with root package name */
    public zzeg f10209b;

    /* renamed from: c  reason: collision with root package name */
    public int f10210c;

    public Qc(byte[] bArr, int i2, int i3) {
        this(ByteBuffer.wrap(bArr, i2, i3));
    }

    public static Qc a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static int c(int i2) {
        if ((i2 & -128) == 0) {
            return 1;
        }
        if ((i2 & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & i2) == 0) {
            return 3;
        }
        return (i2 & -268435456) == 0 ? 4 : 5;
    }

    public static int c(int i2, int i3) {
        return a(i2) + b(i3);
    }

    public final void b(int i2, long j2) {
        a(i2, 0);
        a(j2);
    }

    public final void d(int i2) {
        byte b2 = (byte) i2;
        if (this.f10208a.hasRemaining()) {
            this.f10208a.put(b2);
            return;
        }
        throw new zzio(this.f10208a.position(), this.f10208a.limit());
    }

    public final void e(int i2) {
        while ((i2 & -128) != 0) {
            d((i2 & 127) | 128);
            i2 >>>= 7;
        }
        d(i2);
    }

    public Qc(ByteBuffer byteBuffer) {
        this.f10208a = byteBuffer;
        this.f10208a.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static Qc a(byte[] bArr, int i2, int i3) {
        return new Qc(bArr, 0, i3);
    }

    public final void a(int i2, boolean z) {
        a(i2, 0);
        byte b2 = z ? (byte) 1 : 0;
        if (this.f10208a.hasRemaining()) {
            this.f10208a.put(b2);
            return;
        }
        throw new zzio(this.f10208a.position(), this.f10208a.limit());
    }

    public final void b(int i2, int i3) {
        a(i2, 0);
        if (i3 >= 0) {
            e(i3);
        } else {
            a((long) i3);
        }
    }

    public static int b(int i2, String str) {
        return a(i2) + a(str);
    }

    public static int b(int i2, Wc wc) {
        int a2 = a(i2);
        int b2 = wc.b();
        return a2 + c(b2) + b2;
    }

    public final void a(int i2, String str) {
        a(i2, 2);
        try {
            int c2 = c(str.length());
            if (c2 == c(str.length() * 3)) {
                int position = this.f10208a.position();
                if (this.f10208a.remaining() >= c2) {
                    this.f10208a.position(position + c2);
                    a((CharSequence) str, this.f10208a);
                    int position2 = this.f10208a.position();
                    this.f10208a.position(position);
                    e((position2 - position) - c2);
                    this.f10208a.position(position2);
                    return;
                }
                throw new zzio(position + c2, this.f10208a.limit());
            }
            e(a((CharSequence) str));
            a((CharSequence) str, this.f10208a);
        } catch (BufferOverflowException e2) {
            zzio zzio = new zzio(this.f10208a.position(), this.f10208a.limit());
            zzio.initCause(e2);
            throw zzio;
        }
    }

    public static int b(int i2) {
        if (i2 >= 0) {
            return c(i2);
        }
        return 10;
    }

    public final void b(byte[] bArr) {
        int length = bArr.length;
        if (this.f10208a.remaining() >= length) {
            this.f10208a.put(bArr, 0, length);
            return;
        }
        throw new zzio(this.f10208a.position(), this.f10208a.limit());
    }

    public final void a(int i2, Wc wc) {
        a(i2, 2);
        if (wc.f10275a < 0) {
            wc.b();
        }
        e(wc.f10275a);
        wc.a(this);
    }

    public final void a(int i2, Sb sb) {
        if (this.f10209b == null) {
            this.f10209b = zzeg.a(this.f10208a);
            this.f10210c = this.f10208a.position();
        } else if (this.f10210c != this.f10208a.position()) {
            this.f10209b.b(this.f10208a.array(), this.f10210c, this.f10208a.position() - this.f10210c);
            this.f10210c = this.f10208a.position();
        }
        zzeg zzeg = this.f10209b;
        zzeg.a(i2, sb);
        zzeg.a();
        this.f10210c = this.f10208a.position();
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
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i3);
                                throw new IllegalArgumentException(sb.toString());
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
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(((long) i4) + 4294967296L);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i2;
        int i3;
        if (!byteBuffer.isReadOnly()) {
            int i4 = 0;
            if (byteBuffer.hasArray()) {
                try {
                    byte[] array = byteBuffer.array();
                    int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                    int remaining = byteBuffer.remaining();
                    int length = charSequence.length();
                    int i5 = remaining + arrayOffset;
                    while (i4 < length) {
                        int i6 = i4 + arrayOffset;
                        if (i6 >= i5) {
                            break;
                        }
                        char charAt = charSequence.charAt(i4);
                        if (charAt >= 128) {
                            break;
                        }
                        array[i6] = (byte) charAt;
                        i4++;
                    }
                    if (i4 == length) {
                        i2 = arrayOffset + length;
                    } else {
                        i2 = arrayOffset + i4;
                        while (i4 < length) {
                            char charAt2 = charSequence.charAt(i4);
                            if (charAt2 < 128 && i2 < i5) {
                                i3 = i2 + 1;
                                array[i2] = (byte) charAt2;
                            } else if (charAt2 < 2048 && i2 <= i5 - 2) {
                                int i7 = i2 + 1;
                                array[i2] = (byte) ((charAt2 >>> 6) | 960);
                                i2 = i7 + 1;
                                array[i7] = (byte) ((charAt2 & '?') | 128);
                                i4++;
                            } else if ((charAt2 < 55296 || 57343 < charAt2) && i2 <= i5 - 3) {
                                int i8 = i2 + 1;
                                array[i2] = (byte) ((charAt2 >>> 12) | 480);
                                int i9 = i8 + 1;
                                array[i8] = (byte) (((charAt2 >>> 6) & 63) | 128);
                                i3 = i9 + 1;
                                array[i9] = (byte) ((charAt2 & '?') | 128);
                            } else if (i2 <= i5 - 4) {
                                int i10 = i4 + 1;
                                if (i10 != charSequence.length()) {
                                    char charAt3 = charSequence.charAt(i10);
                                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                                        int i11 = i2 + 1;
                                        array[i2] = (byte) ((codePoint >>> 18) | 240);
                                        int i12 = i11 + 1;
                                        array[i11] = (byte) (((codePoint >>> 12) & 63) | 128);
                                        int i13 = i12 + 1;
                                        array[i12] = (byte) (((codePoint >>> 6) & 63) | 128);
                                        i2 = i13 + 1;
                                        array[i13] = (byte) ((codePoint & 63) | 128);
                                        i4 = i10;
                                        i4++;
                                    } else {
                                        i4 = i10;
                                    }
                                }
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i4 - 1);
                                throw new IllegalArgumentException(sb.toString());
                            } else {
                                StringBuilder sb2 = new StringBuilder(37);
                                sb2.append("Failed writing ");
                                sb2.append(charAt2);
                                sb2.append(" at index ");
                                sb2.append(i2);
                                throw new ArrayIndexOutOfBoundsException(sb2.toString());
                            }
                            i2 = i3;
                            i4++;
                        }
                    }
                    byteBuffer.position(i2 - byteBuffer.arrayOffset());
                } catch (ArrayIndexOutOfBoundsException e2) {
                    BufferOverflowException bufferOverflowException = new BufferOverflowException();
                    bufferOverflowException.initCause(e2);
                    throw bufferOverflowException;
                }
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt4 = charSequence.charAt(i4);
                    if (charAt4 < 128) {
                        byteBuffer.put((byte) charAt4);
                    } else if (charAt4 < 2048) {
                        byteBuffer.put((byte) ((charAt4 >>> 6) | 960));
                        byteBuffer.put((byte) ((charAt4 & '?') | 128));
                    } else if (charAt4 < 55296 || 57343 < charAt4) {
                        byteBuffer.put((byte) ((charAt4 >>> 12) | 480));
                        byteBuffer.put((byte) (((charAt4 >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((charAt4 & '?') | 128));
                    } else {
                        int i14 = i4 + 1;
                        if (i14 != charSequence.length()) {
                            char charAt5 = charSequence.charAt(i14);
                            if (Character.isSurrogatePair(charAt4, charAt5)) {
                                int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                                byteBuffer.put((byte) ((codePoint2 >>> 18) | 240));
                                byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                                i4 = i14;
                            } else {
                                i4 = i14;
                            }
                        }
                        StringBuilder sb3 = new StringBuilder(39);
                        sb3.append("Unpaired surrogate at index ");
                        sb3.append(i4 - 1);
                        throw new IllegalArgumentException(sb3.toString());
                    }
                    i4++;
                }
            }
        } else {
            throw new ReadOnlyBufferException();
        }
    }

    public static int a(int i2, long j2) {
        return a(i2) + ((-128 & j2) == 0 ? 1 : (-16384 & j2) == 0 ? 2 : (-2097152 & j2) == 0 ? 3 : (-268435456 & j2) == 0 ? 4 : (-34359738368L & j2) == 0 ? 5 : (-4398046511104L & j2) == 0 ? 6 : (-562949953421312L & j2) == 0 ? 7 : (-72057594037927936L & j2) == 0 ? 8 : (j2 & Long.MIN_VALUE) == 0 ? 9 : 10);
    }

    public static int a(String str) {
        int a2 = a((CharSequence) str);
        return c(a2) + a2;
    }

    public final void a() {
        if (this.f10208a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", new Object[]{Integer.valueOf(this.f10208a.remaining())}));
        }
    }

    public final void a(int i2, int i3) {
        e((i2 << 3) | i3);
    }

    public static int a(int i2) {
        return c(i2 << 3);
    }

    public final void a(long j2) {
        while ((-128 & j2) != 0) {
            d((((int) j2) & 127) | 128);
            j2 >>>= 7;
        }
        d((int) j2);
    }
}
