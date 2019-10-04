package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import b.i.k.z;
import c.e.a.c.f;
import c.e.a.c.k;
import c.e.a.c.s.n;

public class SnackbarContentLayout extends LinearLayout implements n {

    /* renamed from: a  reason: collision with root package name */
    public TextView f13403a;

    /* renamed from: b  reason: collision with root package name */
    public Button f13404b;

    /* renamed from: c  reason: collision with root package name */
    public int f13405c;

    /* renamed from: d  reason: collision with root package name */
    public int f13406d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public final boolean a(int i2, int i3, int i4) {
        boolean z;
        if (i2 != getOrientation()) {
            setOrientation(i2);
            z = true;
        } else {
            z = false;
        }
        if (this.f13403a.getPaddingTop() == i3 && this.f13403a.getPaddingBottom() == i4) {
            return z;
        }
        a((View) this.f13403a, i3, i4);
        return true;
    }

    public void b(int i2, int i3) {
        this.f13403a.setAlpha(1.0f);
        long j2 = (long) i3;
        long j3 = (long) i2;
        this.f13403a.animate().alpha(0.0f).setDuration(j2).setStartDelay(j3).start();
        if (this.f13404b.getVisibility() == 0) {
            this.f13404b.setAlpha(1.0f);
            this.f13404b.animate().alpha(0.0f).setDuration(j2).setStartDelay(j3).start();
        }
    }

    public Button getActionView() {
        return this.f13404b;
    }

    public TextView getMessageView() {
        return this.f13403a;
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.f13403a = (TextView) findViewById(f.snackbar_text);
        this.f13404b = (Button) findViewById(f.snackbar_action);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0053, code lost:
        if (a(1, r0, r0 - r1) != false) goto L_0x0062;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x005e, code lost:
        if (a(0, r0, r0) != false) goto L_0x0062;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            super.onMeasure(r8, r9)
            int r0 = r7.f13405c
            if (r0 <= 0) goto L_0x0018
            int r0 = r7.getMeasuredWidth()
            int r1 = r7.f13405c
            if (r0 <= r1) goto L_0x0018
            r8 = 1073741824(0x40000000, float:2.0)
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r8)
            super.onMeasure(r8, r9)
        L_0x0018:
            android.content.res.Resources r0 = r7.getResources()
            int r1 = c.e.a.c.d.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            android.content.res.Resources r1 = r7.getResources()
            int r2 = c.e.a.c.d.design_snackbar_padding_vertical
            int r1 = r1.getDimensionPixelSize(r2)
            android.widget.TextView r2 = r7.f13403a
            android.text.Layout r2 = r2.getLayout()
            int r2 = r2.getLineCount()
            r3 = 0
            r4 = 1
            if (r2 <= r4) goto L_0x003c
            r2 = 1
            goto L_0x003d
        L_0x003c:
            r2 = 0
        L_0x003d:
            if (r2 == 0) goto L_0x0056
            int r5 = r7.f13406d
            if (r5 <= 0) goto L_0x0056
            android.widget.Button r5 = r7.f13404b
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.f13406d
            if (r5 <= r6) goto L_0x0056
            int r1 = r0 - r1
            boolean r0 = r7.a((int) r4, (int) r0, (int) r1)
            if (r0 == 0) goto L_0x0061
            goto L_0x0062
        L_0x0056:
            if (r2 == 0) goto L_0x0059
            goto L_0x005a
        L_0x0059:
            r0 = r1
        L_0x005a:
            boolean r0 = r7.a((int) r3, (int) r0, (int) r0)
            if (r0 == 0) goto L_0x0061
            goto L_0x0062
        L_0x0061:
            r4 = 0
        L_0x0062:
            if (r4 == 0) goto L_0x0067
            super.onMeasure(r8, r9)
        L_0x0067:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.SnackbarLayout);
        this.f13405c = obtainStyledAttributes.getDimensionPixelSize(k.SnackbarLayout_android_maxWidth, -1);
        this.f13406d = obtainStyledAttributes.getDimensionPixelSize(k.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    public static void a(View view, int i2, int i3) {
        if (z.D(view)) {
            z.a(view, z.q(view), i2, z.p(view), i3);
        } else {
            view.setPadding(view.getPaddingLeft(), i2, view.getPaddingRight(), i3);
        }
    }

    public void a(int i2, int i3) {
        this.f13403a.setAlpha(0.0f);
        long j2 = (long) i3;
        long j3 = (long) i2;
        this.f13403a.animate().alpha(1.0f).setDuration(j2).setStartDelay(j3).start();
        if (this.f13404b.getVisibility() == 0) {
            this.f13404b.setAlpha(0.0f);
            this.f13404b.animate().alpha(1.0f).setDuration(j2).setStartDelay(j3).start();
        }
    }
}
