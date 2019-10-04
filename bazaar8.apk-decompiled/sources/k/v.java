package k;

import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import okio.ByteString;

/* compiled from: RealBufferedSource */
public final class v implements i {

    /* renamed from: a  reason: collision with root package name */
    public final g f15764a = new g();

    /* renamed from: b  reason: collision with root package name */
    public final z f15765b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f15766c;

    public v(z zVar) {
        if (zVar != null) {
            this.f15765b = zVar;
            return;
        }
        throw new NullPointerException("source == null");
    }

    public g a() {
        return this.f15764a;
    }

    public long b(g gVar, long j2) {
        if (gVar == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        } else if (!this.f15766c) {
            g gVar2 = this.f15764a;
            if (gVar2.f15741c == 0 && this.f15765b.b(gVar2, 8192) == -1) {
                return -1;
            }
            return this.f15764a.b(gVar, Math.min(j2, this.f15764a.f15741c));
        } else {
            throw new IllegalStateException("closed");
        }
    }

    public byte[] c() {
        this.f15764a.a(this.f15765b);
        return this.f15764a.c();
    }

    public void close() {
        if (!this.f15766c) {
            this.f15766c = true;
            this.f15765b.close();
            this.f15764a.p();
        }
    }

    public boolean d() {
        if (!this.f15766c) {
            return this.f15764a.d() && this.f15765b.b(this.f15764a, 8192) == -1;
        }
        throw new IllegalStateException("closed");
    }

    public byte[] e(long j2) {
        f(j2);
        return this.f15764a.e(j2);
    }

    public void f(long j2) {
        if (!d(j2)) {
            throw new EOFException();
        }
    }

    public String g() {
        return b(Long.MAX_VALUE);
    }

    public int h() {
        f(4);
        return this.f15764a.h();
    }

    public short i() {
        f(2);
        return this.f15764a.i();
    }

    public boolean isOpen() {
        return !this.f15766c;
    }

