package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.a;
import com.google.android.material.internal.k;
import com.google.android.material.internal.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.DecorView
public class TabLayout extends HorizontalScrollView {
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    public static final int INDICATOR_GRAVITY_BOTTOM = 0;
    public static final int INDICATOR_GRAVITY_CENTER = 1;
    public static final int INDICATOR_GRAVITY_STRETCH = 3;
    public static final int INDICATOR_GRAVITY_TOP = 2;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    private static final Pools.Pool<f> w = new Pools.SynchronizedPool(16);
    private final e A;
    private final int B;
    private final int C;
    private final int D;
    private int E;
    private b F;
    private final ArrayList<b> G;
    private b H;
    private ValueAnimator I;
    private PagerAdapter J;
    private DataSetObserver K;
    private g L;
    private a M;
    private boolean N;
    private final Pools.Pool<h> O;

    /* renamed from: a  reason: collision with root package name */
    int f3989a;

    /* renamed from: b  reason: collision with root package name */
    int f3990b;
    int c;
    int d;
    int e;
    ColorStateList f;
    ColorStateList g;
    ColorStateList h;
    Drawable i;
    PorterDuff.Mode j;
    float k;
    float l;
    final int m;
    int n;
    int o;
    int p;
    int q;
    int r;
    boolean s;
    boolean t;
    boolean u;
    ViewPager v;
    private final ArrayList<f> x;
    private f y;
    /* access modifiers changed from: private */
    public final RectF z;

    class a implements ViewPager.OnAdapterChangeListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f3992a;

        a() {
        }

