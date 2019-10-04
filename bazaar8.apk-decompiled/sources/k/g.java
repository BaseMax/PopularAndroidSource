package k;

import com.crashlytics.android.answers.RetryManager;
import com.crashlytics.android.core.LogFileManager;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import okio.ByteString;
import okio.SegmentedByteString;

/* compiled from: Buffer */
public final class g implements i, h, Cloneable, ByteChannel {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f15739a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: b  reason: collision with root package name */
    public w f15740b;

    /* renamed from: c  reason: collision with root package name */
    public long f15741c;

    public g a() {
        return this;
    }

    public String b(long j2) {
        if (j2 >= 0) {
            long j3 = Long.MAX_VALUE;
            if (j2 != Long.MAX_VALUE) {
                j3 = j2 + 1;
            }
            long a2 = a((byte) 10, 0, j3);
            if (a2 != -1) {
                return j(a2);
            }
            if (j3 < size() && h(j3 - 1) == 13 && h(j3) == 10) {
                return j(j3);
            }
            g gVar = new g();
            a(gVar, 0, Math.min(32, size()));
            throw new EOFException("\\n not found: limit=" + Math.min(size(), j2) + " content=" + gVar.s().g() + 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j2);
    }

    public void close() {
    }

    public boolean d() {
        return this.f15741c == 0;
    }

    public g e() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        long j2 = this.f15741c;
        if (j2 != gVar.f15741c) {
            return false;
        }
        long j3 = 0;
        if (j2 == 0) {
            return true;
        }
        w wVar = this.f15740b;
        w wVar2 = gVar.f15740b;
        int i2 = wVar.f15768b;
        int i3 = wVar2.f15768b;
        while (j3 < this.f15741c) {
            long min = (long) Math.min(wVar.f15769c - i2, wVar2.f15769c - i3);
            int i4 = i3;
            int i5 = i2;
            int i6 = 0;
            while (((long) i6) < min) {
                int i7 = i5 + 1;
                int i8 = i4 + 1;
                if (wVar.f15767a[i5] != wVar2.f15767a[i4]) {
                    return false;
                }
                i6++;
                i5 = i7;
                i4 = i8;
            }
            if (i5 == wVar.f15769c) {
                wVar = wVar.f15772f;
                i2 = wVar.f15768b;
            } else {
                i2 = i5;
            }
            if (i4 == wVar2.f15769c) {
                wVar2 = wVar2.f15772f;
                i3 = wVar2.f15768b;
            } else {
                i3 = i4;
            }
            j3 += min;
        }
        return true;
    }

    public void f(long j2) {
        if (this.f15741c < j2) {
            throw new EOFException();
        }
    }

    public void flush() {
    }

    public final byte h(long j2) {
        int i2;
        C.a(this.f15741c, j2, 1);
        long j3 = this.f15741c;
        if (j3 - j2 > j2) {
            w wVar = this.f15740b;
            while (true) {
                int i3 = wVar.f15769c;
                int i4 = wVar.f15768b;
                long j4 = (long) (i3 - i4);
                if (j2 < j4) {
                    return wVar.f15767a[i4 + ((int) j2)];
                }
                j2 -= j4;
                wVar = wVar.f15772f;
            }
        } else {
            long j5 = j2 - j3;
            w wVar2 = this.f15740b;
            do {
                wVar2 = wVar2.f15773g;
                int i5 = wVar2.f15769c;
                i2 = wVar2.f15768b;
                j5 += (long) (i5 - i2);
            } while (j5 < 0);
            return wVar2.f15767a[i2 + ((int) j5)];
        }
    }

    public int hashCode() {
        w wVar = this.f15740b;
        if (wVar == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = wVar.f15769c;
            for (int i4 = wVar.f15768b; i4 < i3; i4++) {
                i2 = (i2 * 31) + wVar.f15767a[i4];
            }
            wVar = wVar.f15772f;
        } while (wVar != this.f15740b);
        return i2;
    }

    public short i() {
        return C.a(readShort());
    }

