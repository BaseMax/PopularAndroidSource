package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
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
import androidx.viewpager.widget.ViewPager;
import b.b.a.C0190a;
import b.b.g.xa;
import b.i.k.C0263f;
import b.i.k.s;
import b.i.k.z;
import b.i.l.j;
import c.e.a.c.k;
import c.e.a.c.l.p;
import c.e.a.c.l.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.a
public class TabLayout extends HorizontalScrollView {

    /* renamed from: a  reason: collision with root package name */
    public static final b.i.j.e<f> f13408a = new b.i.j.g(16);
    public int A;
    public boolean B;
    public boolean C;
    public boolean D;
    public b E;
    public final ArrayList<b> F;
    public b G;
    public ValueAnimator H;
    public ViewPager I;
    public b.G.a.a J;
    public DataSetObserver K;
    public g L;
    public a M;
    public boolean N;
    public final b.i.j.e<h> O;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList<f> f13409b;

    /* renamed from: c  reason: collision with root package name */
    public f f13410c;

    /* renamed from: d  reason: collision with root package name */
    public final RectF f13411d;

    /* renamed from: e  reason: collision with root package name */
    public final e f13412e;

    /* renamed from: f  reason: collision with root package name */
    public int f13413f;

    /* renamed from: g  reason: collision with root package name */
    public int f13414g;

    /* renamed from: h  reason: collision with root package name */
    public int f13415h;

    /* renamed from: i  reason: collision with root package name */
    public int f13416i;

    /* renamed from: j  reason: collision with root package name */
    public int f13417j;

    /* renamed from: k  reason: collision with root package name */
    public ColorStateList f13418k;

    /* renamed from: l  reason: collision with root package name */
    public ColorStateList f13419l;
    public ColorStateList m;
    public Drawable n;
    public PorterDuff.Mode o;
    public float p;
    public float q;
    public final int r;
    public int s;
    public final int t;
    public final int u;
    public final int v;
    public int w;
    public int x;
    public int y;
    public int z;

    private class a implements ViewPager.e {

        /* renamed from: a  reason: collision with root package name */
        public boolean f13420a;

        public a() {
        }

        public void a(ViewPager viewPager, b.G.a.a aVar, b.G.a.a aVar2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.I == viewPager) {
                tabLayout.a(aVar2, this.f13420a);
            }
        }

