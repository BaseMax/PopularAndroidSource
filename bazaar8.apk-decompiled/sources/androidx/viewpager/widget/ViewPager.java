package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.customview.view.AbsSavedState;
import b.i.k.C0258a;
import b.i.k.q;
import b.i.k.z;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.core.CodedOutputStream;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ViewPager extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f969a = {16842931};

    /* renamed from: b  reason: collision with root package name */
    public static final Comparator<b> f970b = new b();

    /* renamed from: c  reason: collision with root package name */
    public static final Interpolator f971c = new c();

    /* renamed from: d  reason: collision with root package name */
    public static final i f972d = new i();
    public boolean A;
    public int B = 1;
    public boolean C;
    public boolean D;
    public int E;
    public int F;
    public int G;
    public float H;
    public float I;
    public float J;
    public float K;
    public int L = -1;
    public VelocityTracker M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public boolean R;
    public long S;
    public EdgeEffect T;
    public EdgeEffect U;
    public boolean V = true;
    public boolean W = false;
    public boolean aa;
    public int ba;
    public List<f> ca;
    public f da;

    /* renamed from: e  reason: collision with root package name */
    public int f973e;
    public f ea;

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList<b> f974f = new ArrayList<>();
    public List<e> fa;

    /* renamed from: g  reason: collision with root package name */
    public final b f975g = new b();
    public g ga;

    /* renamed from: h  reason: collision with root package name */
    public final Rect f976h = new Rect();
    public int ha;

    /* renamed from: i  reason: collision with root package name */
    public b.G.a.a f977i;
    public int ia;

    /* renamed from: j  reason: collision with root package name */
    public int f978j;
    public ArrayList<View> ja;

    /* renamed from: k  reason: collision with root package name */
    public int f979k = -1;
    public final Runnable ka = new d(this);

    /* renamed from: l  reason: collision with root package name */
    public Parcelable f980l = null;
    public int la = 0;
    public ClassLoader m = null;
    public Scroller n;
    public boolean o;
    public h p;
    public int q;
    public Drawable r;
    public int s;
    public int t;
    public float u = -3.4028235E38f;
    public float v = Float.MAX_VALUE;
    public int w;
    public int x;
    public boolean y;
    public boolean z;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new f();

        /* renamed from: c  reason: collision with root package name */
        public int f981c;

        /* renamed from: d  reason: collision with root package name */
        public Parcelable f982d;

        /* renamed from: e  reason: collision with root package name */
        public ClassLoader f983e;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f981c + "}";
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f981c);
            parcel.writeParcelable(this.f982d, i2);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? SavedState.class.getClassLoader() : classLoader;
            this.f981c = parcel.readInt();
            this.f982d = parcel.readParcelable(classLoader);
            this.f983e = classLoader;
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface a {
    }

    static class b {

        /* renamed from: a  reason: collision with root package name */
        public Object f984a;

        /* renamed from: b  reason: collision with root package name */
        public int f985b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f986c;

        /* renamed from: d  reason: collision with root package name */
        public float f987d;

        /* renamed from: e  reason: collision with root package name */
        public float f988e;
    }

    public static class c extends ViewGroup.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public boolean f989a;

        /* renamed from: b  reason: collision with root package name */
        public int f990b;

        /* renamed from: c  reason: collision with root package name */
        public float f991c = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        public boolean f992d;

        /* renamed from: e  reason: collision with root package name */
        public int f993e;

        /* renamed from: f  reason: collision with root package name */
        public int f994f;

        public c() {
            super(-1, -1);
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f969a);
            this.f990b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    class d extends C0258a {
        public d() {
        }

        public void a(View view, b.i.k.a.d dVar) {
            super.a(view, dVar);
            dVar.b((CharSequence) ViewPager.class.getName());
            dVar.k(b());
            if (ViewPager.this.canScrollHorizontally(1)) {
                dVar.a((int) CodedOutputStream.DEFAULT_BUFFER_SIZE);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                dVar.a(8192);
            }
        }

        public void b(View view, AccessibilityEvent accessibilityEvent) {
            super.b(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(b());
            if (accessibilityEvent.getEventType() == 4096) {
                b.G.a.a aVar = ViewPager.this.f977i;
                if (aVar != null) {
                    accessibilityEvent.setItemCount(aVar.a());
                    accessibilityEvent.setFromIndex(ViewPager.this.f978j);
                    accessibilityEvent.setToIndex(ViewPager.this.f978j);
                }
            }
        }

        public boolean a(View view, int i2, Bundle bundle) {
            if (super.a(view, i2, bundle)) {
                return true;
            }
            if (i2 != 4096) {
                if (i2 != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f978j - 1);
                return true;
            } else if (!ViewPager.this.canScrollHorizontally(1)) {
                return false;
            } else {
                ViewPager viewPager2 = ViewPager.this;
                viewPager2.setCurrentItem(viewPager2.f978j + 1);
                return true;
            }
        }

        public final boolean b() {
            b.G.a.a aVar = ViewPager.this.f977i;
            return aVar != null && aVar.a() > 1;
        }
    }

    public interface e {
        void a(ViewPager viewPager, b.G.a.a aVar, b.G.a.a aVar2);
    }

    public interface f {
        void a(int i2);

        void a(int i2, float f2, int i3);

        void b(int i2);
    }

    public interface g {
        void a(View view, float f2);
    }

    private class h extends DataSetObserver {
        public h() {
        }

        public void onChanged() {
            ViewPager.this.b();
        }

        public void onInvalidated() {
            ViewPager.this.b();
        }
    }

    static class i implements Comparator<View> {
        /* renamed from: a */
        public int compare(View view, View view2) {
            c cVar = (c) view.getLayoutParams();
            c cVar2 = (c) view2.getLayoutParams();
            boolean z = cVar.f989a;
            if (z == cVar2.f989a) {
                return cVar.f993e - cVar2.f993e;
            }
            return z ? 1 : -1;
        }
    }

    public ViewPager(Context context) {
        super(context);
        f();
    }

    public static boolean c(View view) {
        return view.getClass().getAnnotation(a.class) != null;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z2) {
        if (this.z != z2) {
            this.z = z2;
        }
    }

    public void a(e eVar) {
        if (this.fa == null) {
            this.fa = new ArrayList();
        }
        this.fa.add(eVar);
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0) {
                    b b2 = b(childAt);
                    if (b2 != null && b2.f985b == this.f978j) {
                        childAt.addFocusables(arrayList, i2, i3);
                    }
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if (((i3 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
            arrayList.add(this);
        }
    }

    public void addTouchables(ArrayList<View> arrayList) {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                b b2 = b(childAt);
                if (b2 != null && b2.f985b == this.f978j) {
                    childAt.addTouchables(arrayList);
                }
            }
        }
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        c cVar = (c) layoutParams;
        cVar.f989a |= c(view);
        if (!this.y) {
            super.addView(view, i2, layoutParams);
        } else if (cVar == null || !cVar.f989a) {
            cVar.f992d = true;
            addViewInLayout(view, i2, layoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    public void b(e eVar) {
        List<e> list = this.fa;
        if (list != null) {
            list.remove(eVar);
        }
    }

    public boolean canScrollHorizontally(int i2) {
        boolean z2 = false;
        if (this.f977i == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i2 < 0) {
            if (scrollX > ((int) (((float) clientWidth) * this.u))) {
                z2 = true;
            }
            return z2;
        }
        if (i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.v))) {
            z2 = true;
        }
        return z2;
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof c) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        this.o = true;
        if (this.n.isFinished() || !this.n.computeScrollOffset()) {
            a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.n.getCurrX();
        int currY = this.n.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!e(currX)) {
                this.n.abortAnimation();
                scrollTo(0, currY);
            }
        }
        z.F(this);
    }

    public b d(int i2) {
        for (int i3 = 0; i3 < this.f974f.size(); i3++) {
            b bVar = this.f974f.get(i3);
            if (bVar.f985b == i2) {
                return bVar;
            }
        }
        return null;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                b b2 = b(childAt);
                if (b2 != null && b2.f985b == this.f978j && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0015, code lost:
        if (r0.a() > 1) goto L_0x0024;
     */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x00ab  */
    /* JADX WARNING: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void draw(android.graphics.Canvas r8) {
        /*
            r7 = this;
            super.draw(r8)
            int r0 = r7.getOverScrollMode()
            r1 = 0
            if (r0 == 0) goto L_0x0024
            r2 = 1
            if (r0 != r2) goto L_0x0018
            b.G.a.a r0 = r7.f977i
            if (r0 == 0) goto L_0x0018
            int r0 = r0.a()
            if (r0 <= r2) goto L_0x0018
            goto L_0x0024
        L_0x0018:
            android.widget.EdgeEffect r8 = r7.T
            r8.finish()
            android.widget.EdgeEffect r8 = r7.U
            r8.finish()
            goto L_0x00a9
        L_0x0024:
            android.widget.EdgeEffect r0 = r7.T
            boolean r0 = r0.isFinished()
            if (r0 != 0) goto L_0x0065
            int r0 = r8.save()
            int r2 = r7.getHeight()
            int r3 = r7.getPaddingTop()
            int r2 = r2 - r3
            int r3 = r7.getPaddingBottom()
            int r2 = r2 - r3
            int r3 = r7.getWidth()
            r4 = 1132920832(0x43870000, float:270.0)
            r8.rotate(r4)
            int r4 = -r2
            int r5 = r7.getPaddingTop()
            int r4 = r4 + r5
            float r4 = (float) r4
            float r5 = r7.u
            float r6 = (float) r3
            float r5 = r5 * r6
            r8.translate(r4, r5)
            android.widget.EdgeEffect r4 = r7.T
            r4.setSize(r2, r3)
            android.widget.EdgeEffect r2 = r7.T
            boolean r2 = r2.draw(r8)
            r1 = r1 | r2
            r8.restoreToCount(r0)
        L_0x0065:
            android.widget.EdgeEffect r0 = r7.U
            boolean r0 = r0.isFinished()
            if (r0 != 0) goto L_0x00a9
            int r0 = r8.save()
            int r2 = r7.getWidth()
            int r3 = r7.getHeight()
            int r4 = r7.getPaddingTop()
            int r3 = r3 - r4
            int r4 = r7.getPaddingBottom()
            int r3 = r3 - r4
            r4 = 1119092736(0x42b40000, float:90.0)
            r8.rotate(r4)
            int r4 = r7.getPaddingTop()
            int r4 = -r4
            float r4 = (float) r4
            float r5 = r7.v
            r6 = 1065353216(0x3f800000, float:1.0)
            float r5 = r5 + r6
            float r5 = -r5
            float r6 = (float) r2
            float r5 = r5 * r6
            r8.translate(r4, r5)
            android.widget.EdgeEffect r4 = r7.U
            r4.setSize(r3, r2)
            android.widget.EdgeEffect r2 = r7.U
            boolean r2 = r2.draw(r8)
            r1 = r1 | r2
            r8.restoreToCount(r0)
        L_0x00a9:
            if (r1 == 0) goto L_0x00ae
            b.i.k.z.F(r7)
        L_0x00ae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.draw(android.graphics.Canvas):void");
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.r;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    public final boolean e(int i2) {
        if (this.f974f.size() != 0) {
            b e2 = e();
            int clientWidth = getClientWidth();
            int i3 = this.q;
            int i4 = clientWidth + i3;
            float f2 = (float) clientWidth;
            int i5 = e2.f985b;
            float f3 = ((((float) i2) / f2) - e2.f988e) / (e2.f987d + (((float) i3) / f2));
            this.aa = false;
            b(i5, f3, (int) (((float) i4) * f3));
            if (this.aa) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else if (this.V) {
            return false;
        } else {
            this.aa = false;
            b(0, 0.0f, 0);
            if (this.aa) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    public void f() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.n = new Scroller(context, f971c);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.G = viewConfiguration.getScaledPagingTouchSlop();
        this.N = (int) (400.0f * f2);
        this.O = viewConfiguration.getScaledMaximumFlingVelocity();
        this.T = new EdgeEffect(context);
        this.U = new EdgeEffect(context);
        this.P = (int) (25.0f * f2);
        this.Q = (int) (2.0f * f2);
        this.E = (int) (f2 * 16.0f);
        z.a((View) this, (C0258a) new d());
        if (z.k(this) == 0) {
            z.g(this, 1);
        }
        z.a((View) this, (q) new e(this));
    }

    public boolean g() {
        return this.R;
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c();
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public b.G.a.a getAdapter() {
        return this.f977i;
    }

    public int getChildDrawingOrder(int i2, int i3) {
        if (this.ia == 2) {
            i3 = (i2 - 1) - i3;
        }
        return ((c) this.ja.get(i3).getLayoutParams()).f994f;
    }

    public int getCurrentItem() {
        return this.f978j;
    }

    public int getOffscreenPageLimit() {
        return this.B;
    }

    public int getPageMargin() {
        return this.q;
    }

    public boolean h() {
        int i2 = this.f978j;
        if (i2 <= 0) {
            return false;
        }
        a(i2 - 1, true);
        return true;
    }

    public boolean i() {
        b.G.a.a aVar = this.f977i;
        if (aVar == null || this.f978j >= aVar.a() - 1) {
            return false;
        }
        a(this.f978j + 1, true);
        return true;
    }

    public void j() {
        f(this.f978j);
    }

    public final void k() {
        int i2 = 0;
        while (i2 < getChildCount()) {
            if (!((c) getChildAt(i2).getLayoutParams()).f989a) {
                removeViewAt(i2);
                i2--;
            }
            i2++;
        }
    }

    public final boolean l() {
        this.L = -1;
        c();
        this.T.onRelease();
        this.U.onRelease();
        return this.T.isFinished() || this.U.isFinished();
    }

    public final void m() {
        if (this.ia != 0) {
            ArrayList<View> arrayList = this.ja;
            if (arrayList == null) {
                this.ja = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.ja.add(getChildAt(i2));
            }
            Collections.sort(this.ja, f972d);
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.V = true;
    }

    public void onDetachedFromWindow() {
        removeCallbacks(this.ka);
        Scroller scroller = this.n;
        if (scroller != null && !scroller.isFinished()) {
            this.n.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    public void onDraw(Canvas canvas) {
        float f2;
        float f3;
        super.onDraw(canvas);
        if (this.q > 0 && this.r != null && this.f974f.size() > 0 && this.f977i != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f4 = (float) width;
            float f5 = ((float) this.q) / f4;
            int i2 = 0;
            b bVar = this.f974f.get(0);
            float f6 = bVar.f988e;
            int size = this.f974f.size();
            int i3 = bVar.f985b;
            int i4 = this.f974f.get(size - 1).f985b;
            while (i3 < i4) {
                while (i3 > bVar.f985b && i2 < size) {
                    i2++;
                    bVar = this.f974f.get(i2);
                }
                if (i3 == bVar.f985b) {
                    float f7 = bVar.f988e;
                    float f8 = bVar.f987d;
                    f2 = (f7 + f8) * f4;
                    f6 = f7 + f8 + f5;
                } else {
                    float b2 = this.f977i.b(i3);
                    f2 = (f6 + b2) * f4;
                    f6 += b2 + f5;
                }
                if (((float) this.q) + f2 > ((float) scrollX)) {
                    f3 = f5;
                    this.r.setBounds(Math.round(f2), this.s, Math.round(((float) this.q) + f2), this.t);
                    this.r.draw(canvas);
                } else {
                    Canvas canvas2 = canvas;
                    f3 = f5;
                }
                if (f2 <= ((float) (scrollX + width))) {
                    i3++;
                    f5 = f3;
                } else {
                    return;
                }
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            l();
            return false;
        }
        if (action != 0) {
            if (this.C) {
                return true;
            }
            if (this.D) {
                return false;
            }
        }
        if (action == 0) {
            float x2 = motionEvent.getX();
            this.J = x2;
            this.H = x2;
            float y2 = motionEvent.getY();
            this.K = y2;
            this.I = y2;
            this.L = motionEvent2.getPointerId(0);
            this.D = false;
            this.o = true;
            this.n.computeScrollOffset();
            if (this.la != 2 || Math.abs(this.n.getFinalX() - this.n.getCurrX()) <= this.Q) {
                a(false);
                this.C = false;
            } else {
                this.n.abortAnimation();
                this.A = false;
                j();
                this.C = true;
                c(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i2 = this.L;
            if (i2 != -1) {
                int findPointerIndex = motionEvent2.findPointerIndex(i2);
                float x3 = motionEvent2.getX(findPointerIndex);
                float f2 = x3 - this.H;
                float abs = Math.abs(f2);
                float y3 = motionEvent2.getY(findPointerIndex);
                float abs2 = Math.abs(y3 - this.K);
                if (f2 != 0.0f && !a(this.H, f2)) {
                    if (a(this, false, (int) f2, (int) x3, (int) y3)) {
                        this.H = x3;
                        this.I = y3;
                        this.D = true;
                        return false;
                    }
                }
                if (abs > ((float) this.G) && abs * 0.5f > abs2) {
                    this.C = true;
                    c(true);
                    setScrollState(1);
                    this.H = f2 > 0.0f ? this.J + ((float) this.G) : this.J - ((float) this.G);
                    this.I = y3;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > ((float) this.G)) {
                    this.D = true;
                }
                if (this.C && c(x3)) {
                    z.F(this);
                }
            }
        } else if (action == 6) {
            a(motionEvent);
        }
        if (this.M == null) {
            this.M = VelocityTracker.obtain();
        }
        this.M.addMovement(motionEvent2);
        return this.C;
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        boolean z3;
        int i6;
        int i7;
        int childCount = getChildCount();
        int i8 = i4 - i2;
        int i9 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i10 = paddingBottom;
        int i11 = 0;
        int i12 = paddingTop;
        int i13 = paddingLeft;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f989a) {
                    int i15 = cVar.f990b;
                    int i16 = i15 & 7;
                    int i17 = i15 & 112;
                    if (i16 == 1) {
                        i6 = Math.max((i8 - childAt.getMeasuredWidth()) / 2, i13);
                    } else if (i16 == 3) {
                        i6 = i13;
                        i13 = childAt.getMeasuredWidth() + i13;
                    } else if (i16 != 5) {
                        i6 = i13;
                    } else {
                        i6 = (i8 - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    if (i17 == 16) {
                        i7 = Math.max((i9 - childAt.getMeasuredHeight()) / 2, i12);
                    } else if (i17 == 48) {
                        i7 = i12;
                        i12 = childAt.getMeasuredHeight() + i12;
                    } else if (i17 != 80) {
                        i7 = i12;
                    } else {
                        i7 = (i9 - i10) - childAt.getMeasuredHeight();
                        i10 += childAt.getMeasuredHeight();
                    }
                    int i18 = i6 + scrollX;
                    childAt.layout(i18, i7, childAt.getMeasuredWidth() + i18, i7 + childAt.getMeasuredHeight());
                    i11++;
                }
            }
        }
        int i19 = (i8 - i13) - paddingRight;
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt2 = getChildAt(i20);
            if (childAt2.getVisibility() != 8) {
                c cVar2 = (c) childAt2.getLayoutParams();
                if (!cVar2.f989a) {
                    b b2 = b(childAt2);
                    if (b2 != null) {
                        float f2 = (float) i19;
                        int i21 = ((int) (b2.f988e * f2)) + i13;
                        if (cVar2.f992d) {
                            cVar2.f992d = false;
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f2 * cVar2.f991c), 1073741824), View.MeasureSpec.makeMeasureSpec((i9 - i12) - i10, 1073741824));
                        }
                        childAt2.layout(i21, i12, childAt2.getMeasuredWidth() + i21, childAt2.getMeasuredHeight() + i12);
                    }
                }
            }
        }
        this.s = i12;
        this.t = i9 - i10;
        this.ba = i11;
        if (this.V) {
            z3 = false;
            a(this.f978j, false, 0, false);
        } else {
            z3 = false;
        }
        this.V = z3;
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x008b  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0090  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0095  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00aa  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r14, int r15) {
        /*
            r13 = this;
            r0 = 0
            int r14 = android.view.ViewGroup.getDefaultSize(r0, r14)
            int r15 = android.view.ViewGroup.getDefaultSize(r0, r15)
            r13.setMeasuredDimension(r14, r15)
            int r14 = r13.getMeasuredWidth()
            int r15 = r14 / 10
            int r1 = r13.E
            int r15 = java.lang.Math.min(r15, r1)
            r13.F = r15
            int r15 = r13.getPaddingLeft()
            int r14 = r14 - r15
            int r15 = r13.getPaddingRight()
            int r14 = r14 - r15
            int r15 = r13.getMeasuredHeight()
            int r1 = r13.getPaddingTop()
            int r15 = r15 - r1
            int r1 = r13.getPaddingBottom()
            int r15 = r15 - r1
            int r1 = r13.getChildCount()
            r2 = r15
            r15 = r14
            r14 = 0
        L_0x0039:
            r3 = 8
            r4 = 1
            r5 = 1073741824(0x40000000, float:2.0)
            if (r14 >= r1) goto L_0x00b4
            android.view.View r6 = r13.getChildAt(r14)
            int r7 = r6.getVisibility()
            if (r7 == r3) goto L_0x00b1
            android.view.ViewGroup$LayoutParams r3 = r6.getLayoutParams()
            androidx.viewpager.widget.ViewPager$c r3 = (androidx.viewpager.widget.ViewPager.c) r3
            if (r3 == 0) goto L_0x00b1
            boolean r7 = r3.f989a
            if (r7 == 0) goto L_0x00b1
            int r7 = r3.f990b
            r8 = r7 & 7
            r7 = r7 & 112(0x70, float:1.57E-43)
            r9 = 48
            if (r7 == r9) goto L_0x0067
            r9 = 80
            if (r7 != r9) goto L_0x0065
            goto L_0x0067
        L_0x0065:
            r7 = 0
            goto L_0x0068
        L_0x0067:
            r7 = 1
        L_0x0068:
            r9 = 3
            if (r8 == r9) goto L_0x0070
            r9 = 5
            if (r8 != r9) goto L_0x006f
            goto L_0x0070
        L_0x006f:
            r4 = 0
        L_0x0070:
            r8 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r7 == 0) goto L_0x0077
            r8 = 1073741824(0x40000000, float:2.0)
            goto L_0x007c
        L_0x0077:
            if (r4 == 0) goto L_0x007c
            r9 = 1073741824(0x40000000, float:2.0)
            goto L_0x007e
        L_0x007c:
            r9 = -2147483648(0xffffffff80000000, float:-0.0)
        L_0x007e:
            int r10 = r3.width
            r11 = -1
            r12 = -2
            if (r10 == r12) goto L_0x008b
            if (r10 == r11) goto L_0x0087
            goto L_0x0088
        L_0x0087:
            r10 = r15
        L_0x0088:
            r8 = 1073741824(0x40000000, float:2.0)
            goto L_0x008c
        L_0x008b:
            r10 = r15
        L_0x008c:
            int r3 = r3.height
            if (r3 == r12) goto L_0x0095
            if (r3 == r11) goto L_0x0093
            goto L_0x0097
        L_0x0093:
            r3 = r2
            goto L_0x0097
        L_0x0095:
            r3 = r2
            r5 = r9
        L_0x0097:
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r10, r8)
            int r3 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r5)
            r6.measure(r8, r3)
            if (r7 == 0) goto L_0x00aa
            int r3 = r6.getMeasuredHeight()
            int r2 = r2 - r3
            goto L_0x00b1
        L_0x00aa:
            if (r4 == 0) goto L_0x00b1
            int r3 = r6.getMeasuredWidth()
            int r15 = r15 - r3
        L_0x00b1:
            int r14 = r14 + 1
            goto L_0x0039
        L_0x00b4:
            int r14 = android.view.View.MeasureSpec.makeMeasureSpec(r15, r5)
            r13.w = r14
            int r14 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r5)
            r13.x = r14
            r13.y = r4
            r13.j()
            r13.y = r0
            int r14 = r13.getChildCount()
        L_0x00cb:
            if (r0 >= r14) goto L_0x00f5
            android.view.View r1 = r13.getChildAt(r0)
            int r2 = r1.getVisibility()
            if (r2 == r3) goto L_0x00f2
            android.view.ViewGroup$LayoutParams r2 = r1.getLayoutParams()
            androidx.viewpager.widget.ViewPager$c r2 = (androidx.viewpager.widget.ViewPager.c) r2
            if (r2 == 0) goto L_0x00e3
            boolean r4 = r2.f989a
            if (r4 != 0) goto L_0x00f2
        L_0x00e3:
            float r4 = (float) r15
            float r2 = r2.f991c
            float r4 = r4 * r2
            int r2 = (int) r4
            int r2 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r5)
            int r4 = r13.x
            r1.measure(r2, r4)
        L_0x00f2:
            int r0 = r0 + 1
            goto L_0x00cb
        L_0x00f5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        int childCount = getChildCount();
        int i5 = -1;
        if ((i2 & 2) != 0) {
            i5 = childCount;
            i4 = 0;
            i3 = 1;
        } else {
            i4 = childCount - 1;
            i3 = -1;
        }
        while (i4 != i5) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() == 0) {
                b b2 = b(childAt);
                if (b2 != null && b2.f985b == this.f978j && childAt.requestFocus(i2, rect)) {
                    return true;
                }
            }
            i4 += i3;
        }
        return false;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        b.G.a.a aVar = this.f977i;
        if (aVar != null) {
            aVar.a(savedState.f982d, savedState.f983e);
            a(savedState.f981c, false, true);
        } else {
            this.f979k = savedState.f981c;
            this.f980l = savedState.f982d;
            this.m = savedState.f983e;
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f981c = this.f978j;
        b.G.a.a aVar = this.f977i;
        if (aVar != null) {
            savedState.f982d = aVar.b();
        }
        return savedState;
    }

    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.q;
            a(i2, i4, i6, i6);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.R) {
            return true;
        }
        boolean z2 = false;
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        b.G.a.a aVar = this.f977i;
        if (aVar == null || aVar.a() == 0) {
            return false;
        }
        if (this.M == null) {
            this.M = VelocityTracker.obtain();
        }
        this.M.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.n.abortAnimation();
            this.A = false;
            j();
            float x2 = motionEvent.getX();
            this.J = x2;
            this.H = x2;
            float y2 = motionEvent.getY();
            this.K = y2;
            this.I = y2;
            this.L = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.C) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.L);
                    if (findPointerIndex == -1) {
                        z2 = l();
                    } else {
                        float x3 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x3 - this.H);
                        float y3 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y3 - this.I);
                        if (abs > ((float) this.G) && abs > abs2) {
                            this.C = true;
                            c(true);
                            float f2 = this.J;
                            this.H = x3 - f2 > 0.0f ? f2 + ((float) this.G) : f2 - ((float) this.G);
                            this.I = y3;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.C) {
                    z2 = false | c(motionEvent.getX(motionEvent.findPointerIndex(this.L)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.H = motionEvent.getX(actionIndex);
                    this.L = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    a(motionEvent);
                    this.H = motionEvent.getX(motionEvent.findPointerIndex(this.L));
                }
            } else if (this.C) {
                a(this.f978j, true, 0, false);
                z2 = l();
            }
        } else if (this.C) {
            VelocityTracker velocityTracker = this.M;
            velocityTracker.computeCurrentVelocity(AnswersRetryFilesSender.BACKOFF_MS, (float) this.O);
            int xVelocity = (int) velocityTracker.getXVelocity(this.L);
            this.A = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            b e2 = e();
            float f3 = (float) clientWidth;
            a(a(e2.f985b, ((((float) scrollX) / f3) - e2.f988e) / (e2.f987d + (((float) this.q) / f3)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.L)) - this.J)), true, true, xVelocity);
            z2 = l();
        }
        if (z2) {
            z.F(this);
        }
        return true;
    }

    public void removeView(View view) {
        if (this.y) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(b.G.a.a aVar) {
        b.G.a.a aVar2 = this.f977i;
        if (aVar2 != null) {
            aVar2.b((DataSetObserver) null);
            this.f977i.b((ViewGroup) this);
            for (int i2 = 0; i2 < this.f974f.size(); i2++) {
                b bVar = this.f974f.get(i2);
                this.f977i.a((ViewGroup) this, bVar.f985b, bVar.f984a);
            }
            this.f977i.a((ViewGroup) this);
            this.f974f.clear();
            k();
            this.f978j = 0;
            scrollTo(0, 0);
        }
        b.G.a.a aVar3 = this.f977i;
        this.f977i = aVar;
        this.f973e = 0;
        if (this.f977i != null) {
            if (this.p == null) {
                this.p = new h();
            }
            this.f977i.b((DataSetObserver) this.p);
            this.A = false;
            boolean z2 = this.V;
            this.V = true;
            this.f973e = this.f977i.a();
            if (this.f979k >= 0) {
                this.f977i.a(this.f980l, this.m);
                a(this.f979k, false, true);
                this.f979k = -1;
                this.f980l = null;
                this.m = null;
            } else if (!z2) {
                j();
            } else {
                requestLayout();
            }
        }
        List<e> list = this.fa;
        if (list != null && !list.isEmpty()) {
            int size = this.fa.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.fa.get(i3).a(this, aVar3, aVar);
            }
        }
    }

    public void setCurrentItem(int i2) {
        this.A = false;
        a(i2, !this.V, false);
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i2 + " too small; defaulting to " + 1);
            i2 = 1;
        }
        if (i2 != this.B) {
            this.B = i2;
            j();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(f fVar) {
        this.da = fVar;
    }

    public void setPageMargin(int i2) {
        int i3 = this.q;
        this.q = i2;
        int width = getWidth();
        a(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.r = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i2) {
        if (this.la != i2) {
            this.la = i2;
            if (this.ga != null) {
                b(i2 != 0);
            }
            c(i2);
        }
    }

    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.r;
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public void b(f fVar) {
        List<f> list = this.ca;
        if (list != null) {
            list.remove(fVar);
        }
    }

    public final void c(int i2) {
        f fVar = this.da;
        if (fVar != null) {
            fVar.a(i2);
        }
        List<f> list = this.ca;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                f fVar2 = this.ca.get(i3);
                if (fVar2 != null) {
                    fVar2.a(i2);
                }
            }
        }
        f fVar3 = this.ea;
        if (fVar3 != null) {
            fVar3.a(i2);
        }
    }

    public void a(int i2, boolean z2) {
        this.A = false;
        a(i2, z2, false);
    }

    public void d() {
        if (this.R) {
            if (this.f977i != null) {
                VelocityTracker velocityTracker = this.M;
                velocityTracker.computeCurrentVelocity(AnswersRetryFilesSender.BACKOFF_MS, (float) this.O);
                int xVelocity = (int) velocityTracker.getXVelocity(this.L);
                this.A = true;
                int clientWidth = getClientWidth();
                int scrollX = getScrollX();
                b e2 = e();
                a(a(e2.f985b, ((((float) scrollX) / ((float) clientWidth)) - e2.f988e) / e2.f987d, xVelocity, (int) (this.H - this.J)), true, true, xVelocity);
            }
            c();
            this.R = false;
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public void b() {
        int a2 = this.f977i.a();
        this.f973e = a2;
        boolean z2 = this.f974f.size() < (this.B * 2) + 1 && this.f974f.size() < a2;
        int i2 = this.f978j;
        int i3 = 0;
        boolean z3 = false;
        while (i3 < this.f974f.size()) {
            b bVar = this.f974f.get(i3);
            int a3 = this.f977i.a(bVar.f984a);
            if (a3 != -1) {
                if (a3 == -2) {
                    this.f974f.remove(i3);
                    i3--;
                    if (!z3) {
                        this.f977i.b((ViewGroup) this);
                        z3 = true;
                    }
                    this.f977i.a((ViewGroup) this, bVar.f985b, bVar.f984a);
                    int i4 = this.f978j;
                    if (i4 == bVar.f985b) {
                        i2 = Math.max(0, Math.min(i4, a2 - 1));
                    }
                } else {
                    int i5 = bVar.f985b;
                    if (i5 != a3) {
                        if (i5 == this.f978j) {
                            i2 = a3;
                        }
                        bVar.f985b = a3;
                    }
                }
                z2 = true;
            }
            i3++;
        }
        if (z3) {
            this.f977i.a((ViewGroup) this);
        }
        Collections.sort(this.f974f, f970b);
        if (z2) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                c cVar = (c) getChildAt(i6).getLayoutParams();
                if (!cVar.f989a) {
                    cVar.f991c = 0.0f;
                }
            }
            a(i2, false, true);
            requestLayout();
        }
    }

    public void setPageMarginDrawable(int i2) {
        setPageMarginDrawable(b.i.b.a.c(getContext(), i2));
    }

    public void a(int i2, boolean z2, boolean z3) {
        a(i2, z2, z3, 0);
    }

    public void a(int i2, boolean z2, boolean z3, int i3) {
        b.G.a.a aVar = this.f977i;
        if (aVar == null || aVar.a() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z3 || this.f978j != i2 || this.f974f.size() == 0) {
            boolean z4 = true;
            if (i2 < 0) {
                i2 = 0;
            } else if (i2 >= this.f977i.a()) {
                i2 = this.f977i.a() - 1;
            }
            int i4 = this.B;
            int i5 = this.f978j;
            if (i2 > i5 + i4 || i2 < i5 - i4) {
                for (int i6 = 0; i6 < this.f974f.size(); i6++) {
                    this.f974f.get(i6).f986c = true;
                }
            }
            if (this.f978j == i2) {
                z4 = false;
            }
            if (this.V) {
                this.f978j = i2;
                if (z4) {
                    b(i2);
                }
                requestLayout();
            } else {
                f(i2);
                a(i2, z2, i3, z4);
            }
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    public final void c(boolean z2) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z2);
        }
    }

    public final boolean c(float f2) {
        boolean z2;
        boolean z3;
        float f3 = this.H - f2;
        this.H = f2;
        float scrollX = ((float) getScrollX()) + f3;
        float clientWidth = (float) getClientWidth();
        float f4 = this.u * clientWidth;
        float f5 = this.v * clientWidth;
        boolean z4 = false;
        b bVar = this.f974f.get(0);
        ArrayList<b> arrayList = this.f974f;
        b bVar2 = arrayList.get(arrayList.size() - 1);
        if (bVar.f985b != 0) {
            f4 = bVar.f988e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (bVar2.f985b != this.f977i.a() - 1) {
            f5 = bVar2.f988e * clientWidth;
            z3 = false;
        } else {
            z3 = true;
        }
        if (scrollX < f4) {
            if (z2) {
                this.T.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z4 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z3) {
                this.U.onPull(Math.abs(scrollX - f5) / clientWidth);
                z4 = true;
            }
            scrollX = f5;
        }
        int i2 = (int) scrollX;
        this.H += scrollX - ((float) i2);
        scrollTo(i2, getScrollY());
        e(i2);
        return z4;
    }

    public final b e() {
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? ((float) getScrollX()) / ((float) clientWidth) : 0.0f;
        float f2 = clientWidth > 0 ? ((float) this.q) / ((float) clientWidth) : 0.0f;
        b bVar = null;
        int i2 = 0;
        boolean z2 = true;
        int i3 = -1;
        float f3 = 0.0f;
        float f4 = 0.0f;
        while (i2 < this.f974f.size()) {
            b bVar2 = this.f974f.get(i2);
            if (!z2) {
                int i4 = i3 + 1;
                if (bVar2.f985b != i4) {
                    bVar2 = this.f975g;
                    bVar2.f988e = f3 + f4 + f2;
                    bVar2.f985b = i4;
                    bVar2.f987d = this.f977i.b(bVar2.f985b);
                    i2--;
                }
            }
            f3 = bVar2.f988e;
            float f5 = bVar2.f987d + f3 + f2;
            if (!z2 && scrollX < f3) {
                return bVar;
            }
            if (scrollX < f5 || i2 == this.f974f.size() - 1) {
                return bVar2;
            }
            i3 = bVar2.f985b;
            f4 = bVar2.f987d;
            i2++;
            bVar = bVar2;
            z2 = false;
        }
        return bVar;
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0060, code lost:
        if (r9 == r10) goto L_0x0067;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0066, code lost:
        r8 = null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void f(int r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r0.f978j
            if (r2 == r1) goto L_0x000f
            androidx.viewpager.widget.ViewPager$b r2 = r0.d(r2)
            r0.f978j = r1
            goto L_0x0010
        L_0x000f:
            r2 = 0
        L_0x0010:
            b.G.a.a r1 = r0.f977i
            if (r1 != 0) goto L_0x0018
            r17.m()
            return
        L_0x0018:
            boolean r1 = r0.A
            if (r1 == 0) goto L_0x0020
            r17.m()
            return
        L_0x0020:
            android.os.IBinder r1 = r17.getWindowToken()
            if (r1 != 0) goto L_0x0027
            return
        L_0x0027:
            b.G.a.a r1 = r0.f977i
            r1.b((android.view.ViewGroup) r0)
            int r1 = r0.B
            int r4 = r0.f978j
            int r4 = r4 - r1
            r5 = 0
            int r4 = java.lang.Math.max(r5, r4)
            b.G.a.a r6 = r0.f977i
            int r6 = r6.a()
            int r7 = r6 + -1
            int r8 = r0.f978j
            int r8 = r8 + r1
            int r1 = java.lang.Math.min(r7, r8)
            int r7 = r0.f973e
            if (r6 != r7) goto L_0x0211
            r7 = 0
        L_0x004a:
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r8 = r0.f974f
            int r8 = r8.size()
            if (r7 >= r8) goto L_0x0066
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r8 = r0.f974f
            java.lang.Object r8 = r8.get(r7)
            androidx.viewpager.widget.ViewPager$b r8 = (androidx.viewpager.widget.ViewPager.b) r8
            int r9 = r8.f985b
            int r10 = r0.f978j
            if (r9 < r10) goto L_0x0063
            if (r9 != r10) goto L_0x0066
            goto L_0x0067
        L_0x0063:
            int r7 = r7 + 1
            goto L_0x004a
        L_0x0066:
            r8 = 0
        L_0x0067:
            if (r8 != 0) goto L_0x0071
            if (r6 <= 0) goto L_0x0071
            int r8 = r0.f978j
            androidx.viewpager.widget.ViewPager$b r8 = r0.a((int) r8, (int) r7)
        L_0x0071:
            r9 = 0
            if (r8 == 0) goto L_0x019e
            int r10 = r7 + -1
            if (r10 < 0) goto L_0x0081
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r11 = r0.f974f
            java.lang.Object r11 = r11.get(r10)
            androidx.viewpager.widget.ViewPager$b r11 = (androidx.viewpager.widget.ViewPager.b) r11
            goto L_0x0082
        L_0x0081:
            r11 = 0
        L_0x0082:
            int r12 = r17.getClientWidth()
            r13 = 1073741824(0x40000000, float:2.0)
            if (r12 > 0) goto L_0x008c
            r3 = 0
            goto L_0x0099
        L_0x008c:
            float r14 = r8.f987d
            float r14 = r13 - r14
            int r15 = r17.getPaddingLeft()
            float r15 = (float) r15
            float r3 = (float) r12
            float r15 = r15 / r3
            float r3 = r14 + r15
        L_0x0099:
            int r14 = r0.f978j
            int r14 = r14 + -1
            r15 = r10
            r10 = r7
            r7 = 0
        L_0x00a0:
            if (r14 < 0) goto L_0x0100
            int r16 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r16 < 0) goto L_0x00ce
            if (r14 >= r4) goto L_0x00ce
            if (r11 != 0) goto L_0x00ab
            goto L_0x0100
        L_0x00ab:
            int r5 = r11.f985b
            if (r14 != r5) goto L_0x00fc
            boolean r5 = r11.f986c
            if (r5 != 0) goto L_0x00fc
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            r5.remove(r15)
            b.G.a.a r5 = r0.f977i
            java.lang.Object r11 = r11.f984a
            r5.a((android.view.ViewGroup) r0, (int) r14, (java.lang.Object) r11)
            int r15 = r15 + -1
            int r10 = r10 + -1
            if (r15 < 0) goto L_0x00fa
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            java.lang.Object r5 = r5.get(r15)
            androidx.viewpager.widget.ViewPager$b r5 = (androidx.viewpager.widget.ViewPager.b) r5
            goto L_0x00fb
        L_0x00ce:
            if (r11 == 0) goto L_0x00e4
            int r5 = r11.f985b
            if (r14 != r5) goto L_0x00e4
            float r5 = r11.f987d
            float r7 = r7 + r5
            int r15 = r15 + -1
            if (r15 < 0) goto L_0x00fa
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            java.lang.Object r5 = r5.get(r15)
            androidx.viewpager.widget.ViewPager$b r5 = (androidx.viewpager.widget.ViewPager.b) r5
            goto L_0x00fb
        L_0x00e4:
            int r5 = r15 + 1
            androidx.viewpager.widget.ViewPager$b r5 = r0.a((int) r14, (int) r5)
            float r5 = r5.f987d
            float r7 = r7 + r5
            int r10 = r10 + 1
            if (r15 < 0) goto L_0x00fa
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            java.lang.Object r5 = r5.get(r15)
            androidx.viewpager.widget.ViewPager$b r5 = (androidx.viewpager.widget.ViewPager.b) r5
            goto L_0x00fb
        L_0x00fa:
            r5 = 0
        L_0x00fb:
            r11 = r5
        L_0x00fc:
            int r14 = r14 + -1
            r5 = 0
            goto L_0x00a0
        L_0x0100:
            float r3 = r8.f987d
            int r4 = r10 + 1
            int r5 = (r3 > r13 ? 1 : (r3 == r13 ? 0 : -1))
            if (r5 >= 0) goto L_0x0192
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            int r5 = r5.size()
            if (r4 >= r5) goto L_0x0119
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            java.lang.Object r5 = r5.get(r4)
            androidx.viewpager.widget.ViewPager$b r5 = (androidx.viewpager.widget.ViewPager.b) r5
            goto L_0x011a
        L_0x0119:
            r5 = 0
        L_0x011a:
            if (r12 > 0) goto L_0x011e
            r7 = 0
            goto L_0x0126
        L_0x011e:
            int r7 = r17.getPaddingRight()
            float r7 = (float) r7
            float r11 = (float) r12
            float r7 = r7 / r11
            float r7 = r7 + r13
        L_0x0126:
            int r11 = r0.f978j
        L_0x0128:
            int r11 = r11 + 1
            if (r11 >= r6) goto L_0x0192
            int r12 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r12 < 0) goto L_0x015c
            if (r11 <= r1) goto L_0x015c
            if (r5 != 0) goto L_0x0135
            goto L_0x0192
        L_0x0135:
            int r12 = r5.f985b
            if (r11 != r12) goto L_0x0191
            boolean r12 = r5.f986c
            if (r12 != 0) goto L_0x0191
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r12 = r0.f974f
            r12.remove(r4)
            b.G.a.a r12 = r0.f977i
            java.lang.Object r5 = r5.f984a
            r12.a((android.view.ViewGroup) r0, (int) r11, (java.lang.Object) r5)
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            int r5 = r5.size()
            if (r4 >= r5) goto L_0x015a
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            java.lang.Object r5 = r5.get(r4)
            androidx.viewpager.widget.ViewPager$b r5 = (androidx.viewpager.widget.ViewPager.b) r5
            goto L_0x0191
        L_0x015a:
            r5 = 0
            goto L_0x0191
        L_0x015c:
            if (r5 == 0) goto L_0x0178
            int r12 = r5.f985b
            if (r11 != r12) goto L_0x0178
            float r5 = r5.f987d
            float r3 = r3 + r5
            int r4 = r4 + 1
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            int r5 = r5.size()
            if (r4 >= r5) goto L_0x015a
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            java.lang.Object r5 = r5.get(r4)
            androidx.viewpager.widget.ViewPager$b r5 = (androidx.viewpager.widget.ViewPager.b) r5
            goto L_0x0191
        L_0x0178:
            androidx.viewpager.widget.ViewPager$b r5 = r0.a((int) r11, (int) r4)
            int r4 = r4 + 1
            float r5 = r5.f987d
            float r3 = r3 + r5
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            int r5 = r5.size()
            if (r4 >= r5) goto L_0x015a
            java.util.ArrayList<androidx.viewpager.widget.ViewPager$b> r5 = r0.f974f
            java.lang.Object r5 = r5.get(r4)
            androidx.viewpager.widget.ViewPager$b r5 = (androidx.viewpager.widget.ViewPager.b) r5
        L_0x0191:
            goto L_0x0128
        L_0x0192:
            r0.a((androidx.viewpager.widget.ViewPager.b) r8, (int) r10, (androidx.viewpager.widget.ViewPager.b) r2)
            b.G.a.a r1 = r0.f977i
            int r2 = r0.f978j
            java.lang.Object r3 = r8.f984a
            r1.b(r0, r2, r3)
        L_0x019e:
            b.G.a.a r1 = r0.f977i
            r1.a((android.view.ViewGroup) r0)
            int r1 = r17.getChildCount()
            r2 = 0
        L_0x01a8:
            if (r2 >= r1) goto L_0x01d1
            android.view.View r3 = r0.getChildAt(r2)
            android.view.ViewGroup$LayoutParams r4 = r3.getLayoutParams()
            androidx.viewpager.widget.ViewPager$c r4 = (androidx.viewpager.widget.ViewPager.c) r4
            r4.f994f = r2
            boolean r5 = r4.f989a
            if (r5 != 0) goto L_0x01ce
            float r5 = r4.f991c
            int r5 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r5 != 0) goto L_0x01ce
            androidx.viewpager.widget.ViewPager$b r3 = r0.b((android.view.View) r3)
            if (r3 == 0) goto L_0x01ce
            float r5 = r3.f987d
            r4.f991c = r5
            int r3 = r3.f985b
            r4.f993e = r3
        L_0x01ce:
            int r2 = r2 + 1
            goto L_0x01a8
        L_0x01d1:
            r17.m()
            boolean r1 = r17.hasFocus()
            if (r1 == 0) goto L_0x0210
            android.view.View r1 = r17.findFocus()
            if (r1 == 0) goto L_0x01e5
            androidx.viewpager.widget.ViewPager$b r3 = r0.a((android.view.View) r1)
            goto L_0x01e6
        L_0x01e5:
            r3 = 0
        L_0x01e6:
            if (r3 == 0) goto L_0x01ee
            int r1 = r3.f985b
            int r2 = r0.f978j
            if (r1 == r2) goto L_0x0210
        L_0x01ee:
            r1 = 0
        L_0x01ef:
            int r2 = r17.getChildCount()
            if (r1 >= r2) goto L_0x0210
            android.view.View r2 = r0.getChildAt(r1)
            androidx.viewpager.widget.ViewPager$b r3 = r0.b((android.view.View) r2)
            if (r3 == 0) goto L_0x020d
            int r3 = r3.f985b
            int r4 = r0.f978j
            if (r3 != r4) goto L_0x020d
            r3 = 2
            boolean r2 = r2.requestFocus(r3)
            if (r2 == 0) goto L_0x020d
            goto L_0x0210
        L_0x020d:
            int r1 = r1 + 1
            goto L_0x01ef
        L_0x0210:
            return
        L_0x0211:
            android.content.res.Resources r1 = r17.getResources()     // Catch:{ NotFoundException -> 0x021e }
            int r2 = r17.getId()     // Catch:{ NotFoundException -> 0x021e }
            java.lang.String r1 = r1.getResourceName(r2)     // Catch:{ NotFoundException -> 0x021e }
            goto L_0x0226
        L_0x021e:
            int r1 = r17.getId()
            java.lang.String r1 = java.lang.Integer.toHexString(r1)
        L_0x0226:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "
            r3.append(r4)
            int r4 = r0.f973e
            r3.append(r4)
            java.lang.String r4 = ", found: "
            r3.append(r4)
            r3.append(r6)
            java.lang.String r4 = " Pager id: "
            r3.append(r4)
            r3.append(r1)
            java.lang.String r1 = " Pager class: "
            r3.append(r1)
            java.lang.Class r1 = r17.getClass()
            r3.append(r1)
            java.lang.String r1 = " Problematic adapter: "
            r3.append(r1)
            b.G.a.a r1 = r0.f977i
            java.lang.Class r1 = r1.getClass()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            goto L_0x026a
        L_0x0269:
            throw r2
        L_0x026a:
            goto L_0x0269
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.f(int):void");
    }

    public final void a(int i2, boolean z2, int i3, boolean z3) {
        b d2 = d(i2);
        int clientWidth = d2 != null ? (int) (((float) getClientWidth()) * Math.max(this.u, Math.min(d2.f988e, this.v))) : 0;
        if (z2) {
            a(clientWidth, 0, i3);
            if (z3) {
                b(i2);
                return;
            }
            return;
        }
        if (z3) {
            b(i2);
        }
        a(false);
        scrollTo(clientWidth, 0);
        e(clientWidth);
    }

    public b b(View view) {
        for (int i2 = 0; i2 < this.f974f.size(); i2++) {
            b bVar = this.f974f.get(i2);
            if (this.f977i.a(view, bVar.f984a)) {
                return bVar;
            }
        }
        return null;
    }

    public final void c() {
        this.C = false;
        this.D = false;
        VelocityTracker velocityTracker = this.M;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.M = null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0066  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.ba
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L_0x006d
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = r4
            r4 = r3
            r3 = 0
        L_0x001d:
            if (r3 >= r6) goto L_0x006d
            android.view.View r8 = r12.getChildAt(r3)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            androidx.viewpager.widget.ViewPager$c r9 = (androidx.viewpager.widget.ViewPager.c) r9
            boolean r10 = r9.f989a
            if (r10 != 0) goto L_0x002e
            goto L_0x006a
        L_0x002e:
            int r9 = r9.f990b
            r9 = r9 & 7
            if (r9 == r2) goto L_0x004f
            r10 = 3
            if (r9 == r10) goto L_0x0049
            r10 = 5
            if (r9 == r10) goto L_0x003c
            r9 = r4
            goto L_0x005e
        L_0x003c:
            int r9 = r5 - r7
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r7 = r7 + r10
            goto L_0x005b
        L_0x0049:
            int r9 = r8.getWidth()
            int r9 = r9 + r4
            goto L_0x005e
        L_0x004f:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r4)
        L_0x005b:
            r11 = r9
            r9 = r4
            r4 = r11
        L_0x005e:
            int r4 = r4 + r0
            int r10 = r8.getLeft()
            int r4 = r4 - r10
            if (r4 == 0) goto L_0x0069
            r8.offsetLeftAndRight(r4)
        L_0x0069:
            r4 = r9
        L_0x006a:
            int r3 = r3 + 1
            goto L_0x001d
        L_0x006d:
            r12.a((int) r13, (float) r14, (int) r15)
            androidx.viewpager.widget.ViewPager$g r13 = r12.ga
            if (r13 == 0) goto L_0x00a1
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        L_0x007c:
            if (r1 >= r14) goto L_0x00a1
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            androidx.viewpager.widget.ViewPager$c r0 = (androidx.viewpager.widget.ViewPager.c) r0
            boolean r0 = r0.f989a
            if (r0 == 0) goto L_0x008d
            goto L_0x009e
        L_0x008d:
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.getClientWidth()
            float r3 = (float) r3
            float r0 = r0 / r3
            androidx.viewpager.widget.ViewPager$g r3 = r12.ga
            r3.a(r15, r0)
        L_0x009e:
            int r1 = r1 + 1
            goto L_0x007c
        L_0x00a1:
            r12.aa = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.b(int, float, int):void");
    }

    public void a(f fVar) {
        if (this.ca == null) {
            this.ca = new ArrayList();
        }
        this.ca.add(fVar);
    }

    public float a(float f2) {
        return (float) Math.sin((double) ((f2 - 0.5f) * 0.47123894f));
    }

    public void a(int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.n;
        if (scroller != null && !scroller.isFinished()) {
            i5 = this.o ? this.n.getCurrX() : this.n.getStartX();
            this.n.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            i5 = getScrollX();
        }
        int i7 = i5;
        int scrollY = getScrollY();
        int i8 = i2 - i7;
        int i9 = i3 - scrollY;
        if (i8 == 0 && i9 == 0) {
            a(false);
            j();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i10 = clientWidth / 2;
        float f2 = (float) clientWidth;
        float f3 = (float) i10;
        float a2 = f3 + (a(Math.min(1.0f, (((float) Math.abs(i8)) * 1.0f) / f2)) * f3);
        int abs = Math.abs(i4);
        if (abs > 0) {
            i6 = Math.round(Math.abs(a2 / ((float) abs)) * 1000.0f) * 4;
        } else {
            i6 = (int) (((((float) Math.abs(i8)) / ((f2 * this.f977i.b(this.f978j)) + ((float) this.q))) + 1.0f) * 100.0f);
        }
        int min = Math.min(i6, 600);
        this.o = false;
        this.n.startScroll(i7, scrollY, i8, i9, min);
        z.F(this);
    }

    public final void b(int i2) {
        f fVar = this.da;
        if (fVar != null) {
            fVar.b(i2);
        }
        List<f> list = this.ca;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                f fVar2 = this.ca.get(i3);
                if (fVar2 != null) {
                    fVar2.b(i2);
                }
            }
        }
        f fVar3 = this.ea;
        if (fVar3 != null) {
            fVar3.b(i2);
        }
    }

    public b a(int i2, int i3) {
        b bVar = new b();
        bVar.f985b = i2;
        bVar.f984a = this.f977i.a((ViewGroup) this, i2);
        bVar.f987d = this.f977i.b(i2);
        if (i3 < 0 || i3 >= this.f974f.size()) {
            this.f974f.add(bVar);
        } else {
            this.f974f.add(i3, bVar);
        }
        return bVar;
    }

    public final void b(boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).setLayerType(z2 ? this.ha : 0, null);
        }
    }

    public void b(float f2) {
        ArrayList<b> arrayList;
        if (!this.R) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        } else if (this.f977i != null) {
            this.H += f2;
            float scrollX = ((float) getScrollX()) - f2;
            float clientWidth = (float) getClientWidth();
            float f3 = this.u * clientWidth;
            float f4 = this.v * clientWidth;
            b bVar = this.f974f.get(0);
            b bVar2 = arrayList.get(this.f974f.size() - 1);
            if (bVar.f985b != 0) {
                f3 = bVar.f988e * clientWidth;
            }
            if (bVar2.f985b != this.f977i.a() - 1) {
                f4 = bVar2.f988e * clientWidth;
            }
            if (scrollX < f3) {
                scrollX = f3;
            } else if (scrollX > f4) {
                scrollX = f4;
            }
            int i2 = (int) scrollX;
            this.H += scrollX - ((float) i2);
            scrollTo(i2, getScrollY());
            e(i2);
            MotionEvent obtain = MotionEvent.obtain(this.S, SystemClock.uptimeMillis(), 2, this.H, 0.0f, 0);
            this.M.addMovement(obtain);
            obtain.recycle();
        }
    }

    public final void a(b bVar, int i2, b bVar2) {
        int i3;
        int i4;
        b bVar3;
        b bVar4;
        int a2 = this.f977i.a();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? ((float) this.q) / ((float) clientWidth) : 0.0f;
        if (bVar2 != null) {
            int i5 = bVar2.f985b;
            int i6 = bVar.f985b;
            if (i5 < i6) {
                float f3 = bVar2.f988e + bVar2.f987d + f2;
                int i7 = i5 + 1;
                int i8 = 0;
                while (i7 <= bVar.f985b && i8 < this.f974f.size()) {
                    Object obj = this.f974f.get(i8);
                    while (true) {
                        bVar4 = (b) obj;
                        if (i7 > bVar4.f985b && i8 < this.f974f.size() - 1) {
                            i8++;
                            obj = this.f974f.get(i8);
                        }
                    }
                    while (i7 < bVar4.f985b) {
                        f3 += this.f977i.b(i7) + f2;
                        i7++;
                    }
                    bVar4.f988e = f3;
                    f3 += bVar4.f987d + f2;
                    i7++;
                }
            } else if (i5 > i6) {
                int size = this.f974f.size() - 1;
                float f4 = bVar2.f988e;
                while (true) {
                    i5--;
                    if (i5 < bVar.f985b || size < 0) {
                        break;
                    }
                    Object obj2 = this.f974f.get(size);
                    while (true) {
                        bVar3 = (b) obj2;
                        if (i5 < bVar3.f985b && size > 0) {
                            size--;
                            obj2 = this.f974f.get(size);
                        }
                    }
                    while (i5 > bVar3.f985b) {
                        f4 -= this.f977i.b(i5) + f2;
                        i5--;
                    }
                    f4 -= bVar3.f987d + f2;
                    bVar3.f988e = f4;
                }
            }
        }
        int size2 = this.f974f.size();
        float f5 = bVar.f988e;
        int i9 = bVar.f985b;
        int i10 = i9 - 1;
        this.u = i9 == 0 ? f5 : -3.4028235E38f;
        int i11 = a2 - 1;
        this.v = bVar.f985b == i11 ? (bVar.f988e + bVar.f987d) - 1.0f : Float.MAX_VALUE;
        int i12 = i2 - 1;
        while (i12 >= 0) {
            b bVar5 = this.f974f.get(i12);
            while (true) {
                i4 = bVar5.f985b;
                if (i10 <= i4) {
                    break;
                }
                f5 -= this.f977i.b(i10) + f2;
                i10--;
            }
            f5 -= bVar5.f987d + f2;
            bVar5.f988e = f5;
            if (i4 == 0) {
                this.u = f5;
            }
            i12--;
            i10--;
        }
        float f6 = bVar.f988e + bVar.f987d + f2;
        int i13 = bVar.f985b + 1;
        int i14 = i2 + 1;
        while (i14 < size2) {
            b bVar6 = this.f974f.get(i14);
            while (true) {
                i3 = bVar6.f985b;
                if (i13 >= i3) {
                    break;
                }
                f6 += this.f977i.b(i13) + f2;
                i13++;
            }
            if (i3 == i11) {
                this.v = (bVar6.f987d + f6) - 1.0f;
            }
            bVar6.f988e = f6;
            f6 += bVar6.f987d + f2;
            i14++;
            i13++;
        }
        this.W = false;
    }

    public b a(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return b(view);
            }
            if (parent != null && (parent instanceof View)) {
                view = (View) parent;
            }
        }
        return null;
    }

    public final void a(int i2, int i3, int i4, int i5) {
        if (i3 <= 0 || this.f974f.isEmpty()) {
            b d2 = d(this.f978j);
            int min = (int) ((d2 != null ? Math.min(d2.f988e, this.v) : 0.0f) * ((float) ((i2 - getPaddingLeft()) - getPaddingRight())));
            if (min != getScrollX()) {
                a(false);
                scrollTo(min, getScrollY());
            }
        } else if (!this.n.isFinished()) {
            this.n.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            scrollTo((int) ((((float) getScrollX()) / ((float) (((i3 - getPaddingLeft()) - getPaddingRight()) + i5))) * ((float) (((i2 - getPaddingLeft()) - getPaddingRight()) + i4))), getScrollY());
        }
    }

    public final void a(int i2, float f2, int i3) {
        f fVar = this.da;
        if (fVar != null) {
            fVar.a(i2, f2, i3);
        }
        List<f> list = this.ca;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                f fVar2 = this.ca.get(i4);
                if (fVar2 != null) {
                    fVar2.a(i2, f2, i3);
                }
            }
        }
        f fVar3 = this.ea;
        if (fVar3 != null) {
            fVar3.a(i2, f2, i3);
        }
    }

    public final void a(boolean z2) {
        boolean z3 = this.la == 2;
        if (z3) {
            setScrollingCacheEnabled(false);
            if (!this.n.isFinished()) {
                this.n.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.n.getCurrX();
                int currY = this.n.getCurrY();
                if (!(scrollX == currX && scrollY == currY)) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        e(currX);
                    }
                }
            }
        }
        this.A = false;
        boolean z4 = z3;
        for (int i2 = 0; i2 < this.f974f.size(); i2++) {
            b bVar = this.f974f.get(i2);
            if (bVar.f986c) {
                bVar.f986c = false;
                z4 = true;
            }
        }
        if (!z4) {
            return;
        }
        if (z2) {
            z.a((View) this, this.ka);
        } else {
            this.ka.run();
        }
    }

    public final boolean a(float f2, float f3) {
        return (f2 < ((float) this.F) && f3 > 0.0f) || (f2 > ((float) (getWidth() - this.F)) && f3 < 0.0f);
    }

    public final int a(int i2, float f2, int i3, int i4) {
        if (Math.abs(i4) <= this.P || Math.abs(i3) <= this.N) {
            i2 += (int) (f2 + (i2 >= this.f978j ? 0.4f : 0.6f));
        } else if (i3 <= 0) {
            i2++;
        }
        if (this.f974f.size() <= 0) {
            return i2;
        }
        ArrayList<b> arrayList = this.f974f;
        return Math.max(this.f974f.get(0).f985b, Math.min(i2, arrayList.get(arrayList.size() - 1).f985b));
    }

    public boolean a() {
        if (this.C) {
            return false;
        }
        this.R = true;
        setScrollState(1);
        this.H = 0.0f;
        this.J = 0.0f;
        VelocityTracker velocityTracker = this.M;
        if (velocityTracker == null) {
            this.M = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.M.addMovement(obtain);
        obtain.recycle();
        this.S = uptimeMillis;
        return true;
    }

    public final void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.L) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.H = motionEvent.getX(i2);
            this.L = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.M;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public boolean a(View view, boolean z2, int i2, int i3, int i4) {
        View view2 = view;
        boolean z3 = true;
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i3 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight()) {
                    int i6 = i4 + scrollY;
                    if (i6 >= childAt.getTop() && i6 < childAt.getBottom()) {
                        if (a(childAt, true, i2, i5 - childAt.getLeft(), i6 - childAt.getTop())) {
                            return true;
                        }
                    }
                }
            }
        }
        if (!z2 || !view.canScrollHorizontally(-i2)) {
            z3 = false;
        }
        return z3;
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 21) {
                if (keyCode != 22) {
                    if (keyCode == 61) {
                        if (keyEvent.hasNoModifiers()) {
                            return a(2);
                        }
                        if (keyEvent.hasModifiers(1)) {
                            return a(1);
                        }
                    }
                } else if (keyEvent.hasModifiers(2)) {
                    return i();
                } else {
                    return a(66);
                }
            } else if (keyEvent.hasModifiers(2)) {
                return h();
            } else {
                return a(17);
            }
        }
        return false;
    }

    public boolean a(int i2) {
        boolean requestFocus;
        boolean z2;
        View findFocus = findFocus();
        boolean z3 = false;
        View view = null;
        if (findFocus != this) {
            if (findFocus != null) {
                ViewParent parent = findFocus.getParent();
                while (true) {
                    if (!(parent instanceof ViewGroup)) {
                        z2 = false;
                        break;
                    } else if (parent == this) {
                        z2 = true;
                        break;
                    } else {
                        parent = parent.getParent();
                    }
                }
                if (!z2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(findFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = findFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb.append(" => ");
                        sb.append(parent2.getClass().getSimpleName());
                    }
                    Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i2);
        if (findNextFocus != null && findNextFocus != view) {
            if (i2 == 17) {
                int i3 = a(this.f976h, findNextFocus).left;
                int i4 = a(this.f976h, view).left;
                if (view == null || i3 < i4) {
                    requestFocus = findNextFocus.requestFocus();
                } else {
                    requestFocus = h();
                }
            } else if (i2 == 66) {
                int i5 = a(this.f976h, findNextFocus).left;
                int i6 = a(this.f976h, view).left;
                if (view == null || i5 > i6) {
                    requestFocus = findNextFocus.requestFocus();
                } else {
                    requestFocus = i();
                }
            }
            z3 = requestFocus;
        } else if (i2 == 17 || i2 == 1) {
            z3 = h();
        } else if (i2 == 66 || i2 == 2) {
            z3 = i();
        }
        if (z3) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
        }
        return z3;
    }

    public final Rect a(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }
}
