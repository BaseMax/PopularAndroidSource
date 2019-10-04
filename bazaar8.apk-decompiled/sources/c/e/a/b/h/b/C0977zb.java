package c.e.a.b.h.b;

/* renamed from: c.e.a.b.h.b.zb  reason: case insensitive filesystem */
public abstract class C0977zb extends _a {

    /* renamed from: b  reason: collision with root package name */
    public boolean f11116b;

    public C0977zb(Y y) {
        super(y);
        this.f11077a.b(this);
    }

    public void A() {
    }

    public final boolean v() {
        return this.f11116b;
    }

    public final void w() {
        if (!v()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void x() {
        if (this.f11116b) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!z()) {
            this.f11077a.w();
            this.f11116b = true;
        }
    }

    public final void y() {
        if (!this.f11116b) {
            A();
            this.f11077a.w();
            this.f11116b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public abstract boolean z();
}
