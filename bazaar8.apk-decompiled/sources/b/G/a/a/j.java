package b.g.a.a;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import b.g.a.C0249e;

/* compiled from: Optimizer */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public static boolean[] f2411a = new boolean[3];

    public static void a(f fVar, C0249e eVar, ConstraintWidget constraintWidget) {
        if (fVar.E[0] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.E[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i2 = constraintWidget.u.f503e;
            int u = fVar.u() - constraintWidget.w.f503e;
            ConstraintAnchor constraintAnchor = constraintWidget.u;
            constraintAnchor.f508j = eVar.a((Object) constraintAnchor);
            ConstraintAnchor constraintAnchor2 = constraintWidget.w;
            constraintAnchor2.f508j = eVar.a((Object) constraintAnchor2);
            eVar.a(constraintWidget.u.f508j, i2);
            eVar.a(constraintWidget.w.f508j, u);
            constraintWidget.f513b = 2;
            constraintWidget.a(i2, u);
        }
        if (fVar.E[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.E[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i3 = constraintWidget.v.f503e;
            int j2 = fVar.j() - constraintWidget.x.f503e;
            ConstraintAnchor constraintAnchor3 = constraintWidget.v;
            constraintAnchor3.f508j = eVar.a((Object) constraintAnchor3);
            ConstraintAnchor constraintAnchor4 = constraintWidget.x;
            constraintAnchor4.f508j = eVar.a((Object) constraintAnchor4);
            eVar.a(constraintWidget.v.f508j, i3);
            eVar.a(constraintWidget.x.f508j, j2);
            if (constraintWidget.S > 0 || constraintWidget.t() == 8) {
                ConstraintAnchor constraintAnchor5 = constraintWidget.y;
                constraintAnchor5.f508j = eVar.a((Object) constraintAnchor5);
                eVar.a(constraintWidget.y.f508j, constraintWidget.S + i3);
            }
            constraintWidget.f514c = 2;
            constraintWidget.d(i3, j2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x003b A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(androidx.constraintlayout.solver.widgets.ConstraintWidget r5, int r6) {
        /*
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r0 = r5.E
            r1 = r0[r6]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r2 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            r3 = 0
            if (r1 == r2) goto L_0x000a
            return r3
        L_0x000a:
            float r1 = r5.I
            r2 = 0
            r4 = 1
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 == 0) goto L_0x001d
            if (r6 != 0) goto L_0x0015
            goto L_0x0016
        L_0x0015:
            r4 = 0
        L_0x0016:
            r5 = r0[r4]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r6 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r5 != r6) goto L_0x001c
        L_0x001c:
            return r3
        L_0x001d:
            if (r6 != 0) goto L_0x002d
            int r6 = r5.f517f
            if (r6 == 0) goto L_0x0024
            return r3
        L_0x0024:
            int r6 = r5.f520i
            if (r6 != 0) goto L_0x002c
            int r5 = r5.f521j
            if (r5 == 0) goto L_0x003b
        L_0x002c:
            return r3
        L_0x002d:
            int r6 = r5.f518g
            if (r6 == 0) goto L_0x0032
            return r3
        L_0x0032:
            int r6 = r5.f523l
            if (r6 != 0) goto L_0x003c
            int r5 = r5.m
            if (r5 == 0) goto L_0x003b
            goto L_0x003c
        L_0x003b:
            return r4
        L_0x003c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: b.g.a.a.j.a(androidx.constraintlayout.solver.widgets.ConstraintWidget, int):boolean");
    }

    public static void a(int i2, ConstraintWidget constraintWidget) {
        ConstraintWidget constraintWidget2 = constraintWidget;
        constraintWidget.H();
        l d2 = constraintWidget2.u.d();
        l d3 = constraintWidget2.v.d();
        l d4 = constraintWidget2.w.d();
        l d5 = constraintWidget2.x.d();
        boolean z = (i2 & 8) == 8;
        boolean z2 = constraintWidget2.E[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && a(constraintWidget2, 0);
        if (!(d2.f2418i == 4 || d4.f2418i == 4)) {
            if (constraintWidget2.E[0] == ConstraintWidget.DimensionBehaviour.FIXED || (z2 && constraintWidget.t() == 8)) {
                if (constraintWidget2.u.f502d == null && constraintWidget2.w.f502d == null) {
                    d2.b(1);
                    d4.b(1);
                    if (z) {
                        d4.a(d2, 1, constraintWidget.o());
                    } else {
                        d4.a(d2, constraintWidget.u());
                    }
                } else if (constraintWidget2.u.f502d != null && constraintWidget2.w.f502d == null) {
                    d2.b(1);
                    d4.b(1);
                    if (z) {
                        d4.a(d2, 1, constraintWidget.o());
                    } else {
                        d4.a(d2, constraintWidget.u());
                    }
                } else if (constraintWidget2.u.f502d == null && constraintWidget2.w.f502d != null) {
                    d2.b(1);
                    d4.b(1);
                    d2.a(d4, -constraintWidget.u());
                    if (z) {
                        d2.a(d4, -1, constraintWidget.o());
                    } else {
                        d2.a(d4, -constraintWidget.u());
                    }
                } else if (!(constraintWidget2.u.f502d == null || constraintWidget2.w.f502d == null)) {
                    d2.b(2);
                    d4.b(2);
                    if (z) {
                        constraintWidget.o().a(d2);
                        constraintWidget.o().a(d4);
                        d2.b(d4, -1, constraintWidget.o());
                        d4.b(d2, 1, constraintWidget.o());
                    } else {
                        d2.b(d4, (float) (-constraintWidget.u()));
                        d4.b(d2, (float) constraintWidget.u());
                    }
                }
            } else if (z2) {
                int u = constraintWidget.u();
                d2.b(1);
                d4.b(1);
                if (constraintWidget2.u.f502d == null && constraintWidget2.w.f502d == null) {
                    if (z) {
                        d4.a(d2, 1, constraintWidget.o());
                    } else {
                        d4.a(d2, u);
                    }
                } else if (constraintWidget2.u.f502d == null || constraintWidget2.w.f502d != null) {
                    if (constraintWidget2.u.f502d != null || constraintWidget2.w.f502d == null) {
                        if (!(constraintWidget2.u.f502d == null || constraintWidget2.w.f502d == null)) {
                            if (z) {
                                constraintWidget.o().a(d2);
                                constraintWidget.o().a(d4);
                            }
                            if (constraintWidget2.I == 0.0f) {
                                d2.b(3);
                                d4.b(3);
                                d2.b(d4, 0.0f);
                                d4.b(d2, 0.0f);
                            } else {
                                d2.b(2);
                                d4.b(2);
                                d2.b(d4, (float) (-u));
                                d4.b(d2, (float) u);
                                constraintWidget2.k(u);
                            }
                        }
                    } else if (z) {
                        d2.a(d4, -1, constraintWidget.o());
                    } else {
                        d2.a(d4, -u);
                    }
                } else if (z) {
                    d4.a(d2, 1, constraintWidget.o());
                } else {
                    d4.a(d2, u);
                }
            }
        }
        boolean z3 = constraintWidget2.E[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && a(constraintWidget2, 1);
        if (d3.f2418i != 4 && d5.f2418i != 4) {
            if (constraintWidget2.E[1] == ConstraintWidget.DimensionBehaviour.FIXED || (z3 && constraintWidget.t() == 8)) {
                if (constraintWidget2.v.f502d == null && constraintWidget2.x.f502d == null) {
                    d3.b(1);
                    d5.b(1);
                    if (z) {
                        d5.a(d3, 1, constraintWidget.n());
                    } else {
                        d5.a(d3, constraintWidget.j());
                    }
                    ConstraintAnchor constraintAnchor = constraintWidget2.y;
                    if (constraintAnchor.f502d != null) {
                        constraintAnchor.d().b(1);
                        d3.a(1, constraintWidget2.y.d(), -constraintWidget2.S);
                    }
                } else if (constraintWidget2.v.f502d != null && constraintWidget2.x.f502d == null) {
                    d3.b(1);
                    d5.b(1);
                    if (z) {
                        d5.a(d3, 1, constraintWidget.n());
                    } else {
                        d5.a(d3, constraintWidget.j());
                    }
                    if (constraintWidget2.S > 0) {
                        constraintWidget2.y.d().a(1, d3, constraintWidget2.S);
                    }
                } else if (constraintWidget2.v.f502d == null && constraintWidget2.x.f502d != null) {
                    d3.b(1);
                    d5.b(1);
                    if (z) {
                        d3.a(d5, -1, constraintWidget.n());
                    } else {
                        d3.a(d5, -constraintWidget.j());
                    }
                    if (constraintWidget2.S > 0) {
                        constraintWidget2.y.d().a(1, d3, constraintWidget2.S);
                    }
                } else if (constraintWidget2.v.f502d != null && constraintWidget2.x.f502d != null) {
                    d3.b(2);
                    d5.b(2);
                    if (z) {
                        d3.b(d5, -1, constraintWidget.n());
                        d5.b(d3, 1, constraintWidget.n());
                        constraintWidget.n().a(d3);
                        constraintWidget.o().a(d5);
                    } else {
                        d3.b(d5, (float) (-constraintWidget.j()));
                        d5.b(d3, (float) constraintWidget.j());
                    }
                    if (constraintWidget2.S > 0) {
                        constraintWidget2.y.d().a(1, d3, constraintWidget2.S);
                    }
                }
            } else if (z3) {
                int j2 = constraintWidget.j();
                d3.b(1);
                d5.b(1);
                if (constraintWidget2.v.f502d == null && constraintWidget2.x.f502d == null) {
                    if (z) {
                        d5.a(d3, 1, constraintWidget.n());
                    } else {
                        d5.a(d3, j2);
                    }
                } else if (constraintWidget2.v.f502d == null || constraintWidget2.x.f502d != null) {
                    if (constraintWidget2.v.f502d != null || constraintWidget2.x.f502d == null) {
                        if (constraintWidget2.v.f502d != null && constraintWidget2.x.f502d != null) {
                            if (z) {
                                constraintWidget.n().a(d3);
                                constraintWidget.o().a(d5);
                            }
                            if (constraintWidget2.I == 0.0f) {
                                d3.b(3);
                                d5.b(3);
                                d3.b(d5, 0.0f);
                                d5.b(d3, 0.0f);
                                return;
                            }
                            d3.b(2);
                            d5.b(2);
                            d3.b(d5, (float) (-j2));
                            d5.b(d3, (float) j2);
                            constraintWidget2.c(j2);
                            if (constraintWidget2.S > 0) {
                                constraintWidget2.y.d().a(1, d3, constraintWidget2.S);
                            }
                        }
                    } else if (z) {
                        d3.a(d5, -1, constraintWidget.n());
                    } else {
                        d3.a(d5, -j2);
                    }
                } else if (z) {
                    d5.a(d3, 1, constraintWidget.n());
                } else {
                    d5.a(d3, j2);
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0030, code lost:
        if (r6.ga == 2) goto L_0x0032;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0034, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0046, code lost:
        if (r6.ha == 2) goto L_0x0032;
     */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x00ea  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x00ed  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(b.g.a.a.f r20, b.g.a.C0249e r21, int r22, int r23, b.g.a.a.c r24) {
        /*
            r0 = r21
            r1 = r24
            androidx.constraintlayout.solver.widgets.ConstraintWidget r2 = r1.f2395a
            androidx.constraintlayout.solver.widgets.ConstraintWidget r3 = r1.f2397c
            androidx.constraintlayout.solver.widgets.ConstraintWidget r4 = r1.f2396b
            androidx.constraintlayout.solver.widgets.ConstraintWidget r5 = r1.f2398d
            androidx.constraintlayout.solver.widgets.ConstraintWidget r6 = r1.f2399e
            float r7 = r1.f2405k
            androidx.constraintlayout.solver.widgets.ConstraintWidget r8 = r1.f2400f
            androidx.constraintlayout.solver.widgets.ConstraintWidget r1 = r1.f2401g
            r8 = r20
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r1 = r8.E
            r1 = r1[r22]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r8 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            r1 = 2
            r9 = 1
            if (r22 != 0) goto L_0x0036
            int r10 = r6.ga
            if (r10 != 0) goto L_0x0026
            r10 = 1
            goto L_0x0027
        L_0x0026:
            r10 = 0
        L_0x0027:
            int r11 = r6.ga
            if (r11 != r9) goto L_0x002d
            r11 = 1
            goto L_0x002e
        L_0x002d:
            r11 = 0
        L_0x002e:
            int r6 = r6.ga
            if (r6 != r1) goto L_0x0034
        L_0x0032:
            r1 = 1
            goto L_0x0049
        L_0x0034:
            r1 = 0
            goto L_0x0049
        L_0x0036:
            int r10 = r6.ha
            if (r10 != 0) goto L_0x003c
            r10 = 1
            goto L_0x003d
        L_0x003c:
            r10 = 0
        L_0x003d:
            int r11 = r6.ha
            if (r11 != r9) goto L_0x0043
            r11 = 1
            goto L_0x0044
        L_0x0043:
            r11 = 0
        L_0x0044:
            int r6 = r6.ha
            if (r6 != r1) goto L_0x0034
            goto L_0x0032
        L_0x0049:
            r13 = r2
            r6 = 0
            r12 = 0
            r14 = 0
            r15 = 0
            r16 = 0
        L_0x0050:
            if (r12 != 0) goto L_0x00f3
            int r9 = r13.t()
            r8 = 8
            if (r9 == r8) goto L_0x008d
            int r14 = r14 + 1
            if (r22 != 0) goto L_0x0063
            int r9 = r13.u()
            goto L_0x0067
        L_0x0063:
            int r9 = r13.j()
        L_0x0067:
            float r9 = (float) r9
            float r15 = r15 + r9
            if (r13 == r4) goto L_0x0075
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r13.C
            r9 = r9[r23]
            int r9 = r9.b()
            float r9 = (float) r9
            float r15 = r15 + r9
        L_0x0075:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r13.C
            r9 = r9[r23]
            int r9 = r9.b()
            float r9 = (float) r9
            float r16 = r16 + r9
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r13.C
            int r17 = r23 + 1
            r9 = r9[r17]
            int r9 = r9.b()
            float r9 = (float) r9
            float r16 = r16 + r9
        L_0x008d:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r13.C
            r9 = r9[r23]
            int r9 = r13.t()
            if (r9 == r8) goto L_0x00c2
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r8 = r13.E
            r8 = r8[r22]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r9 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r8 != r9) goto L_0x00c2
            int r6 = r6 + 1
            if (r22 != 0) goto L_0x00b3
            int r8 = r13.f517f
            if (r8 == 0) goto L_0x00a9
            r8 = 0
            return r8
        L_0x00a9:
            r8 = 0
            int r9 = r13.f520i
            if (r9 != 0) goto L_0x00b2
            int r9 = r13.f521j
            if (r9 == 0) goto L_0x00c2
        L_0x00b2:
            return r8
        L_0x00b3:
            r8 = 0
            int r9 = r13.f518g
            if (r9 == 0) goto L_0x00b9
            return r8
        L_0x00b9:
            int r9 = r13.f523l
            if (r9 != 0) goto L_0x00c1
            int r9 = r13.m
            if (r9 == 0) goto L_0x00c2
        L_0x00c1:
            return r8
        L_0x00c2:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r13.C
            int r9 = r23 + 1
            r8 = r8[r9]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r8.f502d
            if (r8 == 0) goto L_0x00e4
            androidx.constraintlayout.solver.widgets.ConstraintWidget r8 = r8.f500b
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r8.C
            r18 = r6
            r6 = r9[r23]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r6 = r6.f502d
            if (r6 == 0) goto L_0x00e6
            r6 = r9[r23]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r6 = r6.f502d
            androidx.constraintlayout.solver.widgets.ConstraintWidget r6 = r6.f500b
            if (r6 == r13) goto L_0x00e1
            goto L_0x00e6
        L_0x00e1:
            r17 = r8
            goto L_0x00e8
        L_0x00e4:
            r18 = r6
        L_0x00e6:
            r17 = 0
        L_0x00e8:
            if (r17 == 0) goto L_0x00ed
            r13 = r17
            goto L_0x00ee
        L_0x00ed:
            r12 = 1
        L_0x00ee:
            r6 = r18
            r9 = 1
            goto L_0x0050
        L_0x00f3:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r2.C
            r8 = r8[r23]
            b.g.a.a.l r8 = r8.d()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r3.C
            int r9 = r23 + 1
            r3 = r3[r9]
            b.g.a.a.l r3 = r3.d()
            b.g.a.a.l r12 = r8.f2414e
            if (r12 == 0) goto L_0x033b
            r17 = r2
            b.g.a.a.l r2 = r3.f2414e
            if (r2 != 0) goto L_0x0111
            goto L_0x033b
        L_0x0111:
            int r12 = r12.f2424b
            r0 = 1
            if (r12 == r0) goto L_0x011c
            int r2 = r2.f2424b
            if (r2 == r0) goto L_0x011c
            r0 = 0
            return r0
        L_0x011c:
            r0 = 0
            if (r6 <= 0) goto L_0x0122
            if (r6 == r14) goto L_0x0122
            return r0
        L_0x0122:
            if (r1 != 0) goto L_0x012b
            if (r10 != 0) goto L_0x012b
            if (r11 == 0) goto L_0x0129
            goto L_0x012b
        L_0x0129:
            r0 = 0
            goto L_0x0144
        L_0x012b:
            if (r4 == 0) goto L_0x0137
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r4.C
            r0 = r0[r23]
            int r0 = r0.b()
            float r0 = (float) r0
            goto L_0x0138
        L_0x0137:
            r0 = 0
        L_0x0138:
            if (r5 == 0) goto L_0x0144
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r5.C
            r2 = r2[r9]
            int r2 = r2.b()
            float r2 = (float) r2
            float r0 = r0 + r2
        L_0x0144:
            b.g.a.a.l r2 = r8.f2414e
            float r2 = r2.f2417h
            b.g.a.a.l r3 = r3.f2414e
            float r3 = r3.f2417h
            int r12 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r12 >= 0) goto L_0x0152
            float r3 = r3 - r2
            goto L_0x0154
        L_0x0152:
            float r3 = r2 - r3
        L_0x0154:
            float r3 = r3 - r15
            r18 = 1
            if (r6 <= 0) goto L_0x0213
            if (r6 != r14) goto L_0x0213
            androidx.constraintlayout.solver.widgets.ConstraintWidget r1 = r13.m()
            if (r1 == 0) goto L_0x016f
            androidx.constraintlayout.solver.widgets.ConstraintWidget r1 = r13.m()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r1 = r1.E
            r1 = r1[r22]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r11 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r1 != r11) goto L_0x016f
            r1 = 0
            return r1
        L_0x016f:
            float r3 = r3 + r15
            float r3 = r3 - r16
            if (r10 == 0) goto L_0x0178
            float r16 = r16 - r0
            float r3 = r3 - r16
        L_0x0178:
            if (r10 == 0) goto L_0x0194
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r4.C
            r0 = r0[r9]
            int r0 = r0.b()
            float r0 = (float) r0
            float r2 = r2 + r0
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r0 = r4.ma
            r0 = r0[r22]
            if (r0 == 0) goto L_0x0194
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r0.C
            r0 = r0[r23]
            int r0 = r0.b()
            float r0 = (float) r0
            float r2 = r2 + r0
        L_0x0194:
            if (r4 == 0) goto L_0x0211
            b.g.a.f r0 = b.g.a.C0249e.f2444b
            if (r0 == 0) goto L_0x01ac
            long r10 = r0.z
            long r10 = r10 - r18
            r0.z = r10
            long r10 = r0.r
            long r10 = r10 + r18
            r0.r = r10
            long r10 = r0.x
            long r10 = r10 + r18
            r0.x = r10
        L_0x01ac:
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r0 = r4.ma
            r0 = r0[r22]
            if (r0 != 0) goto L_0x01b9
            if (r4 != r5) goto L_0x01b5
            goto L_0x01b9
        L_0x01b5:
            r12 = r21
            r10 = 0
            goto L_0x020f
        L_0x01b9:
            float r1 = (float) r6
            float r1 = r3 / r1
            r10 = 0
            int r11 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1))
            if (r11 <= 0) goto L_0x01c8
            float[] r1 = r4.ka
            r1 = r1[r22]
            float r1 = r1 * r3
            float r1 = r1 / r7
        L_0x01c8:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r11 = r4.C
            r11 = r11[r23]
            int r11 = r11.b()
            float r11 = (float) r11
            float r2 = r2 + r11
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r11 = r4.C
            r11 = r11[r23]
            b.g.a.a.l r11 = r11.d()
            b.g.a.a.l r12 = r8.f2416g
            r11.a((b.g.a.a.l) r12, (float) r2)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r11 = r4.C
            r11 = r11[r9]
            b.g.a.a.l r11 = r11.d()
            b.g.a.a.l r12 = r8.f2416g
            float r2 = r2 + r1
            r11.a((b.g.a.a.l) r12, (float) r2)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r4.C
            r1 = r1[r23]
            b.g.a.a.l r1 = r1.d()
            r12 = r21
            r1.a((b.g.a.C0249e) r12)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r4.C
            r1 = r1[r9]
            b.g.a.a.l r1 = r1.d()
            r1.a((b.g.a.C0249e) r12)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r4.C
            r1 = r1[r9]
            int r1 = r1.b()
            float r1 = (float) r1
            float r2 = r2 + r1
        L_0x020f:
            r4 = r0
            goto L_0x0194
        L_0x0211:
            r0 = 1
            return r0
        L_0x0213:
            r12 = r21
            int r6 = (r3 > r15 ? 1 : (r3 == r15 ? 0 : -1))
            if (r6 >= 0) goto L_0x021b
            r6 = 0
            return r6
        L_0x021b:
            if (r1 == 0) goto L_0x0298
            float r3 = r3 - r0
            float r0 = r17.k()
            float r3 = r3 * r0
            float r2 = r2 + r3
        L_0x0225:
            if (r4 == 0) goto L_0x029d
            b.g.a.f r0 = b.g.a.C0249e.f2444b
            if (r0 == 0) goto L_0x023d
            long r6 = r0.z
            long r6 = r6 - r18
            r0.z = r6
            long r6 = r0.r
            long r6 = r6 + r18
            r0.r = r6
            long r6 = r0.x
            long r6 = r6 + r18
            r0.x = r6
        L_0x023d:
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r0 = r4.ma
            r0 = r0[r22]
            if (r0 != 0) goto L_0x0245
            if (r4 != r5) goto L_0x0296
        L_0x0245:
            if (r22 != 0) goto L_0x024c
            int r1 = r4.u()
            goto L_0x0250
        L_0x024c:
            int r1 = r4.j()
        L_0x0250:
            float r1 = (float) r1
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r4.C
            r3 = r3[r23]
            int r3 = r3.b()
            float r3 = (float) r3
            float r2 = r2 + r3
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r4.C
            r3 = r3[r23]
            b.g.a.a.l r3 = r3.d()
            b.g.a.a.l r6 = r8.f2416g
            r3.a((b.g.a.a.l) r6, (float) r2)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r4.C
            r3 = r3[r9]
            b.g.a.a.l r3 = r3.d()
            b.g.a.a.l r6 = r8.f2416g
            float r2 = r2 + r1
            r3.a((b.g.a.a.l) r6, (float) r2)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r4.C
            r1 = r1[r23]
            b.g.a.a.l r1 = r1.d()
            r1.a((b.g.a.C0249e) r12)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r4.C
            r1 = r1[r9]
            b.g.a.a.l r1 = r1.d()
            r1.a((b.g.a.C0249e) r12)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r4.C
            r1 = r1[r9]
            int r1 = r1.b()
            float r1 = (float) r1
            float r2 = r2 + r1
        L_0x0296:
            r4 = r0
            goto L_0x0225
        L_0x0298:
            if (r10 != 0) goto L_0x02a0
            if (r11 == 0) goto L_0x029d
            goto L_0x02a0
        L_0x029d:
            r0 = 1
            goto L_0x033a
        L_0x02a0:
            if (r10 == 0) goto L_0x02a4
        L_0x02a2:
            float r3 = r3 - r0
            goto L_0x02a7
        L_0x02a4:
            if (r11 == 0) goto L_0x02a7
            goto L_0x02a2
        L_0x02a7:
            int r0 = r14 + 1
            float r0 = (float) r0
            float r0 = r3 / r0
            if (r11 == 0) goto L_0x02b9
            r1 = 1
            if (r14 <= r1) goto L_0x02b5
            int r0 = r14 + -1
            float r0 = (float) r0
            goto L_0x02b7
        L_0x02b5:
            r0 = 1073741824(0x40000000, float:2.0)
        L_0x02b7:
            float r0 = r3 / r0
        L_0x02b9:
            float r1 = r2 + r0
            if (r11 == 0) goto L_0x02ca
            r3 = 1
            if (r14 <= r3) goto L_0x02ca
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r4.C
            r1 = r1[r23]
            int r1 = r1.b()
            float r1 = (float) r1
            float r1 = r1 + r2
        L_0x02ca:
            if (r10 == 0) goto L_0x02d8
            if (r4 == 0) goto L_0x02d8
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r4.C
            r2 = r2[r23]
            int r2 = r2.b()
            float r2 = (float) r2
            float r1 = r1 + r2
        L_0x02d8:
            if (r4 == 0) goto L_0x029d
            b.g.a.f r2 = b.g.a.C0249e.f2444b
            if (r2 == 0) goto L_0x02f0
            long r6 = r2.z
            long r6 = r6 - r18
            r2.z = r6
            long r6 = r2.r
            long r6 = r6 + r18
            r2.r = r6
            long r6 = r2.x
            long r6 = r6 + r18
            r2.x = r6
        L_0x02f0:
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r2 = r4.ma
            r2 = r2[r22]
            if (r2 != 0) goto L_0x02f8
            if (r4 != r5) goto L_0x0338
        L_0x02f8:
            if (r22 != 0) goto L_0x02ff
            int r3 = r4.u()
            goto L_0x0303
        L_0x02ff:
            int r3 = r4.j()
        L_0x0303:
            float r3 = (float) r3
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r4.C
            r6 = r6[r23]
            b.g.a.a.l r6 = r6.d()
            b.g.a.a.l r7 = r8.f2416g
            r6.a((b.g.a.a.l) r7, (float) r1)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r4.C
            r6 = r6[r9]
            b.g.a.a.l r6 = r6.d()
            b.g.a.a.l r7 = r8.f2416g
            float r10 = r1 + r3
            r6.a((b.g.a.a.l) r7, (float) r10)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r4.C
            r6 = r6[r23]
            b.g.a.a.l r6 = r6.d()
            r6.a((b.g.a.C0249e) r12)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r4 = r4.C
            r4 = r4[r9]
            b.g.a.a.l r4 = r4.d()
            r4.a((b.g.a.C0249e) r12)
            float r3 = r3 + r0
            float r1 = r1 + r3
        L_0x0338:
            r4 = r2
            goto L_0x02d8
        L_0x033a:
            return r0
        L_0x033b:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.g.a.a.j.a(b.g.a.a.f, b.g.a.e, int, int, b.g.a.a.c):boolean");
    }
}
