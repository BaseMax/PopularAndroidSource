package c.b.a.b;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* compiled from: GifHeaderParser */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f3750a = new byte[256];

    /* renamed from: b  reason: collision with root package name */
    public ByteBuffer f3751b;

    /* renamed from: c  reason: collision with root package name */
    public c f3752c;

    /* renamed from: d  reason: collision with root package name */
    public int f3753d = 0;

    public d a(ByteBuffer byteBuffer) {
        m();
        this.f3751b = byteBuffer.asReadOnlyBuffer();
        this.f3751b.position(0);
        this.f3751b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public final void b(int i2) {
        boolean z = false;
        while (!z && !b() && this.f3752c.f3740c <= i2) {
            int d2 = d();
            if (d2 == 33) {
                int d3 = d();
                if (d3 == 1) {
                    n();
                } else if (d3 == 249) {
                    this.f3752c.f3741d = new b();
                    h();
                } else if (d3 == 254) {
                    n();
                } else if (d3 != 255) {
                    n();
                } else {
                    f();
                    StringBuilder sb = new StringBuilder();
                    for (int i3 = 0; i3 < 11; i3++) {
                        sb.append((char) this.f3750a[i3]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        k();
                    } else {
                        n();
                    }
                }
            } else if (d2 == 44) {
                c cVar = this.f3752c;
                if (cVar.f3741d == null) {
                    cVar.f3741d = new b();
                }
                e();
            } else if (d2 != 59) {
                this.f3752c.f3739b = 1;
            } else {
                z = true;
            }
        }
    }

    public c c() {
        if (this.f3751b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        } else if (b()) {
            return this.f3752c;
        } else {
            i();
            if (!b()) {
                g();
                c cVar = this.f3752c;
                if (cVar.f3740c < 0) {
                    cVar.f3739b = 1;
                }
            }
            return this.f3752c;
        }
    }

    public final int d() {
        try {
            return this.f3751b.get() & 255;
        } catch (Exception unused) {
            this.f3752c.f3739b = 1;
            return 0;
        }
    }

    public final void e() {
        this.f3752c.f3741d.f3727a = l();
        this.f3752c.f3741d.f3728b = l();
        this.f3752c.f3741d.f3729c = l();
        this.f3752c.f3741d.f3730d = l();
        int d2 = d();
        boolean z = false;
        boolean z2 = (d2 & 128) != 0;
        int pow = (int) Math.pow(2.0d, (double) ((d2 & 7) + 1));
        b bVar = this.f3752c.f3741d;
        if ((d2 & 64) != 0) {
            z = true;
        }
        bVar.f3731e = z;
        if (z2) {
            this.f3752c.f3741d.f3737k = a(pow);
        } else {
            this.f3752c.f3741d.f3737k = null;
        }
        this.f3752c.f3741d.f3736j = this.f3751b.position();
        o();
        if (!b()) {
            c cVar = this.f3752c;
            cVar.f3740c++;
            cVar.f3742e.add(cVar.f3741d);
        }
    }

    public final void f() {
        this.f3753d = d();
        if (this.f3753d > 0) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < this.f3753d) {
                try {
                    i3 = this.f3753d - i2;
                    this.f3751b.get(this.f3750a, i2, i3);
                    i2 += i3;
                } catch (Exception e2) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        Log.d("GifHeaderParser", "Error Reading Block n: " + i2 + " count: " + i3 + " blockSize: " + this.f3753d, e2);
                    }
                    this.f3752c.f3739b = 1;
                    return;
                }
            }
        }
    }

    public final void g() {
        b(Integer.MAX_VALUE);
    }

    public final void h() {
        d();
        int d2 = d();
        b bVar = this.f3752c.f3741d;
        bVar.f3733g = (d2 & 28) >> 2;
        boolean z = true;
        if (bVar.f3733g == 0) {
            bVar.f3733g = 1;
        }
        b bVar2 = this.f3752c.f3741d;
        if ((d2 & 1) == 0) {
            z = false;
        }
        bVar2.f3732f = z;
        int l2 = l();
        if (l2 < 2) {
            l2 = 10;
        }
        b bVar3 = this.f3752c.f3741d;
        bVar3.f3735i = l2 * 10;
        bVar3.f3734h = d();
        d();
    }

    public final void i() {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 6; i2++) {
            sb.append((char) d());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f3752c.f3739b = 1;
            return;
        }
        j();
        if (this.f3752c.f3745h && !b()) {
            c cVar = this.f3752c;
            cVar.f3738a = a(cVar.f3746i);
            c cVar2 = this.f3752c;
            cVar2.f3749l = cVar2.f3738a[cVar2.f3747j];
        }
    }

    public final void j() {
        this.f3752c.f3743f = l();
        this.f3752c.f3744g = l();
        int d2 = d();
        this.f3752c.f3745h = (d2 & 128) != 0;
        this.f3752c.f3746i = (int) Math.pow(2.0d, (double) ((d2 & 7) + 1));
        this.f3752c.f3747j = d();
        this.f3752c.f3748k = d();
    }

    public final void k() {
        do {
            f();
            byte[] bArr = this.f3750a;
            if (bArr[0] == 1) {
                this.f3752c.m = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.f3753d <= 0) {
                return;
            }
        } while (!b());
    }

    public final int l() {
        return this.f3751b.getShort();
    }

    public final void m() {
        this.f3751b = null;
        Arrays.fill(this.f3750a, (byte) 0);
        this.f3752c = new c();
        this.f3753d = 0;
    }

    public final void n() {
        int d2;
        do {
            d2 = d();
            this.f3751b.position(Math.min(this.f3751b.position() + d2, this.f3751b.limit()));
        } while (d2 > 0);
    }

    public final void o() {
        d();
        n();
    }

    public void a() {
        this.f3751b = null;
        this.f3752c = null;
    }

    public final int[] a(int i2) {
        byte[] bArr = new byte[(i2 * 3)];
        int[] iArr = null;
        try {
            this.f3751b.get(bArr);
            iArr = new int[256];
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2) {
                int i5 = i4 + 1;
                int i6 = i5 + 1;
                int i7 = i6 + 1;
                int i8 = i3 + 1;
                iArr[i3] = ((bArr[i4] & 255) << 16) | -16777216 | ((bArr[i5] & 255) << 8) | (bArr[i6] & 255);
                i4 = i7;
                i3 = i8;
            }
        } catch (BufferUnderflowException e2) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e2);
            }
            this.f3752c.f3739b = 1;
        }
        return iArr;
    }

    public final boolean b() {
        return this.f3752c.f3739b != 0;
    }
}
