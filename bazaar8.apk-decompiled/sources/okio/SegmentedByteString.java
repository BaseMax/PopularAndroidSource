package okio;

import java.util.Arrays;
import k.C;
import k.g;
import k.w;

public final class SegmentedByteString extends ByteString {

    /* renamed from: e  reason: collision with root package name */
    public final transient byte[][] f16000e;

    /* renamed from: f  reason: collision with root package name */
    public final transient int[] f16001f;

    public SegmentedByteString(g gVar, int i2) {
        super(null);
        C.a(gVar.f15741c, 0, (long) i2);
        int i3 = 0;
        w wVar = gVar.f15740b;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = wVar.f15769c;
            int i7 = wVar.f15768b;
            if (i6 != i7) {
                i4 += i6 - i7;
                i5++;
                wVar = wVar.f15772f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.f16000e = new byte[i5][];
        this.f16001f = new int[(i5 * 2)];
        w wVar2 = gVar.f15740b;
        int i8 = 0;
        while (i3 < i2) {
            this.f16000e[i8] = wVar2.f15767a;
            i3 += wVar2.f15769c - wVar2.f15768b;
            if (i3 > i2) {
                i3 = i2;
            }
            int[] iArr = this.f16001f;
            iArr[i8] = i3;
            iArr[this.f16000e.length + i8] = wVar2.f15768b;
            wVar2.f15770d = true;
            i8++;
            wVar2 = wVar2.f15772f;
        }
    }

    private Object writeReplace() {
        return o();
    }

    public ByteString a(int i2, int i3) {
        return o().a(i2, i3);
    }

    public final int b(int i2) {
        int binarySearch = Arrays.binarySearch(this.f16001f, 0, this.f16000e.length, i2 + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ -1;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (a(0, r5, 0, k()) != false) goto L_0x0021;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 1
            if (r5 != r4) goto L_0x0004
            return r0
        L_0x0004:
            boolean r1 = r5 instanceof okio.ByteString
            r2 = 0
            if (r1 == 0) goto L_0x0020
            okio.ByteString r5 = (okio.ByteString) r5
            int r1 = r5.k()
            int r3 = r4.k()
            if (r1 != r3) goto L_0x0020
            int r1 = r4.k()
            boolean r5 = r4.a((int) r2, (okio.ByteString) r5, (int) r2, (int) r1)
            if (r5 == 0) goto L_0x0020
            goto L_0x0021
        L_0x0020:
            r0 = 0
        L_0x0021:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.SegmentedByteString.equals(java.lang.Object):boolean");
    }

    public String f() {
        return o().f();
    }

    public String g() {
        return o().g();
    }

    public ByteString h() {
        return o().h();
    }

    public int hashCode() {
        int i2 = this.f15998c;
        if (i2 != 0) {
            return i2;
        }
        int length = this.f16000e.length;
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i3 < length) {
            byte[] bArr = this.f16000e[i3];
            int[] iArr = this.f16001f;
            int i6 = iArr[length + i3];
            int i7 = iArr[i3];
            int i8 = (i7 - i5) + i6;
            while (i6 < i8) {
                i4 = (i4 * 31) + bArr[i6];
                i6++;
            }
            i3++;
            i5 = i7;
        }
        this.f15998c = i4;
        return i4;
    }

    public ByteString i() {
        return o().i();
    }

    public ByteString j() {
        return o().j();
    }

    public int k() {
        return this.f16001f[this.f16000e.length - 1];
    }

    public ByteString l() {
        return o().l();
    }

    public byte[] m() {
        int[] iArr = this.f16001f;
        byte[][] bArr = this.f16000e;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr2 = this.f16001f;
            int i4 = iArr2[length + i2];
            int i5 = iArr2[i2];
            System.arraycopy(this.f16000e[i2], i4, bArr2, i3, i5 - i3);
            i2++;
            i3 = i5;
        }
        return bArr2;
    }

    public String n() {
        return o().n();
    }

    public final ByteString o() {
        return new ByteString(m());
    }

    public String toString() {
        return o().toString();
    }

    public byte a(int i2) {
        int i3;
        C.a((long) this.f16001f[this.f16000e.length - 1], (long) i2, 1);
        int b2 = b(i2);
        if (b2 == 0) {
            i3 = 0;
        } else {
            i3 = this.f16001f[b2 - 1];
        }
        int[] iArr = this.f16001f;
        byte[][] bArr = this.f16000e;
        return bArr[b2][(i2 - i3) + iArr[bArr.length + b2]];
    }

    public void a(g gVar) {
        int length = this.f16000e.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr = this.f16001f;
            int i4 = iArr[length + i2];
            int i5 = iArr[i2];
            w wVar = new w(this.f16000e[i2], i4, (i4 + i5) - i3, true, false);
            w wVar2 = gVar.f15740b;
            if (wVar2 == null) {
                wVar.f15773g = wVar;
                wVar.f15772f = wVar;
                gVar.f15740b = wVar;
            } else {
                wVar2.f15773g.a(wVar);
            }
            i2++;
            i3 = i5;
        }
        gVar.f15741c += (long) i3;
    }

    public boolean a(int i2, ByteString byteString, int i3, int i4) {
        int i5;
        if (i2 < 0 || i2 > k() - i4) {
            return false;
        }
        int b2 = b(i2);
        while (i4 > 0) {
            if (b2 == 0) {
                i5 = 0;
            } else {
                i5 = this.f16001f[b2 - 1];
            }
            int min = Math.min(i4, ((this.f16001f[b2] - i5) + i5) - i2);
            int[] iArr = this.f16001f;
            byte[][] bArr = this.f16000e;
            if (!byteString.a(i3, bArr[b2], (i2 - i5) + iArr[bArr.length + b2], min)) {
                return false;
            }
            i2 += min;
            i3 += min;
            i4 -= min;
            b2++;
        }
        return true;
    }

    public boolean a(int i2, byte[] bArr, int i3, int i4) {
        int i5;
        if (i2 < 0 || i2 > k() - i4 || i3 < 0 || i3 > bArr.length - i4) {
            return false;
        }
        int b2 = b(i2);
        while (i4 > 0) {
            if (b2 == 0) {
                i5 = 0;
            } else {
                i5 = this.f16001f[b2 - 1];
            }
            int min = Math.min(i4, ((this.f16001f[b2] - i5) + i5) - i2);
            int[] iArr = this.f16001f;
            byte[][] bArr2 = this.f16000e;
            if (!C.a(bArr2[b2], (i2 - i5) + iArr[bArr2.length + b2], bArr, i3, min)) {
                return false;
            }
            i2 += min;
            i3 += min;
            i4 -= min;
            b2++;
        }
        return true;
    }
}
