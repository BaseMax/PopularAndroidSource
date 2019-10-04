package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;

class Chain {
    private static final boolean DEBUG = false;

    Chain() {
    }

    static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        int i2;
        ChainHead[] chainHeadArr;
        int i3;
        if (i == 0) {
            int i4 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i2 = i4;
            i3 = 0;
        } else {
            i3 = 2;
            int i5 = constraintWidgetContainer.mVerticalChainsSize;
            i2 = i5;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i6 = 0; i6 < i2; i6++) {
            ChainHead chainHead = chainHeadArr[i6];
            chainHead.define();
            if (!constraintWidgetContainer.optimizeFor(4) || !Optimizer.applyChainOptimized(constraintWidgetContainer, linearSystem, i, i3, chainHead)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i3, chainHead);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r2.mHorizontalChainStyle == 2) goto L_0x0046;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0044, code lost:
        if (r2.mVerticalChainStyle == 2) goto L_0x0046;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0048, code lost:
        r5 = false;
     */
    /* JADX WARNING: Removed duplicated region for block: B:189:0x038c  */
    /* JADX WARNING: Removed duplicated region for block: B:202:0x03ae  */
    /* JADX WARNING: Removed duplicated region for block: B:247:0x0478  */
    /* JADX WARNING: Removed duplicated region for block: B:252:0x04ad  */
    /* JADX WARNING: Removed duplicated region for block: B:261:0x04d2  */
    /* JADX WARNING: Removed duplicated region for block: B:262:0x04d7  */
    /* JADX WARNING: Removed duplicated region for block: B:265:0x04dd  */
    /* JADX WARNING: Removed duplicated region for block: B:266:0x04e2  */
    /* JADX WARNING: Removed duplicated region for block: B:268:0x04e6  */
    /* JADX WARNING: Removed duplicated region for block: B:274:0x04f8  */
    /* JADX WARNING: Removed duplicated region for block: B:290:0x038d A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x015e  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x017c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void applyChainConstraints(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r35, androidx.constraintlayout.solver.LinearSystem r36, int r37, int r38, androidx.constraintlayout.solver.widgets.ChainHead r39) {
        /*
            r0 = r35
            r9 = r36
            r1 = r39
            androidx.constraintlayout.solver.widgets.ConstraintWidget r10 = r1.mFirst
            androidx.constraintlayout.solver.widgets.ConstraintWidget r11 = r1.mLast
            androidx.constraintlayout.solver.widgets.ConstraintWidget r12 = r1.mFirstVisibleWidget
            androidx.constraintlayout.solver.widgets.ConstraintWidget r13 = r1.mLastVisibleWidget
            androidx.constraintlayout.solver.widgets.ConstraintWidget r2 = r1.mHead
            float r3 = r1.mTotalWeight
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r4 = r0.mListDimensionBehaviors
            r4 = r4[r37]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r5 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            r7 = 1
            if (r4 != r5) goto L_0x001d
            r4 = 1
            goto L_0x001e
        L_0x001d:
            r4 = 0
        L_0x001e:
            r5 = 2
            if (r37 != 0) goto L_0x0034
            int r8 = r2.mHorizontalChainStyle
            if (r8 != 0) goto L_0x0027
            r8 = 1
            goto L_0x0028
        L_0x0027:
            r8 = 0
        L_0x0028:
            int r14 = r2.mHorizontalChainStyle
            if (r14 != r7) goto L_0x002e
            r14 = 1
            goto L_0x002f
        L_0x002e:
            r14 = 0
        L_0x002f:
            int r15 = r2.mHorizontalChainStyle
            if (r15 != r5) goto L_0x0048
            goto L_0x0046
        L_0x0034:
            int r8 = r2.mVerticalChainStyle
            if (r8 != 0) goto L_0x003a
            r8 = 1
            goto L_0x003b
        L_0x003a:
            r8 = 0
        L_0x003b:
            int r14 = r2.mVerticalChainStyle
            if (r14 != r7) goto L_0x0041
            r14 = 1
            goto L_0x0042
        L_0x0041:
            r14 = 0
        L_0x0042:
            int r15 = r2.mVerticalChainStyle
            if (r15 != r5) goto L_0x0048
        L_0x0046:
            r5 = 1
            goto L_0x0049
        L_0x0048:
            r5 = 0
        L_0x0049:
            r15 = r8
            r8 = r10
            r16 = r14
            r14 = r5
            r5 = 0
        L_0x004f:
            r21 = 0
            if (r5 != 0) goto L_0x0131
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r7 = r8.mListAnchors
            r7 = r7[r38]
            if (r4 != 0) goto L_0x005f
            if (r14 == 0) goto L_0x005c
            goto L_0x005f
        L_0x005c:
            r23 = 4
            goto L_0x0061
        L_0x005f:
            r23 = 1
        L_0x0061:
            int r24 = r7.getMargin()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r6 = r7.mTarget
            if (r6 == 0) goto L_0x0073
            if (r8 == r10) goto L_0x0073
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r6 = r7.mTarget
            int r6 = r6.getMargin()
            int r24 = r24 + r6
        L_0x0073:
            r6 = r24
            if (r14 == 0) goto L_0x0081
            if (r8 == r10) goto L_0x0081
            if (r8 == r12) goto L_0x0081
            r24 = r3
            r23 = r5
            r3 = 6
            goto L_0x0091
        L_0x0081:
            if (r15 == 0) goto L_0x008b
            if (r4 == 0) goto L_0x008b
            r24 = r3
            r23 = r5
            r3 = 4
            goto L_0x0091
        L_0x008b:
            r24 = r3
            r3 = r23
            r23 = r5
        L_0x0091:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r7.mTarget
            if (r5 == 0) goto L_0x00be
            if (r8 != r12) goto L_0x00a6
            androidx.constraintlayout.solver.SolverVariable r5 = r7.mSolverVariable
            r25 = r15
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r15 = r7.mTarget
            androidx.constraintlayout.solver.SolverVariable r15 = r15.mSolverVariable
            r26 = r2
            r2 = 5
            r9.addGreaterThan(r5, r15, r6, r2)
            goto L_0x00b4
        L_0x00a6:
            r26 = r2
            r25 = r15
            androidx.constraintlayout.solver.SolverVariable r2 = r7.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r7.mTarget
            androidx.constraintlayout.solver.SolverVariable r5 = r5.mSolverVariable
            r15 = 6
            r9.addGreaterThan(r2, r5, r6, r15)
        L_0x00b4:
            androidx.constraintlayout.solver.SolverVariable r2 = r7.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r7.mTarget
            androidx.constraintlayout.solver.SolverVariable r5 = r5.mSolverVariable
            r9.addEquality(r2, r5, r6, r3)
            goto L_0x00c2
        L_0x00be:
            r26 = r2
            r25 = r15
        L_0x00c2:
            if (r4 == 0) goto L_0x00f9
            int r2 = r8.getVisibility()
            r3 = 8
            if (r2 == r3) goto L_0x00e8
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r2 = r8.mListDimensionBehaviors
            r2 = r2[r37]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r2 != r3) goto L_0x00e8
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r8.mListAnchors
            int r3 = r38 + 1
            r2 = r2[r3]
            androidx.constraintlayout.solver.SolverVariable r2 = r2.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r8.mListAnchors
            r3 = r3[r38]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.mSolverVariable
            r5 = 5
            r6 = 0
            r9.addGreaterThan(r2, r3, r6, r5)
            goto L_0x00e9
        L_0x00e8:
            r6 = 0
        L_0x00e9:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r8.mListAnchors
            r2 = r2[r38]
            androidx.constraintlayout.solver.SolverVariable r2 = r2.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r0.mListAnchors
            r3 = r3[r38]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.mSolverVariable
            r5 = 6
            r9.addGreaterThan(r2, r3, r6, r5)
        L_0x00f9:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r8.mListAnchors
            int r3 = r38 + 1
            r2 = r2[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r2.mTarget
            if (r2 == 0) goto L_0x011a
            androidx.constraintlayout.solver.widgets.ConstraintWidget r2 = r2.mOwner
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r2.mListAnchors
            r3 = r3[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r3.mTarget
            if (r3 == 0) goto L_0x011a
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r2.mListAnchors
            r3 = r3[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r3.mTarget
            androidx.constraintlayout.solver.widgets.ConstraintWidget r3 = r3.mOwner
            if (r3 == r8) goto L_0x0118
            goto L_0x011a
        L_0x0118:
            r21 = r2
        L_0x011a:
            if (r21 == 0) goto L_0x0128
            r8 = r21
            r5 = r23
            r3 = r24
            r15 = r25
            r2 = r26
            goto L_0x004f
        L_0x0128:
            r3 = r24
            r15 = r25
            r2 = r26
            r5 = 1
            goto L_0x004f
        L_0x0131:
            r26 = r2
            r24 = r3
            r25 = r15
            if (r13 == 0) goto L_0x015b
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r11.mListAnchors
            int r3 = r38 + 1
            r2 = r2[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r2.mTarget
            if (r2 == 0) goto L_0x015b
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r13.mListAnchors
            r2 = r2[r3]
            androidx.constraintlayout.solver.SolverVariable r5 = r2.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r11.mListAnchors
            r3 = r6[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r3.mTarget
            androidx.constraintlayout.solver.SolverVariable r3 = r3.mSolverVariable
            int r2 = r2.getMargin()
            int r2 = -r2
            r6 = 5
            r9.addLowerThan(r5, r3, r2, r6)
            goto L_0x015c
        L_0x015b:
            r6 = 5
        L_0x015c:
            if (r4 == 0) goto L_0x0178
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r0.mListAnchors
            int r2 = r38 + 1
            r0 = r0[r2]
            androidx.constraintlayout.solver.SolverVariable r0 = r0.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r11.mListAnchors
            r3 = r3[r2]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r4 = r11.mListAnchors
            r2 = r4[r2]
            int r2 = r2.getMargin()
            r4 = 6
            r9.addGreaterThan(r0, r3, r2, r4)
        L_0x0178:
            java.util.ArrayList<androidx.constraintlayout.solver.widgets.ConstraintWidget> r0 = r1.mWeightedMatchConstraintsWidgets
            if (r0 == 0) goto L_0x0230
            int r2 = r0.size()
            r3 = 1
            if (r2 <= r3) goto L_0x0230
            boolean r4 = r1.mHasUndefinedWeights
            if (r4 == 0) goto L_0x018f
            boolean r4 = r1.mHasComplexMatchWeights
            if (r4 != 0) goto L_0x018f
            int r4 = r1.mWidgetsMatchCount
            float r4 = (float) r4
            goto L_0x0191
        L_0x018f:
            r4 = r24
        L_0x0191:
            r5 = 0
            r8 = r21
            r7 = 0
            r28 = 0
        L_0x0197:
            if (r7 >= r2) goto L_0x0230
            java.lang.Object r15 = r0.get(r7)
            androidx.constraintlayout.solver.widgets.ConstraintWidget r15 = (androidx.constraintlayout.solver.widgets.ConstraintWidget) r15
            float[] r3 = r15.mWeight
            r3 = r3[r37]
            int r23 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r23 >= 0) goto L_0x01c5
            boolean r3 = r1.mHasComplexMatchWeights
            if (r3 == 0) goto L_0x01c1
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r15.mListAnchors
            int r23 = r38 + 1
            r3 = r3[r23]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r15 = r15.mListAnchors
            r15 = r15[r38]
            androidx.constraintlayout.solver.SolverVariable r15 = r15.mSolverVariable
            r5 = 4
            r6 = 0
            r9.addEquality(r3, r15, r6, r5)
            r5 = 0
            r6 = 6
            goto L_0x01de
        L_0x01c1:
            r5 = 4
            r3 = 1065353216(0x3f800000, float:1.0)
            goto L_0x01c6
        L_0x01c5:
            r5 = 4
        L_0x01c6:
            r6 = 0
            int r20 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r20 != 0) goto L_0x01e3
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r15.mListAnchors
            int r20 = r38 + 1
            r3 = r3[r20]
            androidx.constraintlayout.solver.SolverVariable r3 = r3.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r15 = r15.mListAnchors
            r15 = r15[r38]
            androidx.constraintlayout.solver.SolverVariable r15 = r15.mSolverVariable
            r5 = 0
            r6 = 6
            r9.addEquality(r3, r15, r5, r6)
        L_0x01de:
            r24 = r0
            r22 = r2
            goto L_0x0225
        L_0x01e3:
            r5 = 0
            r6 = 6
            if (r8 == 0) goto L_0x021e
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r5 = r8.mListAnchors
            r5 = r5[r38]
            androidx.constraintlayout.solver.SolverVariable r5 = r5.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r8.mListAnchors
            int r22 = r38 + 1
            r8 = r8[r22]
            androidx.constraintlayout.solver.SolverVariable r8 = r8.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r15.mListAnchors
            r6 = r6[r38]
            androidx.constraintlayout.solver.SolverVariable r6 = r6.mSolverVariable
            r24 = r0
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r15.mListAnchors
            r0 = r0[r22]
            androidx.constraintlayout.solver.SolverVariable r0 = r0.mSolverVariable
            r22 = r2
            androidx.constraintlayout.solver.ArrayRow r2 = r36.createRow()
            r27 = r2
            r29 = r4
            r30 = r3
            r31 = r5
            r32 = r8
            r33 = r6
            r34 = r0
            r27.createRowEqualMatchDimensions(r28, r29, r30, r31, r32, r33, r34)
            r9.addConstraint(r2)
            goto L_0x0222
        L_0x021e:
            r24 = r0
            r22 = r2
        L_0x0222:
            r28 = r3
            r8 = r15
        L_0x0225:
            int r7 = r7 + 1
            r2 = r22
            r0 = r24
            r3 = 1
            r5 = 0
            r6 = 5
            goto L_0x0197
        L_0x0230:
            if (r12 == 0) goto L_0x029a
            if (r12 == r13) goto L_0x0236
            if (r14 == 0) goto L_0x029a
        L_0x0236:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r10.mListAnchors
            r0 = r0[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r11.mListAnchors
            int r2 = r38 + 1
            r1 = r1[r2]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r10.mListAnchors
            r3 = r3[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r3.mTarget
            if (r3 == 0) goto L_0x0251
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r10.mListAnchors
            r3 = r3[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r3.mTarget
            androidx.constraintlayout.solver.SolverVariable r3 = r3.mSolverVariable
            goto L_0x0253
        L_0x0251:
            r3 = r21
        L_0x0253:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r4 = r11.mListAnchors
            r4 = r4[r2]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r4 = r4.mTarget
            if (r4 == 0) goto L_0x0265
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r4 = r11.mListAnchors
            r4 = r4[r2]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r4 = r4.mTarget
            androidx.constraintlayout.solver.SolverVariable r4 = r4.mSolverVariable
            r5 = r4
            goto L_0x0267
        L_0x0265:
            r5 = r21
        L_0x0267:
            if (r12 != r13) goto L_0x0271
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r12.mListAnchors
            r0 = r0[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r12.mListAnchors
            r1 = r1[r2]
        L_0x0271:
            if (r3 == 0) goto L_0x04be
            if (r5 == 0) goto L_0x04be
            if (r37 != 0) goto L_0x027c
            r2 = r26
            float r2 = r2.mHorizontalBiasPercent
            goto L_0x0280
        L_0x027c:
            r2 = r26
            float r2 = r2.mVerticalBiasPercent
        L_0x0280:
            r4 = r2
            int r6 = r0.getMargin()
            int r7 = r1.getMargin()
            androidx.constraintlayout.solver.SolverVariable r2 = r0.mSolverVariable
            androidx.constraintlayout.solver.SolverVariable r8 = r1.mSolverVariable
            r10 = 5
            r0 = r36
            r1 = r2
            r2 = r3
            r3 = r6
            r6 = r8
            r8 = r10
            r0.addCentering(r1, r2, r3, r4, r5, r6, r7, r8)
            goto L_0x04be
        L_0x029a:
            if (r25 == 0) goto L_0x0391
            if (r12 == 0) goto L_0x0391
            int r0 = r1.mWidgetsMatchCount
            if (r0 <= 0) goto L_0x02ab
            int r0 = r1.mWidgetsCount
            int r1 = r1.mWidgetsMatchCount
            if (r0 != r1) goto L_0x02ab
            r17 = 1
            goto L_0x02ad
        L_0x02ab:
            r17 = 0
        L_0x02ad:
            r14 = r12
            r15 = r14
        L_0x02af:
            if (r14 == 0) goto L_0x04be
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r0 = r14.mNextChainWidget
            r0 = r0[r37]
            r8 = r0
        L_0x02b6:
            if (r8 == 0) goto L_0x02c5
            int r0 = r8.getVisibility()
            r7 = 8
            if (r0 != r7) goto L_0x02c7
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r0 = r8.mNextChainWidget
            r8 = r0[r37]
            goto L_0x02b6
        L_0x02c5:
            r7 = 8
        L_0x02c7:
            if (r8 != 0) goto L_0x02d4
            if (r14 != r13) goto L_0x02cc
            goto L_0x02d4
        L_0x02cc:
            r18 = r8
            r19 = 4
            r20 = 6
            goto L_0x0384
        L_0x02d4:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r14.mListAnchors
            r0 = r0[r38]
            androidx.constraintlayout.solver.SolverVariable r1 = r0.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r0.mTarget
            if (r2 == 0) goto L_0x02e3
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r0.mTarget
            androidx.constraintlayout.solver.SolverVariable r2 = r2.mSolverVariable
            goto L_0x02e5
        L_0x02e3:
            r2 = r21
        L_0x02e5:
            if (r15 == r14) goto L_0x02f0
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r15.mListAnchors
            int r3 = r38 + 1
            r2 = r2[r3]
            androidx.constraintlayout.solver.SolverVariable r2 = r2.mSolverVariable
            goto L_0x0307
        L_0x02f0:
            if (r14 != r12) goto L_0x0307
            if (r15 != r14) goto L_0x0307
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r10.mListAnchors
            r2 = r2[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r2.mTarget
            if (r2 == 0) goto L_0x0305
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r10.mListAnchors
            r2 = r2[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r2.mTarget
            androidx.constraintlayout.solver.SolverVariable r2 = r2.mSolverVariable
            goto L_0x0307
        L_0x0305:
            r2 = r21
        L_0x0307:
            int r0 = r0.getMargin()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r14.mListAnchors
            int r4 = r38 + 1
            r3 = r3[r4]
            int r3 = r3.getMargin()
            if (r8 == 0) goto L_0x031e
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r5 = r8.mListAnchors
            r5 = r5[r38]
            androidx.constraintlayout.solver.SolverVariable r6 = r5.mSolverVariable
            goto L_0x032b
        L_0x031e:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r5 = r11.mListAnchors
            r5 = r5[r4]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r5.mTarget
            if (r5 == 0) goto L_0x0329
            androidx.constraintlayout.solver.SolverVariable r6 = r5.mSolverVariable
            goto L_0x032b
        L_0x0329:
            r6 = r21
        L_0x032b:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r7 = r14.mListAnchors
            r7 = r7[r4]
            androidx.constraintlayout.solver.SolverVariable r7 = r7.mSolverVariable
            if (r5 == 0) goto L_0x0338
            int r5 = r5.getMargin()
            int r3 = r3 + r5
        L_0x0338:
            if (r15 == 0) goto L_0x0343
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r5 = r15.mListAnchors
            r5 = r5[r4]
            int r5 = r5.getMargin()
            int r0 = r0 + r5
        L_0x0343:
            if (r1 == 0) goto L_0x02cc
            if (r2 == 0) goto L_0x02cc
            if (r6 == 0) goto L_0x02cc
            if (r7 == 0) goto L_0x02cc
            if (r14 != r12) goto L_0x0355
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r12.mListAnchors
            r0 = r0[r38]
            int r0 = r0.getMargin()
        L_0x0355:
            r5 = r0
            if (r14 != r13) goto L_0x0363
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r13.mListAnchors
            r0 = r0[r4]
            int r0 = r0.getMargin()
            r18 = r0
            goto L_0x0365
        L_0x0363:
            r18 = r3
        L_0x0365:
            if (r17 == 0) goto L_0x036a
            r22 = 6
            goto L_0x036c
        L_0x036a:
            r22 = 4
        L_0x036c:
            r4 = 1056964608(0x3f000000, float:0.5)
            r0 = r36
            r3 = r5
            r20 = 4
            r5 = r6
            r23 = 6
            r6 = r7
            r19 = 4
            r20 = 6
            r7 = r18
            r18 = r8
            r8 = r22
            r0.addCentering(r1, r2, r3, r4, r5, r6, r7, r8)
        L_0x0384:
            int r0 = r14.getVisibility()
            r8 = 8
            if (r0 == r8) goto L_0x038d
            r15 = r14
        L_0x038d:
            r14 = r18
            goto L_0x02af
        L_0x0391:
            r8 = 8
            r19 = 4
            r20 = 6
            if (r16 == 0) goto L_0x04be
            if (r12 == 0) goto L_0x04be
            int r0 = r1.mWidgetsMatchCount
            if (r0 <= 0) goto L_0x03a8
            int r0 = r1.mWidgetsCount
            int r1 = r1.mWidgetsMatchCount
            if (r0 != r1) goto L_0x03a8
            r17 = 1
            goto L_0x03aa
        L_0x03a8:
            r17 = 0
        L_0x03aa:
            r14 = r12
            r15 = r14
        L_0x03ac:
            if (r14 == 0) goto L_0x0460
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r0 = r14.mNextChainWidget
            r0 = r0[r37]
        L_0x03b2:
            if (r0 == 0) goto L_0x03bf
            int r1 = r0.getVisibility()
            if (r1 != r8) goto L_0x03bf
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r0 = r0.mNextChainWidget
            r0 = r0[r37]
            goto L_0x03b2
        L_0x03bf:
            if (r14 == r12) goto L_0x044d
            if (r14 == r13) goto L_0x044d
            if (r0 == 0) goto L_0x044d
            if (r0 != r13) goto L_0x03ca
            r7 = r21
            goto L_0x03cb
        L_0x03ca:
            r7 = r0
        L_0x03cb:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r14.mListAnchors
            r0 = r0[r38]
            androidx.constraintlayout.solver.SolverVariable r1 = r0.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r15.mListAnchors
            int r3 = r38 + 1
            r2 = r2[r3]
            androidx.constraintlayout.solver.SolverVariable r2 = r2.mSolverVariable
            int r0 = r0.getMargin()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r4 = r14.mListAnchors
            r4 = r4[r3]
            int r4 = r4.getMargin()
            if (r7 == 0) goto L_0x03f9
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r5 = r7.mListAnchors
            r5 = r5[r38]
            androidx.constraintlayout.solver.SolverVariable r6 = r5.mSolverVariable
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r5.mTarget
            if (r8 == 0) goto L_0x03f6
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r5.mTarget
            androidx.constraintlayout.solver.SolverVariable r8 = r8.mSolverVariable
            goto L_0x040c
        L_0x03f6:
            r8 = r21
            goto L_0x040c
        L_0x03f9:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r5 = r14.mListAnchors
            r5 = r5[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r5.mTarget
            if (r5 == 0) goto L_0x0404
            androidx.constraintlayout.solver.SolverVariable r6 = r5.mSolverVariable
            goto L_0x0406
        L_0x0404:
            r6 = r21
        L_0x0406:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r14.mListAnchors
            r8 = r8[r3]
            androidx.constraintlayout.solver.SolverVariable r8 = r8.mSolverVariable
        L_0x040c:
            if (r5 == 0) goto L_0x0413
            int r5 = r5.getMargin()
            int r4 = r4 + r5
        L_0x0413:
            r18 = r4
            if (r15 == 0) goto L_0x0420
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r4 = r15.mListAnchors
            r3 = r4[r3]
            int r3 = r3.getMargin()
            int r0 = r0 + r3
        L_0x0420:
            r3 = r0
            if (r17 == 0) goto L_0x0426
            r22 = 6
            goto L_0x0428
        L_0x0426:
            r22 = 4
        L_0x0428:
            if (r1 == 0) goto L_0x0444
            if (r2 == 0) goto L_0x0444
            if (r6 == 0) goto L_0x0444
            if (r8 == 0) goto L_0x0444
            r4 = 1056964608(0x3f000000, float:0.5)
            r0 = r36
            r5 = r6
            r6 = r8
            r23 = r7
            r7 = r18
            r18 = r15
            r15 = 8
            r8 = r22
            r0.addCentering(r1, r2, r3, r4, r5, r6, r7, r8)
            goto L_0x044a
        L_0x0444:
            r23 = r7
            r18 = r15
            r15 = 8
        L_0x044a:
            r0 = r23
            goto L_0x0451
        L_0x044d:
            r18 = r15
            r15 = 8
        L_0x0451:
            int r1 = r14.getVisibility()
            if (r1 == r15) goto L_0x0458
            goto L_0x045a
        L_0x0458:
            r14 = r18
        L_0x045a:
            r15 = r14
            r8 = 8
            r14 = r0
            goto L_0x03ac
        L_0x0460:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r12.mListAnchors
            r0 = r0[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r10.mListAnchors
            r1 = r1[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.mTarget
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r13.mListAnchors
            int r3 = r38 + 1
            r10 = r2[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r11.mListAnchors
            r2 = r2[r3]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r14 = r2.mTarget
            if (r1 == 0) goto L_0x04ad
            if (r12 == r13) goto L_0x0487
            androidx.constraintlayout.solver.SolverVariable r2 = r0.mSolverVariable
            androidx.constraintlayout.solver.SolverVariable r1 = r1.mSolverVariable
            int r0 = r0.getMargin()
            r15 = 5
            r9.addEquality(r2, r1, r0, r15)
            goto L_0x04ae
        L_0x0487:
            r15 = 5
            if (r14 == 0) goto L_0x04ae
            androidx.constraintlayout.solver.SolverVariable r2 = r0.mSolverVariable
            androidx.constraintlayout.solver.SolverVariable r3 = r1.mSolverVariable
            int r4 = r0.getMargin()
            r5 = 1056964608(0x3f000000, float:0.5)
            androidx.constraintlayout.solver.SolverVariable r6 = r10.mSolverVariable
            androidx.constraintlayout.solver.SolverVariable r7 = r14.mSolverVariable
            int r8 = r10.getMargin()
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
            r0.addCentering(r1, r2, r3, r4, r5, r6, r7, r8)
            goto L_0x04ae
        L_0x04ad:
            r15 = 5
        L_0x04ae:
            if (r14 == 0) goto L_0x04be
            if (r12 == r13) goto L_0x04be
            androidx.constraintlayout.solver.SolverVariable r0 = r10.mSolverVariable
            androidx.constraintlayout.solver.SolverVariable r1 = r14.mSolverVariable
            int r2 = r10.getMargin()
            int r2 = -r2
            r9.addEquality(r0, r1, r2, r15)
        L_0x04be:
            if (r25 != 0) goto L_0x04c2
            if (r16 == 0) goto L_0x0526
        L_0x04c2:
            if (r12 == 0) goto L_0x0526
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r12.mListAnchors
            r0 = r0[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r13.mListAnchors
            int r2 = r38 + 1
            r1 = r1[r2]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r0.mTarget
            if (r3 == 0) goto L_0x04d7
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r0.mTarget
            androidx.constraintlayout.solver.SolverVariable r3 = r3.mSolverVariable
            goto L_0x04d9
        L_0x04d7:
            r3 = r21
        L_0x04d9:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r4 = r1.mTarget
            if (r4 == 0) goto L_0x04e2
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r4 = r1.mTarget
            androidx.constraintlayout.solver.SolverVariable r4 = r4.mSolverVariable
            goto L_0x04e4
        L_0x04e2:
            r4 = r21
        L_0x04e4:
            if (r11 == r13) goto L_0x04f5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r4 = r11.mListAnchors
            r4 = r4[r2]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r4.mTarget
            if (r5 == 0) goto L_0x04f3
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r4 = r4.mTarget
            androidx.constraintlayout.solver.SolverVariable r4 = r4.mSolverVariable
            goto L_0x04f5
        L_0x04f3:
            r4 = r21
        L_0x04f5:
            r5 = r4
            if (r12 != r13) goto L_0x0500
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r12.mListAnchors
            r0 = r0[r38]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r1 = r12.mListAnchors
            r1 = r1[r2]
        L_0x0500:
            if (r3 == 0) goto L_0x0526
            if (r5 == 0) goto L_0x0526
            int r4 = r0.getMargin()
            if (r13 != 0) goto L_0x050b
            goto L_0x050c
        L_0x050b:
            r11 = r13
        L_0x050c:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r11.mListAnchors
            r2 = r6[r2]
            int r7 = r2.getMargin()
            androidx.constraintlayout.solver.SolverVariable r2 = r0.mSolverVariable
            r6 = 1056964608(0x3f000000, float:0.5)
            androidx.constraintlayout.solver.SolverVariable r8 = r1.mSolverVariable
            r10 = 5
            r0 = r36
            r1 = r2
            r2 = r3
            r3 = r4
            r4 = r6
            r6 = r8
            r8 = r10
            r0.addCentering(r1, r2, r3, r4, r5, r6, r7, r8)
        L_0x0526:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.Chain.applyChainConstraints(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, androidx.constraintlayout.solver.LinearSystem, int, int, androidx.constraintlayout.solver.widgets.ChainHead):void");
    }
}
