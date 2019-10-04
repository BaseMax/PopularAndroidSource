package c.e.a.b.h.b;

/* renamed from: c.e.a.b.h.b.va  reason: case insensitive filesystem */
public abstract class C0964va extends C0961ua {

    /* renamed from: b  reason: collision with root package name */
    public boolean f11087b;

    public C0964va(Y y) {
        super(y);
        this.f11077a.b(this);
    }

    public final boolean n() {
        return this.f11087b;
    }

    public final void o() {
        if (!n()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void p() {
        if (this.f11087b) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!r()) {
            this.f11077a.w();
            this.f11087b = true;
        }
    }

    public final void q() {
        if (!this.f11087b) {
            s();
            this.f11077a.w();
            this.f11087b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public abstract boolean r();

    public void s() {
    }
}
