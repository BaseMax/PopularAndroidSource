package com.google.android.exoplayer2.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import c.e.a.a.m.b;
import c.e.a.a.m.n;
import c.e.a.a.m.p;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.crashlytics.android.core.CodedOutputStream;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

public class DefaultTimeBar extends View implements p {
    public int A;
    public long B;
    public int C;
    public boolean D;
    public long E;
    public long F;
    public long G;
    public long H;
    public int I;
    public long[] J;
    public boolean[] K;

    /* renamed from: a  reason: collision with root package name */
    public final Rect f12809a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    public final Rect f12810b = new Rect();

    /* renamed from: c  reason: collision with root package name */
    public final Rect f12811c = new Rect();

    /* renamed from: d  reason: collision with root package name */
    public final Rect f12812d = new Rect();

    /* renamed from: e  reason: collision with root package name */
    public final Paint f12813e = new Paint();

    /* renamed from: f  reason: collision with root package name */
    public final Paint f12814f = new Paint();

    /* renamed from: g  reason: collision with root package name */
    public final Paint f12815g = new Paint();

    /* renamed from: h  reason: collision with root package name */
    public final Paint f12816h = new Paint();

    /* renamed from: i  reason: collision with root package name */
    public final Paint f12817i = new Paint();

    /* renamed from: j  reason: collision with root package name */
    public final Paint f12818j = new Paint();

    /* renamed from: k  reason: collision with root package name */
    public final Drawable f12819k;

    /* renamed from: l  reason: collision with root package name */
    public final int f12820l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public final StringBuilder t;
    public final Formatter u;
    public final Runnable v;
    public final CopyOnWriteArraySet<p.a> w;
    public final int[] x;
    public final Point y;
    public final float z;

