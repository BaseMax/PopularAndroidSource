package com.yandex.metrica.impl.ob;

import androidx.appcompat.widget.ActivityChooserView;
import com.pusher.java_websocket.drafts.c;
import java.io.IOException;
import org.eclipse.paho.a.a.a.a.u;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f5847a;

    /* renamed from: b  reason: collision with root package name */
    private int f5848b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    private int h;
    private int i = 64;

    public static a a(byte[] bArr, int i2, int i3) {
        return new a(bArr, i2, i3);
    }

    public final int a() throws IOException {
        if (r()) {
            this.f = 0;
            return 0;
        }
        this.f = m();
        int i2 = this.f;
        if (i2 != 0) {
            return i2;
        }
        throw d.d();
    }

    public final void a(int i2) throws d {
        if (this.f != i2) {
            throw d.e();
        }
    }

    public final boolean b(int i2) throws IOException {
        int a2 = g.a(i2);
        if (a2 == 0) {
            g();
            return true;
        } else if (a2 == 1) {
            p();
            return true;
        } else if (a2 == 2) {
            g(m());
            return true;
        } else if (a2 == 3) {
            b();
            a(g.a(g.b(i2), 4));
            return true;
        } else if (a2 == 4) {
            return false;
        } else {
            if (a2 == 5) {
                o();
                return true;
            }
            throw d.f();
        }
    }

    public final void b() throws IOException {
        int a2;
        do {
            a2 = a();
            if (a2 == 0) {
                return;
            }
        } while (b(a2));
    }

    public final double c() throws IOException {
        return Double.longBitsToDouble(p());
    }

    public final float d() throws IOException {
        return Float.intBitsToFloat(o());
    }

    public final long e() throws IOException {
        return n();
    }

    public final long f() throws IOException {
        return n();
    }

    public final int g() throws IOException {
        return m();
    }

    public final boolean h() throws IOException {
        return m() != 0;
    }

    public final String i() throws IOException {
        int m = m();
        int i2 = this.c;
        int i3 = this.e;
        if (m > i2 - i3 || m <= 0) {
            return new String(f(m), "UTF-8");
        }
        String str = new String(this.f5847a, i3, m, "UTF-8");
        this.e += m;
        return str;
    }

    public final void a(e eVar) throws IOException {
        int m = m();
        if (this.h < this.i) {
            int c2 = c(m);
            this.h++;
            eVar.a(this);
            a(0);
            this.h--;
            d(c2);
            return;
        }
        throw d.g();
    }

    public final byte[] j() throws IOException {
        int m = m();
        int i2 = this.c;
        int i3 = this.e;
        if (m > i2 - i3 || m <= 0) {
            return f(m);
        }
        byte[] bArr = new byte[m];
        System.arraycopy(this.f5847a, i3, bArr, 0, m);
        this.e += m;
        return bArr;
    }

    public final int k() throws IOException {
        return m();
    }

    public final int l() throws IOException {
        int m = m();
        return (-(m & 1)) ^ (m >>> 1);
    }

    public final int m() throws IOException {
        byte b2;
        int i2;
        byte t = t();
        if (t >= 0) {
            return t;
        }
        byte b3 = t & Byte.MAX_VALUE;
        byte t2 = t();
        if (t2 >= 0) {
            i2 = t2 << 7;
        } else {
            b3 |= (t2 & Byte.MAX_VALUE) << 7;
            byte t3 = t();
            if (t3 >= 0) {
                i2 = t3 << u.MESSAGE_TYPE_DISCONNECT;
            } else {
                b3 |= (t3 & Byte.MAX_VALUE) << u.MESSAGE_TYPE_DISCONNECT;
                byte t4 = t();
                if (t4 >= 0) {
                    i2 = t4 << 21;
                } else {
                    byte b4 = b3 | ((t4 & Byte.MAX_VALUE) << 21);
                    byte t5 = t();
                    b2 = b4 | (t5 << 28);
                    if (t5 < 0) {
                        for (int i3 = 0; i3 < 5; i3++) {
                            if (t() >= 0) {
                                return b2;
                            }
                        }
                        throw d.c();
                    }
                    return b2;
                }
            }
        }
        b2 = b3 | i2;
        return b2;
    }

    public final long n() throws IOException {
        long j = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            byte t = t();
            j |= ((long) (t & Byte.MAX_VALUE)) << i2;
            if ((t & 128) == 0) {
                return j;
            }
        }
        throw d.c();
    }

    public final int o() throws IOException {
        return (t() & c.END_OF_FRAME) | ((t() & c.END_OF_FRAME) << 8) | ((t() & c.END_OF_FRAME) << 16) | ((t() & c.END_OF_FRAME) << 24);
    }

    public final long p() throws IOException {
        byte t = t();
        byte t2 = t();
        return ((((long) t2) & 255) << 8) | (((long) t) & 255) | ((((long) t()) & 255) << 16) | ((((long) t()) & 255) << 24) | ((((long) t()) & 255) << 32) | ((((long) t()) & 255) << 40) | ((((long) t()) & 255) << 48) | ((((long) t()) & 255) << 56);
    }

    private a(byte[] bArr, int i2, int i3) {
        this.f5847a = bArr;
        this.f5848b = i2;
        this.c = i3 + i2;
        this.e = i2;
    }

    public final int c(int i2) throws d {
        if (i2 >= 0) {
            int i3 = i2 + this.e;
            int i4 = this.g;
            if (i3 <= i4) {
                this.g = i3;
                u();
                return i4;
            }
            throw d.a();
        }
        throw d.b();
    }

    private void u() {
        this.c += this.d;
        int i2 = this.c;
        int i3 = this.g;
        if (i2 > i3) {
            this.d = i2 - i3;
            this.c = i2 - this.d;
            return;
        }
        this.d = 0;
    }

    public final void d(int i2) {
        this.g = i2;
        u();
    }

    public final int q() {
        int i2 = this.g;
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2 - this.e;
    }

    public final boolean r() {
        return this.e == this.c;
    }

    public final int s() {
        return this.e - this.f5848b;
    }

    public final void e(int i2) {
        int i3 = this.e;
        int i4 = this.f5848b;
        if (i2 > i3 - i4) {
            throw new IllegalArgumentException("Position " + i2 + " is beyond current " + (this.e - this.f5848b));
        } else if (i2 >= 0) {
            this.e = i4 + i2;
        } else {
            throw new IllegalArgumentException("Bad position ".concat(String.valueOf(i2)));
        }
    }

    public final byte t() throws IOException {
        int i2 = this.e;
        if (i2 != this.c) {
            byte[] bArr = this.f5847a;
            this.e = i2 + 1;
            return bArr[i2];
        }
        throw d.a();
    }

    public final byte[] f(int i2) throws IOException {
        if (i2 >= 0) {
            int i3 = this.e;
            int i4 = i3 + i2;
            int i5 = this.g;
            if (i4 > i5) {
                g(i5 - i3);
                throw d.a();
            } else if (i2 <= this.c - i3) {
                byte[] bArr = new byte[i2];
                System.arraycopy(this.f5847a, i3, bArr, 0, i2);
                this.e += i2;
                return bArr;
            } else {
                throw d.a();
            }
        } else {
            throw d.b();
        }
    }

    public final void g(int i2) throws IOException {
        if (i2 >= 0) {
            int i3 = this.e;
            int i4 = i3 + i2;
            int i5 = this.g;
            if (i4 > i5) {
                g(i5 - i3);
                throw d.a();
            } else if (i2 <= this.c - i3) {
                this.e = i3 + i2;
            } else {
                throw d.a();
            }
        } else {
            throw d.b();
        }
    }
}
