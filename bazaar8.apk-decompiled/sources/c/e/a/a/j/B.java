package c.e.a.a.j;

import c.e.a.a.E;
import c.e.a.a.c.c;
import c.e.a.a.c.f;
import c.e.a.a.e.h;
import c.e.a.a.e.q;
import c.e.a.a.j.A;
import c.e.a.a.n.d;
import c.e.a.a.n.e;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import java.io.EOFException;
import java.nio.ByteBuffer;

/* compiled from: SampleQueue */
public class B implements q {

    /* renamed from: a  reason: collision with root package name */
    public final e f8381a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8382b;

    /* renamed from: c  reason: collision with root package name */
    public final A f8383c = new A();

    /* renamed from: d  reason: collision with root package name */
    public final A.a f8384d = new A.a();

    /* renamed from: e  reason: collision with root package name */
    public final v f8385e = new v(32);

    /* renamed from: f  reason: collision with root package name */
    public a f8386f = new a(0, this.f8382b);

    /* renamed from: g  reason: collision with root package name */
    public a f8387g;

    /* renamed from: h  reason: collision with root package name */
    public a f8388h;

    /* renamed from: i  reason: collision with root package name */
    public Format f8389i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f8390j;

    /* renamed from: k  reason: collision with root package name */
    public Format f8391k;

    /* renamed from: l  reason: collision with root package name */
    public long f8392l;
    public long m;
    public boolean n;
    public b o;

    /* compiled from: SampleQueue */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f8393a;

        /* renamed from: b  reason: collision with root package name */
        public final long f8394b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f8395c;

        /* renamed from: d  reason: collision with root package name */
        public d f8396d;

        /* renamed from: e  reason: collision with root package name */
        public a f8397e;

        public a(long j2, int i2) {
            this.f8393a = j2;
            this.f8394b = j2 + ((long) i2);
        }

        public void a(d dVar, a aVar) {
            this.f8396d = dVar;
            this.f8397e = aVar;
            this.f8395c = true;
        }

        public int a(long j2) {
            return ((int) (j2 - this.f8393a)) + this.f8396d.f9452b;
        }