    public DefaultTimeBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12818j.setAntiAlias(true);
        this.w = new CopyOnWriteArraySet<>();
        this.x = new int[2];
        this.y = new Point();
        this.z = context.getResources().getDisplayMetrics().density;
        this.s = a(this.z, -50);
        int a2 = a(this.z, 4);
        int a3 = a(this.z, 26);
        int a4 = a(this.z, 4);
        int a5 = a(this.z, 12);
        int a6 = a(this.z, 0);
        int a7 = a(this.z, 16);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, n.DefaultTimeBar, 0, 0);
            try {
                this.f12819k = obtainStyledAttributes.getDrawable(n.DefaultTimeBar_scrubber_drawable);
                if (this.f12819k != null) {
                    a(this.f12819k);
                    a3 = Math.max(this.f12819k.getMinimumHeight(), a3);
                }
                this.f12820l = obtainStyledAttributes.getDimensionPixelSize(n.DefaultTimeBar_bar_height, a2);
                this.m = obtainStyledAttributes.getDimensionPixelSize(n.DefaultTimeBar_touch_target_height, a3);
                this.n = obtainStyledAttributes.getDimensionPixelSize(n.DefaultTimeBar_ad_marker_width, a4);
                this.o = obtainStyledAttributes.getDimensionPixelSize(n.DefaultTimeBar_scrubber_enabled_size, a5);
                this.p = obtainStyledAttributes.getDimensionPixelSize(n.DefaultTimeBar_scrubber_disabled_size, a6);
                this.q = obtainStyledAttributes.getDimensionPixelSize(n.DefaultTimeBar_scrubber_dragged_size, a7);
                int i2 = obtainStyledAttributes.getInt(n.DefaultTimeBar_played_color, -1);
                int i3 = obtainStyledAttributes.getInt(n.DefaultTimeBar_scrubber_color, c(i2));
                int i4 = obtainStyledAttributes.getInt(n.DefaultTimeBar_buffered_color, a(i2));
                int i5 = obtainStyledAttributes.getInt(n.DefaultTimeBar_unplayed_color, d(i2));
                int i6 = obtainStyledAttributes.getInt(n.DefaultTimeBar_ad_marker_color, -1291845888);
                int i7 = obtainStyledAttributes.getInt(n.DefaultTimeBar_played_ad_marker_color, b(i6));
                this.f12813e.setColor(i2);
                this.f12818j.setColor(i3);
                this.f12814f.setColor(i4);
                this.f12815g.setColor(i5);
                this.f12816h.setColor(i6);
                this.f12817i.setColor(i7);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            this.f12820l = a2;
            this.m = a3;
            this.n = a4;
            this.o = a5;
            this.p = a6;
            this.q = a7;
            this.f12813e.setColor(-1);
            this.f12818j.setColor(c(-1));
            this.f12814f.setColor(a(-1));
            this.f12815g.setColor(d(-1));
            this.f12816h.setColor(-1291845888);
            this.f12819k = null;
        }
        this.t = new StringBuilder();
        this.u = new Formatter(this.t, Locale.getDefault());
        this.v = new b(this);
        Drawable drawable = this.f12819k;
        if (drawable != null) {
            this.r = (drawable.getMinimumWidth() + 1) / 2;
        } else {
            this.r = (Math.max(this.p, Math.max(this.o, this.q)) + 1) / 2;
        }
        this.F = -9223372036854775807L;
        this.B = -9223372036854775807L;
        this.A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static int a(float f2, int i2) {
        return (int) ((((float) i2) * f2) + 0.5f);
    }

    public static int a(int i2) {
        return (i2 & 16777215) | -872415232;
    }

    public static int b(float f2, int i2) {
        return (int) (((float) i2) / f2);
    }

    public static int b(int i2) {
        return (i2 & 16777215) | 855638016;
    }

    public static int c(int i2) {
        return i2 | -16777216;
    }

    public static int d(int i2) {
        return (i2 & 16777215) | 855638016;
    }

    private long getPositionIncrement() {
        long j2 = this.B;
        if (j2 != -9223372036854775807L) {
            return j2;
        }
        long j3 = this.F;
        if (j3 == -9223372036854775807L) {
            return 0;
        }
        return j3 / ((long) this.A);
    }

    private String getProgressText() {
        return I.a(this.t, this.u, this.G);
    }

    private long getScrubberPosition() {
        if (this.f12810b.width() <= 0 || this.F == -9223372036854775807L) {
            return 0;
        }
        return (((long) this.f12812d.width()) * this.F) / ((long) this.f12810b.width());
    }

    public /* synthetic */ void a() {
        a(false);
    }

    public final void b(long j2) {
        this.E = j2;
        this.D = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<p.a> it = this.w.iterator();
        while (it.hasNext()) {
            it.next().b(this, j2);
        }
    }

    public final void c(long j2) {
        if (this.E != j2) {
            this.E = j2;
            Iterator<p.a> it = this.w.iterator();
            while (it.hasNext()) {
                it.next().a(this, j2);
            }
        }
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        c();
    }

    public long getPreferredUpdateDelay() {
        int b2 = b(this.z, this.f12810b.width());
        if (b2 != 0) {
            long j2 = this.F;
            if (!(j2 == 0 || j2 == -9223372036854775807L)) {
                return j2 / ((long) b2);
            }
        }
        return Long.MAX_VALUE;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f12819k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public void onDraw(Canvas canvas) {
        canvas.save();
        b(canvas);
        a(canvas);
        canvas.restore();
    }

    public void onFocusChanged(boolean z2, int i2, Rect rect) {
        super.onFocusChanged(z2, i2, rect);
        if (this.D && !z2) {
            a(false);
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @TargetApi(21)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.F > 0) {
            if (I.f9565a >= 21) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            } else {
                accessibilityNodeInfo.addAction(CodedOutputStream.DEFAULT_BUFFER_SIZE);
                accessibilityNodeInfo.addAction(8192);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (a(r0) == false) goto L_0x0030;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001a, code lost:
        removeCallbacks(r4.v);
        postDelayed(r4.v, 1000);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0026, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onKeyDown(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto L_0x0030
            long r0 = r4.getPositionIncrement()
            r2 = 66
            r3 = 1
            if (r5 == r2) goto L_0x0027
            switch(r5) {
                case 21: goto L_0x0013;
                case 22: goto L_0x0014;
                case 23: goto L_0x0027;
                default: goto L_0x0012;
            }
        L_0x0012:
            goto L_0x0030
        L_0x0013:
            long r0 = -r0
        L_0x0014:
            boolean r0 = r4.a((long) r0)
            if (r0 == 0) goto L_0x0030
            java.lang.Runnable r5 = r4.v
            r4.removeCallbacks(r5)
            java.lang.Runnable r5 = r4.v
            r0 = 1000(0x3e8, double:4.94E-321)
            r4.postDelayed(r5, r0)
            return r3
        L_0x0027:
            boolean r0 = r4.D
            if (r0 == 0) goto L_0x0030
            r5 = 0
            r4.a((boolean) r5)
            return r3
        L_0x0030:
            boolean r5 = super.onKeyDown(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6 = ((i5 - i3) - this.m) / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i4 - i2) - getPaddingRight();
        int i7 = this.m;
        int i8 = ((i7 - this.f12820l) / 2) + i6;
        this.f12809a.set(paddingLeft, i6, paddingRight, i7 + i6);
        Rect rect = this.f12810b;
        Rect rect2 = this.f12809a;
        int i9 = rect2.left;
        int i10 = this.r;
        rect.set(i9 + i10, i8, rect2.right - i10, this.f12820l + i8);
        b();
    }

    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == 0) {
            size = this.m;
        } else if (mode != 1073741824) {
            size = Math.min(this.m, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i2), size);
        c();
    }

    public void onRtlPropertiesChanged(int i2) {
        Drawable drawable = this.f12819k;
        if (drawable != null && a(drawable, i2)) {
            invalidate();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0025, code lost:
        if (r3 != 3) goto L_0x0076;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.isEnabled()
            r1 = 0
            if (r0 == 0) goto L_0x0076
            long r2 = r7.F
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L_0x0010
            goto L_0x0076
        L_0x0010:
            android.graphics.Point r0 = r7.a((android.view.MotionEvent) r8)
            int r2 = r0.x
            int r0 = r0.y
            int r3 = r8.getAction()
            r4 = 1
            if (r3 == 0) goto L_0x005d
            r5 = 3
            if (r3 == r4) goto L_0x004e
            r6 = 2
            if (r3 == r6) goto L_0x0028
            if (r3 == r5) goto L_0x004e
            goto L_0x0076
        L_0x0028:
            boolean r8 = r7.D
            if (r8 == 0) goto L_0x0076
            int r8 = r7.s
            if (r0 >= r8) goto L_0x003a
            int r8 = r7.C
            int r2 = r2 - r8
            int r2 = r2 / r5
            int r8 = r8 + r2
            float r8 = (float) r8
            r7.a((float) r8)
            goto L_0x0040
        L_0x003a:
            r7.C = r2
            float r8 = (float) r2
            r7.a((float) r8)
        L_0x0040:
            long r0 = r7.getScrubberPosition()
            r7.c((long) r0)
            r7.b()
            r7.invalidate()
            return r4
        L_0x004e:
            boolean r0 = r7.D
            if (r0 == 0) goto L_0x0076
            int r8 = r8.getAction()
            if (r8 != r5) goto L_0x0059
            r1 = 1
        L_0x0059:
            r7.a((boolean) r1)
            return r4
        L_0x005d:
            float r8 = (float) r2
            float r0 = (float) r0
            boolean r0 = r7.a((float) r8, (float) r0)
            if (r0 == 0) goto L_0x0076
            r7.a((float) r8)
            long r0 = r7.getScrubberPosition()
            r7.b((long) r0)
            r7.b()
            r7.invalidate()
            return r4
        L_0x0076:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        if (super.performAccessibilityAction(i2, bundle)) {
            return true;
        }
        if (this.F <= 0) {
            return false;
        }
        if (i2 == 8192) {
            if (a(-getPositionIncrement())) {
                a(false);
            }
        } else if (i2 != 4096) {
            return false;
        } else {
            if (a(getPositionIncrement())) {
                a(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i2) {
        this.f12816h.setColor(i2);
        invalidate(this.f12809a);
    }

    public void setBufferedColor(int i2) {
        this.f12814f.setColor(i2);
        invalidate(this.f12809a);
    }

    public void setBufferedPosition(long j2) {
        this.H = j2;
        b();
    }

    public void setDuration(long j2) {
        this.F = j2;
        if (this.D && j2 == -9223372036854775807L) {
            a(true);
        }
        b();
    }

    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        if (this.D && !z2) {
            a(true);
        }
    }

    public void setKeyCountIncrement(int i2) {
        C0737e.a(i2 > 0);
        this.A = i2;
        this.B = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j2) {
        C0737e.a(j2 > 0);
        this.A = -1;
        this.B = j2;
    }

    public void setPlayedAdMarkerColor(int i2) {
        this.f12817i.setColor(i2);
        invalidate(this.f12809a);
    }

    public void setPlayedColor(int i2) {
        this.f12813e.setColor(i2);
        invalidate(this.f12809a);
    }

    public void setPosition(long j2) {
        this.G = j2;
        setContentDescription(getProgressText());
        b();
    }

    public void setScrubberColor(int i2) {
        this.f12818j.setColor(i2);
        invalidate(this.f12809a);
    }

    public void setUnplayedColor(int i2) {
        this.f12815g.setColor(i2);
        invalidate(this.f12809a);
    }

    public void a(p.a aVar) {
        this.w.add(aVar);
    }

    public void a(long[] jArr, boolean[] zArr, int i2) {
        C0737e.a(i2 == 0 || !(jArr == null || zArr == null));
        this.I = i2;
        this.J = jArr;
        this.K = zArr;
        b();
    }

    public final void c() {
        Drawable drawable = this.f12819k;
        if (drawable != null && drawable.isStateful() && this.f12819k.setState(getDrawableState())) {
            invalidate();
        }
    }

    public final void a(boolean z2) {
        removeCallbacks(this.v);
        this.D = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<p.a> it = this.w.iterator();
        while (it.hasNext()) {
            it.next().a(this, this.E, z2);
        }
    }

    public final void b() {
        this.f12811c.set(this.f12810b);
        this.f12812d.set(this.f12810b);
        long j2 = this.D ? this.E : this.G;
        if (this.F > 0) {
            int width = (int) ((((long) this.f12810b.width()) * this.H) / this.F);
            Rect rect = this.f12811c;
            Rect rect2 = this.f12810b;
            rect.right = Math.min(rect2.left + width, rect2.right);
            int width2 = (int) ((((long) this.f12810b.width()) * j2) / this.F);
            Rect rect3 = this.f12812d;
            Rect rect4 = this.f12810b;
            rect3.right = Math.min(rect4.left + width2, rect4.right);
        } else {
            Rect rect5 = this.f12811c;
            int i2 = this.f12810b.left;
            rect5.right = i2;
            this.f12812d.right = i2;
        }
        invalidate(this.f12809a);
    }

    public final boolean a(long j2) {
        if (this.F <= 0) {
            return false;
        }
        long j3 = this.D ? this.E : this.G;
        long b2 = I.b(j3 + j2, 0, this.F);
        if (b2 == j3) {
            return false;
        }
        if (!this.D) {
            b(b2);
        } else {
            c(b2);
        }
        b();
        return true;
    }

    public final void b(Canvas canvas) {
        int height = this.f12810b.height();
        int centerY = this.f12810b.centerY() - (height / 2);
        int i2 = height + centerY;
        if (this.F <= 0) {
            Rect rect = this.f12810b;
            canvas.drawRect((float) rect.left, (float) centerY, (float) rect.right, (float) i2, this.f12815g);
            return;
        }
        Rect rect2 = this.f12811c;
        int i3 = rect2.left;
        int i4 = rect2.right;
        int max = Math.max(Math.max(this.f12810b.left, i4), this.f12812d.right);
        int i5 = this.f12810b.right;
        if (max < i5) {
            canvas.drawRect((float) max, (float) centerY, (float) i5, (float) i2, this.f12815g);
        }
        int max2 = Math.max(i3, this.f12812d.right);
        if (i4 > max2) {
            canvas.drawRect((float) max2, (float) centerY, (float) i4, (float) i2, this.f12814f);
        }
        if (this.f12812d.width() > 0) {
            Rect rect3 = this.f12812d;
            canvas.drawRect((float) rect3.left, (float) centerY, (float) rect3.right, (float) i2, this.f12813e);
        }
        if (this.I != 0) {
            long[] jArr = this.J;
            C0737e.a(jArr);
            long[] jArr2 = jArr;
            boolean[] zArr = this.K;
            C0737e.a(zArr);
            boolean[] zArr2 = zArr;
            int i6 = this.n / 2;
            for (int i7 = 0; i7 < this.I; i7++) {
                long b2 = I.b(jArr2[i7], 0, this.F);
                Rect rect4 = this.f12810b;
                int min = rect4.left + Math.min(rect4.width() - this.n, Math.max(0, ((int) ((((long) this.f12810b.width()) * b2) / this.F)) - i6));
                canvas.drawRect((float) min, (float) centerY, (float) (min + this.n), (float) i2, zArr2[i7] ? this.f12817i : this.f12816h);
            }
        }
    }

    public final void a(float f2) {
        Rect rect = this.f12812d;
        Rect rect2 = this.f12810b;
        rect.right = I.a((int) f2, rect2.left, rect2.right);
    }

    public final Point a(MotionEvent motionEvent) {
        getLocationOnScreen(this.x);
        this.y.set(((int) motionEvent.getRawX()) - this.x[0], ((int) motionEvent.getRawY()) - this.x[1]);
        return this.y;
    }

    public final boolean a(float f2, float f3) {
        return this.f12809a.contains((int) f2, (int) f3);
    }

    public final void a(Canvas canvas) {
        int i2;
        if (this.F > 0) {
            Rect rect = this.f12812d;
            int a2 = I.a(rect.right, rect.left, this.f12810b.right);
            int centerY = this.f12812d.centerY();
            Drawable drawable = this.f12819k;
            if (drawable == null) {
                if (this.D || isFocused()) {
                    i2 = this.q;
                } else {
                    i2 = isEnabled() ? this.o : this.p;
                }
                canvas.drawCircle((float) a2, (float) centerY, (float) (i2 / 2), this.f12818j);
            } else {
                int intrinsicWidth = drawable.getIntrinsicWidth() / 2;
                int intrinsicHeight = this.f12819k.getIntrinsicHeight() / 2;
                this.f12819k.setBounds(a2 - intrinsicWidth, centerY - intrinsicHeight, a2 + intrinsicWidth, centerY + intrinsicHeight);
                this.f12819k.draw(canvas);
            }
        }
    }

    public final boolean a(Drawable drawable) {
        return I.f9565a >= 23 && a(drawable, getLayoutDirection());
    }

    public static boolean a(Drawable drawable, int i2) {
        return I.f9565a >= 23 && drawable.setLayoutDirection(i2);
    }
}
