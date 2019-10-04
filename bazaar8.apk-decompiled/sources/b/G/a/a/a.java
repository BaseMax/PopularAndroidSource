package b.g.a.a;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import b.g.a.C0249e;
import java.util.ArrayList;

/* compiled from: Barrier */
public class a extends i {
    public int ra = 0;
    public ArrayList<l> sa = new ArrayList<>(4);
    public boolean ta = true;

    public void E() {
        super.E();
        this.sa.clear();
    }

    public void F() {
        l lVar;
        float f2;
        l lVar2;
        int i2 = this.ra;
        float f3 = Float.MAX_VALUE;
        if (i2 != 0) {
            if (i2 == 1) {
                lVar = this.w.d();
            } else if (i2 == 2) {
                lVar = this.v.d();
            } else if (i2 == 3) {
                lVar = this.x.d();
            } else {
                return;
            }
            f3 = 0.0f;
        } else {
            lVar = this.u.d();
        }
        int size = this.sa.size();
        l lVar3 = null;
        int i3 = 0;
        while (i3 < size) {
            l lVar4 = this.sa.get(i3);
            if (lVar4.f2424b == 1) {
                int i4 = this.ra;
                if (i4 == 0 || i4 == 2) {
                    f2 = lVar4.f2417h;
                    if (f2 < f3) {
                        lVar2 = lVar4.f2416g;
                    } else {
                        i3++;
                    }
                } else {
                    f2 = lVar4.f2417h;
                    if (f2 > f3) {
                        lVar2 = lVar4.f2416g;
                    } else {
                        i3++;
                    }
                }
                lVar3 = lVar2;
                f3 = f2;
                i3++;
            } else {
                return;
            }
        }
        if (C0249e.f() != null) {
            C0249e.f().y++;
        }
        lVar.f2416g = lVar3;
        lVar.f2417h = f3;
        lVar.a();
        int i5 = this.ra;
        if (i5 == 0) {
            this.w.d().a(lVar3, f3);
        } else if (i5 == 1) {
            this.u.d().a(lVar3, f3);
        } else if (i5 == 2) {
            this.x.d().a(lVar3, f3);
        } else if (i5 == 3) {
            this.v.d().a(lVar3, f3);
        }
    }

    public void a(int i2) {
        l lVar;
        l lVar2;
        ConstraintWidget constraintWidget = this.F;
        if (constraintWidget != null && ((f) constraintWidget).p(2)) {
            int i3 = this.ra;
            if (i3 == 0) {
                lVar = this.u.d();
            } else if (i3 == 1) {
                lVar = this.w.d();
            } else if (i3 == 2) {
                lVar = this.v.d();
            } else if (i3 == 3) {
                lVar = this.x.d();
            } else {
                return;
            }
            lVar.b(5);
            int i4 = this.ra;
            if (i4 == 0 || i4 == 1) {
                this.v.d().a((l) null, 0.0f);
                this.x.d().a((l) null, 0.0f);
            } else {
                this.u.d().a((l) null, 0.0f);
                this.w.d().a((l) null, 0.0f);
            }
            this.sa.clear();
            for (int i5 = 0; i5 < this.qa; i5++) {
                ConstraintWidget constraintWidget2 = this.pa[i5];
                if (this.ta || constraintWidget2.b()) {
                    int i6 = this.ra;
                    if (i6 == 0) {
                        lVar2 = constraintWidget2.u.d();
                    } else if (i6 == 1) {
                        lVar2 = constraintWidget2.w.d();
                    } else if (i6 == 2) {
                        lVar2 = constraintWidget2.v.d();
                    } else if (i6 != 3) {
                        lVar2 = null;
                    } else {
                        lVar2 = constraintWidget2.x.d();
                    }
                    if (lVar2 != null) {
                        this.sa.add(lVar2);
                        lVar2.a(lVar);
                    }
                }
            }
        }
    }

    public boolean b() {
        return true;
    }

    public void c(boolean z) {
        this.ta = z;
    }

