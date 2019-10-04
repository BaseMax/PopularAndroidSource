package c.e.a.a.c;

/* compiled from: Buffer */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public int f7522a;

    public final void b(int i2) {
        this.f7522a = i2 | this.f7522a;
    }

    public final void c(int i2) {
        this.f7522a = (i2 ^ -1) & this.f7522a;
    }

    public final boolean d(int i2) {
        return (this.f7522a & i2) == i2;
    }

    public final void e(int i2) {
        this.f7522a = i2;
    }

    public void g() {
        this.f7522a = 0;
    }

    public final boolean h() {
        return d(Integer.MIN_VALUE);
    }

    public final boolean i() {
        return d(4);
    }

    public final boolean j() {
        return d(1);
    }
}
