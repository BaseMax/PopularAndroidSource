package c.e.a.b.h.b;

public abstract class Sb extends Rb {

    /* renamed from: c  reason: collision with root package name */
    public boolean f10732c;

    public Sb(Tb tb) {
        super(tb);
        this.f10729b.b(this);
    }

    public final boolean r() {
        return this.f10732c;
    }

    public final void s() {
        if (!r()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void t() {
        if (!this.f10732c) {
            u();
            this.f10729b.A();
            this.f10732c = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public abstract boolean u();
}
