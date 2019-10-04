package c.e.a.a.n;

import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import java.util.Arrays;

/* compiled from: DefaultAllocator */
public final class m implements e {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f9475a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9476b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f9477c;

    /* renamed from: d  reason: collision with root package name */
    public final d[] f9478d;

    /* renamed from: e  reason: collision with root package name */
    public int f9479e;

    /* renamed from: f  reason: collision with root package name */
    public int f9480f;

    /* renamed from: g  reason: collision with root package name */
    public int f9481g;

    /* renamed from: h  reason: collision with root package name */
    public d[] f9482h;

    public m(boolean z, int i2) {
        this(z, i2, 0);
    }

    public synchronized void a(int i2) {
        boolean z = i2 < this.f9479e;
        this.f9479e = i2;
        if (z) {
            b();
        }
    }

    public synchronized void b() {
        int i2 = 0;
        int max = Math.max(0, I.a(this.f9479e, this.f9476b) - this.f9480f);
        if (max < this.f9481g) {
            if (this.f9477c != null) {
                int i3 = this.f9481g - 1;
                while (i2 <= i3) {
                    d dVar = this.f9482h[i2];
                    if (dVar.f9451a == this.f9477c) {
                        i2++;
                    } else {
                        d dVar2 = this.f9482h[i3];
                        if (dVar2.f9451a != this.f9477c) {
                            i3--;
                        } else {
                            this.f9482h[i2] = dVar2;
                            this.f9482h[i3] = dVar;
                            i3--;
                            i2++;
                        }
                    }
                }
                max = Math.max(max, i2);
                if (max >= this.f9481g) {
                    return;
                }
            }
            Arrays.fill(this.f9482h, max, this.f9481g, null);
            this.f9481g = max;
        }
    }

    public int c() {
        return this.f9476b;
    }

    public synchronized int d() {
        return this.f9480f * this.f9476b;
    }

    public synchronized void e() {
        if (this.f9475a) {
            a(0);
        }
    }

    public m(boolean z, int i2, int i3) {
        C0737e.a(i2 > 0);
        C0737e.a(i3 >= 0);
        this.f9475a = z;
        this.f9476b = i2;
        this.f9481g = i3;
        this.f9482h = new d[(i3 + 100)];
        if (i3 > 0) {
            this.f9477c = new byte[(i3 * i2)];
            for (int i4 = 0; i4 < i3; i4++) {
                this.f9482h[i4] = new d(this.f9477c, i4 * i2);
            }
        } else {
            this.f9477c = null;
        }
        this.f9478d = new d[1];
    }

    public synchronized d a() {
        d dVar;
        this.f9480f++;
        if (this.f9481g > 0) {
            d[] dVarArr = this.f9482h;
            int i2 = this.f9481g - 1;
            this.f9481g = i2;
            dVar = dVarArr[i2];
            this.f9482h[this.f9481g] = null;
        } else {
            dVar = new d(new byte[this.f9476b], 0);
        }
        return dVar;
    }

    public synchronized void a(d dVar) {
        this.f9478d[0] = dVar;
        a(this.f9478d);
    }

    public synchronized void a(d[] dVarArr) {
        if (this.f9481g + dVarArr.length >= this.f9482h.length) {
            this.f9482h = (d[]) Arrays.copyOf(this.f9482h, Math.max(this.f9482h.length * 2, this.f9481g + dVarArr.length));
        }
        for (d dVar : dVarArr) {
            d[] dVarArr2 = this.f9482h;
            int i2 = this.f9481g;
            this.f9481g = i2 + 1;
            dVarArr2[i2] = dVar;
        }
        this.f9480f -= dVarArr.length;
        notifyAll();
    }
}
