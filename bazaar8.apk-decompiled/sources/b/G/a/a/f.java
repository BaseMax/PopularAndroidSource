package b.g.a.a;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import b.g.a.C0249e;
import java.io.PrintStream;
import java.util.Arrays;

/* compiled from: ConstraintWidgetContainer */
public class f extends p {
    public c[] Aa = new c[4];
    public int Ba = 3;
    public boolean Ca = false;
    public boolean Da = false;
    public int Ea = 0;
    public boolean qa = false;
    public C0249e ra = new C0249e();
    public o sa;
    public int ta;
    public int ua;
    public int va;
    public int wa;
    public int xa = 0;
    public int ya = 0;
    public c[] za = new c[4];

    public void C() {
        this.ra.j();
        this.ta = 0;
        this.va = 0;
        this.ua = 0;
        this.wa = 0;
        super.C();
    }

    /* JADX WARNING: type inference failed for: r12v12, types: [boolean] */
    /* JADX WARNING: type inference failed for: r12v16 */
    /* JADX WARNING: type inference failed for: r12v17 */
    public void J() {
        boolean z;
        boolean z2;
        ? r12;
        int i2 = this.K;
        int i3 = this.L;
        char c2 = 0;
        int max = Math.max(0, u());
        int max2 = Math.max(0, j());
        this.Ca = false;
        this.Da = false;
        if (this.F != null) {
            if (this.sa == null) {
                this.sa = new o(this);
            }
            this.sa.b(this);
            n(this.ta);
            o(this.ua);
            D();
            a(this.ra.e());
        } else {
            this.K = 0;
            this.L = 0;
        }
        if (this.Ba != 0) {
            if (!p(8)) {
                R();
            }
            Q();
            this.ra.f2451i = true;
        } else {
            this.ra.f2451i = false;
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.E;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[1];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
        T();
        int size = this.pa.size();
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget = this.pa.get(i4);
            if (constraintWidget instanceof p) {
                ((p) constraintWidget).J();
            }
        }
        int i5 = 0;
        boolean z3 = true;
        boolean z4 = false;
        while (z3) {
            int i6 = i5 + 1;
            try {
                this.ra.j();
                b(this.ra);
                for (int i7 = 0; i7 < size; i7++) {
                    this.pa.get(i7).b(this.ra);
                }
                z3 = d(this.ra);
                if (z3) {
                    this.ra.h();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                PrintStream printStream = System.out;
                printStream.println("EXCEPTION : " + e2);
            }
            if (!z3) {
                c(this.ra);
                int i8 = 0;
                while (true) {
                    if (i8 >= size) {
                        break;
                    }
                    ConstraintWidget constraintWidget2 = this.pa.get(i8);
                    if (constraintWidget2.E[c2] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget2.u() >= constraintWidget2.w()) {
                        if (constraintWidget2.E[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget2.j() < constraintWidget2.v()) {
                            j.f2411a[2] = true;
                            break;
                        } else {
                            i8++;
                            c2 = 0;
                        }
                    } else {
                        j.f2411a[2] = true;
                        break;
                    }
                }
            } else {
                a(this.ra, j.f2411a);
            }
            if (i6 >= 8 || !j.f2411a[2]) {
                z = z4;
                z2 = false;
            } else {
                int i9 = 0;
                int i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    ConstraintWidget constraintWidget3 = this.pa.get(i11);
                    i9 = Math.max(i9, constraintWidget3.K + constraintWidget3.u());
                    i10 = Math.max(i10, constraintWidget3.L + constraintWidget3.j());
                }
                int max3 = Math.max(this.T, i9);
                int max4 = Math.max(this.U, i10);
                if (dimensionBehaviour2 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || u() >= max3) {
                    z2 = false;
                } else {
                    k(max3);
                    this.E[0] = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    z2 = true;
                    z4 = true;
                }
                if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || j() >= max4) {
                    z = z4;
                } else {
                    c(max4);
                    this.E[1] = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    z2 = true;
                    z = true;
                }
            }
            int max5 = Math.max(this.T, u());
            if (max5 > u()) {
                k(max5);
                this.E[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                z2 = true;
                z = true;
            }
            int max6 = Math.max(this.U, j());
            if (max6 > j()) {
                c(max6);
                r12 = 1;
                this.E[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                z2 = true;
                z = true;
            } else {
                r12 = 1;
            }
            if (!z) {
                if (this.E[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && max > 0 && u() > max) {
                    this.Ca = r12;
                    this.E[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                    k(max);
                    z2 = true;
                    z = true;
                }
                if (this.E[r12] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && max2 > 0 && j() > max2) {
                    this.Da = r12;
                    this.E[r12] = ConstraintWidget.DimensionBehaviour.FIXED;
                    c(max2);
                    z3 = true;
                    z4 = true;
                    i5 = i6;
                    c2 = 0;
                }
            }
            z3 = z2;
            z4 = z;
            i5 = i6;
            c2 = 0;
        }
        if (this.F != null) {
            int max7 = Math.max(this.T, u());
            int max8 = Math.max(this.U, j());
            this.sa.a(this);
            k(max7 + this.ta + this.va);
            c(max8 + this.ua + this.wa);
        } else {
            this.K = i2;
            this.L = i3;
        }
        if (z4) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.E;
            dimensionBehaviourArr2[0] = dimensionBehaviour2;
            dimensionBehaviourArr2[1] = dimensionBehaviour;
        }
        a(this.ra.e());
        if (this == I()) {
            G();
        }
    }

    public int L() {
        return this.Ba;
    }

    public boolean M() {
        return false;
    }

    public boolean N() {
        return this.Da;
    }

    public boolean O() {
        return this.qa;
    }

    public boolean P() {
        return this.Ca;
    }

    public void Q() {
        if (!p(8)) {
            a(this.Ba);
        }
        U();
    }

    public void R() {
        int size = this.pa.size();
        E();
        for (int i2 = 0; i2 < size; i2++) {
            this.pa.get(i2).E();
        }
    }

    public void S() {
        R();
        a(this.Ba);
    }

    public final void T() {
        this.xa = 0;
        this.ya = 0;
    }

    public void U() {
        l d2 = a(ConstraintAnchor.Type.LEFT).d();
        l d3 = a(ConstraintAnchor.Type.TOP).d();
        d2.a((l) null, 0.0f);
        d3.a((l) null, 0.0f);
    }

    public void a(C0249e eVar, boolean[] zArr) {
        zArr[2] = false;
        c(eVar);
        int size = this.pa.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.pa.get(i2);
            constraintWidget.c(eVar);
            if (constraintWidget.E[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.u() < constraintWidget.w()) {
                zArr[2] = true;
            }
            if (constraintWidget.E[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.j() < constraintWidget.v()) {
                zArr[2] = true;
            }
        }
    }

    public void c(boolean z) {
        this.qa = z;
    }

    public boolean d(C0249e eVar) {
        a(eVar);
        int size = this.pa.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.pa.get(i2);
            if (constraintWidget instanceof f) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.E;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.a(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.b(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                constraintWidget.a(eVar);
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.a(dimensionBehaviour);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.b(dimensionBehaviour2);
                }
            } else {
                j.a(this, eVar, constraintWidget);
                constraintWidget.a(eVar);
            }
        }
        if (this.xa > 0) {
            b.a(this, eVar, 0);
        }
        if (this.ya > 0) {
            b.a(this, eVar, 1);
        }
        return true;
    }

    public void e(int i2, int i3) {
        if (this.E[0] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            m mVar = this.f515d;
            if (mVar != null) {
                mVar.a(i2);
            }
        }
        if (this.E[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            m mVar2 = this.f516e;
            if (mVar2 != null) {
                mVar2.a(i3);
            }
        }
    }

    public boolean p(int i2) {
        return (this.Ba & i2) == i2;
    }

    public void q(int i2) {
        this.Ba = i2;
    }

    public final void e(ConstraintWidget constraintWidget) {
        int i2 = this.ya + 1;
        c[] cVarArr = this.za;
        if (i2 >= cVarArr.length) {
            this.za = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.za[this.ya] = new c(constraintWidget, 1, O());
        this.ya++;
    }

    public void a(int i2) {
        super.a(i2);
        int size = this.pa.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.pa.get(i3).a(i2);
        }
    }

    public void a(ConstraintWidget constraintWidget, int i2) {
        if (i2 == 0) {
            d(constraintWidget);
        } else if (i2 == 1) {
            e(constraintWidget);
        }
    }

    public final void d(ConstraintWidget constraintWidget) {
        int i2 = this.xa + 1;
        c[] cVarArr = this.Aa;
        if (i2 >= cVarArr.length) {
            this.Aa = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.Aa[this.xa] = new c(constraintWidget, 0, O());
        this.xa++;
    }
}
