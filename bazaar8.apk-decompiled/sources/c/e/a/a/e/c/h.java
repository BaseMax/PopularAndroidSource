package c.e.a.a.e.c;

import c.e.a.a.o.v;

/* compiled from: Sniffer */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final v f7701a = new v(8);

    /* renamed from: b  reason: collision with root package name */
    public int f7702b;

    public final long a(c.e.a.a.e.h hVar) {
        int i2 = 0;
        hVar.a(this.f7701a.f9634a, 0, 1);
        byte b2 = this.f7701a.f9634a[0] & 255;
        if (b2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((b2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = b2 & (i3 ^ -1);
        hVar.a(this.f7701a.f9634a, 1, i4);
        while (i2 < i4) {
            i2++;
            i5 = (this.f7701a.f9634a[i2] & 255) + (i5 << 8);
        }
        this.f7702b += i4 + 1;
        return (long) i5;
    }

    public boolean b(c.e.a.a.e.h hVar) {
        c.e.a.a.e.h hVar2 = hVar;
        long length = hVar.getLength();
        long j2 = 1024;
        if (length != -1 && length <= 1024) {
            j2 = length;
        }
        int i2 = (int) j2;
        hVar2.a(this.f7701a.f9634a, 0, 4);
        long w = this.f7701a.w();
        this.f7702b = 4;
        while (true) {
            boolean z = true;
            if (w != 440786851) {
                int i3 = this.f7702b + 1;
                this.f7702b = i3;
                if (i3 == i2) {
                    return false;
                }
                hVar2.a(this.f7701a.f9634a, 0, 1);
                w = ((w << 8) & -256) | ((long) (this.f7701a.f9634a[0] & 255));
            } else {
                long a2 = a(hVar);
                long j3 = (long) this.f7702b;
                if (a2 == Long.MIN_VALUE || (length != -1 && j3 + a2 >= length)) {
                    return false;
                }
                while (true) {
                    int i4 = this.f7702b;
                    long j4 = j3 + a2;
                    if (((long) i4) >= j4) {
                        if (((long) i4) != j4) {
                            z = false;
                        }
                        return z;
                    } else if (a(hVar) == Long.MIN_VALUE) {
                        return false;
                    } else {
                        long a3 = a(hVar);
                        if (a3 < 0 || a3 > 2147483647L) {
                            return false;
                        }
                        if (a3 != 0) {
                            int i5 = (int) a3;
                            hVar2.a(i5);
                            this.f7702b += i5;
                        }
                    }
                }
                return false;
            }
        }
    }
}