    public long j() {
        f(1);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (!d((long) i3)) {
                break;
            }
            byte h2 = this.f15764a.h((long) i2);
            if ((h2 >= 48 && h2 <= 57) || ((h2 >= 97 && h2 <= 102) || (h2 >= 65 && h2 <= 70))) {
                i2 = i3;
            } else if (i2 == 0) {
                throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", new Object[]{Byte.valueOf(h2)}));
            }
        }
        return this.f15764a.j();
    }

    public InputStream k() {
        return new u(this);
    }

    public int read(ByteBuffer byteBuffer) {
        g gVar = this.f15764a;
        if (gVar.f15741c == 0 && this.f15765b.b(gVar, 8192) == -1) {
            return -1;
        }
        return this.f15764a.read(byteBuffer);
    }

    public byte readByte() {
        f(1);
        return this.f15764a.readByte();
    }

    public void readFully(byte[] bArr) {
        try {
            f((long) bArr.length);
            this.f15764a.readFully(bArr);
        } catch (EOFException e2) {
            int i2 = 0;
            while (true) {
                g gVar = this.f15764a;
                long j2 = gVar.f15741c;
                if (j2 > 0) {
                    int a2 = gVar.a(bArr, i2, (int) j2);
                    if (a2 != -1) {
                        i2 += a2;
                    } else {
                        throw new AssertionError();
                    }
                } else {
                    throw e2;
                }
            }
        }
    }

    public int readInt() {
        f(4);
        return this.f15764a.readInt();
    }

    public short readShort() {
        f(2);
        return this.f15764a.readShort();
    }

    public void skip(long j2) {
        if (!this.f15766c) {
            while (j2 > 0) {
                g gVar = this.f15764a;
                if (gVar.f15741c == 0 && this.f15765b.b(gVar, 8192) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j2, this.f15764a.size());
                this.f15764a.skip(min);
                j2 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    public String toString() {
        return "buffer(" + this.f15765b + ")";
    }

    public ByteString a(long j2) {
        f(j2);
        return this.f15764a.a(j2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x002b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long f() {
        /*
            r6 = this;
            r0 = 1
            r6.f(r0)
            r0 = 0
            r1 = 0
        L_0x0007:
            int r2 = r1 + 1
            long r3 = (long) r2
            boolean r3 = r6.d(r3)
            if (r3 == 0) goto L_0x0040
            k.g r3 = r6.f15764a
            long r4 = (long) r1
            byte r3 = r3.h(r4)
            r4 = 48
            if (r3 < r4) goto L_0x001f
            r4 = 57
            if (r3 <= r4) goto L_0x0026
        L_0x001f:
            if (r1 != 0) goto L_0x0028
            r4 = 45
            if (r3 == r4) goto L_0x0026
            goto L_0x0028
        L_0x0026:
            r1 = r2
            goto L_0x0007
        L_0x0028:
            if (r1 == 0) goto L_0x002b
            goto L_0x0040
        L_0x002b:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Byte r3 = java.lang.Byte.valueOf(r3)
            r2[r0] = r3
            java.lang.String r0 = "Expected leading [0-9] or '-' character but was %#x"
            java.lang.String r0 = java.lang.String.format(r0, r2)
            r1.<init>(r0)
            throw r1
        L_0x0040:
            k.g r0 = r6.f15764a
            long r0 = r0.f()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.v.f():long");
    }

    public long a(y yVar) {
        if (yVar != null) {
            long j2 = 0;
            while (this.f15765b.b(this.f15764a, 8192) != -1) {
                long q = this.f15764a.q();
                if (q > 0) {
                    j2 += q;
                    yVar.a(this.f15764a, q);
                }
            }
            if (this.f15764a.size() <= 0) {
                return j2;
            }
            long size = j2 + this.f15764a.size();
            g gVar = this.f15764a;
            yVar.a(gVar, gVar.size());
            return size;
        }
        throw new IllegalArgumentException("sink == null");
    }

    public boolean d(long j2) {
        g gVar;
        if (j2 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j2);
        } else if (!this.f15766c) {
            do {
                gVar = this.f15764a;
                if (gVar.f15741c >= j2) {
                    return true;
                }
            } while (this.f15765b.b(gVar, 8192) != -1);
            return false;
        } else {
            throw new IllegalStateException("closed");
        }
    }

    public String b(long j2) {
        if (j2 >= 0) {
            long j3 = j2 == Long.MAX_VALUE ? Long.MAX_VALUE : j2 + 1;
            long a2 = a((byte) 10, 0, j3);
            if (a2 != -1) {
                return this.f15764a.j(a2);
            }
            if (j3 < Long.MAX_VALUE && d(j3) && this.f15764a.h(j3 - 1) == 13 && d(1 + j3) && this.f15764a.h(j3) == 10) {
                return this.f15764a.j(j3);
            }
            g gVar = new g();
            g gVar2 = this.f15764a;
            gVar2.a(gVar, 0, Math.min(32, gVar2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f15764a.size(), j2) + " content=" + gVar.s().g() + 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j2);
    }

    public String a(Charset charset) {
        if (charset != null) {
            this.f15764a.a(this.f15765b);
            return this.f15764a.a(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    public long a(byte b2) {
        return a(b2, 0, Long.MAX_VALUE);
    }

    public long a(byte b2, long j2, long j3) {
        if (this.f15766c) {
            throw new IllegalStateException("closed");
        } else if (j2 < 0 || j3 < j2) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", new Object[]{Long.valueOf(j2), Long.valueOf(j3)}));
        } else {
            while (j2 < j3) {
                long a2 = this.f15764a.a(b2, j2, j3);
                if (a2 == -1) {
                    g gVar = this.f15764a;
                    long j4 = gVar.f15741c;
                    if (j4 >= j3 || this.f15765b.b(gVar, 8192) == -1) {
                        break;
                    }
                    j2 = Math.max(j2, j4);
                } else {
                    return a2;
                }
            }
            return -1;
        }
    }

    public B b() {
        return this.f15765b.b();
    }

    public boolean a(long j2, ByteString byteString) {
        return a(j2, byteString, 0, byteString.k());
    }

    public boolean a(long j2, ByteString byteString, int i2, int i3) {
        if (this.f15766c) {
            throw new IllegalStateException("closed");
        } else if (j2 < 0 || i2 < 0 || i3 < 0 || byteString.k() - i2 < i3) {
            return false;
        } else {
            for (int i4 = 0; i4 < i3; i4++) {
                long j3 = ((long) i4) + j2;
                if (!d(1 + j3) || this.f15764a.h(j3) != byteString.a(i2 + i4)) {
                    return false;
                }
            }
            return true;
        }
    }
}
