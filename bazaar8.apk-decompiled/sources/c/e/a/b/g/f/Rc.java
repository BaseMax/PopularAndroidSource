package c.e.a.b.g.f;

import c.e.a.b.g.f.Rc;

public abstract class Rc<M extends Rc<M>> extends Wc {

    /* renamed from: b  reason: collision with root package name */
    public Tc f10213b;

    public int a() {
        if (this.f10213b == null) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f10213b.b(); i3++) {
            i2 += this.f10213b.c(i3).b();
        }
        return i2;
    }

    public final /* synthetic */ Wc c() {
        return (Rc) clone();
    }

    public /* synthetic */ Object clone() {
        Rc rc = (Rc) super.clone();
        Vc.a(this, rc);
        return rc;
    }

    public void a(Qc qc) {
        if (this.f10213b != null) {
            for (int i2 = 0; i2 < this.f10213b.b(); i2++) {
                this.f10213b.c(i2).a(qc);
            }
        }
    }

    public final boolean a(Pc pc, int i2) {
        int a2 = pc.a();
        if (!pc.c(i2)) {
            return false;
        }
        int i3 = i2 >>> 3;
        Yc yc = new Yc(i2, pc.a(a2, pc.a() - a2));
        Uc uc = null;
        Tc tc = this.f10213b;
        if (tc == null) {
            this.f10213b = new Tc();
        } else {
            uc = tc.b(i3);
        }
        if (uc == null) {
            uc = new Uc();
            this.f10213b.a(i3, uc);
        }
        uc.a(yc);
        return true;
    }
}
