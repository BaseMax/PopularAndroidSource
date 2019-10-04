package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zziu;
import java.io.IOException;

public final class Pc {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f10195a;

    /* renamed from: b  reason: collision with root package name */
    public final int f10196b;

    /* renamed from: c  reason: collision with root package name */
    public final int f10197c;

    /* renamed from: d  reason: collision with root package name */
    public int f10198d;

    /* renamed from: e  reason: collision with root package name */
    public int f10199e;

    /* renamed from: f  reason: collision with root package name */
    public int f10200f;

    /* renamed from: g  reason: collision with root package name */
    public int f10201g;

    /* renamed from: h  reason: collision with root package name */
    public int f10202h = Integer.MAX_VALUE;

    /* renamed from: i  reason: collision with root package name */
    public int f10203i;

    /* renamed from: j  reason: collision with root package name */
    public int f10204j = 64;

    /* renamed from: k  reason: collision with root package name */
    public int f10205k = 67108864;

    /* renamed from: l  reason: collision with root package name */
    public Ua f10206l;

    public Pc(byte[] bArr, int i2, int i3) {
        this.f10195a = bArr;
        this.f10196b = i2;
        int i4 = i3 + i2;
        this.f10198d = i4;
        this.f10197c = i4;
        this.f10200f = i2;
    }

    public static Pc a(byte[] bArr, int i2, int i3) {
        return new Pc(bArr, 0, i3);
    }

    public final void b(int i2) {
        if (this.f10201g != i2) {
            throw new zziu("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final int c() {
        if (this.f10200f == this.f10198d) {
            this.f10201g = 0;
            return 0;
        }
        this.f10201g = e();
        int i2 = this.f10201g;
        if (i2 != 0) {
            return i2;
        }
        throw new zziu("Protocol message contained an invalid tag (zero).");
    }

    public final boolean d() {
        return e() != 0;
    }

    public final int e() {
        byte b2;
        int i2;
        byte h2 = h();
        if (h2 >= 0) {
            return h2;
        }
        byte b3 = h2 & Byte.MAX_VALUE;
        byte h3 = h();
        if (h3 >= 0) {
            i2 = h3 << 7;
        } else {
            b3 |= (h3 & Byte.MAX_VALUE) << 7;
            byte h4 = h();
            if (h4 >= 0) {
                i2 = h4 << 14;
            } else {
                b3 |= (h4 & Byte.MAX_VALUE) << 14;
                byte h5 = h();
                if (h5 >= 0) {
                    i2 = h5 << 21;
                } else {
                    byte b4 = b3 | ((h5 & Byte.MAX_VALUE) << 21);
                    byte h6 = h();
                    b2 = b4 | (h6 << 28);
                    if (h6 < 0) {
                        for (int i3 = 0; i3 < 5; i3++) {
                            if (h() >= 0) {
                                return b2;
                            }
                        }
                        throw zziu.c();
                    }
                    return b2;
                }
            }
        }
        b2 = b3 | i2;
        return b2;
    }

    public final long f() {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            byte h2 = h();
            j2 |= ((long) (h2 & Byte.MAX_VALUE)) << i2;
            if ((h2 & 128) == 0) {
                return j2;
            }
        }
        throw zziu.c();
    }

    public final void g() {
        this.f10198d += this.f10199e;
        int i2 = this.f10198d;
        int i3 = this.f10202h;
        if (i2 > i3) {
            this.f10199e = i2 - i3;
            this.f10198d = i2 - this.f10199e;
            return;
        }
        this.f10199e = 0;
    }

    public final byte h() {
        int i2 = this.f10200f;
        if (i2 != this.f10198d) {
            byte[] bArr = this.f10195a;
            this.f10200f = i2 + 1;
            return bArr[i2];
        }
        throw zziu.a();
    }

    public final int i() {
        int i2 = this.f10202h;
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2 - this.f10200f;
    }

    public final void a(Wc wc) {
        int e2 = e();
        if (this.f10203i < this.f10204j) {
            int d2 = d(e2);
            this.f10203i++;
            wc.a(this);
            b(0);
            this.f10203i--;
            e(d2);
            return;
        }
        throw new zziu("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    public final int d(int i2) {
        if (i2 >= 0) {
            int i3 = i2 + this.f10200f;
            int i4 = this.f10202h;
            if (i3 <= i4) {
                this.f10202h = i3;
                g();
                return i4;
            }
            throw zziu.a();
        }
        throw zziu.b();
    }

    public final void f(int i2) {
        if (i2 >= 0) {
            int i3 = this.f10200f;
            int i4 = i3 + i2;
            int i5 = this.f10202h;
            if (i4 > i5) {
                f(i5 - i3);
                throw zziu.a();
            } else if (i2 <= this.f10198d - i3) {
                this.f10200f = i3 + i2;
            } else {
                throw zziu.a();
            }
        } else {
            throw zziu.b();
        }
    }

    public final String b() {
        int e2 = e();
        if (e2 >= 0) {
            int i2 = this.f10198d;
            int i3 = this.f10200f;
            if (e2 <= i2 - i3) {
                String str = new String(this.f10195a, i3, e2, Vc.f10248a);
                this.f10200f += e2;
                return str;
            }
            throw zziu.a();
        }
        throw zziu.b();
    }

    public final boolean c(int i2) {
        int c2;
        int i3 = i2 & 7;
        if (i3 == 0) {
            e();
            return true;
        } else if (i3 == 1) {
            h();
            h();
            h();
            h();
            h();
            h();
            h();
            h();
            return true;
        } else if (i3 == 2) {
            f(e());
            return true;
        } else if (i3 == 3) {
            do {
                c2 = c();
                if (c2 == 0) {
                    break;
                }
            } while (c(c2));
            b(((i2 >>> 3) << 3) | 4);
            return true;
        } else if (i3 == 4) {
            return false;
        } else {
            if (i3 == 5) {
                h();
                h();
                h();
                h();
                return true;
            }
            throw new zziu("Protocol message tag had invalid wire type.");
        }
    }

    public final void e(int i2) {
        this.f10202h = i2;
        g();
    }

    public final void b(int i2, int i3) {
        int i4 = this.f10200f;
        int i5 = this.f10196b;
        if (i2 > i4 - i5) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i2);
            sb.append(" is beyond current ");
            sb.append(i4 - i5);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 >= 0) {
            this.f10200f = i5 + i2;
            this.f10201g = i3;
        } else {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public final <T extends C0852nb<T, ?>> T a(C0805bc<T> bcVar) {
        try {
            if (this.f10206l == null) {
                this.f10206l = Ua.a(this.f10195a, this.f10196b, this.f10197c);
            }
            int t = this.f10206l.t();
            int i2 = this.f10200f - this.f10196b;
            if (t <= i2) {
                this.f10206l.g(i2 - t);
                this.f10206l.d(this.f10204j - this.f10203i);
                T t2 = (C0852nb) this.f10206l.a(bcVar, C0808cb.d());
                c(this.f10201g);
                return t2;
            }
            throw new IOException(String.format("CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s", new Object[]{Integer.valueOf(t), Integer.valueOf(i2)}));
        } catch (zzfh e2) {
            throw new zziu("", e2);
        }
    }

    public final int a() {
        return this.f10200f - this.f10196b;
    }

    public final byte[] a(int i2, int i3) {
        if (i3 == 0) {
            return Zc.f10309h;
        }
        byte[] bArr = new byte[i3];
        System.arraycopy(this.f10195a, this.f10196b + i2, bArr, 0, i3);
        return bArr;
    }

    public final void a(int i2) {
        b(i2, this.f10201g);
    }
}
