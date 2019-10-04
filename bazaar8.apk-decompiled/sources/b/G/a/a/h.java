package b.g.a.a;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import b.g.a.C0249e;
import java.util.ArrayList;

/* compiled from: Guideline */
public class h extends ConstraintWidget {
    public float pa = -1.0f;
    public int qa = -1;
    public int ra = -1;
    public ConstraintAnchor sa = this.v;
    public int ta;
    public boolean ua;
    public int va;
    public k wa;
    public int xa;

    public h() {
        this.ta = 0;
        this.ua = false;
        this.va = 0;
        this.wa = new k();
        this.xa = 8;
        this.D.clear();
        this.D.add(this.sa);
        int length = this.C.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.C[i2] = this.sa;
        }
    }

    public int I() {
        return this.ta;
    }

    public ConstraintAnchor a(ConstraintAnchor.Type type) {
        switch (g.f2410a[type.ordinal()]) {
            case 1:
            case 2:
                if (this.ta == 1) {
                    return this.sa;
                }
                break;
            case 3:
            case 4:
                if (this.ta == 0) {
                    return this.sa;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
        }
        throw new AssertionError(type.name());
    }

    public boolean b() {
        return true;
    }

    public ArrayList<ConstraintAnchor> c() {
        return this.D;
    }

    public void e(float f2) {
        if (f2 > -1.0f) {
            this.pa = f2;
            this.qa = -1;
            this.ra = -1;
        }
    }

    public void p(int i2) {
        if (i2 > -1) {
            this.pa = -1.0f;
            this.qa = i2;
            this.ra = -1;
        }
    }

    public void q(int i2) {
        if (i2 > -1) {
            this.pa = -1.0f;
            this.qa = -1;
            this.ra = i2;
        }
    }

    public void r(int i2) {
        if (this.ta != i2) {
            this.ta = i2;
            this.D.clear();
            if (this.ta == 1) {
                this.sa = this.u;
            } else {
                this.sa = this.v;
            }
            this.D.add(this.sa);
            int length = this.C.length;
            for (int i3 = 0; i3 < length; i3++) {
                this.C[i3] = this.sa;
            }
        }
    }

    public void c(C0249e eVar) {
        if (m() != null) {
            int b2 = eVar.b((Object) this.sa);
            if (this.ta == 1) {
                n(b2);
                o(0);
                c(m().j());
                k(0);
            } else {
                n(0);
                o(b2);
                k(m().u());
                c(0);
            }
        }
    }

    public void a(int i2) {
        ConstraintWidget m = m();
        if (m != null) {
            if (I() == 1) {
                this.v.d().a(1, m.v.d(), 0);
                this.x.d().a(1, m.v.d(), 0);
                if (this.qa != -1) {
                    this.u.d().a(1, m.u.d(), this.qa);
                    this.w.d().a(1, m.u.d(), this.qa);
                } else if (this.ra != -1) {
                    this.u.d().a(1, m.w.d(), -this.ra);
                    this.w.d().a(1, m.w.d(), -this.ra);
                } else if (this.pa != -1.0f && m.l() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int i3 = (int) (((float) m.G) * this.pa);
                    this.u.d().a(1, m.u.d(), i3);
                    this.w.d().a(1, m.u.d(), i3);
                }
            } else {
                this.u.d().a(1, m.u.d(), 0);
                this.w.d().a(1, m.u.d(), 0);
                if (this.qa != -1) {
                    this.v.d().a(1, m.v.d(), this.qa);
                    this.x.d().a(1, m.v.d(), this.qa);
                } else if (this.ra != -1) {
                    this.v.d().a(1, m.x.d(), -this.ra);
                    this.x.d().a(1, m.x.d(), -this.ra);
                } else if (this.pa != -1.0f && m.s() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int i4 = (int) (((float) m.H) * this.pa);
                    this.v.d().a(1, m.v.d(), i4);
                    this.x.d().a(1, m.v.d(), i4);
                }
            }
        }
    }

    public void a(C0249e eVar) {
        f fVar = (f) m();
        if (fVar != null) {
            ConstraintAnchor a2 = fVar.a(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor a3 = fVar.a(ConstraintAnchor.Type.RIGHT);
            ConstraintWidget constraintWidget = this.F;
            boolean z = constraintWidget != null && constraintWidget.E[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (this.ta == 0) {
                a2 = fVar.a(ConstraintAnchor.Type.TOP);
                a3 = fVar.a(ConstraintAnchor.Type.BOTTOM);
                ConstraintWidget constraintWidget2 = this.F;
                z = constraintWidget2 != null && constraintWidget2.E[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            }
            if (this.qa != -1) {
                SolverVariable a4 = eVar.a((Object) this.sa);
                eVar.a(a4, eVar.a((Object) a2), this.qa, 6);
                if (z) {
                    eVar.b(eVar.a((Object) a3), a4, 0, 5);
                }
            } else if (this.ra != -1) {
                SolverVariable a5 = eVar.a((Object) this.sa);
                SolverVariable a6 = eVar.a((Object) a3);
                eVar.a(a5, a6, -this.ra, 6);
                if (z) {
                    eVar.b(a5, eVar.a((Object) a2), 0, 5);
                    eVar.b(a6, a5, 0, 5);
                }
            } else if (this.pa != -1.0f) {
                eVar.a(C0249e.a(eVar, eVar.a((Object) this.sa), eVar.a((Object) a2), eVar.a((Object) a3), this.pa, this.ua));
            }
        }
    }
}