    public boolean isOpen() {
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x008f, code lost:
        if (r8 != r9) goto L_0x009b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0091, code lost:
        r15.f15740b = r6.b();
        k.x.a(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x009b, code lost:
        r6.f15768b = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x009d, code lost:
        if (r0 != false) goto L_0x00a3;
     */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0074 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long j() {
        /*
            r15 = this;
            long r0 = r15.f15741c
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L_0x00aa
            r0 = 0
            r4 = r2
            r1 = 0
        L_0x000b:
            k.w r6 = r15.f15740b
            byte[] r7 = r6.f15767a
            int r8 = r6.f15768b
            int r9 = r6.f15769c
        L_0x0013:
            if (r8 >= r9) goto L_0x008f
            byte r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L_0x0022
            r11 = 57
            if (r10 > r11) goto L_0x0022
            int r11 = r10 + -48
            goto L_0x003a
        L_0x0022:
            r11 = 97
            if (r10 < r11) goto L_0x002f
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L_0x002f
            int r11 = r10 + -97
        L_0x002c:
            int r11 = r11 + 10
            goto L_0x003a
        L_0x002f:
            r11 = 65
            if (r10 < r11) goto L_0x0070
            r11 = 70
            if (r10 > r11) goto L_0x0070
            int r11 = r10 + -65
            goto L_0x002c
        L_0x003a:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L_0x004a
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r1 = r1 + 1
            goto L_0x0013
        L_0x004a:
            k.g r0 = new k.g
            r0.<init>()
            r0.c((long) r4)
            r0.writeByte((int) r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.t()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L_0x0070:
            if (r1 == 0) goto L_0x0074
            r0 = 1
            goto L_0x008f
        L_0x0074:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x008f:
            if (r8 != r9) goto L_0x009b
            k.w r7 = r6.b()
            r15.f15740b = r7
            k.x.a(r6)
            goto L_0x009d
        L_0x009b:
            r6.f15768b = r8
        L_0x009d:
            if (r0 != 0) goto L_0x00a3
            k.w r6 = r15.f15740b
            if (r6 != 0) goto L_0x000b
        L_0x00a3:
            long r2 = r15.f15741c
            long r0 = (long) r1
            long r2 = r2 - r0
            r15.f15741c = r2
            return r4
        L_0x00aa:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            goto L_0x00b3
        L_0x00b2:
            throw r0
        L_0x00b3:
            goto L_0x00b2
        */
        throw new UnsupportedOperationException("Method not decompiled: k.g.j():long");
    }

    public InputStream k() {
        return new f(this);
    }

    public final void p() {
        try {
            skip(this.f15741c);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public final long q() {
        long j2 = this.f15741c;
        if (j2 == 0) {
            return 0;
        }
        w wVar = this.f15740b.f15773g;
        int i2 = wVar.f15769c;
        if (i2 < 8192 && wVar.f15771e) {
            j2 -= (long) (i2 - wVar.f15768b);
        }
        return j2;
    }

    public OutputStream r() {
        return new e(this);
    }

    public int read(ByteBuffer byteBuffer) {
        w wVar = this.f15740b;
        if (wVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), wVar.f15769c - wVar.f15768b);
        byteBuffer.put(wVar.f15767a, wVar.f15768b, min);
        wVar.f15768b += min;
        this.f15741c -= (long) min;
        if (wVar.f15768b == wVar.f15769c) {
            this.f15740b = wVar.b();
            x.a(wVar);
        }
        return min;
    }

    public byte readByte() {
        long j2 = this.f15741c;
        if (j2 != 0) {
            w wVar = this.f15740b;
            int i2 = wVar.f15768b;
            int i3 = wVar.f15769c;
            int i4 = i2 + 1;
            byte b2 = wVar.f15767a[i2];
            this.f15741c = j2 - 1;
            if (i4 == i3) {
                this.f15740b = wVar.b();
                x.a(wVar);
            } else {
                wVar.f15768b = i4;
            }
            return b2;
        }
        throw new IllegalStateException("size == 0");
    }

    public void readFully(byte[] bArr) {
        int i2 = 0;
        while (i2 < bArr.length) {
            int a2 = a(bArr, i2, bArr.length - i2);
            if (a2 != -1) {
                i2 += a2;
            } else {
                throw new EOFException();
            }
        }
    }

    public int readInt() {
        long j2 = this.f15741c;
        if (j2 >= 4) {
            w wVar = this.f15740b;
            int i2 = wVar.f15768b;
            int i3 = wVar.f15769c;
            if (i3 - i2 < 4) {
                return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            }
            byte[] bArr = wVar.f15767a;
            int i4 = i2 + 1;
            int i5 = i4 + 1;
            byte b2 = ((bArr[i2] & 255) << 24) | ((bArr[i4] & 255) << 16);
            int i6 = i5 + 1;
            byte b3 = b2 | ((bArr[i5] & 255) << 8);
            int i7 = i6 + 1;
            byte b4 = b3 | (bArr[i6] & 255);
            this.f15741c = j2 - 4;
            if (i7 == i3) {
                this.f15740b = wVar.b();
                x.a(wVar);
            } else {
                wVar.f15768b = i7;
            }
            return b4;
        }
        throw new IllegalStateException("size < 4: " + this.f15741c);
    }

    public short readShort() {
        long j2 = this.f15741c;
        if (j2 >= 2) {
            w wVar = this.f15740b;
            int i2 = wVar.f15768b;
            int i3 = wVar.f15769c;
            if (i3 - i2 < 2) {
                return (short) (((readByte() & 255) << 8) | (readByte() & 255));
            }
            byte[] bArr = wVar.f15767a;
            int i4 = i2 + 1;
            int i5 = i4 + 1;
            byte b2 = ((bArr[i2] & 255) << 8) | (bArr[i4] & 255);
            this.f15741c = j2 - 2;
            if (i5 == i3) {
                this.f15740b = wVar.b();
                x.a(wVar);
            } else {
                wVar.f15768b = i5;
            }
            return (short) b2;
        }
        throw new IllegalStateException("size < 2: " + this.f15741c);
    }

    public ByteString s() {
        return new ByteString(c());
    }

    public final long size() {
        return this.f15741c;
    }

    public void skip(long j2) {
        while (j2 > 0) {
            w wVar = this.f15740b;
            if (wVar != null) {
                int min = (int) Math.min(j2, (long) (wVar.f15769c - wVar.f15768b));
                long j3 = (long) min;
                this.f15741c -= j3;
                j2 -= j3;
                w wVar2 = this.f15740b;
                wVar2.f15768b += min;
                if (wVar2.f15768b == wVar2.f15769c) {
                    this.f15740b = wVar2.b();
                    x.a(wVar2);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    public String t() {
        try {
            return a(this.f15741c, C.f15724a);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public String toString() {
        return v().toString();
    }

    public int u() {
        byte b2;
        int i2;
        byte b3;
        if (this.f15741c != 0) {
            byte h2 = h(0);
            int i3 = 1;
            if ((h2 & 128) == 0) {
                b3 = h2 & Byte.MAX_VALUE;
                i2 = 1;
                b2 = 0;
            } else if ((h2 & 224) == 192) {
                b3 = h2 & 31;
                i2 = 2;
                b2 = 128;
            } else if ((h2 & 240) == 224) {
                b3 = h2 & 15;
                i2 = 3;
                b2 = 2048;
            } else if ((h2 & 248) == 240) {
                b3 = h2 & 7;
                i2 = 4;
                b2 = 65536;
            } else {
                skip(1);
                return 65533;
            }
            long j2 = (long) i2;
            if (this.f15741c >= j2) {
                while (i3 < i2) {
                    long j3 = (long) i3;
                    byte h3 = h(j3);
                    if ((h3 & 192) == 128) {
                        b3 = (b3 << 6) | (h3 & 63);
                        i3++;
                    } else {
                        skip(j3);
                        return 65533;
                    }
                }
                skip(j2);
                if (b3 > 1114111) {
                    return 65533;
                }
                if ((b3 < 55296 || b3 > 57343) && b3 >= b2) {
                    return b3;
                }
                return 65533;
            }
            throw new EOFException("size < " + i2 + ": " + this.f15741c + " (to read code point prefixed 0x" + Integer.toHexString(h2) + ")");
        }
        throw new EOFException();
    }

    public final ByteString v() {
        long j2 = this.f15741c;
        if (j2 <= 2147483647L) {
            return a((int) j2);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f15741c);
    }

    public byte[] c() {
        try {
            return e(this.f15741c);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public g clone() {
        g gVar = new g();
        if (this.f15741c == 0) {
            return gVar;
        }
        gVar.f15740b = this.f15740b.c();
        w wVar = gVar.f15740b;
        wVar.f15773g = wVar;
        wVar.f15772f = wVar;
        w wVar2 = this.f15740b;
        while (true) {
            wVar2 = wVar2.f15772f;
            if (wVar2 != this.f15740b) {
                gVar.f15740b.f15773g.a(wVar2.c());
            } else {
                gVar.f15741c = this.f15741c;
                return gVar;
            }
        }
    }

    public boolean d(long j2) {
        return this.f15741c >= j2;
    }

    public byte[] e(long j2) {
        C.a(this.f15741c, 0, j2);
        if (j2 <= 2147483647L) {
            byte[] bArr = new byte[((int) j2)];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x004a, code lost:
        if (r5 != false) goto L_0x004f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x004c, code lost:
        r1.readByte();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0069, code lost:
        throw new java.lang.NumberFormatException("Number too large: " + r1.t());
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long f() {
        /*
            r17 = this;
            r0 = r17
            long r1 = r0.f15741c
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x00b7
            r5 = -7
            r7 = 0
            r8 = r5
            r5 = 0
            r6 = 0
        L_0x0010:
            k.w r10 = r0.f15740b
            byte[] r11 = r10.f15767a
            int r12 = r10.f15768b
            int r13 = r10.f15769c
        L_0x0018:
            if (r12 >= r13) goto L_0x0098
            byte r15 = r11[r12]
            r14 = 48
            if (r15 < r14) goto L_0x006a
            r1 = 57
            if (r15 > r1) goto L_0x006a
            int r14 = r14 - r15
            r1 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r16 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r16 < 0) goto L_0x003f
            int r16 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r16 != 0) goto L_0x0038
            long r1 = (long) r14
            int r16 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r16 >= 0) goto L_0x0038
            goto L_0x003f
        L_0x0038:
            r1 = 10
            long r3 = r3 * r1
            long r1 = (long) r14
            long r3 = r3 + r1
            goto L_0x0074
        L_0x003f:
            k.g r1 = new k.g
            r1.<init>()
            r1.g((long) r3)
            r1.writeByte((int) r15)
            if (r5 != 0) goto L_0x004f
            r1.readByte()
        L_0x004f:
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Number too large: "
            r3.append(r4)
            java.lang.String r1 = r1.t()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L_0x006a:
            r1 = 45
            if (r15 != r1) goto L_0x0079
            if (r7 != 0) goto L_0x0079
            r1 = 1
            long r8 = r8 - r1
            r5 = 1
        L_0x0074:
            int r12 = r12 + 1
            int r7 = r7 + 1
            goto L_0x0018
        L_0x0079:
            if (r7 == 0) goto L_0x007d
            r6 = 1
            goto L_0x0098
        L_0x007d:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Expected leading [0-9] or '-' character but was 0x"
            r2.append(r3)
            java.lang.String r3 = java.lang.Integer.toHexString(r15)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L_0x0098:
            if (r12 != r13) goto L_0x00a4
            k.w r1 = r10.b()
            r0.f15740b = r1
            k.x.a(r10)
            goto L_0x00a6
        L_0x00a4:
            r10.f15768b = r12
        L_0x00a6:
            if (r6 != 0) goto L_0x00ac
            k.w r1 = r0.f15740b
            if (r1 != 0) goto L_0x0010
        L_0x00ac:
            long r1 = r0.f15741c
            long r6 = (long) r7
            long r1 = r1 - r6
            r0.f15741c = r1
            if (r5 == 0) goto L_0x00b5
            goto L_0x00b6
        L_0x00b5:
            long r3 = -r3
        L_0x00b6:
            return r3
        L_0x00b7:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "size == 0"
            r1.<init>(r2)
            goto L_0x00c0
        L_0x00bf:
            throw r1
        L_0x00c0:
            goto L_0x00bf
        */
        throw new UnsupportedOperationException("Method not decompiled: k.g.f():long");
    }

    public String g() {
        return b(Long.MAX_VALUE);
    }

    public String i(long j2) {
        return a(j2, C.f15724a);
    }

    public g writeByte(int i2) {
        w b2 = b(1);
        byte[] bArr = b2.f15767a;
        int i3 = b2.f15769c;
        b2.f15769c = i3 + 1;
        bArr[i3] = (byte) i2;
        this.f15741c++;
        return this;
    }

    public g writeInt(int i2) {
        w b2 = b(4);
        byte[] bArr = b2.f15767a;
        int i3 = b2.f15769c;
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >>> 24) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i2 >>> 16) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i2 >>> 8) & 255);
        bArr[i6] = (byte) (i2 & 255);
        b2.f15769c = i6 + 1;
        this.f15741c += 4;
        return this;
    }

    public g writeShort(int i2) {
        w b2 = b(2);
        byte[] bArr = b2.f15767a;
        int i3 = b2.f15769c;
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >>> 8) & 255);
        bArr[i4] = (byte) (i2 & 255);
        b2.f15769c = i4 + 1;
        this.f15741c += 2;
        return this;
    }

    public final g a(g gVar, long j2, long j3) {
        if (gVar != null) {
            C.a(this.f15741c, j2, j3);
            if (j3 == 0) {
                return this;
            }
            gVar.f15741c += j3;
            w wVar = this.f15740b;
            while (true) {
                int i2 = wVar.f15769c;
                int i3 = wVar.f15768b;
                if (j2 < ((long) (i2 - i3))) {
                    break;
                }
                j2 -= (long) (i2 - i3);
                wVar = wVar.f15772f;
            }
            while (j3 > 0) {
                w c2 = wVar.c();
                c2.f15768b = (int) (((long) c2.f15768b) + j2);
                c2.f15769c = Math.min(c2.f15768b + ((int) j3), c2.f15769c);
                w wVar2 = gVar.f15740b;
                if (wVar2 == null) {
                    c2.f15773g = c2;
                    c2.f15772f = c2;
                    gVar.f15740b = c2;
                } else {
                    wVar2.f15773g.a(c2);
                }
                j3 -= (long) (c2.f15769c - c2.f15768b);
                wVar = wVar.f15772f;
                j2 = 0;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    public g g(long j2) {
        if (j2 == 0) {
            writeByte(48);
            return this;
        }
        boolean z = false;
        int i2 = 1;
        if (j2 < 0) {
            j2 = -j2;
            if (j2 < 0) {
                a("-9223372036854775808");
                return this;
            }
            z = true;
        }
        if (j2 >= 100000000) {
            i2 = j2 < 1000000000000L ? j2 < 10000000000L ? j2 < 1000000000 ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        } else if (j2 >= 10000) {
            i2 = j2 < RetryManager.NANOSECONDS_IN_MS ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8;
        } else if (j2 >= 100) {
            i2 = j2 < 1000 ? 3 : 4;
        } else if (j2 >= 10) {
            i2 = 2;
        }
        if (z) {
            i2++;
        }
        w b2 = b(i2);
        byte[] bArr = b2.f15767a;
        int i3 = b2.f15769c + i2;
        while (j2 != 0) {
            i3--;
            bArr[i3] = f15739a[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z) {
            bArr[i3 - 1] = 45;
        }
        b2.f15769c += i2;
        this.f15741c += (long) i2;
        return this;
    }

    public g write(byte[] bArr) {
        if (bArr != null) {
            write(bArr, 0, bArr.length);
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public g c(int i2) {
        if (i2 < 128) {
            writeByte(i2);
        } else if (i2 < 2048) {
            writeByte((i2 >> 6) | 192);
            writeByte((i2 & 63) | 128);
        } else if (i2 < 65536) {
            if (i2 < 55296 || i2 > 57343) {
                writeByte((i2 >> 12) | 224);
                writeByte(((i2 >> 6) & 63) | 128);
                writeByte((i2 & 63) | 128);
            } else {
                writeByte(63);
            }
        } else if (i2 <= 1114111) {
            writeByte((i2 >> 18) | 240);
            writeByte(((i2 >> 12) & 63) | 128);
            writeByte(((i2 >> 6) & 63) | 128);
            writeByte((i2 & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i2));
        }
        return this;
    }

    public g write(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            long j2 = (long) i3;
            C.a((long) bArr.length, (long) i2, j2);
            int i4 = i3 + i2;
            while (i2 < i4) {
                w b2 = b(1);
                int min = Math.min(i4 - i2, 8192 - b2.f15769c);
                System.arraycopy(bArr, i2, b2.f15767a, b2.f15769c, min);
                i2 += min;
                b2.f15769c += min;
            }
            this.f15741c += j2;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public int h() {
        return C.a(readInt());
    }

    public w b(int i2) {
        w wVar;
        if (i2 < 1 || i2 > 8192) {
            throw new IllegalArgumentException();
        }
        w wVar2 = this.f15740b;
        if (wVar2 == null) {
            this.f15740b = x.a();
            w wVar3 = this.f15740b;
            wVar3.f15773g = wVar3;
            wVar3.f15772f = wVar3;
            return wVar3;
        }
        w wVar4 = wVar2.f15773g;
        if (wVar4.f15769c + i2 > 8192 || !wVar4.f15771e) {
            wVar = x.a();
            wVar4.a(wVar);
        } else {
            wVar = wVar4;
        }
        return wVar;
    }

    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i2 = remaining;
            while (i2 > 0) {
                w b2 = b(1);
                int min = Math.min(i2, 8192 - b2.f15769c);
                byteBuffer.get(b2.f15767a, b2.f15769c, min);
                i2 -= min;
                b2.f15769c += min;
            }
            this.f15741c += (long) remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    public ByteString a(long j2) {
        return new ByteString(e(j2));
    }

    public long a(y yVar) {
        long j2 = this.f15741c;
        if (j2 > 0) {
            yVar.a(this, j2);
        }
        return j2;
    }

    public g c(long j2) {
        if (j2 == 0) {
            writeByte(48);
            return this;
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j2)) / 4) + 1;
        w b2 = b(numberOfTrailingZeros);
        byte[] bArr = b2.f15767a;
        int i2 = b2.f15769c;
        for (int i3 = (i2 + numberOfTrailingZeros) - 1; i3 >= i2; i3--) {
            bArr[i3] = f15739a[(int) (15 & j2)];
            j2 >>>= 4;
        }
        b2.f15769c += numberOfTrailingZeros;
        this.f15741c += (long) numberOfTrailingZeros;
        return this;
    }

    public String j(long j2) {
        if (j2 > 0) {
            long j3 = j2 - 1;
            if (h(j3) == 13) {
                String i2 = i(j3);
                skip(2);
                return i2;
            }
        }
        String i3 = i(j2);
        skip(1);
        return i3;
    }

    public long b(g gVar, long j2) {
        if (gVar == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j2 >= 0) {
            long j3 = this.f15741c;
            if (j3 == 0) {
                return -1;
            }
            if (j2 > j3) {
                j2 = j3;
            }
            gVar.a(this, j2);
            return j2;
        } else {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        }
    }

    public String a(Charset charset) {
        try {
            return a(this.f15741c, charset);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public String a(long j2, Charset charset) {
        C.a(this.f15741c, 0, j2);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j2 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j2);
        } else if (j2 == 0) {
            return "";
        } else {
            w wVar = this.f15740b;
            int i2 = wVar.f15768b;
            if (((long) i2) + j2 > ((long) wVar.f15769c)) {
                return new String(e(j2), charset);
            }
            String str = new String(wVar.f15767a, i2, (int) j2, charset);
            wVar.f15768b = (int) (((long) wVar.f15768b) + j2);
            this.f15741c -= j2;
            if (wVar.f15768b == wVar.f15769c) {
                this.f15740b = wVar.b();
                x.a(wVar);
            }
            return str;
        }
    }

    public B b() {
        return B.f15720a;
    }

    public int a(byte[] bArr, int i2, int i3) {
        C.a((long) bArr.length, (long) i2, (long) i3);
        w wVar = this.f15740b;
        if (wVar == null) {
            return -1;
        }
        int min = Math.min(i3, wVar.f15769c - wVar.f15768b);
        System.arraycopy(wVar.f15767a, wVar.f15768b, bArr, i2, min);
        wVar.f15768b += min;
        this.f15741c -= (long) min;
        if (wVar.f15768b == wVar.f15769c) {
            this.f15740b = wVar.b();
            x.a(wVar);
        }
        return min;
    }

    public g a(ByteString byteString) {
        if (byteString != null) {
            byteString.a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    public g a(String str) {
        a(str, 0, str.length());
        return this;
    }

    public g a(String str, int i2, int i3) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i2 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i2);
        } else if (i3 < i2) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
        } else if (i3 <= str.length()) {
            while (i2 < i3) {
                char charAt = str.charAt(i2);
                if (charAt < 128) {
                    w b2 = b(1);
                    byte[] bArr = b2.f15767a;
                    int i4 = b2.f15769c - i2;
                    int min = Math.min(i3, 8192 - i4);
                    int i5 = i2 + 1;
                    bArr[i2 + i4] = (byte) charAt;
                    while (i5 < min) {
                        char charAt2 = str.charAt(i5);
                        if (charAt2 >= 128) {
                            break;
                        }
                        bArr[i5 + i4] = (byte) charAt2;
                        i5++;
                    }
                    int i6 = b2.f15769c;
                    int i7 = (i4 + i5) - i6;
                    b2.f15769c = i6 + i7;
                    this.f15741c += (long) i7;
                    i2 = i5;
                } else {
                    if (charAt < 2048) {
                        writeByte((charAt >> 6) | 192);
                        writeByte((int) (charAt & '?') | 128);
                    } else if (charAt < 55296 || charAt > 57343) {
                        writeByte((charAt >> 12) | 224);
                        writeByte(((charAt >> 6) & 63) | 128);
                        writeByte((int) (charAt & '?') | 128);
                    } else {
                        int i8 = i2 + 1;
                        char charAt3 = i8 < i3 ? str.charAt(i8) : 0;
                        if (charAt > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                            writeByte(63);
                            i2 = i8;
                        } else {
                            int i9 = (((charAt & 10239) << 10) | (9215 & charAt3)) + LogFileManager.MAX_LOG_SIZE;
                            writeByte((i9 >> 18) | 240);
                            writeByte(((i9 >> 12) & 63) | 128);
                            writeByte(((i9 >> 6) & 63) | 128);
                            writeByte((i9 & 63) | 128);
                            i2 += 2;
                        }
                    }
                    i2++;
                }
            }
            return this;
        } else {
            throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
        }
    }

    public g a(String str, int i2, int i3, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i2 < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i2);
        } else if (i3 < i2) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
        } else if (i3 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
        } else if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (charset.equals(C.f15724a)) {
            a(str, i2, i3);
            return this;
        } else {
            byte[] bytes = str.substring(i2, i3).getBytes(charset);
            write(bytes, 0, bytes.length);
            return this;
        }
    }

    public long a(z zVar) {
        if (zVar != null) {
            long j2 = 0;
            while (true) {
                long b2 = zVar.b(this, 8192);
                if (b2 == -1) {
                    return j2;
                }
                j2 += b2;
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    public void a(g gVar, long j2) {
        int i2;
        if (gVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (gVar != this) {
            C.a(gVar.f15741c, 0, j2);
            while (j2 > 0) {
                w wVar = gVar.f15740b;
                if (j2 < ((long) (wVar.f15769c - wVar.f15768b))) {
                    w wVar2 = this.f15740b;
                    w wVar3 = wVar2 != null ? wVar2.f15773g : null;
                    if (wVar3 != null && wVar3.f15771e) {
                        long j3 = ((long) wVar3.f15769c) + j2;
                        if (wVar3.f15770d) {
                            i2 = 0;
                        } else {
                            i2 = wVar3.f15768b;
                        }
                        if (j3 - ((long) i2) <= 8192) {
                            gVar.f15740b.a(wVar3, (int) j2);
                            gVar.f15741c -= j2;
                            this.f15741c += j2;
                            return;
                        }
                    }
                    gVar.f15740b = gVar.f15740b.a((int) j2);
                }
                w wVar4 = gVar.f15740b;
                long j4 = (long) (wVar4.f15769c - wVar4.f15768b);
                gVar.f15740b = wVar4.b();
                w wVar5 = this.f15740b;
                if (wVar5 == null) {
                    this.f15740b = wVar4;
                    w wVar6 = this.f15740b;
                    wVar6.f15773g = wVar6;
                    wVar6.f15772f = wVar6;
                } else {
                    wVar5.f15773g.a(wVar4);
                    wVar4.a();
                }
                gVar.f15741c -= j4;
                this.f15741c += j4;
                j2 -= j4;
            }
        } else {
            throw new IllegalArgumentException("source == this");
        }
    }

    public long a(byte b2) {
        return a(b2, 0, Long.MAX_VALUE);
    }

    public long a(byte b2, long j2, long j3) {
        long j4 = 0;
        if (j2 < 0 || j3 < j2) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", new Object[]{Long.valueOf(this.f15741c), Long.valueOf(j2), Long.valueOf(j3)}));
        }
        long j5 = this.f15741c;
        if (j3 <= j5) {
            j5 = j3;
        }
        if (j2 == j5) {
            return -1;
        }
        w wVar = this.f15740b;
        if (wVar == null) {
            return -1;
        }
        long j6 = this.f15741c;
        if (j6 - j2 >= j2) {
            while (true) {
                j6 = j4;
                j4 = ((long) (wVar.f15769c - wVar.f15768b)) + j6;
                if (j4 >= j2) {
                    break;
                }
                wVar = wVar.f15772f;
            }
        } else {
            while (j6 > j2) {
                wVar = wVar.f15773g;
                j6 -= (long) (wVar.f15769c - wVar.f15768b);
            }
        }
        long j7 = j2;
        while (j6 < j5) {
            byte[] bArr = wVar.f15767a;
            int min = (int) Math.min((long) wVar.f15769c, (((long) wVar.f15768b) + j5) - j6);
            for (int i2 = (int) ((((long) wVar.f15768b) + j7) - j6); i2 < min; i2++) {
                if (bArr[i2] == b2) {
                    return ((long) (i2 - wVar.f15768b)) + j6;
                }
            }
            byte b3 = b2;
            j7 = ((long) (wVar.f15769c - wVar.f15768b)) + j6;
            wVar = wVar.f15772f;
            j6 = j7;
        }
        return -1;
    }

    public boolean a(long j2, ByteString byteString) {
        return a(j2, byteString, 0, byteString.k());
    }

    public boolean a(long j2, ByteString byteString, int i2, int i3) {
        if (j2 < 0 || i2 < 0 || i3 < 0 || this.f15741c - j2 < ((long) i3) || byteString.k() - i2 < i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (h(((long) i4) + j2) != byteString.a(i2 + i4)) {
                return false;
            }
        }
        return true;
    }

    public final ByteString a(int i2) {
        if (i2 == 0) {
            return ByteString.f15997b;
        }
        return new SegmentedByteString(this, i2);
    }
}
