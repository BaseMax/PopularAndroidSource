package c.e.a.a.e.f;

import c.e.a.a.e.h;
import c.e.a.a.e.o;
import c.e.a.a.e.p;
import c.e.a.a.o.C0737e;
import java.io.EOFException;
import java.io.IOException;

/* compiled from: DefaultOggSeeker */
public final class c implements h {

    /* renamed from: a  reason: collision with root package name */
    public final g f7901a = new g();

    /* renamed from: b  reason: collision with root package name */
    public final long f7902b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7903c;

    /* renamed from: d  reason: collision with root package name */
    public final k f7904d;

    /* renamed from: e  reason: collision with root package name */
    public int f7905e;

    /* renamed from: f  reason: collision with root package name */
    public long f7906f;

    /* renamed from: g  reason: collision with root package name */
    public long f7907g;

    /* renamed from: h  reason: collision with root package name */
    public long f7908h;

    /* renamed from: i  reason: collision with root package name */
    public long f7909i;

    /* renamed from: j  reason: collision with root package name */
    public long f7910j;

    /* renamed from: k  reason: collision with root package name */
    public long f7911k;

    /* renamed from: l  reason: collision with root package name */
    public long f7912l;

    /* compiled from: DefaultOggSeeker */
    private class a implements o {
        public a() {
        }

        public o.a b(long j2) {
            if (j2 == 0) {
                return new o.a(new p(0, c.this.f7902b));
            }
            long b2 = c.this.f7904d.b(j2);
            c cVar = c.this;
            return new o.a(new p(j2, cVar.a(cVar.f7902b, b2, 30000)));
        }

        public boolean c() {
            return true;
        }

        public long d() {
            return c.this.f7904d.a(c.this.f7906f);
        }
    }

    public c(long j2, long j3, k kVar, long j4, long j5, boolean z) {
        C0737e.a(j2 >= 0 && j3 > j2);
        this.f7904d = kVar;
        this.f7902b = j2;
        this.f7903c = j3;
        if (j4 == j3 - j2 || z) {
            this.f7906f = j5;
            this.f7905e = 3;
            return;
        }
        this.f7905e = 0;
    }

    public void b() {
        this.f7909i = this.f7902b;
        this.f7910j = this.f7903c;
        this.f7911k = 0;
        this.f7912l = this.f7906f;
    }

    public long c(long j2) {
        int i2 = this.f7905e;
        C0737e.a(i2 == 3 || i2 == 2);
        long j3 = 0;
        if (j2 != 0) {
            j3 = this.f7904d.b(j2);
        }
        this.f7908h = j3;
        this.f7905e = 2;
        b();
        return this.f7908h;
    }

    public long a(h hVar) {
        int i2 = this.f7905e;
        if (i2 == 0) {
            this.f7907g = hVar.getPosition();
            this.f7905e = 1;
            long j2 = this.f7903c - 65307;
            if (j2 > this.f7907g) {
                return j2;
            }
        } else if (i2 != 1) {
            if (i2 == 2) {
                long j3 = this.f7908h;
                long j4 = 0;
                if (j3 != 0) {
                    long a2 = a(j3, hVar);
                    if (a2 >= 0) {
                        return a2;
                    }
                    j4 = a(hVar, this.f7908h, -(a2 + 2));
                }
                this.f7905e = 3;
                return -(j4 + 2);
            } else if (i2 == 3) {
                return -1;
            } else {
                throw new IllegalStateException();
            }
        }
        this.f7906f = b(hVar);
        this.f7905e = 3;
        return this.f7907g;
    }

    public long b(h hVar) {
        c(hVar);
        this.f7901a.a();
        while ((this.f7901a.f7930c & 4) != 4 && hVar.getPosition() < this.f7903c) {
            this.f7901a.a(hVar, false);
            g gVar = this.f7901a;
            hVar.c(gVar.f7936i + gVar.f7937j);
        }
        return this.f7901a.f7931d;
    }

    public void c(h hVar) {
        if (!a(hVar, this.f7903c)) {
            throw new EOFException();
        }
    }

    public a a() {
        if (this.f7906f != 0) {
            return new a();
        }
        return null;
    }

    public long a(long j2, h hVar) {
        h hVar2 = hVar;
        long j3 = 2;
        if (this.f7909i == this.f7910j) {
            return -(this.f7911k + 2);
        }
        long position = hVar.getPosition();
        if (!a(hVar2, this.f7910j)) {
            long j4 = this.f7909i;
            if (j4 != position) {
                return j4;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f7901a.a(hVar2, false);
        hVar.b();
        g gVar = this.f7901a;
        long j5 = j2 - gVar.f7931d;
        int i2 = gVar.f7936i + gVar.f7937j;
        if (j5 < 0 || j5 > 72000) {
            if (j5 < 0) {
                this.f7910j = position;
                this.f7912l = this.f7901a.f7931d;
            } else {
                long j6 = (long) i2;
                this.f7909i = hVar.getPosition() + j6;
                this.f7911k = this.f7901a.f7931d;
                if ((this.f7910j - this.f7909i) + j6 < 100000) {
                    hVar2.c(i2);
                    return -(this.f7911k + 2);
                }
            }
            long j7 = this.f7910j;
            long j8 = this.f7909i;
            if (j7 - j8 < 100000) {
                this.f7910j = j8;
                return j8;
            }
            long j9 = (long) i2;
            if (j5 > 0) {
                j3 = 1;
            }
            long j10 = j9 * j3;
            long j11 = this.f7910j;
            long j12 = this.f7909i;
            return Math.min(Math.max((hVar.getPosition() - j10) + ((j5 * (j11 - j12)) / (this.f7912l - this.f7911k)), j12), this.f7910j - 1);
        }
        hVar2.c(i2);
        return -(this.f7901a.f7931d + 2);
    }

    public final long a(long j2, long j3, long j4) {
        long j5 = this.f7903c;
        long j6 = this.f7902b;
        long j7 = j2 + (((j3 * (j5 - j6)) / this.f7906f) - j4);
        if (j7 < j6) {
            j7 = j6;
        }
        long j8 = this.f7903c;
        return j7 >= j8 ? j8 - 1 : j7;
    }

    public boolean a(h hVar, long j2) {
        int i2;
        long min = Math.min(j2 + 3, this.f7903c);
        byte[] bArr = new byte[2048];
        int length = bArr.length;
        while (true) {
            int i3 = 0;
            if (hVar.getPosition() + ((long) length) > min) {
                int position = (int) (min - hVar.getPosition());
                if (position < 4) {
                    return false;
                }
                length = position;
            }
            hVar.b(bArr, 0, length, false);
            while (true) {
                i2 = length - 3;
                if (i3 >= i2) {
                    break;
                } else if (bArr[i3] == 79 && bArr[i3 + 1] == 103 && bArr[i3 + 2] == 103 && bArr[i3 + 3] == 83) {
                    hVar.c(i3);
                    return true;
                } else {
                    i3++;
                }
            }
            hVar.c(i2);
        }
    }

    public long a(h hVar, long j2, long j3) {
        this.f7901a.a(hVar, false);
        while (true) {
            g gVar = this.f7901a;
            if (gVar.f7931d < j2) {
                hVar.c(gVar.f7936i + gVar.f7937j);
                g gVar2 = this.f7901a;
                long j4 = gVar2.f7931d;
                gVar2.a(hVar, false);
                j3 = j4;
            } else {
                hVar.b();
                return j3;
            }
        }
    }
}
