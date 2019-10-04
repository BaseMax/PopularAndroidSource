package cab.snapp.snappuikit;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import cab.snapp.snappuikit.a;
import cab.snapp.snappuikit.fab.Label;
import java.util.ArrayList;

public class SnappFloatingActionMenu extends ViewGroup {
    private int A;
    private float B;
    private float C;
    private float D;
    private int E;
    private int F;
    private int G;
    private Drawable H;
    private int I;
    private Interpolator J;
    private Interpolator K;
    /* access modifiers changed from: private */
    public boolean L;
    private boolean M;
    private int N;
    private int O;
    private int P;
    private int Q;
    private Typeface R;
    private boolean S;
    private ImageView T;
    private Animation U;
    /* access modifiers changed from: private */
    public Animation V;
    private Animation W;

    /* renamed from: a  reason: collision with root package name */
    private AnimatorSet f1578a;
    private Animation aa;
    /* access modifiers changed from: private */
    public boolean ab;
    private boolean ac;
    private int ad;
    /* access modifiers changed from: private */
    public a ae;
    private ValueAnimator af;
    private ValueAnimator ag;
    private int ah;
    private int ai;
    private Context aj;
    private String ak;
    private boolean al;

    /* renamed from: b  reason: collision with root package name */
    private AnimatorSet f1579b;
    private AnimatorSet c;
    private int d;
    /* access modifiers changed from: private */
    public SnappFloatingActionButton e;
    private int f;
    private int g;
    private int h;
    private int i;
    /* access modifiers changed from: private */
    public boolean j;
    private boolean k;
    private Handler l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private ColorStateList s;
    private float t;
    private int u;
    private boolean v;
    private int w;
    private int x;
    private int y;
    private boolean z;

    public interface a {
        void onMenuToggle(boolean z);
    }

    public SnappFloatingActionMenu(Context context) {
        this(context, null);
    }

