package c.b.a.g.a;

import c.b.a.i.k;

@Deprecated
/* compiled from: SimpleTarget */
public abstract class f<Z> extends a<Z> {

    /* renamed from: b  reason: collision with root package name */
    public final int f4365b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4366c;

    public f() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public void a(g gVar) {
    }

    public final void b(g gVar) {
        if (k.b(this.f4365b, this.f4366c)) {
            gVar.a(this.f4365b, this.f4366c);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f4365b + " and height: " + this.f4366c + ", either provide dimensions in the constructor or call override()");
    }

    public f(int i2, int i3) {
        this.f4365b = i2;
        this.f4366c = i3;
    }
}
