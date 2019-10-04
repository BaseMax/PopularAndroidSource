package b;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

final class t extends f {
    final transient byte[][] e;
    final transient int[] f;

    t(c cVar, int i) {
        super(null);
        x.checkOffsetAndCount(cVar.f135b, 0, (long) i);
        int i2 = 0;
        r rVar = cVar.f134a;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            if (rVar.c != rVar.f163b) {
                i3 += rVar.c - rVar.f163b;
                i4++;
                rVar = rVar.f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.e = new byte[i4][];
        this.f = new int[(i4 * 2)];
        r rVar2 = cVar.f134a;
        int i5 = 0;
        while (i2 < i) {
            this.e[i5] = rVar2.f162a;
            i2 += rVar2.c - rVar2.f163b;
            if (i2 > i) {
                i2 = i;
            }
            int[] iArr = this.f;
            iArr[i5] = i2;
            iArr[this.e.length + i5] = rVar2.f163b;
            rVar2.d = true;
            i5++;
            rVar2 = rVar2.f;
        }
    }

    public final String utf8() {
        return b().utf8();
    }

    public final String string(Charset charset) {
        return b().string(charset);
    }

    public final String base64() {
        return b().base64();
    }

    public final String hex() {
        return b().hex();
    }

    public final f toAsciiLowercase() {
        return b().toAsciiLowercase();
    }

    public final f toAsciiUppercase() {
        return b().toAsciiUppercase();
    }

    public final f md5() {
        return b().md5();
    }

    public final f sha1() {
        return b().sha1();
    }

    public final f sha256() {
        return b().sha256();
    }

    public final f hmacSha1(f fVar) {
        return b().hmacSha1(fVar);
    }

    public final f hmacSha256(f fVar) {
        return b().hmacSha256(fVar);
    }

    public final String base64Url() {
        return b().base64Url();
    }

    public final f substring(int i) {
        return b().substring(i);
    }

    public final f substring(int i, int i2) {
        return b().substring(i, i2);
    }

    public final byte getByte(int i) {
        int i2;
        x.checkOffsetAndCount((long) this.f[this.e.length - 1], (long) i, 1);
        int a2 = a(i);
        if (a2 == 0) {
            i2 = 0;
        } else {
            i2 = this.f[a2 - 1];
        }
        int[] iArr = this.f;
        byte[][] bArr = this.e;
        return bArr[a2][(i - i2) + iArr[bArr.length + a2]];
    }

    private int a(int i) {
        int binarySearch = Arrays.binarySearch(this.f, 0, this.e.length, i + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ -1;
    }

    public final int size() {
        return this.f[this.e.length - 1];
    }

    public final byte[] toByteArray() {
        int[] iArr = this.f;
        byte[][] bArr = this.e;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.f;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.e[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    public final ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    public final void write(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            int length = this.e.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int[] iArr = this.f;
                int i3 = iArr[length + i];
                int i4 = iArr[i];
                outputStream.write(this.e[i], i3, i4 - i2);
                i++;
                i2 = i4;
            }
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    /* access modifiers changed from: package-private */
    public final void a(c cVar) {
        int length = this.e.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.f;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            r rVar = new r(this.e[i], i3, (i3 + i4) - i2, true, false);
            if (cVar.f134a == null) {
                rVar.g = rVar;
                rVar.f = rVar;
                cVar.f134a = rVar;
            } else {
                cVar.f134a.g.push(rVar);
            }
            i++;
            i2 = i4;
        }
        cVar.f135b += (long) i2;
    }

    public final boolean rangeEquals(int i, f fVar, int i2, int i3) {
        int i4;
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int a2 = a(i);
        while (i3 > 0) {
            if (a2 == 0) {
                i4 = 0;
            } else {
                i4 = this.f[a2 - 1];
            }
            int min = Math.min(i3, ((this.f[a2] - i4) + i4) - i);
            int[] iArr = this.f;
            byte[][] bArr = this.e;
            if (!fVar.rangeEquals(i2, bArr[a2], (i - i4) + iArr[bArr.length + a2], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            a2++;
        }
        return true;
    }

    public final boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        int i4;
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int a2 = a(i);
        while (i3 > 0) {
            if (a2 == 0) {
                i4 = 0;
            } else {
                i4 = this.f[a2 - 1];
            }
            int min = Math.min(i3, ((this.f[a2] - i4) + i4) - i);
            int[] iArr = this.f;
            byte[][] bArr2 = this.e;
            if (!x.arrayRangeEquals(bArr2[a2], (i - i4) + iArr[bArr2.length + a2], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            a2++;
        }
        return true;
    }

    public final int indexOf(byte[] bArr, int i) {
        return b().indexOf(bArr, i);
    }

    public final int lastIndexOf(byte[] bArr, int i) {
        return b().lastIndexOf(bArr, i);
    }

    private f b() {
        return new f(toByteArray());
    }

    /* access modifiers changed from: package-private */
    public final byte[] a() {
        return toByteArray();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return fVar.size() == size() && rangeEquals(0, fVar, 0, size());
        }
    }

    public final int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        int length = this.e.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            byte[] bArr = this.e[i2];
            int[] iArr = this.f;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.c = i3;
        return i3;
    }

    public final String toString() {
        return b().toString();
    }
}