    public SnappFloatingActionMenu(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0333, code lost:
        if (r10.ai == 0) goto L_0x0335;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0343, code lost:
        if (r10.ai == 0) goto L_0x0345;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public SnappFloatingActionMenu(android.content.Context r11, android.util.AttributeSet r12, int r13) {
        /*
            r10 = this;
            r10.<init>(r11, r12, r13)
            android.animation.AnimatorSet r13 = new android.animation.AnimatorSet
            r13.<init>()
            r10.f1578a = r13
            android.animation.AnimatorSet r13 = new android.animation.AnimatorSet
            r13.<init>()
            r10.f1579b = r13
            android.content.Context r13 = r10.getContext()
            r0 = 0
            float r13 = cab.snapp.c.e.convertDpToPixel(r13, r0)
            int r13 = (int) r13
            r10.d = r13
            android.content.Context r13 = r10.getContext()
            float r13 = cab.snapp.c.e.convertDpToPixel(r13, r0)
            int r13 = (int) r13
            r10.g = r13
            android.content.Context r13 = r10.getContext()
            float r13 = cab.snapp.c.e.convertDpToPixel(r13, r0)
            int r13 = (int) r13
            r10.h = r13
            android.os.Handler r13 = new android.os.Handler
            r13.<init>()
            r10.l = r13
            android.content.Context r13 = r10.getContext()
            r1 = 1082130432(0x40800000, float:4.0)
            float r13 = cab.snapp.c.e.convertDpToPixel(r13, r1)
            int r13 = (int) r13
            r10.o = r13
            android.content.Context r13 = r10.getContext()
            r2 = 1090519040(0x41000000, float:8.0)
            float r13 = cab.snapp.c.e.convertDpToPixel(r13, r2)
            int r13 = (int) r13
            r10.p = r13
            android.content.Context r13 = r10.getContext()
            float r13 = cab.snapp.c.e.convertDpToPixel(r13, r1)
            int r13 = (int) r13
            r10.q = r13
            android.content.Context r13 = r10.getContext()
            float r13 = cab.snapp.c.e.convertDpToPixel(r13, r2)
            int r13 = (int) r13
            r10.r = r13
            android.content.Context r13 = r10.getContext()
            r2 = 1077936128(0x40400000, float:3.0)
            float r13 = cab.snapp.c.e.convertDpToPixel(r13, r2)
            int r13 = (int) r13
            r10.u = r13
            r10.B = r1
            r13 = 1065353216(0x3f800000, float:1.0)
            r10.C = r13
            r10.D = r2
            r13 = 1
            r10.L = r13
            r10.S = r13
            int[] r1 = cab.snapp.snappuikit.a.h.floatingActionMenu
            r2 = 0
            android.content.res.TypedArray r11 = r11.obtainStyledAttributes(r12, r1, r2, r2)
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famButtonSpacing
            int r1 = r10.d
            int r12 = r11.getDimensionPixelSize(r12, r1)
            r10.d = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsMargin
            int r1 = r10.g
            int r12 = r11.getDimensionPixelSize(r12, r1)
            r10.g = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsPosition
            int r12 = r11.getInt(r12, r2)
            r10.ai = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famFabShowAnimation
            int r1 = r10.ai
            if (r1 != 0) goto L_0x00b0
            int r1 = cab.snapp.snappuikit.a.C0028a.fab_slide_in_from_right
            goto L_0x00b2
        L_0x00b0:
            int r1 = cab.snapp.snappuikit.a.C0028a.fab_slide_in_from_left
        L_0x00b2:
            int r12 = r11.getResourceId(r12, r1)
            r10.m = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsHideAnimation
            int r1 = r10.ai
            if (r1 != 0) goto L_0x00c1
            int r1 = cab.snapp.snappuikit.a.C0028a.fab_slide_out_to_right
            goto L_0x00c3
        L_0x00c1:
            int r1 = cab.snapp.snappuikit.a.C0028a.fab_slide_out_to_left
        L_0x00c3:
            int r12 = r11.getResourceId(r12, r1)
            r10.n = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsPaddingTop
            int r1 = r10.o
            int r12 = r11.getDimensionPixelSize(r12, r1)
            r10.o = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsPaddingRight
            int r1 = r10.p
            int r12 = r11.getDimensionPixelSize(r12, r1)
            r10.p = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsPaddingBottom
            int r1 = r10.q
            int r12 = r11.getDimensionPixelSize(r12, r1)
            r10.q = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsPaddingLeft
            int r1 = r10.r
            int r12 = r11.getDimensionPixelSize(r12, r1)
            r10.r = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsTextColor
            android.content.res.ColorStateList r12 = r11.getColorStateList(r12)
            r10.s = r12
            android.content.res.ColorStateList r12 = r10.s
            r1 = -1
            if (r12 != 0) goto L_0x0104
            android.content.res.ColorStateList r12 = android.content.res.ColorStateList.valueOf(r1)
            r10.s = r12
        L_0x0104:
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsTextSize
            android.content.res.Resources r3 = r10.getResources()
            int r4 = cab.snapp.snappuikit.a.c.fab_labels_text_size
            float r3 = r3.getDimension(r4)
            float r12 = r11.getDimension(r12, r3)
            r10.t = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsCornerRadius
            int r3 = r10.u
            int r12 = r11.getDimensionPixelSize(r12, r3)
            r10.u = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsShowShadow
            boolean r12 = r11.getBoolean(r12, r13)
            r10.v = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsColorNormal
            r3 = -13421773(0xffffffffff333333, float:-2.3819765E38)
            int r12 = r11.getColor(r12, r3)
            r10.w = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsColorPressed
            r3 = -12303292(0xffffffffff444444, float:-2.6088314E38)
            int r12 = r11.getColor(r12, r3)
            r10.x = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsColorRipple
            r3 = 1728053247(0x66ffffff, float:6.0446287E23)
            int r12 = r11.getColor(r12, r3)
            r10.y = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famShowShadow
            boolean r12 = r11.getBoolean(r12, r13)
            r10.z = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famShadowColor
            r3 = 1711276032(0x66000000, float:1.5111573E23)
            int r12 = r11.getColor(r12, r3)
            r10.A = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famShadowRadius
            float r3 = r10.B
            float r12 = r11.getDimension(r12, r3)
            r10.B = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famShadowXOffset
            float r3 = r10.C
            float r12 = r11.getDimension(r12, r3)
            r10.C = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famShadowYOffset
            float r3 = r10.D
            float r12 = r11.getDimension(r12, r3)
            r10.D = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famColorNormal
            r3 = -2473162(0xffffffffffda4336, float:NaN)
            int r12 = r11.getColor(r12, r3)
            r10.E = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famColorPressed
            r3 = -1617853(0xffffffffffe75043, float:NaN)
            int r12 = r11.getColor(r12, r3)
            r10.F = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famColorRipple
            r3 = -1711276033(0xffffffff99ffffff, float:-2.6469778E-23)
            int r12 = r11.getColor(r12, r3)
            r10.G = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famAnimationDelayPerItem
            r3 = 50
            int r12 = r11.getInt(r12, r3)
            r10.I = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famIcon
            android.graphics.drawable.Drawable r12 = r11.getDrawable(r12)
            r10.H = r12
            android.graphics.drawable.Drawable r12 = r10.H
            if (r12 != 0) goto L_0x01bc
            android.content.res.Resources r12 = r10.getResources()
            int r3 = cab.snapp.snappuikit.a.d.fab_add
            android.graphics.drawable.Drawable r12 = r12.getDrawable(r3)
            r10.H = r12
        L_0x01bc:
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsSingleLine
            boolean r12 = r11.getBoolean(r12, r2)
            r10.M = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsEllipsize
            int r12 = r11.getInt(r12, r2)
            r10.N = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsMaxLines
            int r12 = r11.getInt(r12, r1)
            r10.O = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famFabMode
            int r12 = r11.getInt(r12, r2)
            r10.P = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsStyle
            int r12 = r11.getResourceId(r12, r2)
            r10.Q = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsCustomFont
            java.lang.String r12 = r11.getString(r12)
            boolean r1 = android.text.TextUtils.isEmpty(r12)     // Catch:{ RuntimeException -> 0x03bf }
            if (r1 != 0) goto L_0x01fe
            android.content.Context r1 = r10.getContext()     // Catch:{ RuntimeException -> 0x03bf }
            android.content.res.AssetManager r1 = r1.getAssets()     // Catch:{ RuntimeException -> 0x03bf }
            android.graphics.Typeface r1 = android.graphics.Typeface.createFromAsset(r1, r12)     // Catch:{ RuntimeException -> 0x03bf }
            r10.R = r1     // Catch:{ RuntimeException -> 0x03bf }
        L_0x01fe:
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famOpenDirection
            int r12 = r11.getInt(r12, r2)
            r10.ad = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famBackgroundColor
            int r12 = r11.getColor(r12, r2)
            r10.ah = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famFabLabel
            boolean r12 = r11.hasValue(r12)
            if (r12 == 0) goto L_0x0220
            r10.al = r13
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famFabLabel
            java.lang.String r12 = r11.getString(r12)
            r10.ak = r12
        L_0x0220:
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsPadding
            boolean r12 = r11.hasValue(r12)
            if (r12 == 0) goto L_0x0236
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famLabelsPadding
            int r12 = r11.getDimensionPixelSize(r12, r2)
            r10.o = r12
            r10.p = r12
            r10.q = r12
            r10.r = r12
        L_0x0236:
            android.view.animation.OvershootInterpolator r12 = new android.view.animation.OvershootInterpolator
            r12.<init>()
            r10.J = r12
            android.view.animation.AnticipateInterpolator r12 = new android.view.animation.AnticipateInterpolator
            r12.<init>()
            r10.K = r12
            android.view.ContextThemeWrapper r12 = new android.view.ContextThemeWrapper
            android.content.Context r1 = r10.getContext()
            int r3 = r10.Q
            r12.<init>(r1, r3)
            r10.aj = r12
            int r12 = r10.ah
            int r12 = android.graphics.Color.alpha(r12)
            int r1 = r10.ah
            int r1 = android.graphics.Color.red(r1)
            int r3 = r10.ah
            int r3 = android.graphics.Color.green(r3)
            int r4 = r10.ah
            int r4 = android.graphics.Color.blue(r4)
            r5 = 2
            int[] r6 = new int[r5]
            r6[r2] = r2
            r6[r13] = r12
            android.animation.ValueAnimator r6 = android.animation.ValueAnimator.ofInt(r6)
            r10.af = r6
            android.animation.ValueAnimator r6 = r10.af
            r7 = 300(0x12c, double:1.48E-321)
            r6.setDuration(r7)
            android.animation.ValueAnimator r6 = r10.af
            cab.snapp.snappuikit.SnappFloatingActionMenu$7 r9 = new cab.snapp.snappuikit.SnappFloatingActionMenu$7
            r9.<init>(r1, r3, r4)
            r6.addUpdateListener(r9)
            int[] r6 = new int[r5]
            r6[r2] = r12
            r6[r13] = r2
            android.animation.ValueAnimator r12 = android.animation.ValueAnimator.ofInt(r6)
            r10.ag = r12
            android.animation.ValueAnimator r12 = r10.ag
            r12.setDuration(r7)
            android.animation.ValueAnimator r12 = r10.ag
            cab.snapp.snappuikit.SnappFloatingActionMenu$8 r6 = new cab.snapp.snappuikit.SnappFloatingActionMenu$8
            r6.<init>(r1, r3, r4)
            r12.addUpdateListener(r6)
            cab.snapp.snappuikit.SnappFloatingActionButton r12 = new cab.snapp.snappuikit.SnappFloatingActionButton
            android.content.Context r1 = r10.getContext()
            r12.<init>(r1)
            r10.e = r12
            cab.snapp.snappuikit.SnappFloatingActionButton r12 = r10.e
            boolean r1 = r10.z
            r12.f1567b = r1
            if (r1 == 0) goto L_0x02e0
            android.content.Context r1 = r10.getContext()
            float r3 = r10.B
            float r1 = cab.snapp.c.e.convertDpToPixel(r1, r3)
            int r1 = (int) r1
            r12.d = r1
            cab.snapp.snappuikit.SnappFloatingActionButton r12 = r10.e
            android.content.Context r1 = r10.getContext()
            float r3 = r10.C
            float r1 = cab.snapp.c.e.convertDpToPixel(r1, r3)
            int r1 = (int) r1
            r12.e = r1
            cab.snapp.snappuikit.SnappFloatingActionButton r12 = r10.e
            android.content.Context r1 = r10.getContext()
            float r3 = r10.D
            float r1 = cab.snapp.c.e.convertDpToPixel(r1, r3)
            int r1 = (int) r1
            r12.f = r1
        L_0x02e0:
            cab.snapp.snappuikit.SnappFloatingActionButton r12 = r10.e
            int r1 = r10.E
            int r3 = r10.F
            int r4 = r10.G
            r12.g = r1
            r12.h = r3
            r12.i = r4
            int r1 = r10.A
            r12.c = r1
            int r1 = r10.P
            r12.f1566a = r1
            r12.a()
            cab.snapp.snappuikit.SnappFloatingActionButton r12 = r10.e
            java.lang.String r1 = r10.ak
            r12.setLabelText(r1)
            android.widget.ImageView r12 = new android.widget.ImageView
            android.content.Context r1 = r10.getContext()
            r12.<init>(r1)
            r10.T = r12
            android.widget.ImageView r12 = r10.T
            android.graphics.drawable.Drawable r1 = r10.H
            r12.setImageDrawable(r1)
            cab.snapp.snappuikit.SnappFloatingActionButton r12 = r10.e
            android.view.ViewGroup$LayoutParams r1 = super.generateDefaultLayoutParams()
            r10.addView(r12, r1)
            android.widget.ImageView r12 = r10.T
            r10.addView(r12)
            int r12 = r10.ad
            r1 = 1124532224(0x43070000, float:135.0)
            r3 = -1022951424(0xffffffffc3070000, float:-135.0)
            if (r12 != 0) goto L_0x0338
            int r12 = r10.ai
            if (r12 != 0) goto L_0x032f
            r12 = -1022951424(0xffffffffc3070000, float:-135.0)
            goto L_0x0331
        L_0x032f:
            r12 = 1124532224(0x43070000, float:135.0)
        L_0x0331:
            int r4 = r10.ai
            if (r4 != 0) goto L_0x0345
        L_0x0335:
            r1 = -1022951424(0xffffffffc3070000, float:-135.0)
            goto L_0x0345
        L_0x0338:
            int r12 = r10.ai
            if (r12 != 0) goto L_0x033f
            r12 = 1124532224(0x43070000, float:135.0)
            goto L_0x0341
        L_0x033f:
            r12 = -1022951424(0xffffffffc3070000, float:-135.0)
        L_0x0341:
            int r4 = r10.ai
            if (r4 != 0) goto L_0x0335
        L_0x0345:
            android.widget.ImageView r3 = r10.T
            float[] r4 = new float[r5]
            r4[r2] = r12
            r4[r13] = r0
            java.lang.String r12 = "rotation"
            android.animation.ObjectAnimator r3 = android.animation.ObjectAnimator.ofFloat(r3, r12, r4)
            android.widget.ImageView r4 = r10.T
            float[] r5 = new float[r5]
            r5[r2] = r0
            r5[r13] = r1
            android.animation.ObjectAnimator r12 = android.animation.ObjectAnimator.ofFloat(r4, r12, r5)
            android.animation.AnimatorSet r13 = r10.f1578a
            r13.play(r12)
            android.animation.AnimatorSet r12 = r10.f1579b
            r12.play(r3)
            android.animation.AnimatorSet r12 = r10.f1578a
            android.view.animation.Interpolator r13 = r10.J
            r12.setInterpolator(r13)
            android.animation.AnimatorSet r12 = r10.f1579b
            android.view.animation.Interpolator r13 = r10.K
            r12.setInterpolator(r13)
            android.animation.AnimatorSet r12 = r10.f1578a
            r12.setDuration(r7)
            android.animation.AnimatorSet r12 = r10.f1579b
            r12.setDuration(r7)
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famFabShowAnimation
            int r13 = cab.snapp.snappuikit.a.C0028a.fab_scale_up
            int r12 = r11.getResourceId(r12, r13)
            android.content.Context r13 = r10.getContext()
            android.view.animation.Animation r13 = android.view.animation.AnimationUtils.loadAnimation(r13, r12)
            r10.setMenuButtonShowAnimation(r13)
            android.content.Context r13 = r10.getContext()
            android.view.animation.Animation r12 = android.view.animation.AnimationUtils.loadAnimation(r13, r12)
            r10.W = r12
            int r12 = cab.snapp.snappuikit.a.h.floatingActionMenu_famFabHideAnimation
            int r13 = cab.snapp.snappuikit.a.C0028a.fab_scale_down
            int r12 = r11.getResourceId(r12, r13)
            android.content.Context r13 = r10.getContext()
            android.view.animation.Animation r13 = android.view.animation.AnimationUtils.loadAnimation(r13, r12)
            r10.setMenuButtonHideAnimation(r13)
            android.content.Context r13 = r10.getContext()
            android.view.animation.Animation r12 = android.view.animation.AnimationUtils.loadAnimation(r13, r12)
            r10.aa = r12
            r11.recycle()
            return
        L_0x03bf:
            r11 = move-exception
            java.lang.IllegalArgumentException r13 = new java.lang.IllegalArgumentException
            java.lang.String r12 = java.lang.String.valueOf(r12)
            java.lang.String r0 = "Unable to load specified custom font: "
            java.lang.String r12 = r0.concat(r12)
            r13.<init>(r12, r11)
            goto L_0x03d1
        L_0x03d0:
            throw r13
        L_0x03d1:
            goto L_0x03d0
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.snappuikit.SnappFloatingActionMenu.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public boolean isAnimated() {
        return this.L;
    }

    public boolean isOpened() {
        return this.j;
    }

    public int getAnimationDelayPerItem() {
        return this.I;
    }

    public boolean isIconAnimated() {
        return this.S;
    }

    public ImageView getMenuIconView() {
        return this.T;
    }

    public AnimatorSet getIconToggleAnimatorSet() {
        return this.c;
    }

    public boolean isMenuHidden() {
        return getVisibility() == 4;
    }

    public boolean isMenuButtonHidden() {
        return this.e.isHidden();
    }

    public int getMenuButtonColorNormal() {
        return this.E;
    }

    public int getMenuButtonColorPressed() {
        return this.F;
    }

    public int getMenuButtonColorRipple() {
        return this.G;
    }

    public String getMenuButtonLabelText() {
        return this.ak;
    }

    public void setIconAnimationInterpolator(Interpolator interpolator) {
        this.f1578a.setInterpolator(interpolator);
        this.f1579b.setInterpolator(interpolator);
    }

    public void setIconAnimationOpenInterpolator(Interpolator interpolator) {
        this.f1578a.setInterpolator(interpolator);
    }

    public void setIconAnimationCloseInterpolator(Interpolator interpolator) {
        this.f1579b.setInterpolator(interpolator);
    }

    public void setAnimated(boolean z2) {
        this.L = z2;
        long j2 = 300;
        this.f1578a.setDuration(z2 ? 300 : 0);
        AnimatorSet animatorSet = this.f1579b;
        if (!z2) {
            j2 = 0;
        }
        animatorSet.setDuration(j2);
    }

    public void setAnimationDelayPerItem(int i2) {
        this.I = i2;
    }

    public void setOnMenuToggleListener(a aVar) {
        this.ae = aVar;
    }

    public void setIconAnimated(boolean z2) {
        this.S = z2;
    }

    public void setIconToggleAnimatorSet(AnimatorSet animatorSet) {
        this.c = animatorSet;
    }

    public void setMenuButtonShowAnimation(Animation animation) {
        this.U = animation;
        this.e.setShowAnimation(animation);
    }

    public void setMenuButtonHideAnimation(Animation animation) {
        this.V = animation;
        this.e.setHideAnimation(animation);
    }

    public void setClosedOnTouchOutside(boolean z2) {
        this.ac = z2;
    }

    public void setMenuButtonColorNormal(int i2) {
        this.E = i2;
        this.e.setColorNormal(i2);
    }

    public void setMenuButtonColorNormalResId(int i2) {
        this.E = getResources().getColor(i2);
        this.e.setColorNormalResId(i2);
    }

    public void setMenuButtonColorPressed(int i2) {
        this.F = i2;
        this.e.setColorPressed(i2);
    }

    public void setMenuButtonColorPressedResId(int i2) {
        this.F = getResources().getColor(i2);
        this.e.setColorPressedResId(i2);
    }

    public void setMenuButtonColorRipple(int i2) {
        this.G = i2;
        this.e.setColorRipple(i2);
    }

    public void setMenuButtonColorRippleResId(int i2) {
        this.G = getResources().getColor(i2);
        this.e.setColorRippleResId(i2);
    }

    public void setMenuButtonLabelText(String str) {
        this.e.setLabelText(str);
    }

    public void setOnMenuButtonClickListener(View.OnClickListener onClickListener) {
        this.e.setOnClickListener(onClickListener);
    }

    public void setOnMenuButtonLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.e.setOnLongClickListener(onLongClickListener);
    }

    public void addMenuButton(SnappFloatingActionButton snappFloatingActionButton) {
        addView(snappFloatingActionButton, this.i - 2);
        this.i++;
        a(snappFloatingActionButton);
    }

    public void removeMenuButton(SnappFloatingActionButton snappFloatingActionButton) {
        removeView(snappFloatingActionButton.getLabelView());
        removeView(snappFloatingActionButton);
        this.i--;
    }

    public void addMenuButton(SnappFloatingActionButton snappFloatingActionButton, int i2) {
        int i3 = this.i - 2;
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > i3) {
            i2 = i3;
        }
        addView(snappFloatingActionButton, i2);
        this.i++;
        a(snappFloatingActionButton);
    }

    public void removeAllMenuButtons() {
        close(true);
        ArrayList<SnappFloatingActionButton> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (!(childAt == this.e || childAt == this.T || !(childAt instanceof SnappFloatingActionButton))) {
                arrayList.add((SnappFloatingActionButton) childAt);
            }
        }
        for (SnappFloatingActionButton removeMenuButton : arrayList) {
            removeMenuButton(removeMenuButton);
        }
    }

    public void showMenu(boolean z2) {
        if (isMenuHidden()) {
            if (z2) {
                startAnimation(this.U);
            }
            setVisibility(0);
        }
    }

    public void hideMenu(final boolean z2) {
        if (!isMenuHidden() && !this.ab) {
            this.ab = true;
            if (isOpened()) {
                close(z2);
                this.l.postDelayed(new Runnable() {
                    public final void run() {
                        if (z2) {
                            SnappFloatingActionMenu snappFloatingActionMenu = SnappFloatingActionMenu.this;
                            snappFloatingActionMenu.startAnimation(snappFloatingActionMenu.V);
                        }
                        SnappFloatingActionMenu.this.setVisibility(4);
                        boolean unused = SnappFloatingActionMenu.this.ab = false;
                    }
                }, (long) (this.I * this.i));
                return;
            }
            if (z2) {
                startAnimation(this.V);
            }
            setVisibility(4);
            this.ab = false;
        }
    }

    public void toggleMenu(boolean z2) {
        if (isMenuHidden()) {
            showMenu(z2);
        } else {
            hideMenu(z2);
        }
    }

    public void showMenuButton(boolean z2) {
        if (isMenuButtonHidden() && isMenuButtonHidden()) {
            this.e.show(z2);
            if (z2) {
                this.T.startAnimation(this.W);
            }
            this.T.setVisibility(0);
        }
    }

    public void hideMenuButton(final boolean z2) {
        if (!isMenuButtonHidden() && !this.ab) {
            this.ab = true;
            if (isOpened()) {
                close(z2);
                this.l.postDelayed(new Runnable() {
                    public final void run() {
                        SnappFloatingActionMenu.this.a(z2);
                    }
                }, (long) (this.I * this.i));
                return;
            }
            a(z2);
        }
    }

    public void toggleMenuButton(boolean z2) {
        if (isMenuButtonHidden()) {
            showMenuButton(z2);
        } else {
            hideMenuButton(z2);
        }
    }

    public void toggle(boolean z2) {
        if (isOpened()) {
            close(z2);
        } else {
            open(z2);
        }
    }

    public void open(final boolean z2) {
        if (!isOpened()) {
            if (a()) {
                this.af.start();
            }
            if (this.S) {
                AnimatorSet animatorSet = this.c;
                if (animatorSet != null) {
                    animatorSet.start();
                } else {
                    this.f1579b.cancel();
                    this.f1578a.start();
                }
            }
            this.k = true;
            int i2 = 0;
            int i3 = 0;
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = getChildAt(childCount);
                if ((childAt instanceof SnappFloatingActionButton) && childAt.getVisibility() != 8) {
                    i2++;
                    final SnappFloatingActionButton snappFloatingActionButton = (SnappFloatingActionButton) childAt;
                    this.l.postDelayed(new Runnable() {
                        public final void run() {
                            if (!SnappFloatingActionMenu.this.isOpened()) {
                                if (snappFloatingActionButton != SnappFloatingActionMenu.this.e) {
                                    snappFloatingActionButton.show(z2);
                                }
                                Label label = (Label) snappFloatingActionButton.getTag(a.f.fab_label);
                                if (label != null && label.isHandleVisibilityChanges()) {
                                    label.show(z2);
                                }
                            }
                        }
                    }, (long) i3);
                    i3 += this.I;
                }
            }
            this.l.postDelayed(new Runnable() {
                public final void run() {
                    boolean unused = SnappFloatingActionMenu.this.j = true;
                    if (SnappFloatingActionMenu.this.ae != null) {
                        SnappFloatingActionMenu.this.ae.onMenuToggle(true);
                    }
                }
            }, (long) ((i2 + 1) * this.I));
        }
    }

    public void close(final boolean z2) {
        if (isOpened()) {
            if (a()) {
                this.ag.start();
            }
            if (this.S) {
                AnimatorSet animatorSet = this.c;
                if (animatorSet != null) {
                    animatorSet.start();
                } else {
                    this.f1579b.start();
                    this.f1578a.cancel();
                }
            }
            this.k = false;
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if ((childAt instanceof SnappFloatingActionButton) && childAt.getVisibility() != 8) {
                    i2++;
                    final SnappFloatingActionButton snappFloatingActionButton = (SnappFloatingActionButton) childAt;
                    this.l.postDelayed(new Runnable() {
                        public final void run() {
                            if (SnappFloatingActionMenu.this.isOpened()) {
                                if (snappFloatingActionButton != SnappFloatingActionMenu.this.e) {
                                    snappFloatingActionButton.hide(z2);
                                }
                                Label label = (Label) snappFloatingActionButton.getTag(a.f.fab_label);
                                if (label != null && label.isHandleVisibilityChanges()) {
                                    label.hide(z2);
                                }
                            }
                        }
                    }, (long) i3);
                    i3 += this.I;
                }
            }
            this.l.postDelayed(new Runnable() {
                public final void run() {
                    boolean unused = SnappFloatingActionMenu.this.j = false;
                    if (SnappFloatingActionMenu.this.ae != null) {
                        SnappFloatingActionMenu.this.ae.onMenuToggle(false);
                    }
                }
            }, (long) ((i2 + 1) * this.I));
        }
    }

    private boolean a() {
        return this.ah != 0;
    }

    private void a(SnappFloatingActionButton snappFloatingActionButton) {
        String labelText = snappFloatingActionButton.getLabelText();
        if (!TextUtils.isEmpty(labelText)) {
            Label label = new Label(this.aj);
            label.setClickable(true);
            label.setFab(snappFloatingActionButton);
            label.setShowAnimation(AnimationUtils.loadAnimation(getContext(), this.m));
            label.setHideAnimation(AnimationUtils.loadAnimation(getContext(), this.n));
            if (this.Q > 0) {
                label.setTextAppearance(getContext(), this.Q);
                label.setShowShadow(false);
                label.setUsingStyle(true);
            } else {
                label.setColors(this.w, this.x, this.y);
                label.setShowShadow(this.v);
                label.setCornerRadius(this.u);
                if (this.N > 0) {
                    setLabelEllipsize(label);
                }
                label.setMaxLines(this.O);
                label.updateBackground();
                label.setTextSize(0, this.t);
                label.setTextColor(this.s);
                int i2 = this.r;
                int i3 = this.o;
                if (this.v) {
                    i2 += snappFloatingActionButton.getShadowRadius() + Math.abs(snappFloatingActionButton.getShadowXOffset());
                    i3 += snappFloatingActionButton.getShadowRadius() + Math.abs(snappFloatingActionButton.getShadowYOffset());
                }
                label.setPadding(i2, i3, this.r, this.o);
                if (this.O < 0 || this.M) {
                    label.setSingleLine(this.M);
                }
            }
            Typeface typeface = this.R;
            if (typeface != null) {
                label.setTypeface(typeface);
            }
            label.setText(labelText);
            label.setOnClickListener(snappFloatingActionButton.getOnClickListener());
            addView(label);
            snappFloatingActionButton.setTag(a.f.fab_label, label);
        }
    }

    private void setLabelEllipsize(Label label) {
        int i2 = this.N;
        if (i2 == 1) {
            label.setEllipsize(TextUtils.TruncateAt.START);
        } else if (i2 == 2) {
            label.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        } else if (i2 != 3) {
            if (i2 == 4) {
                label.setEllipsize(TextUtils.TruncateAt.MARQUEE);
            }
        } else {
            label.setEllipsize(TextUtils.TruncateAt.END);
        }
    }

    /* access modifiers changed from: private */
    public void a(boolean z2) {
        if (!isMenuButtonHidden()) {
            this.e.hide(z2);
            if (z2) {
                this.T.startAnimation(this.aa);
            }
            this.T.setVisibility(4);
            this.ab = false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.ac) {
            return super.onTouchEvent(motionEvent);
        }
        boolean z2 = false;
        int action = motionEvent.getAction();
        if (action == 0) {
            z2 = isOpened();
        } else if (action == 1) {
            close(this.L);
            z2 = true;
        }
        return z2;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        this.f = 0;
        measureChildWithMargins(this.T, i2, 0, i3, 0);
        for (int i4 = 0; i4 < this.i; i4++) {
            View childAt = getChildAt(i4);
            if (!(childAt.getVisibility() == 8 || childAt == this.T)) {
                measureChildWithMargins(childAt, i2, 0, i3, 0);
                this.f = Math.max(this.f, childAt.getMeasuredWidth());
            }
        }
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = 1;
            if (i6 >= this.i) {
                break;
            }
            View childAt2 = getChildAt(i6);
            if (!(childAt2.getVisibility() == 8 || childAt2 == this.T)) {
                int measuredWidth = childAt2.getMeasuredWidth() + 0;
                int measuredHeight = i5 + childAt2.getMeasuredHeight();
                Label label = (Label) childAt2.getTag(a.f.fab_label);
                if (label != null) {
                    int measuredWidth2 = this.f - childAt2.getMeasuredWidth();
                    if (!this.al) {
                        i8 = 2;
                    }
                    int i9 = measuredWidth2 / i8;
                    measureChildWithMargins(label, i2, childAt2.getMeasuredWidth() + label.calculateShadowWidth() + this.g + i9, i3, 0);
                    i7 = Math.max(i7, measuredWidth + label.getMeasuredWidth() + i9);
                }
                i5 = measuredHeight;
            }
            i6++;
        }
        int max = Math.max(this.f, i7 + this.g) + getPaddingLeft() + getPaddingRight();
        double paddingTop = (double) (i5 + (this.d * (this.i - 1)) + getPaddingTop() + getPaddingBottom());
        Double.isNaN(paddingTop);
        Double.isNaN(paddingTop);
        int i10 = (int) ((0.03d * paddingTop) + paddingTop);
        if (getLayoutParams().width == -1) {
            max = getDefaultSize(getSuggestedMinimumWidth(), i2);
        }
        if (getLayoutParams().height == -1) {
            i10 = getDefaultSize(getSuggestedMinimumHeight(), i3);
        }
        setMeasuredDimension(max, i10);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        if (this.ai == 0) {
            i6 = ((i4 - i2) - (this.f / 2)) - getPaddingRight();
        } else {
            i6 = (this.f / 2) + getPaddingLeft();
        }
        boolean z3 = this.ad == 0;
        if (z3) {
            i7 = ((i5 - i3) - this.e.getMeasuredHeight()) - getPaddingBottom();
        } else {
            i7 = getPaddingTop();
        }
        int measuredWidth = i6 - (this.e.getMeasuredWidth() / 2);
        SnappFloatingActionButton snappFloatingActionButton = this.e;
        snappFloatingActionButton.layout(measuredWidth, i7, snappFloatingActionButton.getMeasuredWidth() + measuredWidth, this.e.getMeasuredHeight() + i7);
        int measuredWidth2 = i6 - (this.T.getMeasuredWidth() / 2);
        int measuredHeight = ((this.e.getMeasuredHeight() / 2) + i7) - (this.T.getMeasuredHeight() / 2);
        ImageView imageView = this.T;
        imageView.layout(measuredWidth2, measuredHeight, imageView.getMeasuredWidth() + measuredWidth2, this.T.getMeasuredHeight() + measuredHeight);
        if (z3) {
            i7 = i7 + this.e.getMeasuredHeight() + this.d;
        }
        for (int i9 = this.i - 1; i9 >= 0; i9--) {
            View childAt = getChildAt(i9);
            if (childAt != this.T) {
                SnappFloatingActionButton snappFloatingActionButton2 = (SnappFloatingActionButton) childAt;
                if (snappFloatingActionButton2.getVisibility() != 8) {
                    int measuredWidth3 = i6 - (snappFloatingActionButton2.getMeasuredWidth() / 2);
                    if (z3) {
                        i7 = (i7 - snappFloatingActionButton2.getMeasuredHeight()) - this.d;
                    }
                    if (snappFloatingActionButton2 != this.e) {
                        snappFloatingActionButton2.layout(measuredWidth3, i7, snappFloatingActionButton2.getMeasuredWidth() + measuredWidth3, snappFloatingActionButton2.getMeasuredHeight() + i7);
                        if (!this.k) {
                            snappFloatingActionButton2.hide(false);
                        }
                    }
                    View view = (View) snappFloatingActionButton2.getTag(a.f.fab_label);
                    if (view != null) {
                        int measuredWidth4 = ((this.al ? this.f : snappFloatingActionButton2.getMeasuredWidth()) / 2) + this.g;
                        int i10 = this.ai == 0 ? i6 - measuredWidth4 : measuredWidth4 + i6;
                        if (this.ai == 0) {
                            i8 = i10 - view.getMeasuredWidth();
                        } else {
                            i8 = view.getMeasuredWidth() + i10;
                        }
                        int i11 = this.ai == 0 ? i8 : i10;
                        if (this.ai != 0) {
                            i10 = i8;
                        }
                        int measuredHeight2 = (i7 - this.h) + ((snappFloatingActionButton2.getMeasuredHeight() - view.getMeasuredHeight()) / 2);
                        view.layout(i11, measuredHeight2, i10, view.getMeasuredHeight() + measuredHeight2);
                        if (!this.k) {
                            view.setVisibility(4);
                        }
                    }
                    if (z3) {
                        i7 -= this.d;
                    } else {
                        i7 = i7 + childAt.getMeasuredHeight() + this.d;
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        bringChildToFront(this.e);
        bringChildToFront(this.T);
        this.i = getChildCount();
        for (int i2 = 0; i2 < this.i; i2++) {
            if (getChildAt(i2) != this.T) {
                SnappFloatingActionButton snappFloatingActionButton = (SnappFloatingActionButton) getChildAt(i2);
                if (snappFloatingActionButton.getTag(a.f.fab_label) == null) {
                    a(snappFloatingActionButton);
                    SnappFloatingActionButton snappFloatingActionButton2 = this.e;
                    if (snappFloatingActionButton == snappFloatingActionButton2) {
                        snappFloatingActionButton2.setOnClickListener(new View.OnClickListener() {
                            public final void onClick(View view) {
                                SnappFloatingActionMenu snappFloatingActionMenu = SnappFloatingActionMenu.this;
                                snappFloatingActionMenu.toggle(snappFloatingActionMenu.L);
                            }
                        });
                    }
                }
            }
        }
    }

    public ViewGroup.MarginLayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }
}
