package com.google.android.material.transformation;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.a.h;
import com.google.android.material.a.i;
import com.google.android.material.a.j;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.List;

public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: a  reason: collision with root package name */
    private final Rect f4027a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    private final RectF f4028b = new RectF();
    private final RectF c = new RectF();
    private final int[] d = new int[2];

    protected static class a {
        public j positioning;
        public h timings;

        protected a() {
        }
    }

    /* access modifiers changed from: protected */
    public abstract a a(Context context, boolean z);

    public FabTransformationBehavior() {
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        } else if (!(view2 instanceof FloatingActionButton)) {
            return false;
        } else {
            int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
            if (expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId()) {
                return true;
            }
            return false;
        }
    }

    public void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x017e  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0283  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0287  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x02da  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x02ee  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x02f3  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x030f  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x0364 A[LOOP:0: B:93:0x0362->B:94:0x0364, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.animation.AnimatorSet b(android.view.View r26, android.view.View r27, boolean r28, boolean r29) {
        /*
            r25 = this;
            r0 = r25
            r1 = r26
            r9 = r27
            r10 = r28
            android.content.Context r2 = r27.getContext()
            com.google.android.material.transformation.FabTransformationBehavior$a r11 = r0.a((android.content.Context) r2, (boolean) r10)
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            java.util.ArrayList r13 = new java.util.ArrayList
            r13.<init>()
            int r2 = android.os.Build.VERSION.SDK_INT
            r14 = 21
            r15 = 0
            r8 = 1
            r7 = 0
            if (r2 < r14) goto L_0x0058
            float r2 = androidx.core.view.ViewCompat.getElevation(r27)
            float r3 = androidx.core.view.ViewCompat.getElevation(r26)
            float r2 = r2 - r3
            if (r10 == 0) goto L_0x003f
            if (r29 != 0) goto L_0x0034
            float r2 = -r2
            r9.setTranslationZ(r2)
        L_0x0034:
            android.util.Property r2 = android.view.View.TRANSLATION_Z
            float[] r3 = new float[r8]
            r3[r7] = r15
            android.animation.ObjectAnimator r2 = android.animation.ObjectAnimator.ofFloat(r9, r2, r3)
            goto L_0x004a
        L_0x003f:
            android.util.Property r3 = android.view.View.TRANSLATION_Z
            float[] r4 = new float[r8]
            float r2 = -r2
            r4[r7] = r2
            android.animation.ObjectAnimator r2 = android.animation.ObjectAnimator.ofFloat(r9, r3, r4)
        L_0x004a:
            com.google.android.material.a.h r3 = r11.timings
            java.lang.String r4 = "elevation"
            com.google.android.material.a.i r3 = r3.getTiming(r4)
            r3.apply(r2)
            r12.add(r2)
        L_0x0058:
            android.graphics.RectF r2 = r0.f4028b
            com.google.android.material.a.j r3 = r11.positioning
            float r3 = r0.a((android.view.View) r1, (android.view.View) r9, (com.google.android.material.a.j) r3)
            com.google.android.material.a.j r4 = r11.positioning
            float r4 = r0.b(r1, r9, r4)
            int r5 = (r3 > r15 ? 1 : (r3 == r15 ? 0 : -1))
            if (r5 == 0) goto L_0x009d
            int r5 = (r4 > r15 ? 1 : (r4 == r15 ? 0 : -1))
            if (r5 != 0) goto L_0x006f
            goto L_0x009d
        L_0x006f:
            if (r10 == 0) goto L_0x0075
            int r5 = (r4 > r15 ? 1 : (r4 == r15 ? 0 : -1))
            if (r5 < 0) goto L_0x007b
        L_0x0075:
            if (r10 != 0) goto L_0x008c
            int r5 = (r4 > r15 ? 1 : (r4 == r15 ? 0 : -1))
            if (r5 <= 0) goto L_0x008c
        L_0x007b:
            com.google.android.material.a.h r5 = r11.timings
            java.lang.String r6 = "translationXCurveUpwards"
            com.google.android.material.a.i r5 = r5.getTiming(r6)
            com.google.android.material.a.h r6 = r11.timings
            java.lang.String r14 = "translationYCurveUpwards"
            com.google.android.material.a.i r6 = r6.getTiming(r14)
            goto L_0x00ad
        L_0x008c:
            com.google.android.material.a.h r5 = r11.timings
            java.lang.String r6 = "translationXCurveDownwards"
            com.google.android.material.a.i r5 = r5.getTiming(r6)
            com.google.android.material.a.h r6 = r11.timings
            java.lang.String r14 = "translationYCurveDownwards"
            com.google.android.material.a.i r6 = r6.getTiming(r14)
            goto L_0x00ad
        L_0x009d:
            com.google.android.material.a.h r5 = r11.timings
            java.lang.String r6 = "translationXLinear"
            com.google.android.material.a.i r5 = r5.getTiming(r6)
            com.google.android.material.a.h r6 = r11.timings
            java.lang.String r14 = "translationYLinear"
            com.google.android.material.a.i r6 = r6.getTiming(r14)
        L_0x00ad:
            if (r10 == 0) goto L_0x00f7
            if (r29 != 0) goto L_0x00b9
            float r14 = -r3
            r9.setTranslationX(r14)
            float r14 = -r4
            r9.setTranslationY(r14)
        L_0x00b9:
            android.util.Property r14 = android.view.View.TRANSLATION_X
            r17 = r13
            float[] r13 = new float[r8]
            r13[r7] = r15
            android.animation.ObjectAnimator r13 = android.animation.ObjectAnimator.ofFloat(r9, r14, r13)
            android.util.Property r14 = android.view.View.TRANSLATION_Y
            r18 = r13
            float[] r13 = new float[r8]
            r13[r7] = r15
            android.animation.ObjectAnimator r13 = android.animation.ObjectAnimator.ofFloat(r9, r14, r13)
            float r3 = -r3
            float r4 = -r4
            float r3 = a((com.google.android.material.transformation.FabTransformationBehavior.a) r11, (com.google.android.material.a.i) r5, (float) r3)
            float r4 = a((com.google.android.material.transformation.FabTransformationBehavior.a) r11, (com.google.android.material.a.i) r6, (float) r4)
            android.graphics.Rect r14 = r0.f4027a
            r9.getWindowVisibleDisplayFrame(r14)
            android.graphics.RectF r15 = r0.f4028b
            r15.set(r14)
            android.graphics.RectF r14 = r0.c
            r0.a((android.view.View) r9, (android.graphics.RectF) r14)
            r14.offset(r3, r4)
            r14.intersect(r15)
            r2.set(r14)
            r3 = r13
            r13 = r18
            goto L_0x010f
        L_0x00f7:
            r17 = r13
            android.util.Property r13 = android.view.View.TRANSLATION_X
            float[] r14 = new float[r8]
            float r3 = -r3
            r14[r7] = r3
            android.animation.ObjectAnimator r13 = android.animation.ObjectAnimator.ofFloat(r9, r13, r14)
            android.util.Property r3 = android.view.View.TRANSLATION_Y
            float[] r14 = new float[r8]
            float r4 = -r4
            r14[r7] = r4
            android.animation.ObjectAnimator r3 = android.animation.ObjectAnimator.ofFloat(r9, r3, r14)
        L_0x010f:
            r5.apply(r13)
            r6.apply(r3)
            r12.add(r13)
            r12.add(r3)
            float r23 = r2.width()
            float r24 = r2.height()
            boolean r13 = r9 instanceof com.google.android.material.circularreveal.c
            if (r13 == 0) goto L_0x017a
            boolean r2 = r1 instanceof android.widget.ImageView
            if (r2 != 0) goto L_0x012c
            goto L_0x017a
        L_0x012c:
            r2 = r9
            com.google.android.material.circularreveal.c r2 = (com.google.android.material.circularreveal.c) r2
            r3 = r1
            android.widget.ImageView r3 = (android.widget.ImageView) r3
            android.graphics.drawable.Drawable r3 = r3.getDrawable()
            if (r3 == 0) goto L_0x017a
            r3.mutate()
            r4 = 255(0xff, float:3.57E-43)
            if (r10 == 0) goto L_0x014f
            if (r29 != 0) goto L_0x0144
            r3.setAlpha(r4)
        L_0x0144:
            android.util.Property<android.graphics.drawable.Drawable, java.lang.Integer> r4 = com.google.android.material.a.e.DRAWABLE_ALPHA_COMPAT
            int[] r5 = new int[r8]
            r5[r7] = r7
            android.animation.ObjectAnimator r4 = android.animation.ObjectAnimator.ofInt(r3, r4, r5)
            goto L_0x0159
        L_0x014f:
            android.util.Property<android.graphics.drawable.Drawable, java.lang.Integer> r5 = com.google.android.material.a.e.DRAWABLE_ALPHA_COMPAT
            int[] r6 = new int[r8]
            r6[r7] = r4
            android.animation.ObjectAnimator r4 = android.animation.ObjectAnimator.ofInt(r3, r5, r6)
        L_0x0159:
            com.google.android.material.transformation.FabTransformationBehavior$2 r5 = new com.google.android.material.transformation.FabTransformationBehavior$2
            r5.<init>(r9)
            r4.addUpdateListener(r5)
            com.google.android.material.a.h r5 = r11.timings
            java.lang.String r6 = "iconFade"
            com.google.android.material.a.i r5 = r5.getTiming(r6)
            r5.apply(r4)
            r12.add(r4)
            com.google.android.material.transformation.FabTransformationBehavior$3 r4 = new com.google.android.material.transformation.FabTransformationBehavior$3
            r4.<init>(r2, r3)
            r14 = r17
            r14.add(r4)
            goto L_0x017c
        L_0x017a:
            r14 = r17
        L_0x017c:
            if (r13 == 0) goto L_0x0283
            r15 = r9
            com.google.android.material.circularreveal.c r15 = (com.google.android.material.circularreveal.c) r15
            com.google.android.material.a.j r2 = r11.positioning
            android.graphics.RectF r3 = r0.f4028b
            android.graphics.RectF r4 = r0.c
            r0.a((android.view.View) r1, (android.graphics.RectF) r3)
            r0.a((android.view.View) r9, (android.graphics.RectF) r4)
            float r2 = r0.a((android.view.View) r1, (android.view.View) r9, (com.google.android.material.a.j) r2)
            float r2 = -r2
            r5 = 0
            r4.offset(r2, r5)
            float r2 = r3.centerX()
            float r3 = r4.left
            float r2 = r2 - r3
            com.google.android.material.a.j r3 = r11.positioning
            android.graphics.RectF r4 = r0.f4028b
            android.graphics.RectF r6 = r0.c
            r0.a((android.view.View) r1, (android.graphics.RectF) r4)
            r0.a((android.view.View) r9, (android.graphics.RectF) r6)
            float r3 = r0.b(r1, r9, r3)
            float r3 = -r3
            r6.offset(r5, r3)
            float r3 = r4.centerY()
            float r4 = r6.top
            float r3 = r3 - r4
            r4 = r1
            com.google.android.material.floatingactionbutton.FloatingActionButton r4 = (com.google.android.material.floatingactionbutton.FloatingActionButton) r4
            android.graphics.Rect r5 = r0.f4027a
            r4.getContentRect(r5)
            android.graphics.Rect r4 = r0.f4027a
            int r4 = r4.width()
            float r4 = (float) r4
            r5 = 1073741824(0x40000000, float:2.0)
            float r6 = r4 / r5
            com.google.android.material.a.h r4 = r11.timings
            java.lang.String r5 = "expansion"
            com.google.android.material.a.i r5 = r4.getTiming(r5)
            if (r10 == 0) goto L_0x0225
            if (r29 != 0) goto L_0x01df
            com.google.android.material.circularreveal.c$d r4 = new com.google.android.material.circularreveal.c$d
            r4.<init>(r2, r3, r6)
            r15.setRevealInfo(r4)
        L_0x01df:
            if (r29 == 0) goto L_0x01ea
            com.google.android.material.circularreveal.c$d r4 = r15.getRevealInfo()
            float r4 = r4.radius
            r16 = r4
            goto L_0x01ec
        L_0x01ea:
            r16 = r6
        L_0x01ec:
            r21 = 0
            r22 = 0
            r19 = r2
            r20 = r3
            float r4 = com.google.android.material.e.a.distanceToFurthestCorner(r19, r20, r21, r22, r23, r24)
            android.animation.Animator r6 = com.google.android.material.circularreveal.a.createCircularReveal(r15, r2, r3, r4)
            com.google.android.material.transformation.FabTransformationBehavior$4 r4 = new com.google.android.material.transformation.FabTransformationBehavior$4
            r4.<init>(r15)
            r6.addListener(r4)
            long r17 = r5.getDelay()
            int r4 = (int) r2
            int r3 = (int) r3
            r2 = r27
            r20 = r3
            r19 = r4
            r3 = r17
            r17 = r5
            r5 = r19
            r18 = r6
            r6 = r20
            r0 = 0
            r7 = r16
            r0 = 1
            r8 = r12
            a(r2, r3, r5, r6, r7, r8)
            r22 = r11
            goto L_0x0271
        L_0x0225:
            r17 = r5
            r0 = 1
            com.google.android.material.circularreveal.c$d r4 = r15.getRevealInfo()
            float r7 = r4.radius
            android.animation.Animator r18 = com.google.android.material.circularreveal.a.createCircularReveal(r15, r2, r3, r6)
            long r4 = r17.getDelay()
            int r8 = (int) r2
            int r3 = (int) r3
            r2 = r27
            r20 = r3
            r3 = r4
            r5 = r8
            r0 = r6
            r6 = r20
            r1 = r8
            r8 = r12
            a(r2, r3, r5, r6, r7, r8)
            long r2 = r17.getDelay()
            long r4 = r17.getDuration()
            com.google.android.material.a.h r6 = r11.timings
            long r6 = r6.getTotalDuration()
            int r8 = android.os.Build.VERSION.SDK_INT
            r22 = r11
            r11 = 21
            if (r8 < r11) goto L_0x0271
            long r2 = r2 + r4
            int r4 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r4 >= 0) goto L_0x0271
            r4 = r20
            android.animation.Animator r0 = android.view.ViewAnimationUtils.createCircularReveal(r9, r1, r4, r0, r0)
            r0.setStartDelay(r2)
            long r6 = r6 - r2
            r0.setDuration(r6)
            r12.add(r0)
        L_0x0271:
            r0 = r17
            r1 = r18
            r0.apply(r1)
            r12.add(r1)
            android.animation.Animator$AnimatorListener r0 = com.google.android.material.circularreveal.a.createCircularRevealListener(r15)
            r14.add(r0)
            goto L_0x0285
        L_0x0283:
            r22 = r11
        L_0x0285:
            if (r13 == 0) goto L_0x02da
            r0 = r9
            com.google.android.material.circularreveal.c r0 = (com.google.android.material.circularreveal.c) r0
            android.content.res.ColorStateList r1 = androidx.core.view.ViewCompat.getBackgroundTintList(r26)
            if (r1 == 0) goto L_0x029d
            int[] r2 = r26.getDrawableState()
            int r3 = r1.getDefaultColor()
            int r7 = r1.getColorForState(r2, r3)
            goto L_0x029e
        L_0x029d:
            r7 = 0
        L_0x029e:
            r1 = 16777215(0xffffff, float:2.3509886E-38)
            r1 = r1 & r7
            if (r10 == 0) goto L_0x02b6
            if (r29 != 0) goto L_0x02a9
            r0.setCircularRevealScrimColor(r7)
        L_0x02a9:
            android.util.Property<com.google.android.material.circularreveal.c, java.lang.Integer> r2 = com.google.android.material.circularreveal.c.C0071c.CIRCULAR_REVEAL_SCRIM_COLOR
            r3 = 1
            int[] r4 = new int[r3]
            r5 = 0
            r4[r5] = r1
            android.animation.ObjectAnimator r0 = android.animation.ObjectAnimator.ofInt(r0, r2, r4)
            goto L_0x02c2
        L_0x02b6:
            r3 = 1
            r5 = 0
            android.util.Property<com.google.android.material.circularreveal.c, java.lang.Integer> r1 = com.google.android.material.circularreveal.c.C0071c.CIRCULAR_REVEAL_SCRIM_COLOR
            int[] r2 = new int[r3]
            r2[r5] = r7
            android.animation.ObjectAnimator r0 = android.animation.ObjectAnimator.ofInt(r0, r1, r2)
        L_0x02c2:
            com.google.android.material.a.c r1 = com.google.android.material.a.c.getInstance()
            r0.setEvaluator(r1)
            r1 = r22
            com.google.android.material.a.h r2 = r1.timings
            java.lang.String r3 = "color"
            com.google.android.material.a.i r2 = r2.getTiming(r3)
            r2.apply(r0)
            r12.add(r0)
            goto L_0x02dc
        L_0x02da:
            r1 = r22
        L_0x02dc:
            boolean r0 = r9 instanceof android.view.ViewGroup
            if (r0 == 0) goto L_0x0348
            if (r13 == 0) goto L_0x02e6
            int r0 = com.google.android.material.circularreveal.b.STRATEGY
            if (r0 == 0) goto L_0x0348
        L_0x02e6:
            int r0 = com.google.android.material.a.f.mtrl_child_content_container
            android.view.View r0 = r9.findViewById(r0)
            if (r0 == 0) goto L_0x02f3
            android.view.ViewGroup r0 = a(r0)
            goto L_0x030d
        L_0x02f3:
            boolean r0 = r9 instanceof com.google.android.material.transformation.TransformationChildLayout
            if (r0 != 0) goto L_0x0301
            boolean r0 = r9 instanceof com.google.android.material.transformation.TransformationChildCard
            if (r0 == 0) goto L_0x02fc
            goto L_0x0301
        L_0x02fc:
            android.view.ViewGroup r0 = a(r27)
            goto L_0x030d
        L_0x0301:
            r0 = r9
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            r2 = 0
            android.view.View r0 = r0.getChildAt(r2)
            android.view.ViewGroup r0 = a(r0)
        L_0x030d:
            if (r0 == 0) goto L_0x0348
            if (r10 == 0) goto L_0x032c
            if (r29 != 0) goto L_0x031d
            android.util.Property<android.view.ViewGroup, java.lang.Float> r2 = com.google.android.material.a.d.CHILDREN_ALPHA
            r3 = 0
            java.lang.Float r3 = java.lang.Float.valueOf(r3)
            r2.set(r0, r3)
        L_0x031d:
            android.util.Property<android.view.ViewGroup, java.lang.Float> r2 = com.google.android.material.a.d.CHILDREN_ALPHA
            r3 = 1
            float[] r3 = new float[r3]
            r4 = 1065353216(0x3f800000, float:1.0)
            r5 = 0
            r3[r5] = r4
            android.animation.ObjectAnimator r0 = android.animation.ObjectAnimator.ofFloat(r0, r2, r3)
            goto L_0x0339
        L_0x032c:
            r3 = 1
            r5 = 0
            android.util.Property<android.view.ViewGroup, java.lang.Float> r2 = com.google.android.material.a.d.CHILDREN_ALPHA
            float[] r3 = new float[r3]
            r4 = 0
            r3[r5] = r4
            android.animation.ObjectAnimator r0 = android.animation.ObjectAnimator.ofFloat(r0, r2, r3)
        L_0x0339:
            com.google.android.material.a.h r1 = r1.timings
            java.lang.String r2 = "contentFade"
            com.google.android.material.a.i r1 = r1.getTiming(r2)
            r1.apply(r0)
            r12.add(r0)
            goto L_0x0349
        L_0x0348:
            r5 = 0
        L_0x0349:
            android.animation.AnimatorSet r0 = new android.animation.AnimatorSet
            r0.<init>()
            com.google.android.material.a.b.playTogether(r0, r12)
            com.google.android.material.transformation.FabTransformationBehavior$1 r1 = new com.google.android.material.transformation.FabTransformationBehavior$1
            r4 = 0
            r2 = r25
            r3 = r26
            r1.<init>(r10, r9, r3)
            r0.addListener(r1)
            int r1 = r14.size()
        L_0x0362:
            if (r4 >= r1) goto L_0x0370
            java.lang.Object r3 = r14.get(r4)
            android.animation.Animator$AnimatorListener r3 = (android.animation.Animator.AnimatorListener) r3
            r0.addListener(r3)
            int r4 = r4 + 1
            goto L_0x0362
        L_0x0370:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.b(android.view.View, android.view.View, boolean, boolean):android.animation.AnimatorSet");
    }

    private float a(View view, View view2, j jVar) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f4028b;
        RectF rectF2 = this.c;
        a(view, rectF);
        a(view2, rectF2);
        int i = jVar.gravity & 7;
        if (i == 1) {
            f3 = rectF2.centerX();
            f2 = rectF.centerX();
        } else if (i == 3) {
            f3 = rectF2.left;
            f2 = rectF.left;
        } else if (i != 5) {
            f = 0.0f;
            return f + jVar.xAdjustment;
        } else {
            f3 = rectF2.right;
            f2 = rectF.right;
        }
        f = f3 - f2;
        return f + jVar.xAdjustment;
    }

    private float b(View view, View view2, j jVar) {
        float f;
        float f2;
        float f3;
        RectF rectF = this.f4028b;
        RectF rectF2 = this.c;
        a(view, rectF);
        a(view2, rectF2);
        int i = jVar.gravity & 112;
        if (i == 16) {
            f3 = rectF2.centerY();
            f2 = rectF.centerY();
        } else if (i == 48) {
            f3 = rectF2.top;
            f2 = rectF.top;
        } else if (i != 80) {
            f = 0.0f;
            return f + jVar.yAdjustment;
        } else {
            f3 = rectF2.bottom;
            f2 = rectF.bottom;
        }
        f = f3 - f2;
        return f + jVar.yAdjustment;
    }

    private void a(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, (float) view.getWidth(), (float) view.getHeight());
        int[] iArr = this.d;
        view.getLocationInWindow(iArr);
        rectF.offsetTo((float) iArr[0], (float) iArr[1]);
        rectF.offset((float) ((int) (-view.getTranslationX())), (float) ((int) (-view.getTranslationY())));
    }

    private static float a(a aVar, i iVar, float f) {
        long delay = iVar.getDelay();
        long duration = iVar.getDuration();
        i timing = aVar.timings.getTiming("expansion");
        return com.google.android.material.a.a.lerp(f, 0.0f, iVar.getInterpolator().getInterpolation(((float) (((timing.getDelay() + timing.getDuration()) + 17) - delay)) / ((float) duration)));
    }

    private static ViewGroup a(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    private static void a(View view, long j, int i, int i2, float f, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21 && j > 0) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
            createCircularReveal.setStartDelay(0);
            createCircularReveal.setDuration(j);
            list.add(createCircularReveal);
        }
    }
}
