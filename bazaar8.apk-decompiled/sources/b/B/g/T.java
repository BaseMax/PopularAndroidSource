package b.b.g;

/* compiled from: RtlSpacingHelper */
public class T {

    /* renamed from: a  reason: collision with root package name */
    public int f2110a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f2111b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f2112c = Integer.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    public int f2113d = Integer.MIN_VALUE;

    /* renamed from: e  reason: collision with root package name */
    public int f2114e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f2115f = 0;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2116g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2117h = false;

    public int a() {
        return this.f2116g ? this.f2110a : this.f2111b;
    }

    public int b() {
        return this.f2110a;
    }

    public int c() {
        return this.f2111b;
    }

    public int d() {
        return this.f2116g ? this.f2111b : this.f2110a;
    }

    public void a(int i2, int i3) {
        this.f2117h = false;
        if (i2 != Integer.MIN_VALUE) {
            this.f2114e = i2;
            this.f2110a = i2;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.f2115f = i3;
            this.f2111b = i3;
        }
    }

    public void b(int i2, int i3) {
        this.f2112c = i2;
        this.f2113d = i3;
        this.f2117h = true;
        if (this.f2116g) {
            if (i3 != Integer.MIN_VALUE) {
                this.f2110a = i3;
            }
            if (i2 != Integer.MIN_VALUE) {
                this.f2111b = i2;
                return;
            }
            return;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f2110a = i2;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.f2111b = i3;
        }
    }

    public void a(boolean z) {
        if (z != this.f2116g) {
            this.f2116g = z;
            if (!this.f2117h) {
                this.f2110a = this.f2114e;
                this.f2111b = this.f2115f;
            } else if (z) {
                int i2 = this.f2113d;
                if (i2 == Integer.MIN_VALUE) {
                    i2 = this.f2114e;
                }
                this.f2110a = i2;
                int i3 = this.f2112c;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = this.f2115f;
                }
                this.f2111b = i3;
            } else {
                int i4 = this.f2112c;
                if (i4 == Integer.MIN_VALUE) {
                    i4 = this.f2114e;
                }
                this.f2110a = i4;
                int i5 = this.f2113d;
                if (i5 == Integer.MIN_VALUE) {
                    i5 = this.f2115f;
                }
                this.f2111b = i5;
            }
        }
    }
}
