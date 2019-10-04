package c.e.a.a.k.f;

import android.text.Layout;
import c.e.a.a.o.C0737e;

/* compiled from: TtmlStyle */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public String f9225a;

    /* renamed from: b  reason: collision with root package name */
    public int f9226b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f9227c;

    /* renamed from: d  reason: collision with root package name */
    public int f9228d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9229e;

    /* renamed from: f  reason: collision with root package name */
    public int f9230f = -1;

    /* renamed from: g  reason: collision with root package name */
    public int f9231g = -1;

    /* renamed from: h  reason: collision with root package name */
    public int f9232h = -1;

    /* renamed from: i  reason: collision with root package name */
    public int f9233i = -1;

    /* renamed from: j  reason: collision with root package name */
    public int f9234j = -1;

    /* renamed from: k  reason: collision with root package name */
    public float f9235k;

    /* renamed from: l  reason: collision with root package name */
    public String f9236l;
    public e m;
    public Layout.Alignment n;

    public e a(boolean z) {
        C0737e.b(this.m == null);
        this.f9232h = z ? 1 : 0;
        return this;
    }

    public e b(boolean z) {
        C0737e.b(this.m == null);
        this.f9233i = z ? 1 : 0;
        return this;
    }

    public e c(boolean z) {
        C0737e.b(this.m == null);
        this.f9230f = z ? 1 : 0;
        return this;
    }

    public e d(boolean z) {
        C0737e.b(this.m == null);
        this.f9231g = z ? 1 : 0;
        return this;
    }

    public int e() {
        return this.f9234j;
    }

    public String f() {
        return this.f9236l;
    }

    public int g() {
        if (this.f9232h == -1 && this.f9233i == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = this.f9232h == 1 ? 1 : 0;
        if (this.f9233i == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }

    public Layout.Alignment h() {
        return this.n;
    }

    public boolean i() {
        return this.f9229e;
    }

    public boolean j() {
        return this.f9227c;
    }

    public boolean k() {
        return this.f9230f == 1;
    }

    public boolean l() {
        return this.f9231g == 1;
    }

    public e a(String str) {
        C0737e.b(this.m == null);
        this.f9225a = str;
        return this;
    }

    public int b() {
        if (this.f9227c) {
            return this.f9226b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public String c() {
        return this.f9225a;
    }

    public float d() {
        return this.f9235k;
    }

    public e c(int i2) {
        this.f9234j = i2;
        return this;
    }

    public int a() {
        if (this.f9229e) {
            return this.f9228d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public e b(int i2) {
        C0737e.b(this.m == null);
        this.f9226b = i2;
        this.f9227c = true;
        return this;
    }

    public e a(int i2) {
        this.f9228d = i2;
        this.f9229e = true;
        return this;
    }

    public e b(String str) {
        this.f9236l = str;
        return this;
    }

    public e a(e eVar) {
        a(eVar, true);
        return this;
    }

    public final e a(e eVar, boolean z) {
        if (eVar != null) {
            if (!this.f9227c && eVar.f9227c) {
                b(eVar.f9226b);
            }
            if (this.f9232h == -1) {
                this.f9232h = eVar.f9232h;
            }
            if (this.f9233i == -1) {
                this.f9233i = eVar.f9233i;
            }
            if (this.f9225a == null) {
                this.f9225a = eVar.f9225a;
            }
            if (this.f9230f == -1) {
                this.f9230f = eVar.f9230f;
            }
            if (this.f9231g == -1) {
                this.f9231g = eVar.f9231g;
            }
            if (this.n == null) {
                this.n = eVar.n;
            }
            if (this.f9234j == -1) {
                this.f9234j = eVar.f9234j;
                this.f9235k = eVar.f9235k;
            }
            if (z && !this.f9229e && eVar.f9229e) {
                a(eVar.f9228d);
            }
        }
        return this;
    }

    public e a(Layout.Alignment alignment) {
        this.n = alignment;
        return this;
    }

    public e a(float f2) {
        this.f9235k = f2;
        return this;
    }
}
