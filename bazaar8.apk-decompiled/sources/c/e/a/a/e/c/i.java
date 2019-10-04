package c.e.a.a.e.c;

import c.e.a.a.e.h;

/* compiled from: VarintReader */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final long[] f7703a = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f7704b = new byte[8];

    /* renamed from: c  reason: collision with root package name */
    public int f7705c;

    /* renamed from: d  reason: collision with root package name */
    public int f7706d;

    public long a(h hVar, boolean z, boolean z2, int i2) {
        if (this.f7705c == 0) {
            if (!hVar.a(this.f7704b, 0, 1, z)) {
                return -1;
            }
            this.f7706d = a(this.f7704b[0] & 255);
            if (this.f7706d != -1) {
                this.f7705c = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i3 = this.f7706d;
        if (i3 > i2) {
            this.f7705c = 0;
            return -2;
        }
        if (i3 != 1) {
            hVar.readFully(this.f7704b, 1, i3 - 1);
        }
        this.f7705c = 0;
        return a(this.f7704b, this.f7706d, z2);
    }

    public void b() {
        this.f7705c = 0;
        this.f7706d = 0;
    }

    public int a() {
        return this.f7706d;
    }

    public static int a(int i2) {
        int i3 = 0;
        while (true) {
            long[] jArr = f7703a;
            if (i3 >= jArr.length) {
                return -1;
            }
            if ((jArr[i3] & ((long) i2)) != 0) {
                return i3 + 1;
            }
            i3++;
        }
    }

    public static long a(byte[] bArr, int i2, boolean z) {
        long j2 = ((long) bArr[0]) & 255;
        if (z) {
            j2 &= f7703a[i2 - 1] ^ -1;
        }
        for (int i3 = 1; i3 < i2; i3++) {
            j2 = (j2 << 8) | (((long) bArr[i3]) & 255);
        }
        return j2;
    }
}