        public void a(boolean z) {
            this.f13420a = z;
        }
    }

    public interface b<T extends f> {
        void a(T t);

        void b(T t);

        void c(T t);
    }

    public interface c extends b<f> {
    }

    private class d extends DataSetObserver {
        public d() {
        }

        public void onChanged() {
            TabLayout.this.f();
        }

        public void onInvalidated() {
            TabLayout.this.f();
        }
    }

    private class e extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        public int f13423a;

        /* renamed from: b  reason: collision with root package name */
        public final Paint f13424b;

        /* renamed from: c  reason: collision with root package name */
        public final GradientDrawable f13425c;

        /* renamed from: d  reason: collision with root package name */
        public int f13426d = -1;

        /* renamed from: e  reason: collision with root package name */
        public float f13427e;

        /* renamed from: f  reason: collision with root package name */
        public int f13428f = -1;

        /* renamed from: g  reason: collision with root package name */
        public int f13429g = -1;

        /* renamed from: h  reason: collision with root package name */
        public int f13430h = -1;

        /* renamed from: i  reason: collision with root package name */
        public ValueAnimator f13431i;

        public e(Context context) {
            super(context);
            setWillNotDraw(false);
            this.f13424b = new Paint();
            this.f13425c = new GradientDrawable();
        }

        public void a(int i2) {
            if (this.f13424b.getColor() != i2) {
                this.f13424b.setColor(i2);
                z.F(this);
            }
        }

        public void b(int i2) {
            if (this.f13423a != i2) {
                this.f13423a = i2;
                z.F(this);
            }
        }

        public void draw(Canvas canvas) {
            Drawable drawable = TabLayout.this.n;
            int i2 = 0;
            int intrinsicHeight = drawable != null ? drawable.getIntrinsicHeight() : 0;
            int i3 = this.f13423a;
            if (i3 >= 0) {
                intrinsicHeight = i3;
            }
            int i4 = TabLayout.this.z;
            if (i4 == 0) {
                i2 = getHeight() - intrinsicHeight;
                intrinsicHeight = getHeight();
            } else if (i4 == 1) {
                i2 = (getHeight() - intrinsicHeight) / 2;
                intrinsicHeight = (getHeight() + intrinsicHeight) / 2;
            } else if (i4 != 2) {
                if (i4 != 3) {
                    intrinsicHeight = 0;
                } else {
                    intrinsicHeight = getHeight();
                }
            }
            int i5 = this.f13429g;
            if (i5 >= 0 && this.f13430h > i5) {
                Drawable drawable2 = TabLayout.this.n;
                if (drawable2 == null) {
                    drawable2 = this.f13425c;
                }
                Drawable i6 = b.i.c.a.a.i(drawable2);
                i6.setBounds(this.f13429g, i2, this.f13430h, intrinsicHeight);
                Paint paint = this.f13424b;
                if (paint != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        i6.setColorFilter(paint.getColor(), PorterDuff.Mode.SRC_IN);
                    } else {
                        b.i.c.a.a.b(i6, paint.getColor());
                    }
                }
                i6.draw(canvas);
            }
            super.draw(canvas);
        }

        public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
            super.onLayout(z, i2, i3, i4, i5);
            ValueAnimator valueAnimator = this.f13431i;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                b();
                return;
            }
            this.f13431i.cancel();
            a(this.f13426d, Math.round((1.0f - this.f13431i.getAnimatedFraction()) * ((float) this.f13431i.getDuration())));
        }

        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            if (View.MeasureSpec.getMode(i2) == 1073741824) {
                TabLayout tabLayout = TabLayout.this;
                boolean z = true;
                if (tabLayout.A == 1 && tabLayout.x == 1) {
                    int childCount = getChildCount();
                    int i4 = 0;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        View childAt = getChildAt(i5);
                        if (childAt.getVisibility() == 0) {
                            i4 = Math.max(i4, childAt.getMeasuredWidth());
                        }
                    }
                    if (i4 > 0) {
                        if (i4 * childCount <= getMeasuredWidth() - (TabLayout.this.b(16) * 2)) {
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
                            TabLayout tabLayout2 = TabLayout.this;
                            tabLayout2.x = 0;
                            tabLayout2.a(false);
                        }
                        if (z) {
                            super.onMeasure(i2, i3);
                        }
                    }
                }
            }
        }

        public void onRtlPropertiesChanged(int i2) {
            super.onRtlPropertiesChanged(i2);
            if (Build.VERSION.SDK_INT < 23 && this.f13428f != i2) {
                requestLayout();
                this.f13428f = i2;
            }
        }

        public boolean a() {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (getChildAt(i2).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        public final void b() {
            int i2;
            int i3;
            View childAt = getChildAt(this.f13426d);
            if (childAt == null || childAt.getWidth() <= 0) {
                i3 = -1;
                i2 = -1;
            } else {
                i3 = childAt.getLeft();
                i2 = childAt.getRight();
                TabLayout tabLayout = TabLayout.this;
                if (!tabLayout.C && (childAt instanceof h)) {
                    a((h) childAt, tabLayout.f13411d);
                    i3 = (int) TabLayout.this.f13411d.left;
                    i2 = (int) TabLayout.this.f13411d.right;
                }
                if (this.f13427e > 0.0f && this.f13426d < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.f13426d + 1);
                    int left = childAt2.getLeft();
                    int right = childAt2.getRight();
                    TabLayout tabLayout2 = TabLayout.this;
                    if (!tabLayout2.C && (childAt2 instanceof h)) {
                        a((h) childAt2, tabLayout2.f13411d);
                        left = (int) TabLayout.this.f13411d.left;
                        right = (int) TabLayout.this.f13411d.right;
                    }
                    float f2 = this.f13427e;
                    i3 = (int) ((((float) left) * f2) + ((1.0f - f2) * ((float) i3)));
                    i2 = (int) ((((float) right) * f2) + ((1.0f - f2) * ((float) i2)));
                }
            }
            b(i3, i2);
        }

        public void a(int i2, float f2) {
            ValueAnimator valueAnimator = this.f13431i;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f13431i.cancel();
            }
            this.f13426d = i2;
            this.f13427e = f2;
            b();
        }

        public void a(int i2, int i3) {
            ValueAnimator valueAnimator = this.f13431i;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f13431i.cancel();
            }
            View childAt = getChildAt(i2);
            if (childAt == null) {
                b();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            TabLayout tabLayout = TabLayout.this;
            if (!tabLayout.C && (childAt instanceof h)) {
                a((h) childAt, tabLayout.f13411d);
                left = (int) TabLayout.this.f13411d.left;
                right = (int) TabLayout.this.f13411d.right;
            }
            int i4 = left;
            int i5 = right;
            int i6 = this.f13429g;
            int i7 = this.f13430h;
            if (!(i6 == i4 && i7 == i5)) {
                ValueAnimator valueAnimator2 = new ValueAnimator();
                this.f13431i = valueAnimator2;
                valueAnimator2.setInterpolator(c.e.a.c.a.a.f11185b);
                valueAnimator2.setDuration((long) i3);
                valueAnimator2.setFloatValues(new float[]{0.0f, 1.0f});
                c cVar = new c(this, i6, i4, i7, i5);
                valueAnimator2.addUpdateListener(cVar);
                valueAnimator2.addListener(new d(this, i2));
                valueAnimator2.start();
            }
        }

        public void b(int i2, int i3) {
            if (i2 != this.f13429g || i3 != this.f13430h) {
                this.f13429g = i2;
                this.f13430h = i3;
                z.F(this);
            }
        }

        public final void a(h hVar, RectF rectF) {
            int a2 = hVar.a();
            if (a2 < TabLayout.this.b(24)) {
                a2 = TabLayout.this.b(24);
            }
            int left = (hVar.getLeft() + hVar.getRight()) / 2;
            int i2 = a2 / 2;
            rectF.set((float) (left - i2), 0.0f, (float) (left + i2), 0.0f);
        }
    }

    public static class f {

        /* renamed from: a  reason: collision with root package name */
        public Object f13433a;

        /* renamed from: b  reason: collision with root package name */
        public Drawable f13434b;

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f13435c;

        /* renamed from: d  reason: collision with root package name */
        public CharSequence f13436d;

        /* renamed from: e  reason: collision with root package name */
        public int f13437e = -1;

        /* renamed from: f  reason: collision with root package name */
        public View f13438f;

        /* renamed from: g  reason: collision with root package name */
        public TabLayout f13439g;

        /* renamed from: h  reason: collision with root package name */
        public h f13440h;

        public int c() {
            return this.f13437e;
        }

        public CharSequence d() {
            return this.f13435c;
        }

        public boolean e() {
            TabLayout tabLayout = this.f13439g;
            if (tabLayout != null) {
                return tabLayout.getSelectedTabPosition() == this.f13437e;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void f() {
            this.f13439g = null;
            this.f13440h = null;
            this.f13433a = null;
            this.f13434b = null;
            this.f13435c = null;
            this.f13436d = null;
            this.f13437e = -1;
            this.f13438f = null;
        }

        public void g() {
            TabLayout tabLayout = this.f13439g;
            if (tabLayout != null) {
                tabLayout.h(this);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void h() {
            h hVar = this.f13440h;
            if (hVar != null) {
                hVar.c();
            }
        }

        public View a() {
            return this.f13438f;
        }

        public Drawable b() {
            return this.f13434b;
        }

        public f a(View view) {
            this.f13438f = view;
            h();
            return this;
        }

        public void b(int i2) {
            this.f13437e = i2;
        }

        public f b(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f13436d) && !TextUtils.isEmpty(charSequence)) {
                this.f13440h.setContentDescription(charSequence);
            }
            this.f13435c = charSequence;
            h();
            return this;
        }

        public f a(int i2) {
            a(LayoutInflater.from(this.f13440h.getContext()).inflate(i2, this.f13440h, false));
            return this;
        }

        public f a(Drawable drawable) {
            this.f13434b = drawable;
            h();
            return this;
        }

        public f a(CharSequence charSequence) {
            this.f13436d = charSequence;
            h();
            return this;
        }
    }

    public static class g implements ViewPager.f {

        /* renamed from: a  reason: collision with root package name */
        public final WeakReference<TabLayout> f13441a;

        /* renamed from: b  reason: collision with root package name */
        public int f13442b;

        /* renamed from: c  reason: collision with root package name */
        public int f13443c;

        public g(TabLayout tabLayout) {
            this.f13441a = new WeakReference<>(tabLayout);
        }

        public void a(int i2) {
            this.f13442b = this.f13443c;
            this.f13443c = i2;
        }

        public void b(int i2) {
            TabLayout tabLayout = (TabLayout) this.f13441a.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i2 && i2 < tabLayout.getTabCount()) {
                int i3 = this.f13443c;
                tabLayout.b(tabLayout.c(i2), i3 == 0 || (i3 == 2 && this.f13442b == 0));
            }
        }

        public void a(int i2, float f2, int i3) {
            TabLayout tabLayout = (TabLayout) this.f13441a.get();
            if (tabLayout != null) {
                boolean z = false;
                boolean z2 = this.f13443c != 2 || this.f13442b == 1;
                if (!(this.f13443c == 2 && this.f13442b == 0)) {
                    z = true;
                }
                tabLayout.a(i2, f2, z2, z);
            }
        }

        public void a() {
            this.f13443c = 0;
            this.f13442b = 0;
        }
    }

    class h extends LinearLayout {

        /* renamed from: a  reason: collision with root package name */
        public f f13444a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f13445b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f13446c;

        /* renamed from: d  reason: collision with root package name */
        public View f13447d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f13448e;

        /* renamed from: f  reason: collision with root package name */
        public ImageView f13449f;

        /* renamed from: g  reason: collision with root package name */
        public Drawable f13450g;

        /* renamed from: h  reason: collision with root package name */
        public int f13451h = 2;

        public h(Context context) {
            super(context);
            a(context);
            z.a(this, TabLayout.this.f13413f, TabLayout.this.f13414g, TabLayout.this.f13415h, TabLayout.this.f13416i);
            setGravity(17);
            setOrientation(TabLayout.this.B ^ true ? 1 : 0);
            setClickable(true);
            z.a((View) this, s.a(getContext(), 1002));
        }

        public void b() {
            a((f) null);
            setSelected(false);
        }

        public final void c() {
            f fVar = this.f13444a;
            Drawable drawable = null;
            View a2 = fVar != null ? fVar.a() : null;
            if (a2 != null) {
                ViewParent parent = a2.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(a2);
                    }
                    addView(a2);
                }
                this.f13447d = a2;
                TextView textView = this.f13445b;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f13446c;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f13446c.setImageDrawable(null);
                }
                this.f13448e = (TextView) a2.findViewById(16908308);
                TextView textView2 = this.f13448e;
                if (textView2 != null) {
                    this.f13451h = j.g(textView2);
                }
                this.f13449f = (ImageView) a2.findViewById(16908294);
            } else {
                View view = this.f13447d;
                if (view != null) {
                    removeView(view);
                    this.f13447d = null;
                }
                this.f13448e = null;
                this.f13449f = null;
            }
            boolean z = false;
            if (this.f13447d == null) {
                if (this.f13446c == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(c.e.a.c.h.design_layout_tab_icon, this, false);
                    addView(imageView2, 0);
                    this.f13446c = imageView2;
                }
                if (!(fVar == null || fVar.b() == null)) {
                    drawable = b.i.c.a.a.i(fVar.b()).mutate();
                }
                if (drawable != null) {
                    b.i.c.a.a.a(drawable, TabLayout.this.f13419l);
                    PorterDuff.Mode mode = TabLayout.this.o;
                    if (mode != null) {
                        b.i.c.a.a.a(drawable, mode);
                    }
                }
                if (this.f13445b == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(c.e.a.c.h.design_layout_tab_text, this, false);
                    addView(textView3);
                    this.f13445b = textView3;
                    this.f13451h = j.g(this.f13445b);
                }
                j.e(this.f13445b, TabLayout.this.f13417j);
                ColorStateList colorStateList = TabLayout.this.f13418k;
                if (colorStateList != null) {
                    this.f13445b.setTextColor(colorStateList);
                }
                a(this.f13445b, this.f13446c);
            } else if (!(this.f13448e == null && this.f13449f == null)) {
                a(this.f13448e, this.f13449f);
            }
            if (fVar != null && !TextUtils.isEmpty(fVar.f13436d)) {
                setContentDescription(fVar.f13436d);
            }
            if (fVar != null && fVar.e()) {
                z = true;
            }
            setSelected(z);
        }

        public final void d() {
            setOrientation(TabLayout.this.B ^ true ? 1 : 0);
            if (this.f13448e == null && this.f13449f == null) {
                a(this.f13445b, this.f13446c);
            } else {
                a(this.f13448e, this.f13449f);
            }
        }

        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f13450g;
            boolean z = false;
            if (drawable != null && drawable.isStateful()) {
                z = false | this.f13450g.setState(drawableState);
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(C0190a.c.class.getName());
        }

        @TargetApi(14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(C0190a.c.class.getName());
        }

        public void onMeasure(int i2, int i3) {
            int size = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i2 = View.MeasureSpec.makeMeasureSpec(TabLayout.this.s, Integer.MIN_VALUE);
            }
            super.onMeasure(i2, i3);
            if (this.f13445b != null) {
                float f2 = TabLayout.this.p;
                int i4 = this.f13451h;
                ImageView imageView = this.f13446c;
                boolean z = true;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f13445b;
                    if (textView != null && textView.getLineCount() > 1) {
                        f2 = TabLayout.this.q;
                    }
                } else {
                    i4 = 1;
                }
                float textSize = this.f13445b.getTextSize();
                int lineCount = this.f13445b.getLineCount();
                int g2 = j.g(this.f13445b);
                if (f2 != textSize || (g2 >= 0 && i4 != g2)) {
                    if (TabLayout.this.A == 1 && f2 > textSize && lineCount == 1) {
                        Layout layout = this.f13445b.getLayout();
                        if (layout == null || a(layout, 0, f2) > ((float) ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()))) {
                            z = false;
                        }
                    }
                    if (z) {
                        this.f13445b.setTextSize(0, f2);
                        this.f13445b.setMaxLines(i4);
                        super.onMeasure(i2, i3);
                    }
                }
            }
        }

        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f13444a == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            this.f13444a.g();
            return true;
        }

        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.f13445b;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f13446c;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f13447d;
            if (view != null) {
                view.setSelected(z);
            }
        }

        /* JADX WARNING: type inference failed for: r2v3, types: [android.graphics.drawable.LayerDrawable] */
        /* JADX WARNING: type inference failed for: r0v3, types: [android.graphics.drawable.RippleDrawable] */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a(android.content.Context r7) {
            /*
                r6 = this;
                com.google.android.material.tabs.TabLayout r0 = com.google.android.material.tabs.TabLayout.this
                int r0 = r0.r
                r1 = 0
                if (r0 == 0) goto L_0x0021
                android.graphics.drawable.Drawable r7 = b.b.b.a.a.c(r7, r0)
                r6.f13450g = r7
                android.graphics.drawable.Drawable r7 = r6.f13450g
                if (r7 == 0) goto L_0x0023
                boolean r7 = r7.isStateful()
                if (r7 == 0) goto L_0x0023
                android.graphics.drawable.Drawable r7 = r6.f13450g
                int[] r0 = r6.getDrawableState()
                r7.setState(r0)
                goto L_0x0023
            L_0x0021:
                r6.f13450g = r1
            L_0x0023:
                android.graphics.drawable.GradientDrawable r7 = new android.graphics.drawable.GradientDrawable
                r7.<init>()
                r0 = 0
                r7.setColor(r0)
                com.google.android.material.tabs.TabLayout r2 = com.google.android.material.tabs.TabLayout.this
                android.content.res.ColorStateList r2 = r2.m
                if (r2 == 0) goto L_0x007a
                android.graphics.drawable.GradientDrawable r2 = new android.graphics.drawable.GradientDrawable
                r2.<init>()
                r3 = 925353388(0x3727c5ac, float:1.0E-5)
                r2.setCornerRadius(r3)
                r3 = -1
                r2.setColor(r3)
                com.google.android.material.tabs.TabLayout r3 = com.google.android.material.tabs.TabLayout.this
                android.content.res.ColorStateList r3 = r3.m
                android.content.res.ColorStateList r3 = c.e.a.c.p.a.a((android.content.res.ColorStateList) r3)
                int r4 = android.os.Build.VERSION.SDK_INT
                r5 = 21
                if (r4 < r5) goto L_0x0065
                android.graphics.drawable.RippleDrawable r0 = new android.graphics.drawable.RippleDrawable
                com.google.android.material.tabs.TabLayout r4 = com.google.android.material.tabs.TabLayout.this
                boolean r4 = r4.D
                if (r4 == 0) goto L_0x0058
                r7 = r1
            L_0x0058:
                com.google.android.material.tabs.TabLayout r4 = com.google.android.material.tabs.TabLayout.this
                boolean r4 = r4.D
                if (r4 == 0) goto L_0x005f
                goto L_0x0060
            L_0x005f:
                r1 = r2
            L_0x0060:
                r0.<init>(r3, r7, r1)
                r7 = r0
                goto L_0x007a
            L_0x0065:
                android.graphics.drawable.Drawable r1 = b.i.c.a.a.i(r2)
                b.i.c.a.a.a((android.graphics.drawable.Drawable) r1, (android.content.res.ColorStateList) r3)
                android.graphics.drawable.LayerDrawable r2 = new android.graphics.drawable.LayerDrawable
                r3 = 2
                android.graphics.drawable.Drawable[] r3 = new android.graphics.drawable.Drawable[r3]
                r3[r0] = r7
                r7 = 1
                r3[r7] = r1
                r2.<init>(r3)
                r7 = r2
            L_0x007a:
                b.i.k.z.a((android.view.View) r6, (android.graphics.drawable.Drawable) r7)
                com.google.android.material.tabs.TabLayout r7 = com.google.android.material.tabs.TabLayout.this
                r7.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.h.a(android.content.Context):void");
        }

        public final void a(Canvas canvas) {
            Drawable drawable = this.f13450g;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f13450g.draw(canvas);
            }
        }

        public void a(f fVar) {
            if (fVar != this.f13444a) {
                this.f13444a = fVar;
                c();
            }
        }

        public final void a(TextView textView, ImageView imageView) {
            f fVar = this.f13444a;
            Drawable mutate = (fVar == null || fVar.b() == null) ? null : b.i.c.a.a.i(this.f13444a.b()).mutate();
            f fVar2 = this.f13444a;
            CharSequence d2 = fVar2 != null ? fVar2.d() : null;
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
            boolean z = !TextUtils.isEmpty(d2);
            if (textView != null) {
                if (z) {
                    textView.setText(d2);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText(null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int b2 = (!z || imageView.getVisibility() != 0) ? 0 : TabLayout.this.b(8);
                if (TabLayout.this.B) {
                    if (b2 != C0263f.a(marginLayoutParams)) {
                        C0263f.a(marginLayoutParams, b2);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (b2 != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = b2;
                    C0263f.a(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            f fVar3 = this.f13444a;
            CharSequence a2 = fVar3 != null ? fVar3.f13436d : null;
            if (z) {
                a2 = null;
            }
            xa.a(this, a2);
        }

        public final int a() {
            int i2 = 0;
            int i3 = 0;
            boolean z = false;
            for (View view : new View[]{this.f13445b, this.f13446c, this.f13447d}) {
                if (view != null && view.getVisibility() == 0) {
                    i3 = z ? Math.min(i3, view.getLeft()) : view.getLeft();
                    i2 = z ? Math.max(i2, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return i2 - i3;
        }

        public final float a(Layout layout, int i2, float f2) {
            return layout.getLineWidth(i2) * (f2 / layout.getPaint().getTextSize());
        }
    }

    public static class i implements c {

        /* renamed from: a  reason: collision with root package name */
        public final ViewPager f13453a;

        public i(ViewPager viewPager) {
            this.f13453a = viewPager;
        }

        public void a(f fVar) {
        }

        public void b(f fVar) {
            this.f13453a.setCurrentItem(fVar.c());
        }

        public void c(f fVar) {
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    private int getDefaultHeight() {
        int size = this.f13409b.size();
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            f fVar = this.f13409b.get(i2);
            if (fVar != null && fVar.b() != null && !TextUtils.isEmpty(fVar.d())) {
                z2 = true;
                break;
            }
            i2++;
        }
        return (!z2 || this.B) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i2 = this.t;
        if (i2 != -1) {
            return i2;
        }
        return this.A == 0 ? this.v : 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f13412e.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i2) {
        int childCount = this.f13412e.getChildCount();
        if (i2 < childCount) {
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = this.f13412e.getChildAt(i3);
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

    public void addView(View view) {
        a(view);
    }

    public void b(b bVar) {
        this.F.remove(bVar);
    }

    public f c() {
        f a2 = f13408a.a();
        return a2 == null ? new f() : a2;
    }

    public final void d(int i2) {
        h hVar = (h) this.f13412e.getChildAt(i2);
        this.f13412e.removeViewAt(i2);
        if (hVar != null) {
            hVar.b();
            this.O.a(hVar);
        }
        requestLayout();
    }

    public f e() {
        f c2 = c();
        c2.f13439g = this;
        c2.f13440h = c(c2);
        return c2;
    }

    public void f() {
        g();
        b.G.a.a aVar = this.J;
        if (aVar != null) {
            int a2 = aVar.a();
            for (int i2 = 0; i2 < a2; i2++) {
                f e2 = e();
                e2.b(this.J.a(i2));
                a(e2, false);
            }
            ViewPager viewPager = this.I;
            if (viewPager != null && a2 > 0) {
                int currentItem = viewPager.getCurrentItem();
                if (currentItem != getSelectedTabPosition() && currentItem < getTabCount()) {
                    h(c(currentItem));
                }
            }
        }
    }

    public boolean g(f fVar) {
        return f13408a.a(fVar);
    }

    public int getSelectedTabPosition() {
        f fVar = this.f13410c;
        if (fVar != null) {
            return fVar.c();
        }
        return -1;
    }

    public int getTabCount() {
        return this.f13409b.size();
    }

    public int getTabGravity() {
        return this.x;
    }

    public ColorStateList getTabIconTint() {
        return this.f13419l;
    }

    public int getTabIndicatorGravity() {
        return this.z;
    }

    public int getTabMaxWidth() {
        return this.s;
    }

    public int getTabMode() {
        return this.A;
    }

    public ColorStateList getTabRippleColor() {
        return this.m;
    }

    public Drawable getTabSelectedIndicator() {
        return this.n;
    }

    public ColorStateList getTabTextColors() {
        return this.f13418k;
    }

    public final void h() {
        int size = this.f13409b.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f13409b.get(i2).h();
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.I == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                a((ViewPager) parent, true, true);
            }
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.N) {
            setupWithViewPager(null);
            this.N = false;
        }
    }

    public void onDraw(Canvas canvas) {
        for (int i2 = 0; i2 < this.f13412e.getChildCount(); i2++) {
            View childAt = this.f13412e.getChildAt(i2);
            if (childAt instanceof h) {
                ((h) childAt).a(canvas);
            }
        }
        super.onDraw(canvas);
    }

    public void onMeasure(int i2, int i3) {
        int b2 = b(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i3);
        if (mode == Integer.MIN_VALUE) {
            i3 = View.MeasureSpec.makeMeasureSpec(Math.min(b2, View.MeasureSpec.getSize(i3)), 1073741824);
        } else if (mode == 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(b2, 1073741824);
        }
        int size = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) != 0) {
            int i4 = this.u;
            if (i4 <= 0) {
                i4 = size - b(56);
            }
            this.s = i4;
        }
        super.onMeasure(i2, i3);
        if (getChildCount() == 1) {
            boolean z2 = false;
            View childAt = getChildAt(0);
            int i5 = this.A;
            if (i5 == 0 ? childAt.getMeasuredWidth() < getMeasuredWidth() : !(i5 != 1 || childAt.getMeasuredWidth() == getMeasuredWidth())) {
                z2 = true;
            }
            if (z2) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), HorizontalScrollView.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    public void setInlineLabel(boolean z2) {
        if (this.B != z2) {
            this.B = z2;
            for (int i2 = 0; i2 < this.f13412e.getChildCount(); i2++) {
                View childAt = this.f13412e.getChildAt(i2);
                if (childAt instanceof h) {
                    ((h) childAt).d();
                }
            }
            a();
        }
    }

    public void setInlineLabelResource(int i2) {
        setInlineLabel(getResources().getBoolean(i2));
    }

    @Deprecated
    public void setOnTabSelectedListener(b bVar) {
        b bVar2 = this.E;
        if (bVar2 != null) {
            b(bVar2);
        }
        this.E = bVar;
        if (bVar != null) {
            a(bVar);
        }
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        d();
        this.H.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.n != drawable) {
            this.n = drawable;
            z.F(this.f13412e);
        }
    }

    public void setSelectedTabIndicatorColor(int i2) {
        this.f13412e.a(i2);
    }

    public void setSelectedTabIndicatorGravity(int i2) {
        if (this.z != i2) {
            this.z = i2;
            z.F(this.f13412e);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i2) {
        this.f13412e.b(i2);
    }

    public void setTabGravity(int i2) {
        if (this.x != i2) {
            this.x = i2;
            a();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f13419l != colorStateList) {
            this.f13419l = colorStateList;
            h();
        }
    }

    public void setTabIconTintResource(int i2) {
        setTabIconTint(b.b.b.a.a.b(getContext(), i2));
    }

    public void setTabIndicatorFullWidth(boolean z2) {
        this.C = z2;
        z.F(this.f13412e);
    }

    public void setTabMode(int i2) {
        if (i2 != this.A) {
            this.A = i2;
            a();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            for (int i2 = 0; i2 < this.f13412e.getChildCount(); i2++) {
                View childAt = this.f13412e.getChildAt(i2);
                if (childAt instanceof h) {
                    ((h) childAt).a(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(int i2) {
        setTabRippleColor(b.b.b.a.a.b(getContext(), i2));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f13418k != colorStateList) {
            this.f13418k = colorStateList;
            h();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(b.G.a.a aVar) {
        a(aVar, false);
    }

    public void setUnboundedRipple(boolean z2) {
        if (this.D != z2) {
            this.D = z2;
            for (int i2 = 0; i2 < this.f13412e.getChildCount(); i2++) {
                View childAt = this.f13412e.getChildAt(i2);
                if (childAt instanceof h) {
                    ((h) childAt).a(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(int i2) {
        setUnboundedRipple(getResources().getBoolean(i2));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        a(viewPager, true);
    }

    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.e.a.c.b.tabStyle);
    }

    public void a(int i2, float f2, boolean z2) {
        a(i2, f2, z2, true);
    }

    public void addView(View view, int i2) {
        a(view);
    }

    public final void b(f fVar) {
        this.f13412e.addView(fVar.f13440h, fVar.c(), b());
    }

    public void g() {
        for (int childCount = this.f13412e.getChildCount() - 1; childCount >= 0; childCount--) {
            d(childCount);
        }
        Iterator<f> it = this.f13409b.iterator();
        while (it.hasNext()) {
            f next = it.next();
            it.remove();
            next.f();
            g(next);
        }
        this.f13410c = null;
    }

    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    /* JADX INFO: finally extract failed */
    public TabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13409b = new ArrayList<>();
        this.f13411d = new RectF();
        this.s = Integer.MAX_VALUE;
        this.F = new ArrayList<>();
        this.O = new b.i.j.f(12);
        setHorizontalScrollBarEnabled(false);
        this.f13412e = new e(context);
        super.addView(this.f13412e, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray c2 = p.c(context, attributeSet, k.TabLayout, i2, c.e.a.c.j.Widget_Design_TabLayout, k.TabLayout_tabTextAppearance);
        this.f13412e.b(c2.getDimensionPixelSize(k.TabLayout_tabIndicatorHeight, -1));
        this.f13412e.a(c2.getColor(k.TabLayout_tabIndicatorColor, 0));
        setSelectedTabIndicator(c.e.a.c.o.a.b(context, c2, k.TabLayout_tabIndicator));
        setSelectedTabIndicatorGravity(c2.getInt(k.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(c2.getBoolean(k.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = c2.getDimensionPixelSize(k.TabLayout_tabPadding, 0);
        this.f13416i = dimensionPixelSize;
        this.f13415h = dimensionPixelSize;
        this.f13414g = dimensionPixelSize;
        this.f13413f = dimensionPixelSize;
        this.f13413f = c2.getDimensionPixelSize(k.TabLayout_tabPaddingStart, this.f13413f);
        this.f13414g = c2.getDimensionPixelSize(k.TabLayout_tabPaddingTop, this.f13414g);
        this.f13415h = c2.getDimensionPixelSize(k.TabLayout_tabPaddingEnd, this.f13415h);
        this.f13416i = c2.getDimensionPixelSize(k.TabLayout_tabPaddingBottom, this.f13416i);
        this.f13417j = c2.getResourceId(k.TabLayout_tabTextAppearance, c.e.a.c.j.TextAppearance_Design_Tab);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(this.f13417j, b.b.j.TextAppearance);
        try {
            this.p = (float) obtainStyledAttributes.getDimensionPixelSize(b.b.j.TextAppearance_android_textSize, 0);
            this.f13418k = c.e.a.c.o.a.a(context, obtainStyledAttributes, b.b.j.TextAppearance_android_textColor);
            obtainStyledAttributes.recycle();
            if (c2.hasValue(k.TabLayout_tabTextColor)) {
                this.f13418k = c.e.a.c.o.a.a(context, c2, k.TabLayout_tabTextColor);
            }
            if (c2.hasValue(k.TabLayout_tabSelectedTextColor)) {
                this.f13418k = a(this.f13418k.getDefaultColor(), c2.getColor(k.TabLayout_tabSelectedTextColor, 0));
            }
            this.f13419l = c.e.a.c.o.a.a(context, c2, k.TabLayout_tabIconTint);
            this.o = q.a(c2.getInt(k.TabLayout_tabIconTintMode, -1), null);
            this.m = c.e.a.c.o.a.a(context, c2, k.TabLayout_tabRippleColor);
            this.y = c2.getInt(k.TabLayout_tabIndicatorAnimationDuration, 300);
            this.t = c2.getDimensionPixelSize(k.TabLayout_tabMinWidth, -1);
            this.u = c2.getDimensionPixelSize(k.TabLayout_tabMaxWidth, -1);
            this.r = c2.getResourceId(k.TabLayout_tabBackground, 0);
            this.w = c2.getDimensionPixelSize(k.TabLayout_tabContentStart, 0);
            this.A = c2.getInt(k.TabLayout_tabMode, 1);
            this.x = c2.getInt(k.TabLayout_tabGravity, 0);
            this.B = c2.getBoolean(k.TabLayout_tabInlineLabel, false);
            this.D = c2.getBoolean(k.TabLayout_tabUnboundedRipple, false);
            c2.recycle();
            Resources resources = getResources();
            this.q = (float) resources.getDimensionPixelSize(c.e.a.c.d.design_tab_text_size_2line);
            this.v = resources.getDimensionPixelSize(c.e.a.c.d.design_tab_scrollable_min_width);
            a();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void a(int i2, float f2, boolean z2, boolean z3) {
        int round = Math.round(((float) i2) + f2);
        if (round >= 0 && round < this.f13412e.getChildCount()) {
            if (z3) {
                this.f13412e.a(i2, f2);
            }
            ValueAnimator valueAnimator = this.H;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.H.cancel();
            }
            scrollTo(a(i2, f2), 0);
            if (z2) {
                setSelectedTabView(round);
            }
        }
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    public f c(int i2) {
        if (i2 < 0 || i2 >= getTabCount()) {
            return null;
        }
        return this.f13409b.get(i2);
    }

    public void h(f fVar) {
        b(fVar, true);
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        a(view);
    }

    public final LinearLayout.LayoutParams b() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        a(layoutParams);
        return layoutParams;
    }

    public final h c(f fVar) {
        b.i.j.e<h> eVar = this.O;
        h a2 = eVar != null ? eVar.a() : null;
        if (a2 == null) {
            a2 = new h(getContext());
        }
        a2.a(fVar);
        a2.setFocusable(true);
        a2.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(fVar.f13436d)) {
            a2.setContentDescription(fVar.f13435c);
        } else {
            a2.setContentDescription(fVar.f13436d);
        }
        return a2;
    }

    public final void e(f fVar) {
        for (int size = this.F.size() - 1; size >= 0; size--) {
            this.F.get(size).b(fVar);
        }
    }

    public void setSelectedTabIndicator(int i2) {
        if (i2 != 0) {
            setSelectedTabIndicator(b.b.b.a.a.c(getContext(), i2));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public int b(int i2) {
        return Math.round(getResources().getDisplayMetrics().density * ((float) i2));
    }

    public final void d() {
        if (this.H == null) {
            this.H = new ValueAnimator();
            this.H.setInterpolator(c.e.a.c.a.a.f11185b);
            this.H.setDuration((long) this.y);
            this.H.addUpdateListener(new b(this));
        }
    }

    public void b(f fVar, boolean z2) {
        f fVar2 = this.f13410c;
        if (fVar2 != fVar) {
            int c2 = fVar != null ? fVar.c() : -1;
            if (z2) {
                if ((fVar2 == null || fVar2.c() == -1) && c2 != -1) {
                    a(c2, 0.0f, true);
                } else {
                    a(c2);
                }
                if (c2 != -1) {
                    setSelectedTabView(c2);
                }
            }
            this.f13410c = fVar;
            if (fVar2 != null) {
                f(fVar2);
            }
            if (fVar != null) {
                e(fVar);
            }
        } else if (fVar2 != null) {
            d(fVar);
            a(fVar.c());
        }
    }

    public final void f(f fVar) {
        for (int size = this.F.size() - 1; size >= 0; size--) {
            this.F.get(size).c(fVar);
        }
    }

    public void a(f fVar) {
        a(fVar, this.f13409b.isEmpty());
    }

    public void a(f fVar, boolean z2) {
        a(fVar, this.f13409b.size(), z2);
    }

    public final void d(f fVar) {
        for (int size = this.F.size() - 1; size >= 0; size--) {
            this.F.get(size).a(fVar);
        }
    }

    public void a(f fVar, int i2, boolean z2) {
        if (fVar.f13439g == this) {
            a(fVar, i2);
            b(fVar);
            if (z2) {
                fVar.g();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    public final void a(c.e.a.c.u.a aVar) {
        f e2 = e();
        CharSequence charSequence = aVar.f11456a;
        if (charSequence != null) {
            e2.b(charSequence);
        }
        Drawable drawable = aVar.f11457b;
        if (drawable != null) {
            e2.a(drawable);
        }
        int i2 = aVar.f11458c;
        if (i2 != 0) {
            e2.a(i2);
        }
        if (!TextUtils.isEmpty(aVar.getContentDescription())) {
            e2.a(aVar.getContentDescription());
        }
        a(e2);
    }

    public void a(b bVar) {
        if (!this.F.contains(bVar)) {
            this.F.add(bVar);
        }
    }

    public void a(ViewPager viewPager, boolean z2) {
        a(viewPager, z2, false);
    }

    public final void a(ViewPager viewPager, boolean z2, boolean z3) {
        ViewPager viewPager2 = this.I;
        if (viewPager2 != null) {
            g gVar = this.L;
            if (gVar != null) {
                viewPager2.b((ViewPager.f) gVar);
            }
            a aVar = this.M;
            if (aVar != null) {
                this.I.b((ViewPager.e) aVar);
            }
        }
        b bVar = this.G;
        if (bVar != null) {
            b(bVar);
            this.G = null;
        }
        if (viewPager != null) {
            this.I = viewPager;
            if (this.L == null) {
                this.L = new g(this);
            }
            this.L.a();
            viewPager.a((ViewPager.f) this.L);
            this.G = new i(viewPager);
            a(this.G);
            b.G.a.a adapter = viewPager.getAdapter();
            if (adapter != null) {
                a(adapter, z2);
            }
            if (this.M == null) {
                this.M = new a();
            }
            this.M.a(z2);
            viewPager.a((ViewPager.e) this.M);
            a(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.I = null;
            a((b.G.a.a) null, false);
        }
        this.N = z3;
    }

    public void a(b.G.a.a aVar, boolean z2) {
        b.G.a.a aVar2 = this.J;
        if (aVar2 != null) {
            DataSetObserver dataSetObserver = this.K;
            if (dataSetObserver != null) {
                aVar2.c(dataSetObserver);
            }
        }
        this.J = aVar;
        if (z2 && aVar != null) {
            if (this.K == null) {
                this.K = new d();
            }
            aVar.a(this.K);
        }
        f();
    }

    public final void a(f fVar, int i2) {
        fVar.b(i2);
        this.f13409b.add(i2, fVar);
        int size = this.f13409b.size();
        while (true) {
            i2++;
            if (i2 < size) {
                this.f13409b.get(i2).b(i2);
            } else {
                return;
            }
        }
    }

    public final void a(View view) {
        if (view instanceof c.e.a.c.u.a) {
            a((c.e.a.c.u.a) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public final void a(LinearLayout.LayoutParams layoutParams) {
        if (this.A == 1 && this.x == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    public final void a(int i2) {
        if (i2 != -1) {
            if (getWindowToken() == null || !z.B(this) || this.f13412e.a()) {
                a(i2, 0.0f, true);
                return;
            }
            int scrollX = getScrollX();
            int a2 = a(i2, 0.0f);
            if (scrollX != a2) {
                d();
                this.H.setIntValues(new int[]{scrollX, a2});
                this.H.start();
            }
            this.f13412e.a(i2, this.y);
        }
    }

    public final int a(int i2, float f2) {
        int i3 = 0;
        if (this.A != 0) {
            return 0;
        }
        View childAt = this.f13412e.getChildAt(i2);
        int i4 = i2 + 1;
        View childAt2 = i4 < this.f13412e.getChildCount() ? this.f13412e.getChildAt(i4) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        if (childAt2 != null) {
            i3 = childAt2.getWidth();
        }
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i5 = (int) (((float) (width + i3)) * 0.5f * f2);
        return z.m(this) == 0 ? left + i5 : left - i5;
    }

    public final void a() {
        z.a(this.f13412e, this.A == 0 ? Math.max(0, this.w - this.f13413f) : 0, 0, 0, 0);
        int i2 = this.A;
        if (i2 == 0) {
            this.f13412e.setGravity(8388611);
        } else if (i2 == 1) {
            this.f13412e.setGravity(1);
        }
        a(true);
    }

    public void a(boolean z2) {
        for (int i2 = 0; i2 < this.f13412e.getChildCount(); i2++) {
            View childAt = this.f13412e.getChildAt(i2);
            childAt.setMinimumWidth(getTabMinWidth());
            a((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z2) {
                childAt.requestLayout();
            }
        }
    }

    public static ColorStateList a(int i2, int i3) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i3, i2});
    }
}
