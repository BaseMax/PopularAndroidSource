package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.customview.view.AbsSavedState;
import b.h.C0251a;
import b.h.C0256b;
import b.h.C0257c;
import b.h.a.C0254c;
import b.h.a.C0255d;
import b.i.k.C0260c;
import b.i.k.C0270m;
import b.i.k.M;
import b.i.k.p;
import b.i.k.q;
import b.i.k.z;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout extends ViewGroup implements C0270m {

    /* renamed from: a  reason: collision with root package name */
    public static final String f553a;

    /* renamed from: b  reason: collision with root package name */
    public static final Class<?>[] f554b = {Context.class, AttributeSet.class};

    /* renamed from: c  reason: collision with root package name */
    public static final ThreadLocal<Map<String, Constructor<b>>> f555c = new ThreadLocal<>();

    /* renamed from: d  reason: collision with root package name */
    public static final Comparator<View> f556d;

    /* renamed from: e  reason: collision with root package name */
    public static final b.i.j.e<Rect> f557e = new b.i.j.g(12);

    /* renamed from: f  reason: collision with root package name */
    public final List<View> f558f;

    /* renamed from: g  reason: collision with root package name */
    public final C0254c<View> f559g;

    /* renamed from: h  reason: collision with root package name */
    public final List<View> f560h;

    /* renamed from: i  reason: collision with root package name */
    public final List<View> f561i;

    /* renamed from: j  reason: collision with root package name */
    public final int[] f562j;

    /* renamed from: k  reason: collision with root package name */
    public Paint f563k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f564l;
    public boolean m;
    public int[] n;
    public View o;
    public View p;
    public f q;
    public boolean r;
    public M s;
    public boolean t;
    public Drawable u;
    public ViewGroup.OnHierarchyChangeListener v;
    public q w;
    public final p x;

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0253b();

        /* renamed from: c  reason: collision with root package name */
        public SparseArray<Parcelable> f565c;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f565c = new SparseArray<>(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                this.f565c.append(iArr[i2], readParcelableArray[i2]);
            }
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            SparseArray<Parcelable> sparseArray = this.f565c;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i3 = 0; i3 < size; i3++) {
                iArr[i3] = this.f565c.keyAt(i3);
                parcelableArr[i3] = this.f565c.valueAt(i3);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i2);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public interface a {
        b getBehavior();
    }

    public static abstract class b<V extends View> {
        public b() {
        }

        public static Object getTag(View view) {
            return ((e) view.getLayoutParams()).r;
        }

        public static void setTag(View view, Object obj) {
            ((e) view.getLayoutParams()).r = obj;
        }

        public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, V v) {
            return getScrimOpacity(coordinatorLayout, v) > 0.0f;
        }

        public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        public int getScrimColor(CoordinatorLayout coordinatorLayout, V v) {
            return -16777216;
        }

        public float getScrimOpacity(CoordinatorLayout coordinatorLayout, V v) {
            return 0.0f;
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public M onApplyWindowInsets(CoordinatorLayout coordinatorLayout, V v, M m) {
            return m;
        }

        public void onAttachedToLayoutParams(e eVar) {
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i2) {
            return false;
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v, int i2, int i3, int i4, int i5) {
            return false;
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, V v, View view, float f2, float f3, boolean z) {
            return false;
        }

        public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f2, float f3) {
            return false;
        }

        @Deprecated
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int[] iArr) {
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int[] iArr, int i4) {
            if (i4 == 0) {
                onNestedPreScroll(coordinatorLayout, v, view, i2, i3, iArr);
            }
        }

        @Deprecated
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int i4, int i5) {
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int i4, int i5, int i6) {
            if (i6 == 0) {
                onNestedScroll(coordinatorLayout, v, view, i2, i3, i4, i5);
            }
        }

        @Deprecated
        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2) {
        }

        public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2, int i3) {
            if (i3 == 0) {
                onNestedScrollAccepted(coordinatorLayout, v, view, view2, i2);
            }
        }

        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2) {
            return false;
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2, int i3) {
            if (i3 == 0) {
                return onStartNestedScroll(coordinatorLayout, v, view, view2, i2);
            }
            return false;
        }

        @Deprecated
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2) {
            if (i2 == 0) {
                onStopNestedScroll(coordinatorLayout, v, view);
            }
        }

        public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public b(Context context, AttributeSet attributeSet) {
        }
    }

    @Deprecated
    @Retention(RetentionPolicy.RUNTIME)
    public @interface c {
        Class<? extends b> value();
    }

    private class d implements ViewGroup.OnHierarchyChangeListener {
        public d() {
        }

        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.v;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.b(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.v;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public static class e extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public b f567a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f568b = false;

        /* renamed from: c  reason: collision with root package name */
        public int f569c = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f570d = 0;

        /* renamed from: e  reason: collision with root package name */
        public int f571e = -1;

        /* renamed from: f  reason: collision with root package name */
        public int f572f = -1;

        /* renamed from: g  reason: collision with root package name */
        public int f573g = 0;

        /* renamed from: h  reason: collision with root package name */
        public int f574h = 0;

        /* renamed from: i  reason: collision with root package name */
        public int f575i;

        /* renamed from: j  reason: collision with root package name */
        public int f576j;

        /* renamed from: k  reason: collision with root package name */
        public View f577k;

        /* renamed from: l  reason: collision with root package name */
        public View f578l;
        public boolean m;
        public boolean n;
        public boolean o;
        public boolean p;
        public final Rect q = new Rect();
        public Object r;

        public e(int i2, int i3) {
            super(i2, i3);
        }

        public void a(b bVar) {
            b bVar2 = this.f567a;
            if (bVar2 != bVar) {
                if (bVar2 != null) {
                    bVar2.onDetachedFromLayoutParams();
                }
                this.f567a = bVar;
                this.r = null;
                this.f568b = true;
                if (bVar != null) {
                    bVar.onAttachedToLayoutParams(this);
                }
            }
        }

        public boolean b() {
            if (this.f567a == null) {
                this.m = false;
            }
            return this.m;
        }

        public int c() {
            return this.f572f;
        }

        public b d() {
            return this.f567a;
        }

        public boolean e() {
            return this.p;
        }

        public Rect f() {
            return this.q;
        }

        public void g() {
            this.p = false;
        }

        public void h() {
            this.m = false;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.m;
            if (z) {
                return true;
            }
            b bVar = this.f567a;
            boolean blocksInteractionBelow = (bVar != null ? bVar.blocksInteractionBelow(coordinatorLayout, view) : false) | z;
            this.m = blocksInteractionBelow;
            return blocksInteractionBelow;
        }

        public void a(Rect rect) {
            this.q.set(rect);
        }

        public void b(int i2) {
            a(i2, false);
        }

        public boolean a() {
            return this.f577k == null && this.f572f != -1;
        }

        public final boolean b(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f577k.getId() != this.f572f) {
                return false;
            }
            View view2 = this.f577k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.f578l = null;
                    this.f577k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
            this.f578l = view2;
            return true;
        }

        public void a(int i2, boolean z) {
            if (i2 == 0) {
                this.n = z;
            } else if (i2 == 1) {
                this.o = z;
            }
        }

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0257c.CoordinatorLayout_Layout);
            this.f569c = obtainStyledAttributes.getInteger(C0257c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f572f = obtainStyledAttributes.getResourceId(C0257c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f570d = obtainStyledAttributes.getInteger(C0257c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f571e = obtainStyledAttributes.getInteger(C0257c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f573g = obtainStyledAttributes.getInt(C0257c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f574h = obtainStyledAttributes.getInt(C0257c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            this.f568b = obtainStyledAttributes.hasValue(C0257c.CoordinatorLayout_Layout_layout_behavior);
            if (this.f568b) {
                this.f567a = CoordinatorLayout.a(context, attributeSet, obtainStyledAttributes.getString(C0257c.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            b bVar = this.f567a;
            if (bVar != null) {
                bVar.onAttachedToLayoutParams(this);
            }
        }

        public boolean a(int i2) {
            if (i2 == 0) {
                return this.n;
            }
            if (i2 != 1) {
                return false;
            }
            return this.o;
        }

        public void a(boolean z) {
            this.p = z;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 != this.f578l && !a(view2, z.m(coordinatorLayout))) {
                b bVar = this.f567a;
                if (bVar == null || !bVar.layoutDependsOn(coordinatorLayout, view, view2)) {
                    return false;
                }
            }
            return true;
        }

        public View a(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f572f == -1) {
                this.f578l = null;
                this.f577k = null;
                return null;
            }
            if (this.f577k == null || !b(view, coordinatorLayout)) {
                a(view, coordinatorLayout);
            }
            return this.f577k;
        }

        public final void a(View view, CoordinatorLayout coordinatorLayout) {
            this.f577k = coordinatorLayout.findViewById(this.f572f);
            View view2 = this.f577k;
            if (view2 != null) {
                if (view2 != coordinatorLayout) {
                    ViewParent parent = view2.getParent();
                    while (parent != coordinatorLayout && parent != null) {
                        if (parent != view) {
                            if (parent instanceof View) {
                                view2 = (View) parent;
                            }
                            parent = parent.getParent();
                        } else if (coordinatorLayout.isInEditMode()) {
                            this.f578l = null;
                            this.f577k = null;
                            return;
                        } else {
                            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                        }
                    }
                    this.f578l = view2;
                } else if (coordinatorLayout.isInEditMode()) {
                    this.f578l = null;
                    this.f577k = null;
                } else {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
            } else if (coordinatorLayout.isInEditMode()) {
                this.f578l = null;
                this.f577k = null;
            } else {
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f572f) + " to anchor view " + view);
            }
        }

        public e(e eVar) {
            super(eVar);
        }

        public final boolean a(View view, int i2) {
            int a2 = C0260c.a(((e) view.getLayoutParams()).f573g, i2);
            return a2 != 0 && (C0260c.a(this.f574h, i2) & a2) == a2;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    class f implements ViewTreeObserver.OnPreDrawListener {
        public f() {
        }

        public boolean onPreDraw() {
            CoordinatorLayout.this.b(0);
            return true;
        }
    }

    static class g implements Comparator<View> {
        /* renamed from: a */
        public int compare(View view, View view2) {
            float u = z.u(view);
            float u2 = z.u(view2);
            if (u > u2) {
                return -1;
            }
            return u < u2 ? 1 : 0;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v5, resolved type: java.lang.Class<?>[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        /*
            java.lang.Class<androidx.coordinatorlayout.widget.CoordinatorLayout> r0 = androidx.coordinatorlayout.widget.CoordinatorLayout.class
            java.lang.Package r0 = r0.getPackage()
            r1 = 0
            if (r0 == 0) goto L_0x000e
            java.lang.String r0 = r0.getName()
            goto L_0x000f
        L_0x000e:
            r0 = r1
        L_0x000f:
            f553a = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 21
            if (r0 < r2) goto L_0x001f
            androidx.coordinatorlayout.widget.CoordinatorLayout$g r0 = new androidx.coordinatorlayout.widget.CoordinatorLayout$g
            r0.<init>()
            f556d = r0
            goto L_0x0021
        L_0x001f:
            f556d = r1
        L_0x0021:
            r0 = 2
            java.lang.Class[] r0 = new java.lang.Class[r0]
            r1 = 0
            java.lang.Class<android.content.Context> r2 = android.content.Context.class
            r0[r1] = r2
            r1 = 1
            java.lang.Class<android.util.AttributeSet> r2 = android.util.AttributeSet.class
            r0[r1] = r2
            f554b = r0
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            f555c = r0
            b.i.j.g r0 = new b.i.j.g
            r1 = 12
            r0.<init>(r1)
            f557e = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.<clinit>():void");
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public static int a(int i2, int i3, int i4) {
        return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
    }

    public static Rect a() {
        Rect a2 = f557e.a();
        return a2 == null ? new Rect() : a2;
    }

    public static int c(int i2) {
        if (i2 == 0) {
            return 17;
        }
        return i2;
    }

    public static int d(int i2) {
        if ((i2 & 7) == 0) {
            i2 |= 8388611;
        }
        return (i2 & 112) == 0 ? i2 | 48 : i2;
    }

    public static int e(int i2) {
        if (i2 == 0) {
            return 8388661;
        }
        return i2;
    }

    public final M b(M m2) {
        if (b.i.j.c.a(this.s, m2)) {
            return m2;
        }
        this.s = m2;
        boolean z = true;
        this.t = m2 != null && m2.e() > 0;
        if (this.t || getBackground() != null) {
            z = false;
        }
        setWillNotDraw(z);
        M a2 = a(m2);
        requestLayout();
        return a2;
    }

    public void c(View view, Rect rect) {
        ((e) view.getLayoutParams()).a(rect);
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof e) && super.checkLayoutParams(layoutParams);
    }

    public e d(View view) {
        e eVar = (e) view.getLayoutParams();
        if (!eVar.f568b) {
            if (view instanceof a) {
                b behavior = ((a) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                eVar.a(behavior);
                eVar.f568b = true;
            } else {
                c cVar = null;
                for (Class cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    cVar = (c) cls.getAnnotation(c.class);
                    if (cVar != null) {
                        break;
                    }
                }
                if (cVar != null) {
                    try {
                        eVar.a((b) cVar.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e2) {
                        Log.e("CoordinatorLayout", "Default behavior class " + cVar.value().getName() + " could not be instantiated. Did you forget" + " a default constructor?", e2);
                    }
                }
                eVar.f568b = true;
            }
        }
        return eVar;
    }

    public boolean drawChild(Canvas canvas, View view, long j2) {
        e eVar = (e) view.getLayoutParams();
        b bVar = eVar.f567a;
        if (bVar != null) {
            float scrimOpacity = bVar.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.f563k == null) {
                    this.f563k = new Paint();
                }
                this.f563k.setColor(eVar.f567a.getScrimColor(this, view));
                this.f563k.setAlpha(a(Math.round(scrimOpacity * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect((float) view.getLeft(), (float) view.getTop(), (float) view.getRight(), (float) view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect((float) getPaddingLeft(), (float) getPaddingTop(), (float) (getWidth() - getPaddingRight()), (float) (getHeight() - getPaddingBottom()), this.f563k);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j2);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.u;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    public final void e(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        int i3 = eVar.f575i;
        if (i3 != i2) {
            z.d(view, i2 - i3);
            eVar.f575i = i2;
        }
    }

    public final void f(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        int i3 = eVar.f576j;
        if (i3 != i2) {
            z.e(view, i2 - i3);
            eVar.f576j = i2;
        }
    }

    public final List<View> getDependencySortedChildren() {
        d();
        return Collections.unmodifiableList(this.f558f);
    }

    public final M getLastWindowInsets() {
        return this.s;
    }

    public int getNestedScrollAxes() {
        return this.x.a();
    }

    public Drawable getStatusBarBackground() {
        return this.u;
    }

    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(false);
        if (this.r) {
            if (this.q == null) {
                this.q = new f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.q);
        }
        if (this.s == null && z.j(this)) {
            z.G(this);
        }
        this.m = true;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false);
        if (this.r && this.q != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.q);
        }
        View view = this.p;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.m = false;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.t && this.u != null) {
            M m2 = this.s;
            int e2 = m2 != null ? m2.e() : 0;
            if (e2 > 0) {
                this.u.setBounds(0, 0, getWidth(), e2);
                this.u.draw(canvas);
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            a(true);
        }
        boolean a2 = a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            a(true);
        }
        return a2;
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int m2 = z.m(this);
        int size = this.f558f.size();
        for (int i6 = 0; i6 < size; i6++) {
            View view = this.f558f.get(i6);
            if (view.getVisibility() != 8) {
                b d2 = ((e) view.getLayoutParams()).d();
                if (d2 == null || !d2.onLayoutChild(this, view, m2)) {
                    d(view, m2);
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0117, code lost:
        if (r0.onMeasureChild(r30, r20, r11, r21, r23, 0) == false) goto L_0x0126;
     */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00bf  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00f9  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x011a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r31, int r32) {
        /*
            r30 = this;
            r7 = r30
            r30.d()
            r30.c()
            int r8 = r30.getPaddingLeft()
            int r0 = r30.getPaddingTop()
            int r9 = r30.getPaddingRight()
            int r1 = r30.getPaddingBottom()
            int r10 = b.i.k.z.m(r30)
            r2 = 1
            if (r10 != r2) goto L_0x0021
            r12 = 1
            goto L_0x0022
        L_0x0021:
            r12 = 0
        L_0x0022:
            int r13 = android.view.View.MeasureSpec.getMode(r31)
            int r14 = android.view.View.MeasureSpec.getSize(r31)
            int r15 = android.view.View.MeasureSpec.getMode(r32)
            int r16 = android.view.View.MeasureSpec.getSize(r32)
            int r17 = r8 + r9
            int r18 = r0 + r1
            int r0 = r30.getSuggestedMinimumWidth()
            int r1 = r30.getSuggestedMinimumHeight()
            b.i.k.M r3 = r7.s
            if (r3 == 0) goto L_0x004b
            boolean r3 = b.i.k.z.j(r30)
            if (r3 == 0) goto L_0x004b
            r19 = 1
            goto L_0x004d
        L_0x004b:
            r19 = 0
        L_0x004d:
            java.util.List<android.view.View> r2 = r7.f558f
            int r6 = r2.size()
            r4 = r0
            r2 = r1
            r3 = 0
            r5 = 0
        L_0x0057:
            if (r5 >= r6) goto L_0x016c
            java.util.List<android.view.View> r0 = r7.f558f
            java.lang.Object r0 = r0.get(r5)
            r20 = r0
            android.view.View r20 = (android.view.View) r20
            int r0 = r20.getVisibility()
            r1 = 8
            if (r0 != r1) goto L_0x0071
            r22 = r5
            r29 = r6
            goto L_0x0166
        L_0x0071:
            android.view.ViewGroup$LayoutParams r0 = r20.getLayoutParams()
            r1 = r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$e r1 = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) r1
            int r0 = r1.f571e
            if (r0 < 0) goto L_0x00b8
            if (r13 == 0) goto L_0x00b8
            int r0 = r7.a((int) r0)
            int r11 = r1.f569c
            int r11 = e((int) r11)
            int r11 = b.i.k.C0260c.a(r11, r10)
            r11 = r11 & 7
            r22 = r2
            r2 = 3
            if (r11 != r2) goto L_0x0095
            if (r12 == 0) goto L_0x009a
        L_0x0095:
            r2 = 5
            if (r11 != r2) goto L_0x00a6
            if (r12 == 0) goto L_0x00a6
        L_0x009a:
            int r2 = r14 - r9
            int r2 = r2 - r0
            r0 = 0
            int r2 = java.lang.Math.max(r0, r2)
            r21 = r2
            r11 = 0
            goto L_0x00bd
        L_0x00a6:
            if (r11 != r2) goto L_0x00aa
            if (r12 == 0) goto L_0x00af
        L_0x00aa:
            r2 = 3
            if (r11 != r2) goto L_0x00ba
            if (r12 == 0) goto L_0x00ba
        L_0x00af:
            int r0 = r0 - r8
            r11 = 0
            int r0 = java.lang.Math.max(r11, r0)
            r21 = r0
            goto L_0x00bd
        L_0x00b8:
            r22 = r2
        L_0x00ba:
            r11 = 0
            r21 = 0
        L_0x00bd:
            if (r19 == 0) goto L_0x00ef
            boolean r0 = b.i.k.z.j(r20)
            if (r0 != 0) goto L_0x00ef
            b.i.k.M r0 = r7.s
            int r0 = r0.c()
            b.i.k.M r2 = r7.s
            int r2 = r2.d()
            int r0 = r0 + r2
            b.i.k.M r2 = r7.s
            int r2 = r2.e()
            b.i.k.M r11 = r7.s
            int r11 = r11.b()
            int r2 = r2 + r11
            int r0 = r14 - r0
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r13)
            int r2 = r16 - r2
            int r2 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r15)
            r11 = r0
            r23 = r2
            goto L_0x00f3
        L_0x00ef:
            r11 = r31
            r23 = r32
        L_0x00f3:
            androidx.coordinatorlayout.widget.CoordinatorLayout$b r0 = r1.d()
            if (r0 == 0) goto L_0x011a
            r24 = 0
            r2 = r1
            r1 = r30
            r26 = r2
            r25 = r22
            r2 = r20
            r27 = r3
            r3 = r11
            r28 = r4
            r4 = r21
            r22 = r5
            r5 = r23
            r29 = r6
            r6 = r24
            boolean r0 = r0.onMeasureChild(r1, r2, r3, r4, r5, r6)
            if (r0 != 0) goto L_0x0133
            goto L_0x0126
        L_0x011a:
            r26 = r1
            r27 = r3
            r28 = r4
            r29 = r6
            r25 = r22
            r22 = r5
        L_0x0126:
            r5 = 0
            r0 = r30
            r1 = r20
            r2 = r11
            r3 = r21
            r4 = r23
            r0.a((android.view.View) r1, (int) r2, (int) r3, (int) r4, (int) r5)
        L_0x0133:
            int r0 = r20.getMeasuredWidth()
            int r0 = r17 + r0
            r1 = r26
            int r2 = r1.leftMargin
            int r0 = r0 + r2
            int r2 = r1.rightMargin
            int r0 = r0 + r2
            r2 = r28
            int r0 = java.lang.Math.max(r2, r0)
            int r2 = r20.getMeasuredHeight()
            int r2 = r18 + r2
            int r3 = r1.topMargin
            int r2 = r2 + r3
            int r1 = r1.bottomMargin
            int r2 = r2 + r1
            r1 = r25
            int r1 = java.lang.Math.max(r1, r2)
            int r2 = r20.getMeasuredState()
            r11 = r27
            int r2 = android.view.View.combineMeasuredStates(r11, r2)
            r4 = r0
            r3 = r2
            r2 = r1
        L_0x0166:
            int r5 = r22 + 1
            r6 = r29
            goto L_0x0057
        L_0x016c:
            r1 = r2
            r11 = r3
            r2 = r4
            r0 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            r0 = r0 & r11
            r3 = r31
            int r0 = android.view.View.resolveSizeAndState(r2, r3, r0)
            int r2 = r11 << 16
            r3 = r32
            int r1 = android.view.View.resolveSizeAndState(r1, r3, r2)
            r7.setMeasuredDimension(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.a(0)) {
                    b d2 = eVar.d();
                    if (d2 != null) {
                        z2 |= d2.onNestedFling(this, childAt, view, f2, f3, z);
                    }
                }
            }
        }
        if (z2) {
            b(1);
        }
        return z2;
    }

    public boolean onNestedPreFling(View view, float f2, float f3) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.a(0)) {
                    b d2 = eVar.d();
                    if (d2 != null) {
                        z |= d2.onNestedPreFling(this, childAt, view, f2, f3);
                    }
                }
            }
        }
        return z;
    }

    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        a(view, i2, i3, iArr, 0);
    }

    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        a(view, i2, i3, i4, i5, 0);
    }

    public void onNestedScrollAccepted(View view, View view2, int i2) {
        b(view, view2, i2, 0);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        SparseArray<Parcelable> sparseArray = savedState.f565c;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            b d2 = d(childAt).d();
            if (!(id == -1 || d2 == null)) {
                Parcelable parcelable2 = sparseArray.get(id);
                if (parcelable2 != null) {
                    d2.onRestoreInstanceState(this, childAt, parcelable2);
                }
            }
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            b d2 = ((e) childAt.getLayoutParams()).d();
            if (!(id == -1 || d2 == null)) {
                Parcelable onSaveInstanceState = d2.onSaveInstanceState(this, childAt);
                if (onSaveInstanceState != null) {
                    sparseArray.append(id, onSaveInstanceState);
                }
            }
        }
        savedState.f565c = sparseArray;
        return savedState;
    }

    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return a(view, view2, i2, 0);
    }

    public void onStopNestedScroll(View view) {
        a(view, 0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0012, code lost:
        if (r3 != false) goto L_0x0016;
     */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x004c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.o
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L_0x0015
            boolean r3 = r0.a((android.view.MotionEvent) r1, (int) r4)
            if (r3 == 0) goto L_0x002b
            goto L_0x0016
        L_0x0015:
            r3 = 0
        L_0x0016:
            android.view.View r6 = r0.o
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$e r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$b r6 = r6.d()
            if (r6 == 0) goto L_0x002b
            android.view.View r7 = r0.o
            boolean r6 = r6.onTouchEvent(r0, r7, r1)
            goto L_0x002c
        L_0x002b:
            r6 = 0
        L_0x002c:
            android.view.View r7 = r0.o
            r8 = 0
            if (r7 != 0) goto L_0x0037
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L_0x004a
        L_0x0037:
            if (r3 == 0) goto L_0x004a
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L_0x004a:
            if (r8 == 0) goto L_0x004f
            r8.recycle()
        L_0x004f:
            if (r2 == r4) goto L_0x0054
            r1 = 3
            if (r2 != r1) goto L_0x0057
        L_0x0054:
            r0.a((boolean) r5)
        L_0x0057:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        b d2 = ((e) view.getLayoutParams()).d();
        if (d2 == null || !d2.onRequestChildRectangleOnScreen(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.f564l) {
            a(false);
            this.f564l = true;
        }
    }

    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        f();
    }

    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.v = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.u;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.u = drawable3;
            Drawable drawable4 = this.u;
            if (drawable4 != null) {
                if (drawable4.isStateful()) {
                    this.u.setState(getDrawableState());
                }
                b.i.c.a.a.a(this.u, z.m(this));
                this.u.setVisible(getVisibility() == 0, false);
                this.u.setCallback(this);
            }
            z.F(this);
        }
    }

    public void setStatusBarBackgroundColor(int i2) {
        setStatusBarBackground(new ColorDrawable(i2));
    }

    public void setStatusBarBackgroundResource(int i2) {
        setStatusBarBackground(i2 != 0 ? b.i.b.a.c(getContext(), i2) : null);
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.u;
        if (drawable != null && drawable.isVisible() != z) {
            this.u.setVisible(z, false);
        }
    }

    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.u;
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0251a.coordinatorLayoutStyle);
    }

    public e generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArray;
        this.f558f = new ArrayList();
        this.f559g = new C0254c<>();
        this.f560h = new ArrayList();
        this.f561i = new ArrayList();
        this.f562j = new int[2];
        this.x = new p(this);
        if (i2 == 0) {
            typedArray = context.obtainStyledAttributes(attributeSet, C0257c.CoordinatorLayout, 0, C0256b.Widget_Support_CoordinatorLayout);
        } else {
            typedArray = context.obtainStyledAttributes(attributeSet, C0257c.CoordinatorLayout, i2, 0);
        }
        int resourceId = typedArray.getResourceId(C0257c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.n = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.n.length;
            for (int i3 = 0; i3 < length; i3++) {
                int[] iArr = this.n;
                iArr[i3] = (int) (((float) iArr[i3]) * f2);
            }
        }
        this.u = typedArray.getDrawable(C0257c.CoordinatorLayout_statusBarBackground);
        typedArray.recycle();
        f();
        super.setOnHierarchyChangeListener(new d());
    }

    public static void a(Rect rect) {
        rect.setEmpty();
        f557e.a(rect);
    }

    public List<View> c(View view) {
        List c2 = this.f559g.c(view);
        this.f561i.clear();
        if (c2 != null) {
            this.f561i.addAll(c2);
        }
        return this.f561i;
    }

    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof e) {
            return new e((e) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new e((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new e(layoutParams);
    }

    public final void a(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            b d2 = ((e) childAt.getLayoutParams()).d();
            if (d2 != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    d2.onInterceptTouchEvent(this, childAt, obtain);
                } else {
                    d2.onTouchEvent(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            ((e) getChildAt(i3).getLayoutParams()).h();
        }
        this.o = null;
        this.f564l = false;
    }

    public final boolean e(View view) {
        return this.f559g.e(view);
    }

    public final void f() {
        if (Build.VERSION.SDK_INT >= 21) {
            if (z.j(this)) {
                if (this.w == null) {
                    this.w = new C0252a(this);
                }
                z.a((View) this, this.w);
                setSystemUiVisibility(1280);
            } else {
                z.a((View) this, (q) null);
            }
        }
    }

    public void e() {
        if (this.m && this.q != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.q);
        }
        this.r = false;
    }

    public void b(View view, Rect rect) {
        rect.set(((e) view.getLayoutParams()).f());
    }

    public void c() {
        int childCount = getChildCount();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            } else if (e(getChildAt(i2))) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (z == this.r) {
            return;
        }
        if (z) {
            b();
        } else {
            e();
        }
    }

    public final void b(View view, int i2, int i3) {
        e eVar = (e) view.getLayoutParams();
        int a2 = C0260c.a(e(eVar.f569c), i3);
        int i4 = a2 & 7;
        int i5 = a2 & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i3 == 1) {
            i2 = width - i2;
        }
        int a3 = a(i2) - measuredWidth;
        int i6 = 0;
        if (i4 == 1) {
            a3 += measuredWidth / 2;
        } else if (i4 == 5) {
            a3 += measuredWidth;
        }
        if (i5 == 16) {
            i6 = 0 + (measuredHeight / 2);
        } else if (i5 == 80) {
            i6 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + eVar.leftMargin, Math.min(a3, ((width - getPaddingRight()) - measuredWidth) - eVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + eVar.topMargin, Math.min(i6, ((height - getPaddingBottom()) - measuredHeight) - eVar.bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    public void c(View view, int i2) {
        View view2 = view;
        e eVar = (e) view.getLayoutParams();
        if (eVar.f577k != null) {
            Rect a2 = a();
            Rect a3 = a();
            Rect a4 = a();
            a(eVar.f577k, a2);
            boolean z = false;
            a(view2, false, a3);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int i3 = measuredHeight;
            a(view, i2, a2, a4, eVar, measuredWidth, measuredHeight);
            if (!(a4.left == a3.left && a4.top == a3.top)) {
                z = true;
            }
            a(eVar, a4, measuredWidth, i3);
            int i4 = a4.left - a3.left;
            int i5 = a4.top - a3.top;
            if (i4 != 0) {
                z.d(view2, i4);
            }
            if (i5 != 0) {
                z.e(view2, i5);
            }
            if (z) {
                b d2 = eVar.d();
                if (d2 != null) {
                    d2.onDependentViewChanged(this, view2, eVar.f577k);
                }
            }
            a(a2);
            a(a3);
            a(a4);
        }
    }

    public final void d() {
        this.f558f.clear();
        this.f559g.a();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            e d2 = d(childAt);
            d2.a(this, childAt);
            this.f559g.a(childAt);
            for (int i3 = 0; i3 < childCount; i3++) {
                if (i3 != i2) {
                    View childAt2 = getChildAt(i3);
                    if (d2.a(this, childAt, childAt2)) {
                        if (!this.f559g.b(childAt2)) {
                            this.f559g.a(childAt2);
                        }
                        this.f559g.a(childAt2, childAt);
                    }
                }
            }
        }
        this.f558f.addAll(this.f559g.c());
        Collections.reverse(this.f558f);
    }

    public final void a(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Comparator<View> comparator = f556d;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    public final boolean a(MotionEvent motionEvent, int i2) {
        MotionEvent motionEvent2 = motionEvent;
        int i3 = i2;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f560h;
        a(list);
        int size = list.size();
        MotionEvent motionEvent3 = null;
        boolean z = false;
        boolean z2 = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            e eVar = (e) view.getLayoutParams();
            b d2 = eVar.d();
            boolean z3 = true;
            if ((!z && !z2) || actionMasked == 0) {
                if (!z && d2 != null) {
                    if (i3 == 0) {
                        z = d2.onInterceptTouchEvent(this, view, motionEvent2);
                    } else if (i3 == 1) {
                        z = d2.onTouchEvent(this, view, motionEvent2);
                    }
                    if (z) {
                        this.o = view;
                    }
                }
                boolean b2 = eVar.b();
                boolean b3 = eVar.b(this, view);
                if (!b3 || b2) {
                    z3 = false;
                }
                if (b3 && !z3) {
                    break;
                }
                z2 = z3;
            } else if (d2 != null) {
                if (motionEvent3 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent3 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i3 == 0) {
                    d2.onInterceptTouchEvent(this, view, motionEvent3);
                } else if (i3 == 1) {
                    d2.onTouchEvent(this, view, motionEvent3);
                }
            }
        }
        list.clear();
        return z;
    }

    public final void b(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        Rect a2 = a();
        a2.set(getPaddingLeft() + eVar.leftMargin, getPaddingTop() + eVar.topMargin, (getWidth() - getPaddingRight()) - eVar.rightMargin, (getHeight() - getPaddingBottom()) - eVar.bottomMargin);
        if (this.s != null && z.j(this) && !z.j(view)) {
            a2.left += this.s.c();
            a2.top += this.s.e();
            a2.right -= this.s.d();
            a2.bottom -= this.s.b();
        }
        Rect a3 = a();
        C0260c.a(d(eVar.f569c), view.getMeasuredWidth(), view.getMeasuredHeight(), a2, a3, i2);
        view.layout(a3.left, a3.top, a3.right, a3.bottom);
        a(a2);
        a(a3);
    }

    public void d(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        if (!eVar.a()) {
            View view2 = eVar.f577k;
            if (view2 != null) {
                a(view, view2, i2);
                return;
            }
            int i3 = eVar.f571e;
            if (i3 >= 0) {
                b(view, i3, i2);
            } else {
                b(view, i2);
            }
        } else {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
    }

    public final int a(int i2) {
        int[] iArr = this.n;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i2);
            return 0;
        } else if (i2 >= 0 && i2 < iArr.length) {
            return iArr[i2];
        } else {
            Log.e("CoordinatorLayout", "Keyline index " + i2 + " out of range for " + this);
            return 0;
        }
    }

    public static b a(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(f553a)) {
            str = f553a + '.' + str;
        }
        try {
            Map map = f555c.get();
            if (map == null) {
                map = new HashMap();
                f555c.set(map);
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = context.getClassLoader().loadClass(str).getConstructor(f554b);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (b) constructor.newInstance(new Object[]{context, attributeSet});
        } catch (Exception e2) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e2);
        }
    }

    public final void b(int i2) {
        boolean z;
        int i3 = i2;
        int m2 = z.m(this);
        int size = this.f558f.size();
        Rect a2 = a();
        Rect a3 = a();
        Rect a4 = a();
        for (int i4 = 0; i4 < size; i4++) {
            View view = this.f558f.get(i4);
            e eVar = (e) view.getLayoutParams();
            if (i3 != 0 || view.getVisibility() != 8) {
                for (int i5 = 0; i5 < i4; i5++) {
                    if (eVar.f578l == this.f558f.get(i5)) {
                        c(view, m2);
                    }
                }
                a(view, true, a3);
                if (eVar.f573g != 0 && !a3.isEmpty()) {
                    int a5 = C0260c.a(eVar.f573g, m2);
                    int i6 = a5 & 112;
                    if (i6 == 48) {
                        a2.top = Math.max(a2.top, a3.bottom);
                    } else if (i6 == 80) {
                        a2.bottom = Math.max(a2.bottom, getHeight() - a3.top);
                    }
                    int i7 = a5 & 7;
                    if (i7 == 3) {
                        a2.left = Math.max(a2.left, a3.right);
                    } else if (i7 == 5) {
                        a2.right = Math.max(a2.right, getWidth() - a3.left);
                    }
                }
                if (eVar.f574h != 0 && view.getVisibility() == 0) {
                    a(view, a2, m2);
                }
                if (i3 != 2) {
                    b(view, a4);
                    if (!a4.equals(a3)) {
                        c(view, a3);
                    }
                }
                for (int i8 = i4 + 1; i8 < size; i8++) {
                    View view2 = this.f558f.get(i8);
                    e eVar2 = (e) view2.getLayoutParams();
                    b d2 = eVar2.d();
                    if (d2 != null && d2.layoutDependsOn(this, view2, view)) {
                        if (i3 != 0 || !eVar2.e()) {
                            if (i3 != 2) {
                                z = d2.onDependentViewChanged(this, view2, view);
                            } else {
                                d2.onDependentViewRemoved(this, view2, view);
                                z = true;
                            }
                            if (i3 == 1) {
                                eVar2.a(z);
                            }
                        } else {
                            eVar2.g();
                        }
                    }
                }
            }
        }
        a(a2);
        a(a3);
        a(a4);
    }

    public void a(View view, Rect rect) {
        C0255d.a((ViewGroup) this, view, rect);
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    public final M a(M m2) {
        if (m2.f()) {
            return m2;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (z.j(childAt)) {
                b d2 = ((e) childAt.getLayoutParams()).d();
                if (d2 != null) {
                    m2 = d2.onApplyWindowInsets(this, childAt, m2);
                    if (m2.f()) {
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return m2;
    }

    public void a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
            return;
        }
        if (z) {
            a(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public final void a(View view, int i2, Rect rect, Rect rect2, e eVar, int i3, int i4) {
        int i5;
        int i6;
        int a2 = C0260c.a(c(eVar.f569c), i2);
        int a3 = C0260c.a(d(eVar.f570d), i2);
        int i7 = a2 & 7;
        int i8 = a2 & 112;
        int i9 = a3 & 7;
        int i10 = a3 & 112;
        if (i9 == 1) {
            i5 = rect.left + (rect.width() / 2);
        } else if (i9 != 5) {
            i5 = rect.left;
        } else {
            i5 = rect.right;
        }
        if (i10 == 16) {
            i6 = rect.top + (rect.height() / 2);
        } else if (i10 != 80) {
            i6 = rect.top;
        } else {
            i6 = rect.bottom;
        }
        if (i7 == 1) {
            i5 -= i3 / 2;
        } else if (i7 != 5) {
            i5 -= i3;
        }
        if (i8 == 16) {
            i6 -= i4 / 2;
        } else if (i8 != 80) {
            i6 -= i4;
        }
        rect2.set(i5, i6, i3 + i5, i4 + i6);
    }

    public List<View> b(View view) {
        List<View> d2 = this.f559g.d(view);
        this.f561i.clear();
        if (d2 != null) {
            this.f561i.addAll(d2);
        }
        return this.f561i;
    }

    public void b() {
        if (this.m) {
            if (this.q == null) {
                this.q = new f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.q);
        }
        this.r = true;
    }

    public final void a(e eVar, Rect rect, int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + eVar.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - eVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + eVar.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i3) - eVar.bottomMargin));
        rect.set(max, max2, i2 + max, i3 + max2);
    }

    public void b(View view, View view2, int i2, int i3) {
        this.x.a(view, view2, i2, i3);
        this.p = view2;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            e eVar = (e) childAt.getLayoutParams();
            if (eVar.a(i3)) {
                b d2 = eVar.d();
                if (d2 != null) {
                    d2.onNestedScrollAccepted(this, childAt, view, view2, i2, i3);
                }
            }
        }
    }

    public void a(View view, int i2, Rect rect, Rect rect2) {
        e eVar = (e) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        a(view, i2, rect, rect2, eVar, measuredWidth, measuredHeight);
        a(eVar, rect2, measuredWidth, measuredHeight);
    }

    public final void a(View view, View view2, int i2) {
        Rect a2 = a();
        Rect a3 = a();
        try {
            a(view2, a2);
            a(view, i2, a2, a3);
            view.layout(a3.left, a3.top, a3.right, a3.bottom);
        } finally {
            a(a2);
            a(a3);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a7  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00bf  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00c7  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00de  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(android.view.View r9, android.graphics.Rect r10, int r11) {
        /*
            r8 = this;
            boolean r0 = b.i.k.z.B(r9)
            if (r0 != 0) goto L_0x0007
            return
        L_0x0007:
            int r0 = r9.getWidth()
            if (r0 <= 0) goto L_0x00fc
            int r0 = r9.getHeight()
            if (r0 > 0) goto L_0x0015
            goto L_0x00fc
        L_0x0015:
            android.view.ViewGroup$LayoutParams r0 = r9.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$e r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$b r1 = r0.d()
            android.graphics.Rect r2 = a()
            android.graphics.Rect r3 = a()
            int r4 = r9.getLeft()
            int r5 = r9.getTop()
            int r6 = r9.getRight()
            int r7 = r9.getBottom()
            r3.set(r4, r5, r6, r7)
            if (r1 == 0) goto L_0x0070
            boolean r1 = r1.getInsetDodgeRect(r8, r9, r2)
            if (r1 == 0) goto L_0x0070
            boolean r1 = r3.contains(r2)
            if (r1 == 0) goto L_0x0049
            goto L_0x0073
        L_0x0049:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "Rect should be within the child's bounds. Rect:"
            r10.append(r11)
            java.lang.String r11 = r2.toShortString()
            r10.append(r11)
            java.lang.String r11 = " | Bounds:"
            r10.append(r11)
            java.lang.String r11 = r3.toShortString()
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L_0x0070:
            r2.set(r3)
        L_0x0073:
            a((android.graphics.Rect) r3)
            boolean r1 = r2.isEmpty()
            if (r1 == 0) goto L_0x0080
            a((android.graphics.Rect) r2)
            return
        L_0x0080:
            int r1 = r0.f574h
            int r11 = b.i.k.C0260c.a(r1, r11)
            r1 = r11 & 48
            r3 = 48
            r4 = 1
            r5 = 0
            if (r1 != r3) goto L_0x00a0
            int r1 = r2.top
            int r3 = r0.topMargin
            int r1 = r1 - r3
            int r3 = r0.f576j
            int r1 = r1 - r3
            int r3 = r10.top
            if (r1 >= r3) goto L_0x00a0
            int r3 = r3 - r1
            r8.f(r9, r3)
            r1 = 1
            goto L_0x00a1
        L_0x00a0:
            r1 = 0
        L_0x00a1:
            r3 = r11 & 80
            r6 = 80
            if (r3 != r6) goto L_0x00bd
            int r3 = r8.getHeight()
            int r6 = r2.bottom
            int r3 = r3 - r6
            int r6 = r0.bottomMargin
            int r3 = r3 - r6
            int r6 = r0.f576j
            int r3 = r3 + r6
            int r6 = r10.bottom
            if (r3 >= r6) goto L_0x00bd
            int r3 = r3 - r6
            r8.f(r9, r3)
            r1 = 1
        L_0x00bd:
            if (r1 != 0) goto L_0x00c2
            r8.f(r9, r5)
        L_0x00c2:
            r1 = r11 & 3
            r3 = 3
            if (r1 != r3) goto L_0x00d9
            int r1 = r2.left
            int r3 = r0.leftMargin
            int r1 = r1 - r3
            int r3 = r0.f575i
            int r1 = r1 - r3
            int r3 = r10.left
            if (r1 >= r3) goto L_0x00d9
            int r3 = r3 - r1
            r8.e(r9, r3)
            r1 = 1
            goto L_0x00da
        L_0x00d9:
            r1 = 0
        L_0x00da:
            r3 = 5
            r11 = r11 & r3
            if (r11 != r3) goto L_0x00f4
            int r11 = r8.getWidth()
            int r3 = r2.right
            int r11 = r11 - r3
            int r3 = r0.rightMargin
            int r11 = r11 - r3
            int r0 = r0.f575i
            int r11 = r11 + r0
            int r10 = r10.right
            if (r11 >= r10) goto L_0x00f4
            int r11 = r11 - r10
            r8.e(r9, r11)
            r1 = 1
        L_0x00f4:
            if (r1 != 0) goto L_0x00f9
            r8.e(r9, r5)
        L_0x00f9:
            a((android.graphics.Rect) r2)
        L_0x00fc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.a(android.view.View, android.graphics.Rect, int):void");
    }

    public void a(View view) {
        List c2 = this.f559g.c(view);
        if (c2 != null && !c2.isEmpty()) {
            for (int i2 = 0; i2 < c2.size(); i2++) {
                View view2 = (View) c2.get(i2);
                b d2 = ((e) view2.getLayoutParams()).d();
                if (d2 != null) {
                    d2.onDependentViewChanged(this, view2, view);
                }
            }
        }
    }

    public boolean a(View view, int i2, int i3) {
        Rect a2 = a();
        a(view, a2);
        try {
            return a2.contains(i2, i3);
        } finally {
            a(a2);
        }
    }

    public boolean a(View view, View view2, int i2, int i3) {
        int i4 = i3;
        int childCount = getChildCount();
        boolean z = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                b d2 = eVar.d();
                if (d2 != null) {
                    boolean onStartNestedScroll = d2.onStartNestedScroll(this, childAt, view, view2, i2, i3);
                    eVar.a(i4, onStartNestedScroll);
                    z |= onStartNestedScroll;
                } else {
                    eVar.a(i4, false);
                }
            }
        }
        return z;
    }

    public void a(View view, int i2) {
        this.x.a(view, i2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            e eVar = (e) childAt.getLayoutParams();
            if (eVar.a(i2)) {
                b d2 = eVar.d();
                if (d2 != null) {
                    d2.onStopNestedScroll(this, childAt, view, i2);
                }
                eVar.b(i2);
                eVar.g();
            }
        }
        this.p = null;
    }

    public void a(View view, int i2, int i3, int i4, int i5, int i6) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                int i8 = i6;
            } else {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.a(i6)) {
                    b d2 = eVar.d();
                    if (d2 != null) {
                        d2.onNestedScroll(this, childAt, view, i2, i3, i4, i5, i6);
                        z = true;
                    }
                }
            }
        }
        if (z) {
            b(1);
        }
    }

    public void a(View view, int i2, int i3, int[] iArr, int i4) {
        int i5;
        int i6;
        int childCount = getChildCount();
        boolean z = false;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                int i10 = i4;
            } else {
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.a(i4)) {
                    b d2 = eVar.d();
                    if (d2 != null) {
                        int[] iArr2 = this.f562j;
                        iArr2[1] = 0;
                        iArr2[0] = 0;
                        d2.onNestedPreScroll(this, childAt, view, i2, i3, iArr2, i4);
                        if (i2 > 0) {
                            i5 = Math.max(i7, this.f562j[0]);
                        } else {
                            i5 = Math.min(i7, this.f562j[0]);
                        }
                        if (i3 > 0) {
                            i6 = Math.max(i8, this.f562j[1]);
                        } else {
                            i6 = Math.min(i8, this.f562j[1]);
                        }
                        i7 = i5;
                        i8 = i6;
                        z = true;
                    }
                }
            }
        }
        iArr[0] = i7;
        iArr[1] = i8;
        if (z) {
            b(1);
        }
    }
}
