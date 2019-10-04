package b.g.a.a;

/* compiled from: ResolutionDimension */
public class m extends n {

    /* renamed from: c  reason: collision with root package name */
    public float f2422c = 0.0f;

    public void a(int i2) {
        if (this.f2424b == 0 || this.f2422c != ((float) i2)) {
            this.f2422c = (float) i2;
            if (this.f2424b == 1) {
                b();
            }
            a();
        }
    }

    public void d() {
        super.d();
        this.f2422c = 0.0f;
    }

    public void f() {
        this.f2424b = 2;
    }
}