    public void p(int i2) {
        this.ra = i2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0054, code lost:
        r1 = true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(b.g.a.C0249e r11) {
        /*
            r10 = this;
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r10.C
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r10.u
            r2 = 0
            r0[r2] = r1
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r10.v
            r3 = 2
            r0[r3] = r1
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r10.w
            r4 = 1
            r0[r4] = r1
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r10.x
            r5 = 3
            r0[r5] = r1
            r0 = 0
        L_0x0017:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r10.C
            int r6 = r1.length
            if (r0 >= r6) goto L_0x0029
            r6 = r1[r0]
            r1 = r1[r0]
            androidx.constraintlayout.solver.SolverVariable r1 = r11.a((java.lang.Object) r1)
            r6.f508j = r1
            int r0 = r0 + 1
            goto L_0x0017
        L_0x0029:
            int r0 = r10.ra
            if (r0 < 0) goto L_0x013a
            r6 = 4
            if (r0 >= r6) goto L_0x013a
            r0 = r1[r0]
            r1 = 0
        L_0x0033:
            int r6 = r10.qa
            if (r1 >= r6) goto L_0x0068
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r6 = r10.pa
            r6 = r6[r1]
            boolean r7 = r10.ta
            if (r7 != 0) goto L_0x0046
            boolean r7 = r6.b()
            if (r7 != 0) goto L_0x0046
            goto L_0x0065
        L_0x0046:
            int r7 = r10.ra
            if (r7 == 0) goto L_0x004c
            if (r7 != r4) goto L_0x0056
        L_0x004c:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r7 = r6.l()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r8 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r7 != r8) goto L_0x0056
        L_0x0054:
            r1 = 1
            goto L_0x0069
        L_0x0056:
            int r7 = r10.ra
            if (r7 == r3) goto L_0x005c
            if (r7 != r5) goto L_0x0065
        L_0x005c:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r6 = r6.s()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r7 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r6 != r7) goto L_0x0065
            goto L_0x0054
        L_0x0065:
            int r1 = r1 + 1
            goto L_0x0033
        L_0x0068:
            r1 = 0
        L_0x0069:
            int r6 = r10.ra
            if (r6 == 0) goto L_0x007d
            if (r6 != r4) goto L_0x0070
            goto L_0x007d
        L_0x0070:
            androidx.constraintlayout.solver.widgets.ConstraintWidget r6 = r10.m()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r6 = r6.s()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r7 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r6 != r7) goto L_0x008a
            goto L_0x0089
        L_0x007d:
            androidx.constraintlayout.solver.widgets.ConstraintWidget r6 = r10.m()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r6 = r6.l()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r7 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r6 != r7) goto L_0x008a
        L_0x0089:
            r1 = 0
        L_0x008a:
            r6 = 0
        L_0x008b:
            int r7 = r10.qa
            if (r6 >= r7) goto L_0x00c3
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r7 = r10.pa
            r7 = r7[r6]
            boolean r8 = r10.ta
            if (r8 != 0) goto L_0x009e
            boolean r8 = r7.b()
            if (r8 != 0) goto L_0x009e
            goto L_0x00c0
        L_0x009e:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r7.C
            int r9 = r10.ra
            r8 = r8[r9]
            androidx.constraintlayout.solver.SolverVariable r8 = r11.a((java.lang.Object) r8)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r7 = r7.C
            int r9 = r10.ra
            r7 = r7[r9]
            r7.f508j = r8
            if (r9 == 0) goto L_0x00bb
            if (r9 != r3) goto L_0x00b5
            goto L_0x00bb
        L_0x00b5:
            androidx.constraintlayout.solver.SolverVariable r7 = r0.f508j
            r11.a((androidx.constraintlayout.solver.SolverVariable) r7, (androidx.constraintlayout.solver.SolverVariable) r8, (boolean) r1)
            goto L_0x00c0
        L_0x00bb:
            androidx.constraintlayout.solver.SolverVariable r7 = r0.f508j
            r11.b(r7, r8, r1)
        L_0x00c0:
            int r6 = r6 + 1
            goto L_0x008b
        L_0x00c3:
            int r0 = r10.ra
            r6 = 5
            r7 = 6
            if (r0 != 0) goto L_0x00e4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r10.w
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r10.u
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            r11.a((androidx.constraintlayout.solver.SolverVariable) r0, (androidx.constraintlayout.solver.SolverVariable) r3, (int) r2, (int) r7)
            if (r1 != 0) goto L_0x013a
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r10.u
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            androidx.constraintlayout.solver.widgets.ConstraintWidget r1 = r10.F
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.w
            androidx.constraintlayout.solver.SolverVariable r1 = r1.f508j
            r11.a((androidx.constraintlayout.solver.SolverVariable) r0, (androidx.constraintlayout.solver.SolverVariable) r1, (int) r2, (int) r6)
            goto L_0x013a
        L_0x00e4:
            if (r0 != r4) goto L_0x0101
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r10.u
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r10.w
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            r11.a((androidx.constraintlayout.solver.SolverVariable) r0, (androidx.constraintlayout.solver.SolverVariable) r3, (int) r2, (int) r7)
            if (r1 != 0) goto L_0x013a
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r10.u
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            androidx.constraintlayout.solver.widgets.ConstraintWidget r1 = r10.F
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.u
            androidx.constraintlayout.solver.SolverVariable r1 = r1.f508j
            r11.a((androidx.constraintlayout.solver.SolverVariable) r0, (androidx.constraintlayout.solver.SolverVariable) r1, (int) r2, (int) r6)
            goto L_0x013a
        L_0x0101:
            if (r0 != r3) goto L_0x011e
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r10.x
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r10.v
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            r11.a((androidx.constraintlayout.solver.SolverVariable) r0, (androidx.constraintlayout.solver.SolverVariable) r3, (int) r2, (int) r7)
            if (r1 != 0) goto L_0x013a
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r10.v
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            androidx.constraintlayout.solver.widgets.ConstraintWidget r1 = r10.F
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.x
            androidx.constraintlayout.solver.SolverVariable r1 = r1.f508j
            r11.a((androidx.constraintlayout.solver.SolverVariable) r0, (androidx.constraintlayout.solver.SolverVariable) r1, (int) r2, (int) r6)
            goto L_0x013a
        L_0x011e:
            if (r0 != r5) goto L_0x013a
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r10.v
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r10.x
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            r11.a((androidx.constraintlayout.solver.SolverVariable) r0, (androidx.constraintlayout.solver.SolverVariable) r3, (int) r2, (int) r7)
            if (r1 != 0) goto L_0x013a
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r10.v
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            androidx.constraintlayout.solver.widgets.ConstraintWidget r1 = r10.F
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.v
            androidx.constraintlayout.solver.SolverVariable r1 = r1.f508j
            r11.a((androidx.constraintlayout.solver.SolverVariable) r0, (androidx.constraintlayout.solver.SolverVariable) r1, (int) r2, (int) r6)
        L_0x013a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.g.a.a.a.a(b.g.a.e):void");
    }
}
