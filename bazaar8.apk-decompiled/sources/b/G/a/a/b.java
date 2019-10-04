package b.g.a.a;

import b.g.a.C0249e;

/* compiled from: Chain */
public class b {
    public static void a(f fVar, C0249e eVar, int i2) {
        int i3;
        c[] cVarArr;
        int i4;
        if (i2 == 0) {
            int i5 = fVar.xa;
            cVarArr = fVar.Aa;
            i3 = i5;
            i4 = 0;
        } else {
            i4 = 2;
            int i6 = fVar.ya;
            i3 = i6;
            cVarArr = fVar.za;
        }
        for (int i7 = 0; i7 < i3; i7++) {
            c cVar = cVarArr[i7];
            cVar.a();
            if (!fVar.p(4)) {
                a(fVar, eVar, i2, i4, cVar);
            } else if (!j.a(fVar, eVar, i2, i4, cVar)) {
                a(fVar, eVar, i2, i4, cVar);
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r20v0, resolved type: androidx.constraintlayout.solver.SolverVariable} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r20v1, resolved type: androidx.constraintlayout.solver.SolverVariable} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r20v2, resolved type: androidx.constraintlayout.solver.widgets.ConstraintWidget} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r20v3, resolved type: androidx.constraintlayout.solver.SolverVariable} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r20v4, resolved type: androidx.constraintlayout.solver.widgets.ConstraintWidget} */
    /* JADX WARNING: type inference failed for: r4v11, types: [androidx.constraintlayout.solver.SolverVariable] */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0035, code lost:
        if (r2.ga == 2) goto L_0x004a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0048, code lost:
        if (r2.ha == 2) goto L_0x004a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004c, code lost:
        r5 = false;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:195:0x0369  */
    /* JADX WARNING: Removed duplicated region for block: B:235:0x041e  */
    /* JADX WARNING: Removed duplicated region for block: B:247:0x0474  */
    /* JADX WARNING: Removed duplicated region for block: B:248:0x0477  */
    /* JADX WARNING: Removed duplicated region for block: B:251:0x047d  */
    /* JADX WARNING: Removed duplicated region for block: B:252:0x0480  */
    /* JADX WARNING: Removed duplicated region for block: B:254:0x0484  */
    /* JADX WARNING: Removed duplicated region for block: B:258:0x0493  */
    /* JADX WARNING: Removed duplicated region for block: B:260:0x0496  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x014f  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x016b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(b.g.a.a.f r35, b.g.a.C0249e r36, int r37, int r38, b.g.a.a.c r39) {
        /*
            r0 = r35
            r9 = r36
            r1 = r39
            androidx.constraintlayout.solver.widgets.ConstraintWidget r10 = r1.f2395a
            androidx.constraintlayout.solver.widgets.ConstraintWidget r11 = r1.f2397c
            androidx.constraintlayout.solver.widgets.ConstraintWidget r12 = r1.f2396b
            androidx.constraintlayout.solver.widgets.ConstraintWidget r13 = r1.f2398d
            androidx.constraintlayout.solver.widgets.ConstraintWidget r2 = r1.f2399e
            float r3 = r1.f2405k
            androidx.constraintlayout.solver.widgets.ConstraintWidget r4 = r1.f2400f
            androidx.constraintlayout.solver.widgets.ConstraintWidget r4 = r1.f2401g
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r4 = r0.E
            r4 = r4[r37]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r5 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            r7 = 1
            if (r4 != r5) goto L_0x0021
            r4 = 1
            goto L_0x0022
        L_0x0021:
            r4 = 0
        L_0x0022:
            r5 = 2
            if (r37 != 0) goto L_0x0038
            int r8 = r2.ga
            if (r8 != 0) goto L_0x002b
            r8 = 1
            goto L_0x002c
        L_0x002b:
            r8 = 0
        L_0x002c:
            int r14 = r2.ga
            if (r14 != r7) goto L_0x0032
            r14 = 1
            goto L_0x0033
        L_0x0032:
            r14 = 0
        L_0x0033:
            int r15 = r2.ga
            if (r15 != r5) goto L_0x004c
            goto L_0x004a
        L_0x0038:
            int r8 = r2.ha
            if (r8 != 0) goto L_0x003e
            r8 = 1
            goto L_0x003f
        L_0x003e:
            r8 = 0
        L_0x003f:
            int r14 = r2.ha
            if (r14 != r7) goto L_0x0045
            r14 = 1
            goto L_0x0046
        L_0x0045:
            r14 = 0
        L_0x0046:
            int r15 = r2.ha
            if (r15 != r5) goto L_0x004c
        L_0x004a:
            r5 = 1
            goto L_0x004d
        L_0x004c:
            r5 = 0
        L_0x004d:
            r15 = r8
            r8 = r10
            r16 = r14
            r14 = r5
            r5 = 0
        L_0x0053:
            r20 = 0
            if (r5 != 0) goto L_0x0124
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r8.C
            r6 = r6[r38]
            if (r4 != 0) goto L_0x0063
            if (r14 == 0) goto L_0x0060
            goto L_0x0063
        L_0x0060:
            r22 = 4
            goto L_0x0065
        L_0x0063:
            r22 = 1
        L_0x0065:
            int r23 = r6.b()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r7 = r6.f502d
            if (r7 == 0) goto L_0x0075
            if (r8 == r10) goto L_0x0075
            int r7 = r7.b()
            int r23 = r23 + r7
        L_0x0075:
            r7 = r23
            if (r14 == 0) goto L_0x0083
            if (r8 == r10) goto L_0x0083
            if (r8 == r12) goto L_0x0083
            r23 = r3
            r22 = r5
            r3 = 6
            goto L_0x0093
        L_0x0083:
            if (r15 == 0) goto L_0x008d
            if (r4 == 0) goto L_0x008d
            r23 = r3
            r22 = r5
            r3 = 4
            goto L_0x0093
        L_0x008d:
            r23 = r3
            r3 = r22
            r22 = r5
        L_0x0093:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r6.f502d
            if (r5 == 0) goto L_0x00bc
            if (r8 != r12) goto L_0x00a6
            r24 = r15
            androidx.constraintlayout.solver.SolverVariable r15 = r6.f508j
            androidx.constraintlayout.solver.SolverVariable r5 = r5.f508j
            r25 = r2
            r2 = 5
            r9.b(r15, r5, r7, r2)
            goto L_0x00b2
        L_0x00a6:
            r25 = r2
            r24 = r15
            androidx.constraintlayout.solver.SolverVariable r2 = r6.f508j
            androidx.constraintlayout.solver.SolverVariable r5 = r5.f508j
            r15 = 6
            r9.b(r2, r5, r7, r15)
        L_0x00b2:
            androidx.constraintlayout.solver.SolverVariable r2 = r6.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r6.f502d
            androidx.constraintlayout.solver.SolverVariable r5 = r5.f508j
            r9.a((androidx.constraintlayout.solver.SolverVariable) r2, (androidx.constraintlayout.solver.SolverVariable) r5, (int) r7, (int) r3)
            goto L_0x00c0
        L_0x00bc:
            r25 = r2
            r24 = r15
        L_0x00c0:
            if (r4 == 0) goto L_0x00f5
            int r2 = r8.t()
            r3 = 8
            if (r2 == r3) goto L_0x00e4
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r2 = r8.E
            r2 = r2[r37]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r2 != r3) goto L_0x00e4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r8.C
            int r3 = r38 + 1
            r3 = r2[r3]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            r2 = r2[r38]
            androidx.constraintlayout.solver.SolverVariable r2 = r2.f508j
            r5 = 5
            r6 = 0
            r9.b(r3, r2, r6, r5)
            goto L_0x00e5
        L_0x00e4:
            r6 = 0
        L_0x00e5:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r8.C
            r2 = r2[r38]
            androidx.constraintlayout.solver.SolverVariable r2 = r2.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r0.C
            r3 = r3[r38]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            r5 = 6
            r9.b(r2, r3, r6, r5)
        L_0x00f5:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r8.C
            int r3 = r38 + 1
            r2 = r2[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r2.f502d
            if (r2 == 0) goto L_0x0114
            androidx.constraintlayout.solver.widgets.ConstraintWidget r2 = r2.f500b
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r2.C
            r5 = r3[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r5.f502d
            if (r5 == 0) goto L_0x0114
            r3 = r3[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r3.f502d
            androidx.constraintlayout.solver.widgets.ConstraintWidget r3 = r3.f500b
            if (r3 == r8) goto L_0x0112
            goto L_0x0114
        L_0x0112:
            r20 = r2
        L_0x0114:
            if (r20 == 0) goto L_0x011b
            r8 = r20
            r5 = r22
            goto L_0x011c
        L_0x011b:
            r5 = 1
        L_0x011c:
            r3 = r23
            r15 = r24
            r2 = r25
            goto L_0x0053
        L_0x0124:
            r25 = r2
            r23 = r3
            r24 = r15
            if (r13 == 0) goto L_0x014c
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r11.C
            int r3 = r38 + 1
            r5 = r2[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r5.f502d
            if (r5 == 0) goto L_0x014c
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r5 = r13.C
            r5 = r5[r3]
            androidx.constraintlayout.solver.SolverVariable r6 = r5.f508j
            r2 = r2[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r2.f502d
            androidx.constraintlayout.solver.SolverVariable r2 = r2.f508j
            int r3 = r5.b()
            int r3 = -r3
            r7 = 5
            r9.c(r6, r2, r3, r7)
            goto L_0x014d
        L_0x014c:
            r7 = 5
        L_0x014d:
            if (r4 == 0) goto L_0x0167
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r0.C
            int r2 = r38 + 1
            r0 = r0[r2]
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r11.C
            r4 = r3[r2]
            androidx.constraintlayout.solver.SolverVariable r4 = r4.f508j
            r2 = r3[r2]
            int r2 = r2.b()
            r3 = 6
            r9.b(r0, r4, r2, r3)
        L_0x0167:
            java.util.ArrayList<androidx.constraintlayout.solver.widgets.ConstraintWidget> r0 = r1.f2402h
            if (r0 == 0) goto L_0x0216
            int r2 = r0.size()
            r3 = 1
            if (r2 <= r3) goto L_0x0216
            boolean r4 = r1.n
            if (r4 == 0) goto L_0x017e
            boolean r4 = r1.p
            if (r4 != 0) goto L_0x017e
            int r4 = r1.f2404j
            float r4 = (float) r4
            goto L_0x0180
        L_0x017e:
            r4 = r23
        L_0x0180:
            r5 = 0
            r8 = r20
            r6 = 0
            r27 = 0
        L_0x0186:
            if (r6 >= r2) goto L_0x0216
            java.lang.Object r15 = r0.get(r6)
            androidx.constraintlayout.solver.widgets.ConstraintWidget r15 = (androidx.constraintlayout.solver.widgets.ConstraintWidget) r15
            float[] r3 = r15.ka
            r3 = r3[r37]
            int r22 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r22 >= 0) goto L_0x01b2
            boolean r3 = r1.p
            if (r3 == 0) goto L_0x01ad
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r15.C
            int r15 = r38 + 1
            r15 = r3[r15]
            androidx.constraintlayout.solver.SolverVariable r15 = r15.f508j
            r3 = r3[r38]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            r5 = 0
            r7 = 4
            r9.a((androidx.constraintlayout.solver.SolverVariable) r15, (androidx.constraintlayout.solver.SolverVariable) r3, (int) r5, (int) r7)
            r7 = 6
            goto L_0x01c8
        L_0x01ad:
            r7 = 4
            r3 = 1065353216(0x3f800000, float:1.0)
            r5 = 0
            goto L_0x01b3
        L_0x01b2:
            r7 = 4
        L_0x01b3:
            int r19 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r19 != 0) goto L_0x01cd
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r15.C
            int r15 = r38 + 1
            r15 = r3[r15]
            androidx.constraintlayout.solver.SolverVariable r15 = r15.f508j
            r3 = r3[r38]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            r5 = 0
            r7 = 6
            r9.a((androidx.constraintlayout.solver.SolverVariable) r15, (androidx.constraintlayout.solver.SolverVariable) r3, (int) r5, (int) r7)
        L_0x01c8:
            r23 = r0
            r21 = r2
            goto L_0x020b
        L_0x01cd:
            r5 = 0
            r7 = 6
            if (r8 == 0) goto L_0x0204
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r8.C
            r5 = r8[r38]
            androidx.constraintlayout.solver.SolverVariable r5 = r5.f508j
            int r21 = r38 + 1
            r8 = r8[r21]
            androidx.constraintlayout.solver.SolverVariable r8 = r8.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r7 = r15.C
            r23 = r0
            r0 = r7[r38]
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            r7 = r7[r21]
            androidx.constraintlayout.solver.SolverVariable r7 = r7.f508j
            r21 = r2
            b.g.a.b r2 = r36.c()
            r26 = r2
            r28 = r4
            r29 = r3
            r30 = r5
            r31 = r8
            r32 = r0
            r33 = r7
            r26.a((float) r27, (float) r28, (float) r29, (androidx.constraintlayout.solver.SolverVariable) r30, (androidx.constraintlayout.solver.SolverVariable) r31, (androidx.constraintlayout.solver.SolverVariable) r32, (androidx.constraintlayout.solver.SolverVariable) r33)
            r9.a((b.g.a.C0246b) r2)
            goto L_0x0208
        L_0x0204:
            r23 = r0
            r21 = r2
        L_0x0208:
            r27 = r3
            r8 = r15
        L_0x020b:
            int r6 = r6 + 1
            r2 = r21
            r0 = r23
            r3 = 1
            r5 = 0
            r7 = 5
            goto L_0x0186
        L_0x0216:
            if (r12 == 0) goto L_0x0278
            if (r12 == r13) goto L_0x021c
            if (r14 == 0) goto L_0x0278
        L_0x021c:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r10.C
            r1 = r0[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r11.C
            int r3 = r38 + 1
            r2 = r2[r3]
            r4 = r0[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r4 = r4.f502d
            if (r4 == 0) goto L_0x0234
            r0 = r0[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f502d
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            r4 = r0
            goto L_0x0236
        L_0x0234:
            r4 = r20
        L_0x0236:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r11.C
            r5 = r0[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r5.f502d
            if (r5 == 0) goto L_0x0246
            r0 = r0[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f502d
            androidx.constraintlayout.solver.SolverVariable r0 = r0.f508j
            r5 = r0
            goto L_0x0248
        L_0x0246:
            r5 = r20
        L_0x0248:
            if (r12 != r13) goto L_0x0250
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r12.C
            r1 = r0[r38]
            r2 = r0[r3]
        L_0x0250:
            if (r4 == 0) goto L_0x0460
            if (r5 == 0) goto L_0x0460
            if (r37 != 0) goto L_0x025b
            r0 = r25
            float r0 = r0.X
            goto L_0x025f
        L_0x025b:
            r0 = r25
            float r0 = r0.Y
        L_0x025f:
            r6 = r0
            int r3 = r1.b()
            int r7 = r2.b()
            androidx.constraintlayout.solver.SolverVariable r1 = r1.f508j
            androidx.constraintlayout.solver.SolverVariable r8 = r2.f508j
            r10 = 5
            r0 = r36
            r2 = r4
            r4 = r6
            r6 = r8
            r8 = r10
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
            goto L_0x0460
        L_0x0278:
            if (r24 == 0) goto L_0x0350
            if (r12 == 0) goto L_0x0350
            int r0 = r1.f2404j
            if (r0 <= 0) goto L_0x0287
            int r1 = r1.f2403i
            if (r1 != r0) goto L_0x0287
            r17 = 1
            goto L_0x0289
        L_0x0287:
            r17 = 0
        L_0x0289:
            r0 = r12
            r14 = r0
        L_0x028b:
            if (r14 == 0) goto L_0x0460
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r1 = r14.ma
            r15 = r1[r37]
            if (r15 != 0) goto L_0x029c
            if (r14 != r13) goto L_0x0296
            goto L_0x029c
        L_0x0296:
            r19 = 4
            r22 = 6
            goto L_0x034c
        L_0x029c:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r14.C
            r1 = r1[r38]
            androidx.constraintlayout.solver.SolverVariable r2 = r1.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r1.f502d
            if (r3 == 0) goto L_0x02a9
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            goto L_0x02ab
        L_0x02a9:
            r3 = r20
        L_0x02ab:
            if (r0 == r14) goto L_0x02b6
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r0.C
            int r4 = r38 + 1
            r3 = r3[r4]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            goto L_0x02cb
        L_0x02b6:
            if (r14 != r12) goto L_0x02cb
            if (r0 != r14) goto L_0x02cb
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r10.C
            r4 = r3[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r4 = r4.f502d
            if (r4 == 0) goto L_0x02c9
            r3 = r3[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r3.f502d
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            goto L_0x02cb
        L_0x02c9:
            r3 = r20
        L_0x02cb:
            int r1 = r1.b()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r4 = r14.C
            int r5 = r38 + 1
            r4 = r4[r5]
            int r4 = r4.b()
            if (r15 == 0) goto L_0x02e8
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r15.C
            r6 = r6[r38]
            androidx.constraintlayout.solver.SolverVariable r7 = r6.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r14.C
            r8 = r8[r5]
            androidx.constraintlayout.solver.SolverVariable r8 = r8.f508j
            goto L_0x02fb
        L_0x02e8:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r11.C
            r6 = r6[r5]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r6 = r6.f502d
            if (r6 == 0) goto L_0x02f3
            androidx.constraintlayout.solver.SolverVariable r7 = r6.f508j
            goto L_0x02f5
        L_0x02f3:
            r7 = r20
        L_0x02f5:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r14.C
            r8 = r8[r5]
            androidx.constraintlayout.solver.SolverVariable r8 = r8.f508j
        L_0x02fb:
            if (r6 == 0) goto L_0x0302
            int r6 = r6.b()
            int r4 = r4 + r6
        L_0x0302:
            if (r0 == 0) goto L_0x030d
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r0.C
            r0 = r0[r5]
            int r0 = r0.b()
            int r1 = r1 + r0
        L_0x030d:
            if (r2 == 0) goto L_0x0296
            if (r3 == 0) goto L_0x0296
            if (r7 == 0) goto L_0x0296
            if (r8 == 0) goto L_0x0296
            if (r14 != r12) goto L_0x0321
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r12.C
            r0 = r0[r38]
            int r0 = r0.b()
            r6 = r0
            goto L_0x0322
        L_0x0321:
            r6 = r1
        L_0x0322:
            if (r14 != r13) goto L_0x032f
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r13.C
            r0 = r0[r5]
            int r0 = r0.b()
            r18 = r0
            goto L_0x0331
        L_0x032f:
            r18 = r4
        L_0x0331:
            if (r17 == 0) goto L_0x0336
            r21 = 6
            goto L_0x0338
        L_0x0336:
            r21 = 4
        L_0x0338:
            r4 = 1056964608(0x3f000000, float:0.5)
            r0 = r36
            r1 = r2
            r2 = r3
            r3 = r6
            r5 = r7
            r19 = 4
            r22 = 6
            r6 = r8
            r7 = r18
            r8 = r21
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
        L_0x034c:
            r0 = r14
            r14 = r15
            goto L_0x028b
        L_0x0350:
            r19 = 4
            r22 = 6
            if (r16 == 0) goto L_0x0460
            if (r12 == 0) goto L_0x0460
            int r0 = r1.f2404j
            if (r0 <= 0) goto L_0x0363
            int r1 = r1.f2403i
            if (r1 != r0) goto L_0x0363
            r17 = 1
            goto L_0x0365
        L_0x0363:
            r17 = 0
        L_0x0365:
            r0 = r12
            r14 = r0
        L_0x0367:
            if (r14 == 0) goto L_0x0405
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r1 = r14.ma
            r1 = r1[r37]
            if (r14 == r12) goto L_0x03fc
            if (r14 == r13) goto L_0x03fc
            if (r1 == 0) goto L_0x03fc
            if (r1 != r13) goto L_0x0378
            r15 = r20
            goto L_0x0379
        L_0x0378:
            r15 = r1
        L_0x0379:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r14.C
            r1 = r1[r38]
            androidx.constraintlayout.solver.SolverVariable r2 = r1.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r1.f502d
            if (r3 == 0) goto L_0x0385
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
        L_0x0385:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r0.C
            int r4 = r38 + 1
            r3 = r3[r4]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            int r1 = r1.b()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r5 = r14.C
            r5 = r5[r4]
            int r5 = r5.b()
            if (r15 == 0) goto L_0x03ab
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r15.C
            r6 = r6[r38]
            androidx.constraintlayout.solver.SolverVariable r7 = r6.f508j
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r6.f502d
            if (r8 == 0) goto L_0x03a8
            androidx.constraintlayout.solver.SolverVariable r8 = r8.f508j
            goto L_0x03be
        L_0x03a8:
            r8 = r20
            goto L_0x03be
        L_0x03ab:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r14.C
            r6 = r6[r4]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r6 = r6.f502d
            if (r6 == 0) goto L_0x03b6
            androidx.constraintlayout.solver.SolverVariable r7 = r6.f508j
            goto L_0x03b8
        L_0x03b6:
            r7 = r20
        L_0x03b8:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r14.C
            r8 = r8[r4]
            androidx.constraintlayout.solver.SolverVariable r8 = r8.f508j
        L_0x03be:
            if (r6 == 0) goto L_0x03c5
            int r6 = r6.b()
            int r5 = r5 + r6
        L_0x03c5:
            r18 = r5
            if (r0 == 0) goto L_0x03d2
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r0.C
            r0 = r0[r4]
            int r0 = r0.b()
            int r1 = r1 + r0
        L_0x03d2:
            r4 = r1
            if (r17 == 0) goto L_0x03d8
            r21 = 6
            goto L_0x03da
        L_0x03d8:
            r21 = 4
        L_0x03da:
            if (r2 == 0) goto L_0x03f8
            if (r3 == 0) goto L_0x03f8
            if (r7 == 0) goto L_0x03f8
            if (r8 == 0) goto L_0x03f8
            r5 = 1056964608(0x3f000000, float:0.5)
            r0 = r36
            r1 = r2
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r7
            r6 = r8
            r8 = 5
            r7 = r18
            r35 = r14
            r14 = 5
            r8 = r21
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
            goto L_0x0400
        L_0x03f8:
            r35 = r14
            r14 = 5
            goto L_0x0400
        L_0x03fc:
            r35 = r14
            r14 = 5
            r15 = r1
        L_0x0400:
            r0 = r35
            r14 = r15
            goto L_0x0367
        L_0x0405:
            r14 = 5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r12.C
            r0 = r0[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r10.C
            r1 = r1[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.f502d
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r13.C
            int r3 = r38 + 1
            r10 = r2[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r11.C
            r2 = r2[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r15 = r2.f502d
            if (r1 == 0) goto L_0x0450
            if (r12 == r13) goto L_0x042c
            androidx.constraintlayout.solver.SolverVariable r2 = r0.f508j
            androidx.constraintlayout.solver.SolverVariable r1 = r1.f508j
            int r0 = r0.b()
            r9.a((androidx.constraintlayout.solver.SolverVariable) r2, (androidx.constraintlayout.solver.SolverVariable) r1, (int) r0, (int) r14)
            goto L_0x0450
        L_0x042c:
            if (r15 == 0) goto L_0x0450
            androidx.constraintlayout.solver.SolverVariable r2 = r0.f508j
            androidx.constraintlayout.solver.SolverVariable r3 = r1.f508j
            int r4 = r0.b()
            r5 = 1056964608(0x3f000000, float:0.5)
            androidx.constraintlayout.solver.SolverVariable r6 = r10.f508j
            androidx.constraintlayout.solver.SolverVariable r7 = r15.f508j
            int r8 = r10.b()
            r17 = 5
            r0 = r36
            r1 = r2
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r17
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
        L_0x0450:
            if (r15 == 0) goto L_0x0460
            if (r12 == r13) goto L_0x0460
            androidx.constraintlayout.solver.SolverVariable r0 = r10.f508j
            androidx.constraintlayout.solver.SolverVariable r1 = r15.f508j
            int r2 = r10.b()
            int r2 = -r2
            r9.a((androidx.constraintlayout.solver.SolverVariable) r0, (androidx.constraintlayout.solver.SolverVariable) r1, (int) r2, (int) r14)
        L_0x0460:
            if (r24 != 0) goto L_0x0464
            if (r16 == 0) goto L_0x04c6
        L_0x0464:
            if (r12 == 0) goto L_0x04c6
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r12.C
            r0 = r0[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r13.C
            int r2 = r38 + 1
            r1 = r1[r2]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r0.f502d
            if (r3 == 0) goto L_0x0477
            androidx.constraintlayout.solver.SolverVariable r3 = r3.f508j
            goto L_0x0479
        L_0x0477:
            r3 = r20
        L_0x0479:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r4 = r1.f502d
            if (r4 == 0) goto L_0x0480
            androidx.constraintlayout.solver.SolverVariable r4 = r4.f508j
            goto L_0x0482
        L_0x0480:
            r4 = r20
        L_0x0482:
            if (r11 == r13) goto L_0x0493
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r4 = r11.C
            r4 = r4[r2]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r4 = r4.f502d
            if (r4 == 0) goto L_0x0490
            androidx.constraintlayout.solver.SolverVariable r4 = r4.f508j
            r20 = r4
        L_0x0490:
            r5 = r20
            goto L_0x0494
        L_0x0493:
            r5 = r4
        L_0x0494:
            if (r12 != r13) goto L_0x04a1
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r12.C
            r1 = r0[r38]
            r0 = r0[r2]
            r34 = r1
            r1 = r0
            r0 = r34
        L_0x04a1:
            if (r3 == 0) goto L_0x04c6
            if (r5 == 0) goto L_0x04c6
            r4 = 1056964608(0x3f000000, float:0.5)
            int r6 = r0.b()
            if (r13 != 0) goto L_0x04ae
            goto L_0x04af
        L_0x04ae:
            r11 = r13
        L_0x04af:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r7 = r11.C
            r2 = r7[r2]
            int r7 = r2.b()
            androidx.constraintlayout.solver.SolverVariable r2 = r0.f508j
            androidx.constraintlayout.solver.SolverVariable r8 = r1.f508j
            r10 = 5
            r0 = r36
            r1 = r2
            r2 = r3
            r3 = r6
            r6 = r8
            r8 = r10
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
        L_0x04c6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.g.a.a.b.a(b.g.a.a.f, b.g.a.e, int, int, b.g.a.a.c):void");
    }
}
