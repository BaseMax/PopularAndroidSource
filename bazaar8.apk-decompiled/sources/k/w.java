package k;

/* compiled from: Segment */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f15767a;

    /* renamed from: b  reason: collision with root package name */
    public int f15768b;

    /* renamed from: c  reason: collision with root package name */
    public int f15769c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f15770d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f15771e;

    /* renamed from: f  reason: collision with root package name */
    public w f15772f;

    /* renamed from: g  reason: collision with root package name */
    public w f15773g;

    public w() {
        this.f15767a = new byte[8192];
        this.f15771e = true;
        this.f15770d = false;
    }

    public final w a(w wVar) {
        wVar.f15773g = this;
        wVar.f15772f = this.f15772f;
        this.f15772f.f15773g = wVar;
        this.f15772f = wVar;
        return wVar;
    }

    public final w b() {
        w wVar = this.f15772f;
        if (wVar == this) {
            wVar = null;
        }
        w wVar2 = this.f15773g;
        wVar2.f15772f = this.f15772f;
        this.f15772f.f15773g = wVar2;
        this.f15772f = null;
        this.f15773g = null;
        return wVar;
    }

    public final w c() {
        this.f15770d = true;
        w wVar = new w(this.f15767a, this.f15768b, this.f15769c, true, false);
        return wVar;
    }

    public w(byte[] bArr, int i2, int i3, boolean z, boolean z2) {
        this.f15767a = bArr;
        this.f15768b = i2;
        this.f15769c = i3;
        this.f15770d = z;
        this.f15771e = z2;
    }

    public final w a(int i2) {
        w wVar;
        if (i2 <= 0 || i2 > this.f15769c - this.f15768b) {
            throw new IllegalArgumentException();
        }
        if (i2 >= 1024) {
            wVar = c();
        } else {
            wVar = x.a();
            System.arraycopy(this.f15767a, this.f15768b, wVar.f15767a, 0, i2);
        }
        wVar.f15769c = wVar.f15768b + i2;
        this.f15768b += i2;
        this.f15773g.a(wVar);
        return wVar;
    }

    public final void a() {
        w wVar = this.f15773g;
        if (wVar == this) {
            throw new IllegalStateException();
        } else if (wVar.f15771e) {
            int i2 = this.f15769c - this.f15768b;
            if (i2 <= (8192 - wVar.f15769c) + (wVar.f15770d ? 0 : wVar.f15768b)) {
                a(this.f15773g, i2);
                b();
                x.a(this);
            }
        }
    }

    public final void a(w wVar, int i2) {
        if (wVar.f15771e) {
            int i3 = wVar.f15769c;
            if (i3 + i2 > 8192) {
                if (!wVar.f15770d) {
                    int i4 = wVar.f15768b;
                    if ((i3 + i2) - i4 <= 8192) {
                        byte[] bArr = wVar.f15767a;
                        System.arraycopy(bArr, i4, bArr, 0, i3 - i4);
                        wVar.f15769c -= wVar.f15768b;
                        wVar.f15768b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f15767a, this.f15768b, wVar.f15767a, wVar.f15769c, i2);
            wVar.f15769c += i2;
            this.f15768b += i2;
            return;
        }
        throw new IllegalArgumentException();
    }
}