        public a a() {
            this.f8396d = null;
            a aVar = this.f8397e;
            this.f8397e = null;
            return aVar;
        }
    }

    /* compiled from: SampleQueue */
    public interface b {
        void a(Format format);
    }

    public B(e eVar) {
        this.f8381a = eVar;
        this.f8382b = eVar.c();
        a aVar = this.f8386f;
        this.f8387g = aVar;
        this.f8388h = aVar;
    }

    public void a(boolean z) {
        this.f8383c.a(z);
        a(this.f8386f);
        this.f8386f = new a(0, this.f8382b);
        a aVar = this.f8386f;
        this.f8387g = aVar;
        this.f8388h = aVar;
        this.m = 0;
        this.f8381a.b();
    }

    public void b(long j2, boolean z, boolean z2) {
        b(this.f8383c.b(j2, z, z2));
    }

    public void c() {
        b(this.f8383c.c());
    }

    public int d() {
        return this.f8383c.d();
    }

    public void e(int i2) {
        this.f8383c.f(i2);
    }

    public long f() {
        return this.f8383c.f();
    }

    public int g() {
        return this.f8383c.g();
    }

    public Format h() {
        return this.f8383c.h();
    }

    public int i() {
        return this.f8383c.i();
    }

    public boolean j() {
        return this.f8383c.j();
    }

    public boolean k() {
        return this.f8383c.k();
    }

    public int l() {
        return this.f8383c.l();
    }

    public void m() {
        a(false);
    }

    public void n() {
        this.f8383c.m();
        this.f8387g = this.f8386f;
    }

    public void o() {
        this.n = true;
    }

    public void b() {
        b(this.f8383c.b());
    }

    public void c(long j2) {
        if (this.f8392l != j2) {
            this.f8392l = j2;
            this.f8390j = true;
        }
    }

    public boolean d(int i2) {
        return this.f8383c.e(i2);
    }

    public long e() {
        return this.f8383c.e();
    }

    public final void b(long j2) {
        a aVar;
        if (j2 != -1) {
            while (true) {
                aVar = this.f8386f;
                if (j2 < aVar.f8394b) {
                    break;
                }
                this.f8381a.a(aVar.f8396d);
                this.f8386f = this.f8386f.a();
            }
            if (this.f8387g.f8393a < aVar.f8393a) {
                this.f8387g = aVar;
            }
        }
    }

    public final int c(int i2) {
        a aVar = this.f8388h;
        if (!aVar.f8395c) {
            aVar.a(this.f8381a.a(), new a(this.f8388h.f8394b, this.f8382b));
        }
        return Math.min(i2, (int) (this.f8388h.f8394b - this.m));
    }

    public void a(int i2) {
        this.m = this.f8383c.b(i2);
        long j2 = this.m;
        if (j2 != 0) {
            a aVar = this.f8386f;
            if (j2 != aVar.f8393a) {
                while (this.m > aVar.f8394b) {
                    aVar = aVar.f8397e;
                }
                a aVar2 = aVar.f8397e;
                a(aVar2);
                aVar.f8397e = new a(aVar.f8394b, this.f8382b);
                this.f8388h = this.m == aVar.f8394b ? aVar.f8397e : aVar;
                if (this.f8387g == aVar2) {
                    this.f8387g = aVar.f8397e;
                    return;
                }
                return;
            }
        }
        a(this.f8386f);
        this.f8386f = new a(this.m, this.f8382b);
        a aVar3 = this.f8386f;
        this.f8387g = aVar3;
        this.f8388h = aVar3;
    }

    public final void b(int i2) {
        this.m += (long) i2;
        long j2 = this.m;
        a aVar = this.f8388h;
        if (j2 == aVar.f8394b) {
            this.f8388h = aVar.f8397e;
        }
    }

    public int a() {
        return this.f8383c.a();
    }

    public int a(long j2, boolean z, boolean z2) {
        return this.f8383c.a(j2, z, z2);
    }

    public int a(E e2, f fVar, boolean z, boolean z2, long j2) {
        int a2 = this.f8383c.a(e2, fVar, z, z2, this.f8389i, this.f8384d);
        if (a2 == -5) {
            this.f8389i = e2.f7255a;
            return -5;
        } else if (a2 == -4) {
            if (!fVar.i()) {
                if (fVar.f7546d < j2) {
                    fVar.b(Integer.MIN_VALUE);
                }
                if (!fVar.m()) {
                    if (fVar.l()) {
                        a(fVar, this.f8384d);
                    }
                    fVar.g(this.f8384d.f8378a);
                    A.a aVar = this.f8384d;
                    a(aVar.f8379b, fVar.f7545c, aVar.f8378a);
                }
            }
            return -4;
        } else if (a2 == -3) {
            return -3;
        } else {
            throw new IllegalStateException();
        }
    }

    public final void a(f fVar, A.a aVar) {
        int i2;
        f fVar2 = fVar;
        A.a aVar2 = aVar;
        long j2 = aVar2.f8379b;
        this.f8385e.c(1);
        a(j2, this.f8385e.f9634a, 1);
        long j3 = j2 + 1;
        byte b2 = this.f8385e.f9634a[0];
        boolean z = (b2 & 128) != 0;
        byte b3 = b2 & Byte.MAX_VALUE;
        c cVar = fVar2.f7544b;
        if (cVar.f7523a == null) {
            cVar.f7523a = new byte[16];
        }
        a(j3, fVar2.f7544b.f7523a, (int) b3);
        long j4 = j3 + ((long) b3);
        if (z) {
            this.f8385e.c(2);
            a(j4, this.f8385e.f9634a, 2);
            j4 += 2;
            i2 = this.f8385e.A();
        } else {
            i2 = 1;
        }
        int[] iArr = fVar2.f7544b.f7526d;
        if (iArr == null || iArr.length < i2) {
            iArr = new int[i2];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = fVar2.f7544b.f7527e;
        if (iArr3 == null || iArr3.length < i2) {
            iArr3 = new int[i2];
        }
        int[] iArr4 = iArr3;
        if (z) {
            int i3 = i2 * 6;
            this.f8385e.c(i3);
            a(j4, this.f8385e.f9634a, i3);
            j4 += (long) i3;
            this.f8385e.e(0);
            for (int i4 = 0; i4 < i2; i4++) {
                iArr2[i4] = this.f8385e.A();
                iArr4[i4] = this.f8385e.y();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = aVar2.f8378a - ((int) (j4 - aVar2.f8379b));
        }
        q.a aVar3 = aVar2.f8380c;
        c cVar2 = fVar2.f7544b;
        cVar2.a(i2, iArr2, iArr4, aVar3.f8329b, cVar2.f7523a, aVar3.f8328a, aVar3.f8330c, aVar3.f8331d);
        long j5 = aVar2.f8379b;
        int i5 = (int) (j4 - j5);
        aVar2.f8379b = j5 + ((long) i5);
        aVar2.f8378a -= i5;
    }

    public final void a(long j2, ByteBuffer byteBuffer, int i2) {
        a(j2);
        while (i2 > 0) {
            int min = Math.min(i2, (int) (this.f8387g.f8394b - j2));
            a aVar = this.f8387g;
            byteBuffer.put(aVar.f8396d.f9451a, aVar.a(j2), min);
            i2 -= min;
            j2 += (long) min;
            a aVar2 = this.f8387g;
            if (j2 == aVar2.f8394b) {
                this.f8387g = aVar2.f8397e;
            }
        }
    }

    public final void a(long j2, byte[] bArr, int i2) {
        a(j2);
        long j3 = j2;
        int i3 = i2;
        while (i3 > 0) {
            int min = Math.min(i3, (int) (this.f8387g.f8394b - j3));
            a aVar = this.f8387g;
            System.arraycopy(aVar.f8396d.f9451a, aVar.a(j3), bArr, i2 - i3, min);
            i3 -= min;
            j3 += (long) min;
            a aVar2 = this.f8387g;
            if (j3 == aVar2.f8394b) {
                this.f8387g = aVar2.f8397e;
            }
        }
    }

    public final void a(long j2) {
        while (true) {
            a aVar = this.f8387g;
            if (j2 >= aVar.f8394b) {
                this.f8387g = aVar.f8397e;
            } else {
                return;
            }
        }
    }

    public void a(b bVar) {
        this.o = bVar;
    }

    public void a(Format format) {
        Format a2 = a(format, this.f8392l);
        boolean a3 = this.f8383c.a(a2);
        this.f8391k = format;
        this.f8390j = false;
        b bVar = this.o;
        if (bVar != null && a3) {
            bVar.a(a2);
        }
    }

    public int a(h hVar, int i2, boolean z) {
        int c2 = c(i2);
        a aVar = this.f8388h;
        int read = hVar.read(aVar.f8396d.f9451a, aVar.a(this.m), c2);
        if (read != -1) {
            b(read);
            return read;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    public void a(v vVar, int i2) {
        while (i2 > 0) {
            int c2 = c(i2);
            a aVar = this.f8388h;
            vVar.a(aVar.f8396d.f9451a, aVar.a(this.m), c2);
            i2 -= c2;
            b(c2);
        }
    }

    public void a(long j2, int i2, int i3, int i4, q.a aVar) {
        if (this.f8390j) {
            a(this.f8391k);
        }
        long j3 = j2 + this.f8392l;
        if (this.n) {
            if ((i2 & 1) != 0 && this.f8383c.a(j3)) {
                this.n = false;
            } else {
                return;
            }
        }
        int i5 = i3;
        this.f8383c.a(j3, i2, (this.m - ((long) i5)) - ((long) i4), i5, aVar);
    }

    public final void a(a aVar) {
        if (aVar.f8395c) {
            a aVar2 = this.f8388h;
            d[] dVarArr = new d[((aVar2.f8395c ? 1 : 0) + (((int) (aVar2.f8393a - aVar.f8393a)) / this.f8382b))];
            for (int i2 = 0; i2 < dVarArr.length; i2++) {
                dVarArr[i2] = aVar.f8396d;
                aVar = aVar.a();
            }
            this.f8381a.a(dVarArr);
        }
    }

    public static Format a(Format format, long j2) {
        if (format == null) {
            return null;
        }
        if (j2 != 0) {
            long j3 = format.m;
            if (j3 != Long.MAX_VALUE) {
                format = format.a(j3 + j2);
            }
        }
        return format;
    }
}