        public final void onAdapterChanged(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            if (TabLayout.this.v == viewPager) {
                TabLayout.this.a(pagerAdapter2, this.f3992a);
            }
        }
    }

    public interface b<T extends f> {
        void onTabReselected(T t);

        void onTabSelected(T t);

        void onTabUnselected(T t);
    }

    public interface c extends b {
    }

    class d extends DataSetObserver {
        d() {
        }

        public final void onChanged() {
            TabLayout.this.a();
        }

        public final void onInvalidated() {
            TabLayout.this.a();
        }
    }

    class e extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        int f3995a = -1;

        /* renamed from: b  reason: collision with root package name */
        float f3996b;
        private int d;
        private final Paint e;
        private final GradientDrawable f;
        private int g = -1;
        private int h = -1;
        private int i = -1;
        private ValueAnimator j;

        e(Context context) {
            super(context);
            setWillNotDraw(false);
            this.e = new Paint();
            this.f = new GradientDrawable();
        }

        /* access modifiers changed from: package-private */
        public final void a(int i2) {
            if (this.e.getColor() != i2) {
                this.e.setColor(i2);
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* access modifiers changed from: package-private */
        public final void b(int i2) {
            if (this.d != i2) {
                this.d = i2;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(int i2, float f2) {
            ValueAnimator valueAnimator = this.j;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.j.cancel();
            }
            this.f3995a = i2;
            this.f3996b = f2;
            a();
        }

        public final void onRtlPropertiesChanged(int i2) {
            super.onRtlPropertiesChanged(i2);
            if (Build.VERSION.SDK_INT < 23 && this.g != i2) {
                requestLayout();
                this.g = i2;
            }
        }

        /* access modifiers changed from: protected */
        public final void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                boolean z = true;
                if (TabLayout.this.r == 1 && TabLayout.this.o == 1) {
                    int childCount = getChildCount();
                    int i4 = 0;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        View childAt = getChildAt(i5);
                        if (childAt.getVisibility() == 0) {
                            i4 = Math.max(i4, childAt.getMeasuredWidth());
                        }
                    }
                    if (i4 > 0) {
                        if (i4 * childCount <= getMeasuredWidth() - (TabLayout.this.a(16) * 2)) {
                            boolean z2 = false;
                            for (int i6 = 0; i6 < childCount; i6++) {
                                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i6).getLayoutParams();
                                if (layoutParams.width != i4 || layoutParams.weight != 0.0f) {
                                    layoutParams.width = i4;
                                    layoutParams.weight = 0.0f;
                                    z2 = true;
                                }
                            }
                            z = z2;
                        } else {
                            TabLayout tabLayout = TabLayout.this;
                            tabLayout.o = 0;
                            tabLayout.a(false);
                        }
                        if (z) {
                            super.onMeasure(i2, i3);
                        }
                    }
                }
            }
        }

        /* access modifiers changed from: protected */
        public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
            super.onLayout(z, i2, i3, i4, i5);
            ValueAnimator valueAnimator = this.j;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                a();
                return;
            }
            this.j.cancel();
            b(this.f3995a, Math.round((1.0f - this.j.getAnimatedFraction()) * ((float) this.j.getDuration())));
        }

        private void a() {
            int i2;
            int i3;
            View childAt = getChildAt(this.f3995a);
            if (childAt == null || childAt.getWidth() <= 0) {
                i3 = -1;
                i2 = -1;
            } else {
                i3 = childAt.getLeft();
                i2 = childAt.getRight();
                if (!TabLayout.this.t && (childAt instanceof h)) {
                    a((h) childAt, TabLayout.this.z);
                    i3 = (int) TabLayout.this.z.left;
                    i2 = (int) TabLayout.this.z.right;
                }
                if (this.f3996b > 0.0f && this.f3995a < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.f3995a + 1);
                    int left = childAt2.getLeft();
                    int right = childAt2.getRight();
                    if (!TabLayout.this.t && (childAt2 instanceof h)) {
                        a((h) childAt2, TabLayout.this.z);
                        left = (int) TabLayout.this.z.left;
                        right = (int) TabLayout.this.z.right;
                    }
                    float f2 = this.f3996b;
                    i3 = (int) ((((float) left) * f2) + ((1.0f - f2) * ((float) i3)));
                    i2 = (int) ((((float) right) * f2) + ((1.0f - f2) * ((float) i2)));
                }
            }
            a(i3, i2);
        }

        /* access modifiers changed from: package-private */
        public final void a(int i2, int i3) {
            if (i2 != this.h || i3 != this.i) {
                this.h = i2;
                this.i = i3;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* access modifiers changed from: package-private */
        public final void b(final int i2, int i3) {
            ValueAnimator valueAnimator = this.j;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.j.cancel();
            }
            View childAt = getChildAt(i2);
            if (childAt == null) {
                a();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            if (!TabLayout.this.t && (childAt instanceof h)) {
                a((h) childAt, TabLayout.this.z);
                left = (int) TabLayout.this.z.left;
                right = (int) TabLayout.this.z.right;
            }
            final int i4 = left;
            final int i5 = right;
            final int i6 = this.h;
            final int i7 = this.i;
            if (!(i6 == i4 && i7 == i5)) {
                ValueAnimator valueAnimator2 = new ValueAnimator();
                this.j = valueAnimator2;
                valueAnimator2.setInterpolator(com.google.android.material.a.a.FAST_OUT_SLOW_IN_INTERPOLATOR);
                valueAnimator2.setDuration((long) i3);
                valueAnimator2.setFloatValues(new float[]{0.0f, 1.0f});
                AnonymousClass1 r3 = new ValueAnimator.AnimatorUpdateListener() {
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        e.this.a(com.google.android.material.a.a.lerp(i6, i4, animatedFraction), com.google.android.material.a.a.lerp(i7, i5, animatedFraction));
                    }
                };
                valueAnimator2.addUpdateListener(r3);
                valueAnimator2.addListener(new AnimatorListenerAdapter() {
                    public final void onAnimationEnd(Animator animator) {
                        e eVar = e.this;
                        eVar.f3995a = i2;
                        eVar.f3996b = 0.0f;
                    }
                });
                valueAnimator2.start();
            }
        }

        public final void draw(Canvas canvas) {
            int i2 = 0;
            int intrinsicHeight = TabLayout.this.i != null ? TabLayout.this.i.getIntrinsicHeight() : 0;
            int i3 = this.d;
            if (i3 >= 0) {
                intrinsicHeight = i3;
            }
            int i4 = TabLayout.this.q;
            if (i4 == 0) {
                i2 = getHeight() - intrinsicHeight;
                intrinsicHeight = getHeight();
            } else if (i4 == 1) {
                i2 = (getHeight() - intrinsicHeight) / 2;
                intrinsicHeight = (getHeight() + intrinsicHeight) / 2;
            } else if (i4 != 2) {
                intrinsicHeight = i4 != 3 ? 0 : getHeight();
            }
            int i5 = this.h;
            if (i5 >= 0 && this.i > i5) {
                Drawable wrap = DrawableCompat.wrap(TabLayout.this.i != null ? TabLayout.this.i : this.f);
                wrap.setBounds(this.h, i2, this.i, intrinsicHeight);
                if (this.e != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        wrap.setColorFilter(this.e.getColor(), PorterDuff.Mode.SRC_IN);
                    } else {
                        DrawableCompat.setTint(wrap, this.e.getColor());
                    }
                }
                wrap.draw(canvas);
            }
            super.draw(canvas);
        }

        private void a(h hVar, RectF rectF) {
            int c2 = hVar.c();
            if (c2 < TabLayout.this.a(24)) {
                c2 = TabLayout.this.a(24);
            }
            int left = (hVar.getLeft() + hVar.getRight()) / 2;
            int i2 = c2 / 2;
            rectF.set((float) (left - i2), 0.0f, (float) (left + i2), 0.0f);
        }
    }

    public static class f {
        public static final int INVALID_POSITION = -1;

        /* renamed from: a  reason: collision with root package name */
        CharSequence f4001a;

        /* renamed from: b  reason: collision with root package name */
        CharSequence f4002b;
        int c = -1;
        private Object d;
        private Drawable e;
        private View f;
        public TabLayout parent;
        public h view;

        public final Object getTag() {
            return this.d;
        }

        public final f setTag(Object obj) {
            this.d = obj;
            return this;
        }

        public final View getCustomView() {
            return this.f;
        }

        public final f setCustomView(View view2) {
            this.f = view2;
            a();
            return this;
        }

        public final f setCustomView(int i) {
            return setCustomView(LayoutInflater.from(this.view.getContext()).inflate(i, this.view, false));
        }

        public final Drawable getIcon() {
            return this.e;
        }

        public final int getPosition() {
            return this.c;
        }

        public final CharSequence getText() {
            return this.f4001a;
        }

        public final f setIcon(Drawable drawable) {
            this.e = drawable;
            a();
            return this;
        }

        public final f setIcon(int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setIcon(AppCompatResources.getDrawable(tabLayout.getContext(), i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public final f setText(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f4002b) && !TextUtils.isEmpty(charSequence)) {
                this.view.setContentDescription(charSequence);
            }
            this.f4001a = charSequence;
            a();
            return this;
        }

        public final f setText(int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setText(tabLayout.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public final void select() {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                tabLayout.a(this, true);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public final boolean isSelected() {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return tabLayout.getSelectedTabPosition() == this.c;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public final f setContentDescription(int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setContentDescription(tabLayout.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public final f setContentDescription(CharSequence charSequence) {
            this.f4002b = charSequence;
            a();
            return this;
        }

        public final CharSequence getContentDescription() {
            h hVar = this.view;
            if (hVar == null) {
                return null;
            }
            return hVar.getContentDescription();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            h hVar = this.view;
            if (hVar != null) {
                hVar.b();
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            this.parent = null;
            this.view = null;
            this.d = null;
            this.e = null;
            this.f4001a = null;
            this.f4002b = null;
            this.c = -1;
            this.f = null;
        }
    }

    public static class g implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<TabLayout> f4003a;

        /* renamed from: b  reason: collision with root package name */
        private int f4004b;
        private int c;

        public g(TabLayout tabLayout) {
            this.f4003a = new WeakReference<>(tabLayout);
        }

        public final void onPageScrollStateChanged(int i) {
            this.f4004b = this.c;
            this.c = i;
        }

        public final void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = (TabLayout) this.f4003a.get();
            if (tabLayout != null) {
                boolean z = false;
                boolean z2 = this.c != 2 || this.f4004b == 1;
                if (!(this.c == 2 && this.f4004b == 0)) {
                    z = true;
                }
                tabLayout.a(i, f, z2, z);
            }
        }

        public final void onPageSelected(int i) {
            TabLayout tabLayout = (TabLayout) this.f4003a.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                int i2 = this.c;
                tabLayout.a(tabLayout.getTabAt(i), i2 == 0 || (i2 == 2 && this.f4004b == 0));
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.c = 0;
            this.f4004b = 0;
        }
    }

    class h extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        TextView f4005a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f4006b;
        TextView c;
        ImageView d;
        private f f;
        private View g;
        private Drawable h;
        private int i = 2;

        public h(Context context) {
            super(context);
            a(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.f3989a, TabLayout.this.f3990b, TabLayout.this.c, TabLayout.this.d);
            setGravity(17);
            setOrientation(TabLayout.this.s ^ true ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v5, resolved type: android.graphics.drawable.GradientDrawable} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v6, resolved type: android.graphics.drawable.GradientDrawable} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v7, resolved type: android.graphics.drawable.GradientDrawable} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v8, resolved type: android.graphics.drawable.GradientDrawable} */
        /* access modifiers changed from: private */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(android.content.Context r7) {
            /*
                r6 = this;
                com.google.android.material.tabs.TabLayout r0 = com.google.android.material.tabs.TabLayout.this
                int r0 = r0.m
                r1 = 0
                if (r0 == 0) goto L_0x0025
                com.google.android.material.tabs.TabLayout r0 = com.google.android.material.tabs.TabLayout.this
                int r0 = r0.m
                android.graphics.drawable.Drawable r7 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r7, r0)
                r6.h = r7
                android.graphics.drawable.Drawable r7 = r6.h
                if (r7 == 0) goto L_0x0027
                boolean r7 = r7.isStateful()
                if (r7 == 0) goto L_0x0027
                android.graphics.drawable.Drawable r7 = r6.h
                int[] r0 = r6.getDrawableState()
                r7.setState(r0)
                goto L_0x0027
            L_0x0025:
                r6.h = r1
            L_0x0027:
                android.graphics.drawable.GradientDrawable r7 = new android.graphics.drawable.GradientDrawable
                r7.<init>()
                r0 = r7
                android.graphics.drawable.GradientDrawable r0 = (android.graphics.drawable.GradientDrawable) r0
                r2 = 0
                r0.setColor(r2)
                com.google.android.material.tabs.TabLayout r0 = com.google.android.material.tabs.TabLayout.this
                android.content.res.ColorStateList r0 = r0.h
                if (r0 == 0) goto L_0x0080
                android.graphics.drawable.GradientDrawable r0 = new android.graphics.drawable.GradientDrawable
                r0.<init>()
                r3 = 925353388(0x3727c5ac, float:1.0E-5)
                r0.setCornerRadius(r3)
                r3 = -1
                r0.setColor(r3)
                com.google.android.material.tabs.TabLayout r3 = com.google.android.material.tabs.TabLayout.this
                android.content.res.ColorStateList r3 = r3.h
                android.content.res.ColorStateList r3 = com.google.android.material.g.a.convertToRippleDrawableColor(r3)
                int r4 = android.os.Build.VERSION.SDK_INT
                r5 = 21
                if (r4 < r5) goto L_0x006b
                android.graphics.drawable.RippleDrawable r2 = new android.graphics.drawable.RippleDrawable
                com.google.android.material.tabs.TabLayout r4 = com.google.android.material.tabs.TabLayout.this
                boolean r4 = r4.u
                if (r4 == 0) goto L_0x005f
                r7 = r1
            L_0x005f:
                com.google.android.material.tabs.TabLayout r4 = com.google.android.material.tabs.TabLayout.this
                boolean r4 = r4.u
                if (r4 == 0) goto L_0x0066
                r0 = r1
            L_0x0066:
                r2.<init>(r3, r7, r0)
                r7 = r2
                goto L_0x0080
            L_0x006b:
                android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.DrawableCompat.wrap(r0)
                androidx.core.graphics.drawable.DrawableCompat.setTintList(r0, r3)
                android.graphics.drawable.LayerDrawable r1 = new android.graphics.drawable.LayerDrawable
                r3 = 2
                android.graphics.drawable.Drawable[] r3 = new android.graphics.drawable.Drawable[r3]
                r3[r2] = r7
                r7 = 1
                r3[r7] = r0
                r1.<init>(r3)
                r7 = r1
            L_0x0080:
                androidx.core.view.ViewCompat.setBackground(r6, r7)
                com.google.android.material.tabs.TabLayout r7 = com.google.android.material.tabs.TabLayout.this
                r7.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.h.a(android.content.Context):void");
        }

        /* access modifiers changed from: protected */
        public final void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.h;
            boolean z = false;
            if (drawable != null && drawable.isStateful()) {
                z = false | this.h.setState(drawableState);
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public final boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            this.f.select();
            return true;
        }

        public final void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.f4005a;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f4006b;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.g;
            if (view != null) {
                view.setSelected(z);
            }
        }

        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.Tab.class.getName());
        }

        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
        }

        public final void onMeasure(int i2, int i3) {
            int size = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i2 = View.MeasureSpec.makeMeasureSpec(TabLayout.this.n, Integer.MIN_VALUE);
            }
            super.onMeasure(i2, i3);
            if (this.f4005a != null) {
                float f2 = TabLayout.this.k;
                int i4 = this.i;
                ImageView imageView = this.f4006b;
                boolean z = true;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f4005a;
                    if (textView != null && textView.getLineCount() > 1) {
                        f2 = TabLayout.this.l;
                    }
                } else {
                    i4 = 1;
                }
                float textSize = this.f4005a.getTextSize();
                int lineCount = this.f4005a.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.f4005a);
                if (f2 != textSize || (maxLines >= 0 && i4 != maxLines)) {
                    if (TabLayout.this.r == 1 && f2 > textSize && lineCount == 1) {
                        Layout layout = this.f4005a.getLayout();
                        if (layout == null || layout.getLineWidth(0) * (f2 / layout.getPaint().getTextSize()) > ((float) ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()))) {
                            z = false;
                        }
                    }
                    if (z) {
                        this.f4005a.setTextSize(0, f2);
                        this.f4005a.setMaxLines(i4);
                        super.onMeasure(i2, i3);
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(f fVar) {
            if (fVar != this.f) {
                this.f = fVar;
                b();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            a((f) null);
            setSelected(false);
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            f fVar = this.f;
            Drawable drawable = null;
            View customView = fVar != null ? fVar.getCustomView() : null;
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
                    }
                    addView(customView);
                }
                this.g = customView;
                TextView textView = this.f4005a;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f4006b;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f4006b.setImageDrawable(null);
                }
                this.c = (TextView) customView.findViewById(16908308);
                TextView textView2 = this.c;
                if (textView2 != null) {
                    this.i = TextViewCompat.getMaxLines(textView2);
                }
                this.d = (ImageView) customView.findViewById(16908294);
            } else {
                View view = this.g;
                if (view != null) {
                    removeView(view);
                    this.g = null;
                }
                this.c = null;
                this.d = null;
            }
            boolean z = false;
            if (this.g == null) {
                if (this.f4006b == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(a.h.design_layout_tab_icon, this, false);
                    addView(imageView2, 0);
                    this.f4006b = imageView2;
                }
                if (!(fVar == null || fVar.getIcon() == null)) {
                    drawable = DrawableCompat.wrap(fVar.getIcon()).mutate();
                }
                if (drawable != null) {
                    DrawableCompat.setTintList(drawable, TabLayout.this.g);
                    if (TabLayout.this.j != null) {
                        DrawableCompat.setTintMode(drawable, TabLayout.this.j);
                    }
                }
                if (this.f4005a == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(a.h.design_layout_tab_text, this, false);
                    addView(textView3);
                    this.f4005a = textView3;
                    this.i = TextViewCompat.getMaxLines(this.f4005a);
                }
                TextViewCompat.setTextAppearance(this.f4005a, TabLayout.this.e);
                if (TabLayout.this.f != null) {
                    this.f4005a.setTextColor(TabLayout.this.f);
                }
                a(this.f4005a, this.f4006b);
            } else if (!(this.c == null && this.d == null)) {
                a(this.c, this.d);
            }
            if (fVar != null && !TextUtils.isEmpty(fVar.f4002b)) {
                setContentDescription(fVar.f4002b);
            }
            if (fVar != null && fVar.isSelected()) {
                z = true;
            }
            setSelected(z);
        }

        /* access modifiers changed from: package-private */
        public final void a(TextView textView, ImageView imageView) {
            CharSequence charSequence;
            f fVar = this.f;
            Drawable mutate = (fVar == null || fVar.getIcon() == null) ? null : DrawableCompat.wrap(this.f.getIcon()).mutate();
            f fVar2 = this.f;
            CharSequence text = fVar2 != null ? fVar2.getText() : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(text);
            if (textView != null) {
                if (z) {
                    textView.setText(text);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText(null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int a2 = (!z || imageView.getVisibility() != 0) ? 0 : TabLayout.this.a(8);
                if (TabLayout.this.s) {
                    if (a2 != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, a2);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (a2 != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = a2;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            f fVar3 = this.f;
            if (fVar3 != null) {
                charSequence = fVar3.f4002b;
            } else {
                charSequence = null;
            }
            if (z) {
                charSequence = null;
            }
            TooltipCompat.setTooltipText(this, charSequence);
        }

        /* access modifiers changed from: package-private */
        public final int c() {
            View[] viewArr = {this.f4005a, this.f4006b, this.g};
            int i2 = 0;
            int i3 = 0;
            boolean z = false;
            for (int i4 = 0; i4 < 3; i4++) {
                View view = viewArr[i4];
                if (view != null && view.getVisibility() == 0) {
                    i3 = z ? Math.min(i3, view.getLeft()) : view.getLeft();
                    i2 = z ? Math.max(i2, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return i2 - i3;
        }

        public final f getTab() {
            return this.f;
        }

        static /* synthetic */ void a(h hVar, Canvas canvas) {
            Drawable drawable = hVar.h;
            if (drawable != null) {
                drawable.setBounds(hVar.getLeft(), hVar.getTop(), hVar.getRight(), hVar.getBottom());
                hVar.h.draw(canvas);
            }
        }
    }

    public static class i implements c {

        /* renamed from: a  reason: collision with root package name */
        private final ViewPager f4007a;

        public final void onTabReselected(f fVar) {
        }

        public final void onTabUnselected(f fVar) {
        }

        public i(ViewPager viewPager) {
            this.f4007a = viewPager;
        }

        public final void onTabSelected(f fVar) {
            this.f4007a.setCurrentItem(fVar.getPosition());
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.tabStyle);
    }

    /* JADX INFO: finally extract failed */
    public TabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.x = new ArrayList<>();
        this.z = new RectF();
        this.n = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.G = new ArrayList<>();
        this.O = new Pools.SimplePool(12);
        setHorizontalScrollBarEnabled(false);
        this.A = new e(context);
        super.addView(this.A, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray obtainStyledAttributes = k.obtainStyledAttributes(context, attributeSet, a.k.TabLayout, i2, a.j.Widget_Design_TabLayout, a.k.TabLayout_tabTextAppearance);
        this.A.b(obtainStyledAttributes.getDimensionPixelSize(a.k.TabLayout_tabIndicatorHeight, -1));
        this.A.a(obtainStyledAttributes.getColor(a.k.TabLayout_tabIndicatorColor, 0));
        setSelectedTabIndicator(com.google.android.material.f.a.getDrawable(context, obtainStyledAttributes, a.k.TabLayout_tabIndicator));
        setSelectedTabIndicatorGravity(obtainStyledAttributes.getInt(a.k.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(obtainStyledAttributes.getBoolean(a.k.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.k.TabLayout_tabPadding, 0);
        this.d = dimensionPixelSize;
        this.c = dimensionPixelSize;
        this.f3990b = dimensionPixelSize;
        this.f3989a = dimensionPixelSize;
        this.f3989a = obtainStyledAttributes.getDimensionPixelSize(a.k.TabLayout_tabPaddingStart, this.f3989a);
        this.f3990b = obtainStyledAttributes.getDimensionPixelSize(a.k.TabLayout_tabPaddingTop, this.f3990b);
        this.c = obtainStyledAttributes.getDimensionPixelSize(a.k.TabLayout_tabPaddingEnd, this.c);
        this.d = obtainStyledAttributes.getDimensionPixelSize(a.k.TabLayout_tabPaddingBottom, this.d);
        this.e = obtainStyledAttributes.getResourceId(a.k.TabLayout_tabTextAppearance, a.j.TextAppearance_Design_Tab);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(this.e, R.styleable.TextAppearance);
        try {
            this.k = (float) obtainStyledAttributes2.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, 0);
            this.f = com.google.android.material.f.a.getColorStateList(context, obtainStyledAttributes2, R.styleable.TextAppearance_android_textColor);
            obtainStyledAttributes2.recycle();
            if (obtainStyledAttributes.hasValue(a.k.TabLayout_tabTextColor)) {
                this.f = com.google.android.material.f.a.getColorStateList(context, obtainStyledAttributes, a.k.TabLayout_tabTextColor);
            }
            if (obtainStyledAttributes.hasValue(a.k.TabLayout_tabSelectedTextColor)) {
                this.f = a(this.f.getDefaultColor(), obtainStyledAttributes.getColor(a.k.TabLayout_tabSelectedTextColor, 0));
            }
            this.g = com.google.android.material.f.a.getColorStateList(context, obtainStyledAttributes, a.k.TabLayout_tabIconTint);
            this.j = l.parseTintMode(obtainStyledAttributes.getInt(a.k.TabLayout_tabIconTintMode, -1), null);
            this.h = com.google.android.material.f.a.getColorStateList(context, obtainStyledAttributes, a.k.TabLayout_tabRippleColor);
            this.p = obtainStyledAttributes.getInt(a.k.TabLayout_tabIndicatorAnimationDuration, 300);
            this.B = obtainStyledAttributes.getDimensionPixelSize(a.k.TabLayout_tabMinWidth, -1);
            this.C = obtainStyledAttributes.getDimensionPixelSize(a.k.TabLayout_tabMaxWidth, -1);
            this.m = obtainStyledAttributes.getResourceId(a.k.TabLayout_tabBackground, 0);
            this.E = obtainStyledAttributes.getDimensionPixelSize(a.k.TabLayout_tabContentStart, 0);
            this.r = obtainStyledAttributes.getInt(a.k.TabLayout_tabMode, 1);
            this.o = obtainStyledAttributes.getInt(a.k.TabLayout_tabGravity, 0);
            this.s = obtainStyledAttributes.getBoolean(a.k.TabLayout_tabInlineLabel, false);
            this.u = obtainStyledAttributes.getBoolean(a.k.TabLayout_tabUnboundedRipple, false);
            obtainStyledAttributes.recycle();
            Resources resources = getResources();
            this.l = (float) resources.getDimensionPixelSize(a.d.design_tab_text_size_2line);
            this.D = resources.getDimensionPixelSize(a.d.design_tab_scrollable_min_width);
            d();
        } catch (Throwable th) {
            obtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public void setSelectedTabIndicatorColor(int i2) {
        this.A.a(i2);
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i2) {
        this.A.b(i2);
    }

    public void setScrollPosition(int i2, float f2, boolean z2) {
        a(i2, f2, z2, true);
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2, float f2, boolean z2, boolean z3) {
        int round = Math.round(((float) i2) + f2);
        if (round >= 0 && round < this.A.getChildCount()) {
            if (z3) {
                this.A.a(i2, f2);
            }
            ValueAnimator valueAnimator = this.I;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.I.cancel();
            }
            scrollTo(a(i2, f2), 0);
            if (z2) {
                setSelectedTabView(round);
            }
        }
    }

    public void addTab(f fVar) {
        addTab(fVar, this.x.isEmpty());
    }

    public void addTab(f fVar, int i2) {
        addTab(fVar, i2, this.x.isEmpty());
    }

    public void addTab(f fVar, boolean z2) {
        addTab(fVar, this.x.size(), z2);
    }

    public void addTab(f fVar, int i2, boolean z2) {
        if (fVar.parent == this) {
            a(fVar, i2);
            h hVar = fVar.view;
            e eVar = this.A;
            int position = fVar.getPosition();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            a(layoutParams);
            eVar.addView(hVar, position, layoutParams);
            if (z2) {
                fVar.select();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    private void a(TabItem tabItem) {
        f newTab = newTab();
        if (tabItem.text != null) {
            newTab.setText(tabItem.text);
        }
        if (tabItem.icon != null) {
            newTab.setIcon(tabItem.icon);
        }
        if (tabItem.customLayout != 0) {
            newTab.setCustomView(tabItem.customLayout);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            newTab.setContentDescription(tabItem.getContentDescription());
        }
        addTab(newTab);
    }

    @Deprecated
    public void setOnTabSelectedListener(b bVar) {
        b bVar2 = this.F;
        if (bVar2 != null) {
            removeOnTabSelectedListener(bVar2);
        }
        this.F = bVar;
        if (bVar != null) {
            addOnTabSelectedListener(bVar);
        }
    }

    public void addOnTabSelectedListener(b bVar) {
        if (!this.G.contains(bVar)) {
            this.G.add(bVar);
        }
    }

    public void removeOnTabSelectedListener(b bVar) {
        this.G.remove(bVar);
    }

    public void clearOnTabSelectedListeners() {
        this.G.clear();
    }

    private static boolean a(f fVar) {
        return w.release(fVar);
    }

    public int getTabCount() {
        return this.x.size();
    }

    public f getTabAt(int i2) {
        if (i2 < 0 || i2 >= getTabCount()) {
            return null;
        }
        return this.x.get(i2);
    }

    public int getSelectedTabPosition() {
        f fVar = this.y;
        if (fVar != null) {
            return fVar.getPosition();
        }
        return -1;
    }

    public void removeTab(f fVar) {
        if (fVar.parent == this) {
            removeTabAt(fVar.getPosition());
            return;
        }
        throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
    }

    public void removeTabAt(int i2) {
        f fVar = this.y;
        int position = fVar != null ? fVar.getPosition() : 0;
        b(i2);
        f remove = this.x.remove(i2);
        if (remove != null) {
            remove.b();
            a(remove);
        }
        int size = this.x.size();
        for (int i3 = i2; i3 < size; i3++) {
            this.x.get(i3).c = i3;
        }
        if (position == i2) {
            a(this.x.isEmpty() ? null : this.x.get(Math.max(0, i2 - 1)), true);
        }
    }

    public void removeAllTabs() {
        for (int childCount = this.A.getChildCount() - 1; childCount >= 0; childCount--) {
            b(childCount);
        }
        Iterator<f> it = this.x.iterator();
        while (it.hasNext()) {
            f next = it.next();
            it.remove();
            next.b();
            a(next);
        }
        this.y = null;
    }

    public void setTabMode(int i2) {
        if (i2 != this.r) {
            this.r = i2;
            d();
        }
    }

    public int getTabMode() {
        return this.r;
    }

    public void setTabGravity(int i2) {
        if (this.o != i2) {
            this.o = i2;
            d();
        }
    }

    public int getTabGravity() {
        return this.o;
    }

    public void setSelectedTabIndicatorGravity(int i2) {
        if (this.q != i2) {
            this.q = i2;
            ViewCompat.postInvalidateOnAnimation(this.A);
        }
    }

    public int getTabIndicatorGravity() {
        return this.q;
    }

    public void setTabIndicatorFullWidth(boolean z2) {
        this.t = z2;
        ViewCompat.postInvalidateOnAnimation(this.A);
    }

    public boolean isTabIndicatorFullWidth() {
        return this.t;
    }

    public void setInlineLabel(boolean z2) {
        if (this.s != z2) {
            this.s = z2;
            for (int i2 = 0; i2 < this.A.getChildCount(); i2++) {
                View childAt = this.A.getChildAt(i2);
                if (childAt instanceof h) {
                    h hVar = (h) childAt;
                    hVar.setOrientation(TabLayout.this.s ^ true ? 1 : 0);
                    if (hVar.c == null && hVar.d == null) {
                        hVar.a(hVar.f4005a, hVar.f4006b);
                    } else {
                        hVar.a(hVar.c, hVar.d);
                    }
                }
            }
            d();
        }
    }

    public void setInlineLabelResource(int i2) {
        setInlineLabel(getResources().getBoolean(i2));
    }

    public boolean isInlineLabel() {
        return this.s;
    }

    public void setUnboundedRipple(boolean z2) {
        if (this.u != z2) {
            this.u = z2;
            for (int i2 = 0; i2 < this.A.getChildCount(); i2++) {
                View childAt = this.A.getChildAt(i2);
                if (childAt instanceof h) {
                    ((h) childAt).a(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(int i2) {
        setUnboundedRipple(getResources().getBoolean(i2));
    }

    public boolean hasUnboundedRipple() {
        return this.u;
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f != colorStateList) {
            this.f = colorStateList;
            b();
        }
    }

    public ColorStateList getTabTextColors() {
        return this.f;
    }

    public void setTabTextColors(int i2, int i3) {
        setTabTextColors(a(i2, i3));
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.g != colorStateList) {
            this.g = colorStateList;
            b();
        }
    }

    public void setTabIconTintResource(int i2) {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i2));
    }

    public ColorStateList getTabIconTint() {
        return this.g;
    }

    public ColorStateList getTabRippleColor() {
        return this.h;
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.h != colorStateList) {
            this.h = colorStateList;
            for (int i2 = 0; i2 < this.A.getChildCount(); i2++) {
                View childAt = this.A.getChildAt(i2);
                if (childAt instanceof h) {
                    ((h) childAt).a(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(int i2) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i2));
    }

    public Drawable getTabSelectedIndicator() {
        return this.i;
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.i != drawable) {
            this.i = drawable;
            ViewCompat.postInvalidateOnAnimation(this.A);
        }
    }

    public void setSelectedTabIndicator(int i2) {
        if (i2 != 0) {
            setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), i2));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setupWithViewPager(ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    public void setupWithViewPager(ViewPager viewPager, boolean z2) {
        a(viewPager, z2, false);
    }

    private void a(ViewPager viewPager, boolean z2, boolean z3) {
        ViewPager viewPager2 = this.v;
        if (viewPager2 != null) {
            g gVar = this.L;
            if (gVar != null) {
                viewPager2.removeOnPageChangeListener(gVar);
            }
            a aVar = this.M;
            if (aVar != null) {
                this.v.removeOnAdapterChangeListener(aVar);
            }
        }
        b bVar = this.H;
        if (bVar != null) {
            removeOnTabSelectedListener(bVar);
            this.H = null;
        }
        if (viewPager != null) {
            this.v = viewPager;
            if (this.L == null) {
                this.L = new g(this);
            }
            this.L.a();
            viewPager.addOnPageChangeListener(this.L);
            this.H = new i(viewPager);
            addOnTabSelectedListener(this.H);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                a(adapter, z2);
            }
            if (this.M == null) {
                this.M = new a();
            }
            a aVar2 = this.M;
            aVar2.f3992a = z2;
            viewPager.addOnAdapterChangeListener(aVar2);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.v = null;
            a((PagerAdapter) null, false);
        }
        this.N = z3;
    }

    @Deprecated
    public void setTabsFromPagerAdapter(PagerAdapter pagerAdapter) {
        a(pagerAdapter, false);
    }

    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.v == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                a((ViewPager) parent, true, true);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.N) {
            setupWithViewPager(null);
            this.N = false;
        }
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.A.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    /* access modifiers changed from: package-private */
    public final void a(PagerAdapter pagerAdapter, boolean z2) {
        PagerAdapter pagerAdapter2 = this.J;
        if (pagerAdapter2 != null) {
            DataSetObserver dataSetObserver = this.K;
            if (dataSetObserver != null) {
                pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.J = pagerAdapter;
        if (z2 && pagerAdapter != null) {
            if (this.K == null) {
                this.K = new d();
            }
            pagerAdapter.registerDataSetObserver(this.K);
        }
        a();
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        removeAllTabs();
        PagerAdapter pagerAdapter = this.J;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i2 = 0; i2 < count; i2++) {
                addTab(newTab().setText(this.J.getPageTitle(i2)), false);
            }
            ViewPager viewPager = this.v;
            if (viewPager != null && count > 0) {
                int currentItem = viewPager.getCurrentItem();
                if (currentItem != getSelectedTabPosition() && currentItem < getTabCount()) {
                    a(getTabAt(currentItem), true);
                }
            }
        }
    }

    private void b() {
        int size = this.x.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.x.get(i2).a();
        }
    }

    public void addView(View view) {
        a(view);
    }

    public void addView(View view, int i2) {
        a(view);
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    private void a(View view) {
        if (view instanceof TabItem) {
            a((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    private void a(LinearLayout.LayoutParams layoutParams) {
        if (this.r == 1 && this.o == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    /* access modifiers changed from: package-private */
    public final int a(int i2) {
        return Math.round(getResources().getDisplayMetrics().density * ((float) i2));
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        for (int i2 = 0; i2 < this.A.getChildCount(); i2++) {
            View childAt = this.A.getChildAt(i2);
            if (childAt instanceof h) {
                h.a((h) childAt, canvas);
            }
        }
        super.onDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int a2 = a(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i3);
        if (mode == Integer.MIN_VALUE) {
            i3 = View.MeasureSpec.makeMeasureSpec(Math.min(a2, View.MeasureSpec.getSize(i3)), 1073741824);
        } else if (mode == 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(a2, 1073741824);
        }
        int size = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) != 0) {
            int i4 = this.C;
            if (i4 <= 0) {
                i4 = size - a(56);
            }
            this.n = i4;
        }
        super.onMeasure(i2, i3);
        if (getChildCount() == 1) {
            boolean z2 = false;
            View childAt = getChildAt(0);
            int i5 = this.r;
            if (i5 == 0 ? childAt.getMeasuredWidth() < getMeasuredWidth() : !(i5 != 1 || childAt.getMeasuredWidth() == getMeasuredWidth())) {
                z2 = true;
            }
            if (z2) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    private void b(int i2) {
        h hVar = (h) this.A.getChildAt(i2);
        this.A.removeViewAt(i2);
        if (hVar != null) {
            hVar.a();
            this.O.release(hVar);
        }
        requestLayout();
    }

    private void c(int i2) {
        boolean z2;
        if (i2 != -1) {
            if (getWindowToken() != null && ViewCompat.isLaidOut(this)) {
                e eVar = this.A;
                int childCount = eVar.getChildCount();
                int i3 = 0;
                while (true) {
                    if (i3 >= childCount) {
                        z2 = false;
                        break;
                    } else if (eVar.getChildAt(i3).getWidth() <= 0) {
                        z2 = true;
                        break;
                    } else {
                        i3++;
                    }
                }
                if (!z2) {
                    int scrollX = getScrollX();
                    int a2 = a(i2, 0.0f);
                    if (scrollX != a2) {
                        c();
                        this.I.setIntValues(new int[]{scrollX, a2});
                        this.I.start();
                    }
                    this.A.b(i2, this.p);
                    return;
                }
            }
            setScrollPosition(i2, 0.0f, true);
        }
    }

    private void c() {
        if (this.I == null) {
            this.I = new ValueAnimator();
            this.I.setInterpolator(com.google.android.material.a.a.FAST_OUT_SLOW_IN_INTERPOLATOR);
            this.I.setDuration((long) this.p);
            this.I.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    /* access modifiers changed from: package-private */
    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        c();
        this.I.addListener(animatorListener);
    }

    private void setSelectedTabView(int i2) {
        int childCount = this.A.getChildCount();
        if (i2 < childCount) {
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = this.A.getChildAt(i3);
                boolean z2 = true;
                childAt.setSelected(i3 == i2);
                if (i3 != i2) {
                    z2 = false;
                }
                childAt.setActivated(z2);
                i3++;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(f fVar, boolean z2) {
        f fVar2 = this.y;
        if (fVar2 != fVar) {
            int position = fVar != null ? fVar.getPosition() : -1;
            if (z2) {
                if ((fVar2 == null || fVar2.getPosition() == -1) && position != -1) {
                    setScrollPosition(position, 0.0f, true);
                } else {
                    c(position);
                }
                if (position != -1) {
                    setSelectedTabView(position);
                }
            }
            this.y = fVar;
            if (fVar2 != null) {
                c(fVar2);
            }
            if (fVar != null) {
                b(fVar);
            }
        } else if (fVar2 != null) {
            d(fVar);
            c(fVar.getPosition());
        }
    }

    private void b(f fVar) {
        for (int size = this.G.size() - 1; size >= 0; size--) {
            this.G.get(size).onTabSelected(fVar);
        }
    }

    private void c(f fVar) {
        for (int size = this.G.size() - 1; size >= 0; size--) {
            this.G.get(size).onTabUnselected(fVar);
        }
    }

    private void d(f fVar) {
        for (int size = this.G.size() - 1; size >= 0; size--) {
            this.G.get(size).onTabReselected(fVar);
        }
    }

    private int a(int i2, float f2) {
        int i3 = 0;
        if (this.r != 0) {
            return 0;
        }
        View childAt = this.A.getChildAt(i2);
        int i4 = i2 + 1;
        View childAt2 = i4 < this.A.getChildCount() ? this.A.getChildAt(i4) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        if (childAt2 != null) {
            i3 = childAt2.getWidth();
        }
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i5 = (int) (((float) (width + i3)) * 0.5f * f2);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i5 : left - i5;
    }

    private void d() {
        ViewCompat.setPaddingRelative(this.A, this.r == 0 ? Math.max(0, this.E - this.f3989a) : 0, 0, 0, 0);
        int i2 = this.r;
        if (i2 == 0) {
            this.A.setGravity(GravityCompat.START);
        } else if (i2 == 1) {
            this.A.setGravity(1);
        }
        a(true);
    }

    /* access modifiers changed from: package-private */
    public final void a(boolean z2) {
        for (int i2 = 0; i2 < this.A.getChildCount(); i2++) {
            View childAt = this.A.getChildAt(i2);
            childAt.setMinimumWidth(getTabMinWidth());
            a((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z2) {
                childAt.requestLayout();
            }
        }
    }

    private static ColorStateList a(int i2, int i3) {
        return new ColorStateList(new int[][]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i3, i2});
    }

    private int getDefaultHeight() {
        int size = this.x.size();
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            f fVar = this.x.get(i2);
            if (fVar != null && fVar.getIcon() != null && !TextUtils.isEmpty(fVar.getText())) {
                z2 = true;
                break;
            }
            i2++;
        }
        return (!z2 || this.s) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i2 = this.B;
        if (i2 != -1) {
            return i2;
        }
        if (this.r == 0) {
            return this.D;
        }
        return 0;
    }

    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    /* access modifiers changed from: package-private */
    public int getTabMaxWidth() {
        return this.n;
    }

    public f newTab() {
        f acquire = w.acquire();
        if (acquire == null) {
            acquire = new f();
        }
        acquire.parent = this;
        Pools.Pool<h> pool = this.O;
        h acquire2 = pool != null ? pool.acquire() : null;
        if (acquire2 == null) {
            acquire2 = new h(getContext());
        }
        acquire2.a(acquire);
        acquire2.setFocusable(true);
        acquire2.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(acquire.f4002b)) {
            acquire2.setContentDescription(acquire.f4001a);
        } else {
            acquire2.setContentDescription(acquire.f4002b);
        }
        acquire.view = acquire2;
        return acquire;
    }

    private void a(f fVar, int i2) {
        fVar.c = i2;
        this.x.add(i2, fVar);
        int size = this.x.size();
        while (true) {
            i2++;
            if (i2 < size) {
                this.x.get(i2).c = i2;
            } else {
                return;
            }
        }
    }
}
