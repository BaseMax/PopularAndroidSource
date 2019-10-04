package c.e.a.a.e.e;

import c.e.a.a.e.h;
import c.e.a.a.o.v;

/* compiled from: TrackFragment */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public e f7880a;

    /* renamed from: b  reason: collision with root package name */
    public long f7881b;

    /* renamed from: c  reason: collision with root package name */
    public long f7882c;

    /* renamed from: d  reason: collision with root package name */
    public long f7883d;

    /* renamed from: e  reason: collision with root package name */
    public int f7884e;

    /* renamed from: f  reason: collision with root package name */
    public int f7885f;

    /* renamed from: g  reason: collision with root package name */
    public long[] f7886g;

    /* renamed from: h  reason: collision with root package name */
    public int[] f7887h;

    /* renamed from: i  reason: collision with root package name */
    public int[] f7888i;

    /* renamed from: j  reason: collision with root package name */
    public int[] f7889j;

    /* renamed from: k  reason: collision with root package name */
    public long[] f7890k;

    /* renamed from: l  reason: collision with root package name */
    public boolean[] f7891l;
    public boolean m;
    public boolean[] n;
    public o o;
    public int p;
    public v q;
    public boolean r;
    public long s;

    public void a() {
        this.f7884e = 0;
        this.s = 0;
        this.m = false;
        this.r = false;
        this.o = null;
    }

    public void b(int i2) {
        v vVar = this.q;
        if (vVar == null || vVar.d() < i2) {
            this.q = new v(i2);
        }
        this.p = i2;
        this.m = true;
        this.r = true;
    }

    public boolean c(int i2) {
        return this.m && this.n[i2];
    }

    public void a(int i2, int i3) {
        this.f7884e = i2;
        this.f7885f = i3;
        int[] iArr = this.f7887h;
        if (iArr == null || iArr.length < i2) {
            this.f7886g = new long[i2];
            this.f7887h = new int[i2];
        }
        int[] iArr2 = this.f7888i;
        if (iArr2 == null || iArr2.length < i3) {
            int i4 = (i3 * 125) / 100;
            this.f7888i = new int[i4];
            this.f7889j = new int[i4];
            this.f7890k = new long[i4];
            this.f7891l = new boolean[i4];
            this.n = new boolean[i4];
        }
    }

    public void a(h hVar) {
        hVar.readFully(this.q.f9634a, 0, this.p);
        this.q.e(0);
        this.r = false;
    }

    public void a(v vVar) {
        vVar.a(this.q.f9634a, 0, this.p);
        this.q.e(0);
        this.r = false;
    }

    public long a(int i2) {
        return this.f7890k[i2] + ((long) this.f7889j[i2]);
    }
}
