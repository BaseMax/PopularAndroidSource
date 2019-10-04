package c.b.a.c.a;

import java.io.FilterInputStream;
import java.io.InputStream;

/* compiled from: ExifOrientationStream */
public final class h extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f3789a = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* renamed from: b  reason: collision with root package name */
    public static final int f3790b = f3789a.length;

    /* renamed from: c  reason: collision with root package name */
    public static final int f3791c = (f3790b + 2);

    /* renamed from: d  reason: collision with root package name */
    public final byte f3792d;

    /* renamed from: e  reason: collision with root package name */
    public int f3793e;

    public h(InputStream inputStream, int i2) {
        super(inputStream);
        if (i2 < -1 || i2 > 8) {
            throw new IllegalArgumentException("Cannot add invalid orientation: " + i2);
        }
        this.f3792d = (byte) i2;
    }

    public void mark(int i2) {
        throw new UnsupportedOperationException();
    }

    public boolean markSupported() {
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x001e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int read() {
        /*
            r3 = this;
            int r0 = r3.f3793e
            r1 = 2
            if (r0 < r1) goto L_0x0017
            int r2 = f3791c
            if (r0 <= r2) goto L_0x000a
            goto L_0x0017
        L_0x000a:
            if (r0 != r2) goto L_0x000f
            byte r0 = r3.f3792d
            goto L_0x001b
        L_0x000f:
            byte[] r2 = f3789a
            int r0 = r0 - r1
            byte r0 = r2[r0]
            r0 = r0 & 255(0xff, float:3.57E-43)
            goto L_0x001b
        L_0x0017:
            int r0 = super.read()
        L_0x001b:
            r1 = -1
            if (r0 == r1) goto L_0x0024
            int r1 = r3.f3793e
            int r1 = r1 + 1
            r3.f3793e = r1
        L_0x0024:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.c.a.h.read():int");
    }

    public void reset() {
        throw new UnsupportedOperationException();
    }

    public long skip(long j2) {
        long skip = super.skip(j2);
        if (skip > 0) {
            this.f3793e = (int) (((long) this.f3793e) + skip);
        }
        return skip;
    }

    public int read(byte[] bArr, int i2, int i3) {
        int i4;
        int i5 = this.f3793e;
        int i6 = f3791c;
        if (i5 > i6) {
            i4 = super.read(bArr, i2, i3);
        } else if (i5 == i6) {
            bArr[i2] = this.f3792d;
            i4 = 1;
        } else if (i5 < 2) {
            i4 = super.read(bArr, i2, 2 - i5);
        } else {
            int min = Math.min(i6 - i5, i3);
            System.arraycopy(f3789a, this.f3793e - 2, bArr, i2, min);
            i4 = min;
        }
        if (i4 > 0) {
            this.f3793e += i4;
        }
        return i4;
    }
}
