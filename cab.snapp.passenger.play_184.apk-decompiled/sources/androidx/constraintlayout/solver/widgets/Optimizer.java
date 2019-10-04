package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;

public class Optimizer {
    static final int FLAG_CHAIN_DANGLING = 1;
    static final int FLAG_RECOMPUTE_BOUNDS = 2;
    static final int FLAG_USE_OPTIMIZE = 0;
    public static final int OPTIMIZATION_BARRIER = 2;
    public static final int OPTIMIZATION_CHAIN = 4;
    public static final int OPTIMIZATION_DIMENSIONS = 8;
    public static final int OPTIMIZATION_DIRECT = 1;
    public static final int OPTIMIZATION_GROUPS = 32;
    public static final int OPTIMIZATION_NONE = 0;
    public static final int OPTIMIZATION_RATIO = 16;
    public static final int OPTIMIZATION_STANDARD = 7;
    static boolean[] flags = new boolean[3];

    static void checkMatchParent(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        if (constraintWidgetContainer.mListDimensionBehaviors[0] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i = constraintWidget.mLeft.mMargin;
            int width = constraintWidgetContainer.getWidth() - constraintWidget.mRight.mMargin;
            constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
            constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
            linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, i);
            linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, width);
            constraintWidget.mHorizontalResolution = 2;
            constraintWidget.setHorizontalDimension(i, width);
        }
        if (constraintWidgetContainer.mListDimensionBehaviors[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i2 = constraintWidget.mTop.mMargin;
            int height = constraintWidgetContainer.getHeight() - constraintWidget.mBottom.mMargin;
            constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
            constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
            linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, i2);
            linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, height);
            if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
                constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + i2);
            }
            constraintWidget.mVerticalResolution = 2;
            constraintWidget.setVerticalDimension(i2, height);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x003d A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean optimizableMatchConstraint(androidx.constraintlayout.solver.widgets.ConstraintWidget r4, int r5) {
        /*
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r0 = r4.mListDimensionBehaviors
            r0 = r0[r5]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r1 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            r2 = 0
            if (r0 == r1) goto L_0x000a
            return r2
        L_0x000a:
            float r0 = r4.mDimensionRatio
            r1 = 0
            r3 = 1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x001f
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r4 = r4.mListDimensionBehaviors
            if (r5 != 0) goto L_0x0017
            goto L_0x0018
        L_0x0017:
            r3 = 0
        L_0x0018:
            r4 = r4[r3]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r5 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r4 != r5) goto L_0x001e
        L_0x001e:
            return r2
        L_0x001f:
            if (r5 != 0) goto L_0x002f
            int r5 = r4.mMatchConstraintDefaultWidth
            if (r5 == 0) goto L_0x0026
            return r2
        L_0x0026:
            int r5 = r4.mMatchConstraintMinWidth
            if (r5 != 0) goto L_0x002e
            int r4 = r4.mMatchConstraintMaxWidth
            if (r4 == 0) goto L_0x003d
        L_0x002e:
            return r2
        L_0x002f:
            int r5 = r4.mMatchConstraintDefaultHeight
            if (r5 == 0) goto L_0x0034
            return r2
        L_0x0034:
            int r5 = r4.mMatchConstraintMinHeight
            if (r5 != 0) goto L_0x003e
            int r4 = r4.mMatchConstraintMaxHeight
            if (r4 == 0) goto L_0x003d
            goto L_0x003e
        L_0x003d:
            return r3
        L_0x003e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.Optimizer.optimizableMatchConstraint(androidx.constraintlayout.solver.widgets.ConstraintWidget, int):boolean");
    }

    static void analyze(int i, ConstraintWidget constraintWidget) {
        ConstraintWidget constraintWidget2 = constraintWidget;
        constraintWidget.updateResolutionNodes();
        ResolutionAnchor resolutionNode = constraintWidget2.mLeft.getResolutionNode();
        ResolutionAnchor resolutionNode2 = constraintWidget2.mTop.getResolutionNode();
        ResolutionAnchor resolutionNode3 = constraintWidget2.mRight.getResolutionNode();
        ResolutionAnchor resolutionNode4 = constraintWidget2.mBottom.getResolutionNode();
        boolean z = (i & 8) == 8;
        boolean z2 = constraintWidget2.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && optimizableMatchConstraint(constraintWidget2, 0);
        if (!(resolutionNode.type == 4 || resolutionNode3.type == 4)) {
            if (constraintWidget2.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.FIXED || (z2 && constraintWidget.getVisibility() == 8)) {
                if (constraintWidget2.mLeft.mTarget == null && constraintWidget2.mRight.mTarget == null) {
                    resolutionNode.setType(1);
                    resolutionNode3.setType(1);
                    if (z) {
                        resolutionNode3.dependsOn(resolutionNode, 1, constraintWidget.getResolutionWidth());
                    } else {
                        resolutionNode3.dependsOn(resolutionNode, constraintWidget.getWidth());
                    }
                } else if (constraintWidget2.mLeft.mTarget != null && constraintWidget2.mRight.mTarget == null) {
                    resolutionNode.setType(1);
                    resolutionNode3.setType(1);
                    if (z) {
                        resolutionNode3.dependsOn(resolutionNode, 1, constraintWidget.getResolutionWidth());
                    } else {
                        resolutionNode3.dependsOn(resolutionNode, constraintWidget.getWidth());
                    }
                } else if (constraintWidget2.mLeft.mTarget == null && constraintWidget2.mRight.mTarget != null) {
                    resolutionNode.setType(1);
                    resolutionNode3.setType(1);
                    resolutionNode.dependsOn(resolutionNode3, -constraintWidget.getWidth());
                    if (z) {
                        resolutionNode.dependsOn(resolutionNode3, -1, constraintWidget.getResolutionWidth());
                    } else {
                        resolutionNode.dependsOn(resolutionNode3, -constraintWidget.getWidth());
                    }
                } else if (!(constraintWidget2.mLeft.mTarget == null || constraintWidget2.mRight.mTarget == null)) {
                    resolutionNode.setType(2);
                    resolutionNode3.setType(2);
                    if (z) {
                        constraintWidget.getResolutionWidth().addDependent(resolutionNode);
                        constraintWidget.getResolutionWidth().addDependent(resolutionNode3);
                        resolutionNode.setOpposite(resolutionNode3, -1, constraintWidget.getResolutionWidth());
                        resolutionNode3.setOpposite(resolutionNode, 1, constraintWidget.getResolutionWidth());
                    } else {
                        resolutionNode.setOpposite(resolutionNode3, (float) (-constraintWidget.getWidth()));
                        resolutionNode3.setOpposite(resolutionNode, (float) constraintWidget.getWidth());
                    }
                }
            } else if (z2) {
                int width = constraintWidget.getWidth();
                resolutionNode.setType(1);
                resolutionNode3.setType(1);
                if (constraintWidget2.mLeft.mTarget == null && constraintWidget2.mRight.mTarget == null) {
                    if (z) {
                        resolutionNode3.dependsOn(resolutionNode, 1, constraintWidget.getResolutionWidth());
                    } else {
                        resolutionNode3.dependsOn(resolutionNode, width);
                    }
                } else if (constraintWidget2.mLeft.mTarget == null || constraintWidget2.mRight.mTarget != null) {
                    if (constraintWidget2.mLeft.mTarget != null || constraintWidget2.mRight.mTarget == null) {
                        if (!(constraintWidget2.mLeft.mTarget == null || constraintWidget2.mRight.mTarget == null)) {
                            if (z) {
                                constraintWidget.getResolutionWidth().addDependent(resolutionNode);
                                constraintWidget.getResolutionWidth().addDependent(resolutionNode3);
                            }
                            if (constraintWidget2.mDimensionRatio == 0.0f) {
                                resolutionNode.setType(3);
                                resolutionNode3.setType(3);
                                resolutionNode.setOpposite(resolutionNode3, 0.0f);
                                resolutionNode3.setOpposite(resolutionNode, 0.0f);
                            } else {
                                resolutionNode.setType(2);
                                resolutionNode3.setType(2);
                                resolutionNode.setOpposite(resolutionNode3, (float) (-width));
                                resolutionNode3.setOpposite(resolutionNode, (float) width);
                                constraintWidget2.setWidth(width);
                            }
                        }
                    } else if (z) {
                        resolutionNode.dependsOn(resolutionNode3, -1, constraintWidget.getResolutionWidth());
                    } else {
                        resolutionNode.dependsOn(resolutionNode3, -width);
                    }
                } else if (z) {
                    resolutionNode3.dependsOn(resolutionNode, 1, constraintWidget.getResolutionWidth());
                } else {
                    resolutionNode3.dependsOn(resolutionNode, width);
                }
            }
        }
        boolean z3 = constraintWidget2.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && optimizableMatchConstraint(constraintWidget2, 1);
        if (!(resolutionNode2.type == 4 || resolutionNode4.type == 4)) {
            if (constraintWidget2.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.FIXED || (z3 && constraintWidget.getVisibility() == 8)) {
                if (constraintWidget2.mTop.mTarget == null && constraintWidget2.mBottom.mTarget == null) {
                    resolutionNode2.setType(1);
                    resolutionNode4.setType(1);
                    if (z) {
                        resolutionNode4.dependsOn(resolutionNode2, 1, constraintWidget.getResolutionHeight());
                    } else {
                        resolutionNode4.dependsOn(resolutionNode2, constraintWidget.getHeight());
                    }
                    if (constraintWidget2.mBaseline.mTarget != null) {
                        constraintWidget2.mBaseline.getResolutionNode().setType(1);
                        resolutionNode2.dependsOn(1, constraintWidget2.mBaseline.getResolutionNode(), -constraintWidget2.mBaselineDistance);
                    }
                } else if (constraintWidget2.mTop.mTarget != null && constraintWidget2.mBottom.mTarget == null) {
                    resolutionNode2.setType(1);
                    resolutionNode4.setType(1);
                    if (z) {
                        resolutionNode4.dependsOn(resolutionNode2, 1, constraintWidget.getResolutionHeight());
                    } else {
                        resolutionNode4.dependsOn(resolutionNode2, constraintWidget.getHeight());
                    }
                    if (constraintWidget2.mBaselineDistance > 0) {
                        constraintWidget2.mBaseline.getResolutionNode().dependsOn(1, resolutionNode2, constraintWidget2.mBaselineDistance);
                    }
                } else if (constraintWidget2.mTop.mTarget == null && constraintWidget2.mBottom.mTarget != null) {
                    resolutionNode2.setType(1);
                    resolutionNode4.setType(1);
                    if (z) {
                        resolutionNode2.dependsOn(resolutionNode4, -1, constraintWidget.getResolutionHeight());
                    } else {
                        resolutionNode2.dependsOn(resolutionNode4, -constraintWidget.getHeight());
                    }
                    if (constraintWidget2.mBaselineDistance > 0) {
                        constraintWidget2.mBaseline.getResolutionNode().dependsOn(1, resolutionNode2, constraintWidget2.mBaselineDistance);
                    }
                } else if (!(constraintWidget2.mTop.mTarget == null || constraintWidget2.mBottom.mTarget == null)) {
                    resolutionNode2.setType(2);
                    resolutionNode4.setType(2);
                    if (z) {
                        resolutionNode2.setOpposite(resolutionNode4, -1, constraintWidget.getResolutionHeight());
                        resolutionNode4.setOpposite(resolutionNode2, 1, constraintWidget.getResolutionHeight());
                        constraintWidget.getResolutionHeight().addDependent(resolutionNode2);
                        constraintWidget.getResolutionWidth().addDependent(resolutionNode4);
                    } else {
                        resolutionNode2.setOpposite(resolutionNode4, (float) (-constraintWidget.getHeight()));
                        resolutionNode4.setOpposite(resolutionNode2, (float) constraintWidget.getHeight());
                    }
                    if (constraintWidget2.mBaselineDistance > 0) {
                        constraintWidget2.mBaseline.getResolutionNode().dependsOn(1, resolutionNode2, constraintWidget2.mBaselineDistance);
                    }
                }
            } else if (z3) {
                int height = constraintWidget.getHeight();
                resolutionNode2.setType(1);
                resolutionNode4.setType(1);
                if (constraintWidget2.mTop.mTarget == null && constraintWidget2.mBottom.mTarget == null) {
                    if (z) {
                        resolutionNode4.dependsOn(resolutionNode2, 1, constraintWidget.getResolutionHeight());
                    } else {
                        resolutionNode4.dependsOn(resolutionNode2, height);
                    }
                } else if (constraintWidget2.mTop.mTarget == null || constraintWidget2.mBottom.mTarget != null) {
                    if (constraintWidget2.mTop.mTarget != null || constraintWidget2.mBottom.mTarget == null) {
                        if (!(constraintWidget2.mTop.mTarget == null || constraintWidget2.mBottom.mTarget == null)) {
                            if (z) {
                                constraintWidget.getResolutionHeight().addDependent(resolutionNode2);
                                constraintWidget.getResolutionWidth().addDependent(resolutionNode4);
                            }
                            if (constraintWidget2.mDimensionRatio == 0.0f) {
                                resolutionNode2.setType(3);
                                resolutionNode4.setType(3);
                                resolutionNode2.setOpposite(resolutionNode4, 0.0f);
                                resolutionNode4.setOpposite(resolutionNode2, 0.0f);
                                return;
                            }
                            resolutionNode2.setType(2);
                            resolutionNode4.setType(2);
                            resolutionNode2.setOpposite(resolutionNode4, (float) (-height));
                            resolutionNode4.setOpposite(resolutionNode2, (float) height);
                            constraintWidget2.setHeight(height);
                            if (constraintWidget2.mBaselineDistance > 0) {
                                constraintWidget2.mBaseline.getResolutionNode().dependsOn(1, resolutionNode2, constraintWidget2.mBaselineDistance);
                            }
                        }
                    } else if (z) {
                        resolutionNode2.dependsOn(resolutionNode4, -1, constraintWidget.getResolutionHeight());
                    } else {
                        resolutionNode2.dependsOn(resolutionNode4, -height);
                    }
                } else if (z) {
                    resolutionNode4.dependsOn(resolutionNode2, 1, constraintWidget.getResolutionHeight());
                } else {
                    resolutionNode4.dependsOn(resolutionNode2, height);
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r7.mHorizontalChainStyle == 2) goto L_0x002a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002c, code lost:
        r7 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003e, code lost:
        if (r7.mVerticalChainStyle == 2) goto L_0x002a;
     */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x00f7  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x00fb  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static boolean applyChainOptimized(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r23, androidx.constraintlayout.solver.LinearSystem r24, int r25, int r26, androidx.constraintlayout.solver.widgets.ChainHead r27) {
        /*
            r0 = r24
            r1 = r25
            r2 = r27
            androidx.constraintlayout.solver.widgets.ConstraintWidget r3 = r2.mFirst
            androidx.constraintlayout.solver.widgets.ConstraintWidget r4 = r2.mLast
            androidx.constraintlayout.solver.widgets.ConstraintWidget r5 = r2.mFirstVisibleWidget
            androidx.constraintlayout.solver.widgets.ConstraintWidget r6 = r2.mLastVisibleWidget
            androidx.constraintlayout.solver.widgets.ConstraintWidget r7 = r2.mHead
            float r2 = r2.mTotalWeight
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r8 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            r8 = 2
            r10 = 1
            if (r1 != 0) goto L_0x002e
            int r11 = r7.mHorizontalChainStyle
            if (r11 != 0) goto L_0x001e
            r11 = 1
            goto L_0x001f
        L_0x001e:
            r11 = 0
        L_0x001f:
            int r12 = r7.mHorizontalChainStyle
            if (r12 != r10) goto L_0x0025
            r12 = 1
            goto L_0x0026
        L_0x0025:
            r12 = 0
        L_0x0026:
            int r7 = r7.mHorizontalChainStyle
            if (r7 != r8) goto L_0x002c
        L_0x002a:
            r7 = 1
            goto L_0x0041
        L_0x002c:
            r7 = 0
            goto L_0x0041
        L_0x002e:
            int r11 = r7.mVerticalChainStyle
            if (r11 != 0) goto L_0x0034
            r11 = 1
            goto L_0x0035
        L_0x0034:
            r11 = 0
        L_0x0035:
            int r12 = r7.mVerticalChainStyle
            if (r12 != r10) goto L_0x003b
            r12 = 1
            goto L_0x003c
        L_0x003b:
            r12 = 0
        L_0x003c:
            int r7 = r7.mVerticalChainStyle
            if (r7 != r8) goto L_0x002c
            goto L_0x002a
        L_0x0041:
            r14 = r3
            r10 = 0
            r13 = 0
            r15 = 0
            r16 = 0
            r17 = 0
        L_0x0049:
            r8 = 8
            if (r13 != 0) goto L_0x00fe
            int r9 = r14.getVisibility()
            if (r9 == r8) goto L_0x0097
            int r15 = r15 + 1
            if (r1 != 0) goto L_0x005c
            int r9 = r14.getWidth()
            goto L_0x0060
        L_0x005c:
            int r9 = r14.getHeight()
        L_0x0060:
            float r9 = (float) r9
            float r16 = r16 + r9
            if (r14 == r5) goto L_0x0070
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r14.mListAnchors
            r9 = r9[r26]
            int r9 = r9.getMargin()
            float r9 = (float) r9
            float r16 = r16 + r9
        L_0x0070:
            if (r14 == r6) goto L_0x007f
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r14.mListAnchors
            int r19 = r26 + 1
            r9 = r9[r19]
            int r9 = r9.getMargin()
            float r9 = (float) r9
            float r16 = r16 + r9
        L_0x007f:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r14.mListAnchors
            r9 = r9[r26]
            int r9 = r9.getMargin()
            float r9 = (float) r9
            float r17 = r17 + r9
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r14.mListAnchors
            int r19 = r26 + 1
            r9 = r9[r19]
            int r9 = r9.getMargin()
            float r9 = (float) r9
            float r17 = r17 + r9
        L_0x0097:
            int r9 = r14.getVisibility()
            if (r9 == r8) goto L_0x00d1
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r8 = r14.mListDimensionBehaviors
            r8 = r8[r1]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r9 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r8 != r9) goto L_0x00d1
            int r10 = r10 + 1
            if (r1 != 0) goto L_0x00b9
            int r8 = r14.mMatchConstraintDefaultWidth
            if (r8 == 0) goto L_0x00af
            r8 = 0
            return r8
        L_0x00af:
            r8 = 0
            int r9 = r14.mMatchConstraintMinWidth
            if (r9 != 0) goto L_0x00b8
            int r9 = r14.mMatchConstraintMaxWidth
            if (r9 == 0) goto L_0x00c8
        L_0x00b8:
            return r8
        L_0x00b9:
            r8 = 0
            int r9 = r14.mMatchConstraintDefaultHeight
            if (r9 == 0) goto L_0x00bf
            return r8
        L_0x00bf:
            int r9 = r14.mMatchConstraintMinHeight
            if (r9 != 0) goto L_0x00d0
            int r9 = r14.mMatchConstraintMaxHeight
            if (r9 == 0) goto L_0x00c8
            goto L_0x00d0
        L_0x00c8:
            float r9 = r14.mDimensionRatio
            r18 = 0
            int r9 = (r9 > r18 ? 1 : (r9 == r18 ? 0 : -1))
            if (r9 == 0) goto L_0x00d1
        L_0x00d0:
            return r8
        L_0x00d1:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r14.mListAnchors
            int r9 = r26 + 1
            r8 = r8[r9]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r8.mTarget
            if (r8 == 0) goto L_0x00f3
            androidx.constraintlayout.solver.widgets.ConstraintWidget r8 = r8.mOwner
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r8.mListAnchors
            r9 = r9[r26]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.mTarget
            if (r9 == 0) goto L_0x00f3
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r8.mListAnchors
            r9 = r9[r26]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.mTarget
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r9.mOwner
            if (r9 == r14) goto L_0x00f0
            goto L_0x00f3
        L_0x00f0:
            r19 = r8
            goto L_0x00f5
        L_0x00f3:
            r19 = 0
        L_0x00f5:
            if (r19 == 0) goto L_0x00fb
            r14 = r19
            goto L_0x0049
        L_0x00fb:
            r13 = 1
            goto L_0x0049
        L_0x00fe:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r9 = r3.mListAnchors
            r9 = r9[r26]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r9 = r9.getResolutionNode()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r13 = r4.mListAnchors
            int r19 = r26 + 1
            r13 = r13[r19]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r13 = r13.getResolutionNode()
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r8 = r9.target
            if (r8 == 0) goto L_0x0383
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r8 = r13.target
            if (r8 != 0) goto L_0x011a
            goto L_0x0383
        L_0x011a:
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r8 = r9.target
            int r8 = r8.state
            r20 = r3
            r3 = 1
            if (r8 != r3) goto L_0x0381
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r8 = r13.target
            int r8 = r8.state
            if (r8 == r3) goto L_0x012b
            goto L_0x0381
        L_0x012b:
            if (r10 <= 0) goto L_0x0131
            if (r10 == r15) goto L_0x0131
            r3 = 0
            return r3
        L_0x0131:
            if (r7 != 0) goto L_0x013a
            if (r11 != 0) goto L_0x013a
            if (r12 == 0) goto L_0x0138
            goto L_0x013a
        L_0x0138:
            r8 = 0
            goto L_0x0153
        L_0x013a:
            if (r5 == 0) goto L_0x0146
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r5.mListAnchors
            r3 = r3[r26]
            int r3 = r3.getMargin()
            float r8 = (float) r3
            goto L_0x0147
        L_0x0146:
            r8 = 0
        L_0x0147:
            if (r6 == 0) goto L_0x0153
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r6.mListAnchors
            r3 = r3[r19]
            int r3 = r3.getMargin()
            float r3 = (float) r3
            float r8 = r8 + r3
        L_0x0153:
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r3 = r9.target
            float r3 = r3.resolvedOffset
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r6 = r13.target
            float r6 = r6.resolvedOffset
            int r13 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r13 >= 0) goto L_0x0161
            float r6 = r6 - r3
            goto L_0x0163
        L_0x0161:
            float r6 = r3 - r6
        L_0x0163:
            float r6 = r6 - r16
            r21 = 1
            if (r10 <= 0) goto L_0x021a
            if (r10 != r15) goto L_0x021a
            androidx.constraintlayout.solver.widgets.ConstraintWidget r5 = r14.getParent()
            if (r5 == 0) goto L_0x017f
            androidx.constraintlayout.solver.widgets.ConstraintWidget r5 = r14.getParent()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r5 = r5.mListDimensionBehaviors
            r5 = r5[r1]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r7 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r5 != r7) goto L_0x017f
            r5 = 0
            return r5
        L_0x017f:
            float r6 = r6 + r16
            float r6 = r6 - r17
            r5 = r3
            r3 = r20
        L_0x0186:
            if (r3 == 0) goto L_0x0218
            androidx.constraintlayout.solver.Metrics r7 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            if (r7 == 0) goto L_0x01a4
            androidx.constraintlayout.solver.Metrics r7 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            long r11 = r7.nonresolvedWidgets
            long r11 = r11 - r21
            r7.nonresolvedWidgets = r11
            androidx.constraintlayout.solver.Metrics r7 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            long r11 = r7.resolvedWidgets
            long r11 = r11 + r21
            r7.resolvedWidgets = r11
            androidx.constraintlayout.solver.Metrics r7 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            long r11 = r7.chainConnectionResolved
            long r11 = r11 + r21
            r7.chainConnectionResolved = r11
        L_0x01a4:
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r7 = r3.mNextChainWidget
            r7 = r7[r1]
            if (r7 != 0) goto L_0x01ac
            if (r3 != r4) goto L_0x0215
        L_0x01ac:
            float r8 = (float) r10
            float r8 = r6 / r8
            r11 = 0
            int r12 = (r2 > r11 ? 1 : (r2 == r11 ? 0 : -1))
            if (r12 <= 0) goto L_0x01c7
            float[] r8 = r3.mWeight
            r8 = r8[r1]
            r11 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r8 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r8 != 0) goto L_0x01c0
            r8 = 0
            goto L_0x01c7
        L_0x01c0:
            float[] r8 = r3.mWeight
            r8 = r8[r1]
            float r8 = r8 * r6
            float r8 = r8 / r2
        L_0x01c7:
            int r11 = r3.getVisibility()
            r12 = 8
            if (r11 != r12) goto L_0x01d0
            r8 = 0
        L_0x01d0:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r11 = r3.mListAnchors
            r11 = r11[r26]
            int r11 = r11.getMargin()
            float r11 = (float) r11
            float r5 = r5 + r11
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r11 = r3.mListAnchors
            r11 = r11[r26]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r11 = r11.getResolutionNode()
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r12 = r9.resolvedTarget
            r11.resolve(r12, r5)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r11 = r3.mListAnchors
            r11 = r11[r19]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r11 = r11.getResolutionNode()
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r12 = r9.resolvedTarget
            float r5 = r5 + r8
            r11.resolve(r12, r5)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r3.mListAnchors
            r8 = r8[r26]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r8 = r8.getResolutionNode()
            r8.addResolvedValue(r0)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r8 = r3.mListAnchors
            r8 = r8[r19]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r8 = r8.getResolutionNode()
            r8.addResolvedValue(r0)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r3.mListAnchors
            r3 = r3[r19]
            int r3 = r3.getMargin()
            float r3 = (float) r3
            float r5 = r5 + r3
        L_0x0215:
            r3 = r7
            goto L_0x0186
        L_0x0218:
            r3 = 1
            return r3
        L_0x021a:
            r2 = 0
            int r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r2 >= 0) goto L_0x0222
            r7 = 1
            r11 = 0
            r12 = 0
        L_0x0222:
            if (r7 == 0) goto L_0x02a7
            float r6 = r6 - r8
            r2 = r20
            float r5 = r2.getBiasPercent(r1)
            float r6 = r6 * r5
            float r3 = r3 + r6
        L_0x022e:
            if (r2 == 0) goto L_0x02ae
            androidx.constraintlayout.solver.Metrics r5 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            if (r5 == 0) goto L_0x024c
            androidx.constraintlayout.solver.Metrics r5 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            long r6 = r5.nonresolvedWidgets
            long r6 = r6 - r21
            r5.nonresolvedWidgets = r6
            androidx.constraintlayout.solver.Metrics r5 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            long r6 = r5.resolvedWidgets
            long r6 = r6 + r21
            r5.resolvedWidgets = r6
            androidx.constraintlayout.solver.Metrics r5 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            long r6 = r5.chainConnectionResolved
            long r6 = r6 + r21
            r5.chainConnectionResolved = r6
        L_0x024c:
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r5 = r2.mNextChainWidget
            r5 = r5[r1]
            if (r5 != 0) goto L_0x0254
            if (r2 != r4) goto L_0x02a5
        L_0x0254:
            if (r1 != 0) goto L_0x025b
            int r6 = r2.getWidth()
            goto L_0x025f
        L_0x025b:
            int r6 = r2.getHeight()
        L_0x025f:
            float r6 = (float) r6
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r7 = r2.mListAnchors
            r7 = r7[r26]
            int r7 = r7.getMargin()
            float r7 = (float) r7
            float r3 = r3 + r7
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r7 = r2.mListAnchors
            r7 = r7[r26]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r7 = r7.getResolutionNode()
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r8 = r9.resolvedTarget
            r7.resolve(r8, r3)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r7 = r2.mListAnchors
            r7 = r7[r19]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r7 = r7.getResolutionNode()
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r8 = r9.resolvedTarget
            float r3 = r3 + r6
            r7.resolve(r8, r3)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r2.mListAnchors
            r6 = r6[r26]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r6 = r6.getResolutionNode()
            r6.addResolvedValue(r0)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r2.mListAnchors
            r6 = r6[r19]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r6 = r6.getResolutionNode()
            r6.addResolvedValue(r0)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r2.mListAnchors
            r2 = r2[r19]
            int r2 = r2.getMargin()
            float r2 = (float) r2
            float r3 = r3 + r2
        L_0x02a5:
            r2 = r5
            goto L_0x022e
        L_0x02a7:
            r2 = r20
            if (r11 != 0) goto L_0x02b1
            if (r12 == 0) goto L_0x02ae
            goto L_0x02b1
        L_0x02ae:
            r0 = 1
            goto L_0x0380
        L_0x02b1:
            if (r11 == 0) goto L_0x02b5
        L_0x02b3:
            float r6 = r6 - r8
            goto L_0x02b8
        L_0x02b5:
            if (r12 == 0) goto L_0x02b8
            goto L_0x02b3
        L_0x02b8:
            int r7 = r15 + 1
            float r7 = (float) r7
            float r7 = r6 / r7
            if (r12 == 0) goto L_0x02ca
            r8 = 1
            if (r15 <= r8) goto L_0x02c6
            int r7 = r15 + -1
            float r7 = (float) r7
            goto L_0x02c8
        L_0x02c6:
            r7 = 1073741824(0x40000000, float:2.0)
        L_0x02c8:
            float r7 = r6 / r7
        L_0x02ca:
            int r6 = r2.getVisibility()
            r8 = 8
            if (r6 == r8) goto L_0x02d5
            float r6 = r3 + r7
            goto L_0x02d6
        L_0x02d5:
            r6 = r3
        L_0x02d6:
            if (r12 == 0) goto L_0x02e5
            r8 = 1
            if (r15 <= r8) goto L_0x02e5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r6 = r5.mListAnchors
            r6 = r6[r26]
            int r6 = r6.getMargin()
            float r6 = (float) r6
            float r6 = r6 + r3
        L_0x02e5:
            if (r11 == 0) goto L_0x02f3
            if (r5 == 0) goto L_0x02f3
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r3 = r5.mListAnchors
            r3 = r3[r26]
            int r3 = r3.getMargin()
            float r3 = (float) r3
            float r6 = r6 + r3
        L_0x02f3:
            if (r2 == 0) goto L_0x02ae
            androidx.constraintlayout.solver.Metrics r3 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            if (r3 == 0) goto L_0x0311
            androidx.constraintlayout.solver.Metrics r3 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            long r10 = r3.nonresolvedWidgets
            long r10 = r10 - r21
            r3.nonresolvedWidgets = r10
            androidx.constraintlayout.solver.Metrics r3 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            long r10 = r3.resolvedWidgets
            long r10 = r10 + r21
            r3.resolvedWidgets = r10
            androidx.constraintlayout.solver.Metrics r3 = androidx.constraintlayout.solver.LinearSystem.sMetrics
            long r10 = r3.chainConnectionResolved
            long r10 = r10 + r21
            r3.chainConnectionResolved = r10
        L_0x0311:
            androidx.constraintlayout.solver.widgets.ConstraintWidget[] r3 = r2.mNextChainWidget
            r3 = r3[r1]
            if (r3 != 0) goto L_0x031d
            if (r2 != r4) goto L_0x031a
            goto L_0x031d
        L_0x031a:
            r8 = 8
            goto L_0x037d
        L_0x031d:
            if (r1 != 0) goto L_0x0324
            int r8 = r2.getWidth()
            goto L_0x0328
        L_0x0324:
            int r8 = r2.getHeight()
        L_0x0328:
            float r8 = (float) r8
            if (r2 == r5) goto L_0x0335
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r10 = r2.mListAnchors
            r10 = r10[r26]
            int r10 = r10.getMargin()
            float r10 = (float) r10
            float r6 = r6 + r10
        L_0x0335:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r10 = r2.mListAnchors
            r10 = r10[r26]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r10 = r10.getResolutionNode()
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r11 = r9.resolvedTarget
            r10.resolve(r11, r6)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r10 = r2.mListAnchors
            r10 = r10[r19]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r10 = r10.getResolutionNode()
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r11 = r9.resolvedTarget
            float r12 = r6 + r8
            r10.resolve(r11, r12)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r10 = r2.mListAnchors
            r10 = r10[r26]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r10 = r10.getResolutionNode()
            r10.addResolvedValue(r0)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r10 = r2.mListAnchors
            r10 = r10[r19]
            androidx.constraintlayout.solver.widgets.ResolutionAnchor r10 = r10.getResolutionNode()
            r10.addResolvedValue(r0)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r2 = r2.mListAnchors
            r2 = r2[r19]
            int r2 = r2.getMargin()
            float r2 = (float) r2
            float r8 = r8 + r2
            float r6 = r6 + r8
            if (r3 == 0) goto L_0x031a
            int r2 = r3.getVisibility()
            r8 = 8
            if (r2 == r8) goto L_0x037d
            float r6 = r6 + r7
        L_0x037d:
            r2 = r3
            goto L_0x02f3
        L_0x0380:
            return r0
        L_0x0381:
            r0 = 0
            return r0
        L_0x0383:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.Optimizer.applyChainOptimized(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, androidx.constraintlayout.solver.LinearSystem, int, int, androidx.constraintlayout.solver.widgets.ChainHead):boolean");
    }

    static void setOptimizedWidget(ConstraintWidget constraintWidget, int i, int i2) {
        int i3 = i * 2;
        int i4 = i3 + 1;
        constraintWidget.mListAnchors[i3].getResolutionNode().resolvedTarget = constraintWidget.getParent().mLeft.getResolutionNode();
        constraintWidget.mListAnchors[i3].getResolutionNode().resolvedOffset = (float) i2;
        constraintWidget.mListAnchors[i3].getResolutionNode().state = 1;
        constraintWidget.mListAnchors[i4].getResolutionNode().resolvedTarget = constraintWidget.mListAnchors[i3].getResolutionNode();
        constraintWidget.mListAnchors[i4].getResolutionNode().resolvedOffset = (float) constraintWidget.getLength(i);
        constraintWidget.mListAnchors[i4].getResolutionNode().state = 1;
    }
}
