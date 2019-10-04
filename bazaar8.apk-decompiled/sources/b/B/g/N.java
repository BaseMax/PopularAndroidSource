package b.b.g;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import b.b.f.a.w;
import b.b.j;
import b.i.k.z;
import b.i.l.i;
import java.lang.reflect.Method;

/* compiled from: ListPopupWindow */
public class N implements w {

    /* renamed from: a  reason: collision with root package name */
    public static Method f2082a;

    /* renamed from: b  reason: collision with root package name */
    public static Method f2083b;

    /* renamed from: c  reason: collision with root package name */
    public static Method f2084c;
    public final e A;
    public final d B;
    public final c C;
    public final a D;
    public Runnable E;
    public final Handler F;
    public final Rect G;
    public Rect H;
    public boolean I;
    public PopupWindow J;

    /* renamed from: d  reason: collision with root package name */
    public Context f2085d;

    /* renamed from: e  reason: collision with root package name */
    public ListAdapter f2086e;

    /* renamed from: f  reason: collision with root package name */
    public I f2087f;

    /* renamed from: g  reason: collision with root package name */
    public int f2088g;

    /* renamed from: h  reason: collision with root package name */
    public int f2089h;

    /* renamed from: i  reason: collision with root package name */
    public int f2090i;

    /* renamed from: j  reason: collision with root package name */
    public int f2091j;

    /* renamed from: k  reason: collision with root package name */
    public int f2092k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f2093l;
    public boolean m;
    public boolean n;
    public boolean o;
    public int p;
    public boolean q;
    public boolean r;
    public int s;
    public View t;
    public int u;
    public DataSetObserver v;
    public View w;
    public Drawable x;
    public AdapterView.OnItemClickListener y;
    public AdapterView.OnItemSelectedListener z;

    /* compiled from: ListPopupWindow */
    private class a implements Runnable {
        public a() {
        }

        public void run() {
            N.this.i();
        }
    }

    /* compiled from: ListPopupWindow */
    private class b extends DataSetObserver {
        public b() {
        }

        public void onChanged() {
            if (N.this.c()) {
                N.this.d();
            }
        }

        public void onInvalidated() {
            N.this.dismiss();
        }
    }

    /* compiled from: ListPopupWindow */
    private class c implements AbsListView.OnScrollListener {
        public c() {
        }

        public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
        }

        public void onScrollStateChanged(AbsListView absListView, int i2) {
            if (i2 == 1 && !N.this.l() && N.this.J.getContentView() != null) {
                N n = N.this;
                n.F.removeCallbacks(n.A);
                N.this.A.run();
            }
        }
    }

    /* compiled from: ListPopupWindow */
    private class d implements View.OnTouchListener {
        public d() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0) {
                PopupWindow popupWindow = N.this.J;
                if (popupWindow != null && popupWindow.isShowing() && x >= 0 && x < N.this.J.getWidth() && y >= 0 && y < N.this.J.getHeight()) {
                    N n = N.this;
                    n.F.postDelayed(n.A, 250);
                    return false;
                }
            }
            if (action == 1) {
                N n2 = N.this;
                n2.F.removeCallbacks(n2.A);
            }
            return false;
        }
    }

    /* compiled from: ListPopupWindow */
    private class e implements Runnable {
        public e() {
        }

        public void run() {
            I i2 = N.this.f2087f;
            if (i2 != null && z.A(i2) && N.this.f2087f.getCount() > N.this.f2087f.getChildCount()) {
                int childCount = N.this.f2087f.getChildCount();
                N n = N.this;
                if (childCount <= n.s) {
                    n.J.setInputMethodMode(2);
                    N.this.d();
                }
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            Class<PopupWindow> cls = PopupWindow.class;
            try {
                f2082a = cls.getDeclaredMethod("setClipToScreenEnabled", new Class[]{Boolean.TYPE});
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                f2084c = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", new Class[]{Rect.class});
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f2083b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", new Class[]{View.class, Integer.TYPE, Boolean.TYPE});
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public N(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public void a(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.v;
        if (dataSetObserver == null) {
            this.v = new b();
        } else {
            ListAdapter listAdapter2 = this.f2086e;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f2086e = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.v);
        }
        I i2 = this.f2087f;
        if (i2 != null) {
            i2.setAdapter(this.f2086e);
        }
    }

    public void b(int i2) {
        this.f2091j = i2;
        this.f2093l = true;
    }

    public boolean c() {
        return this.J.isShowing();
    }

    public void d(int i2) {
        this.J.setAnimationStyle(i2);
    }

    public void dismiss() {
        this.J.dismiss();
        n();
        this.J.setContentView(null);
        this.f2087f = null;
        this.F.removeCallbacks(this.A);
    }

    public Drawable e() {
        return this.J.getBackground();
    }

    public void f(int i2) {
        this.p = i2;
    }

    public int g() {
        if (!this.f2093l) {
            return 0;
        }
        return this.f2091j;
    }

    public void h(int i2) {
        this.u = i2;
    }

    public void i(int i2) {
        I i3 = this.f2087f;
        if (c() && i3 != null) {
            i3.setListSelectionHidden(false);
            i3.setSelection(i2);
            if (i3.getChoiceMode() != 0) {
                i3.setItemChecked(i2, true);
            }
        }
    }

    public View j() {
        return this.w;
    }

    public int k() {
        return this.f2089h;
    }

    public boolean l() {
        return this.J.getInputMethodMode() == 2;
    }

    public boolean m() {
        return this.I;
    }

    public final void n() {
        View view = this.t;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.t);
            }
        }
    }

    public N(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.f2088g = -2;
        this.f2089h = -2;
        this.f2092k = 1002;
        this.m = true;
        this.p = 0;
        this.q = false;
        this.r = false;
        this.s = Integer.MAX_VALUE;
        this.u = 0;
        this.A = new e();
        this.B = new d();
        this.C = new c();
        this.D = new a();
        this.G = new Rect();
        this.f2085d = context;
        this.F = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.ListPopupWindow, i2, i3);
        this.f2090i = obtainStyledAttributes.getDimensionPixelOffset(j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        this.f2091j = obtainStyledAttributes.getDimensionPixelOffset(j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (this.f2091j != 0) {
            this.f2093l = true;
        }
        obtainStyledAttributes.recycle();
        this.J = new C0226q(context, attributeSet, i2, i3);
        this.J.setInputMethodMode(1);
    }

    public final void c(boolean z2) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f2082a;
            if (method != null) {
                try {
                    method.invoke(this.J, new Object[]{Boolean.valueOf(z2)});
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.J.setIsClippedToScreen(z2);
        }
    }

    public void d() {
        int h2 = h();
        boolean l2 = l();
        i.a(this.J, this.f2092k);
        boolean z2 = true;
        if (!this.J.isShowing()) {
            int i2 = this.f2089h;
            if (i2 == -1) {
                i2 = -1;
            } else if (i2 == -2) {
                i2 = j().getWidth();
            }
            int i3 = this.f2088g;
            if (i3 == -1) {
                h2 = -1;
            } else if (i3 != -2) {
                h2 = i3;
            }
            this.J.setWidth(i2);
            this.J.setHeight(h2);
            c(true);
            this.J.setOutsideTouchable(!this.r && !this.q);
            this.J.setTouchInterceptor(this.B);
            if (this.o) {
                i.a(this.J, this.n);
            }
            if (Build.VERSION.SDK_INT <= 28) {
                Method method = f2084c;
                if (method != null) {
                    try {
                        method.invoke(this.J, new Object[]{this.H});
                    } catch (Exception e2) {
                        Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                    }
                }
            } else {
                this.J.setEpicenterBounds(this.H);
            }
            i.a(this.J, j(), this.f2090i, this.f2091j, this.p);
            this.f2087f.setSelection(-1);
            if (!this.I || this.f2087f.isInTouchMode()) {
                i();
            }
            if (!this.I) {
                this.F.post(this.D);
            }
        } else if (z.A(j())) {
            int i4 = this.f2089h;
            if (i4 == -1) {
                i4 = -1;
            } else if (i4 == -2) {
                i4 = j().getWidth();
            }
            int i5 = this.f2088g;
            if (i5 == -1) {
                if (!l2) {
                    h2 = -1;
                }
                if (l2) {
                    this.J.setWidth(this.f2089h == -1 ? -1 : 0);
                    this.J.setHeight(0);
                } else {
                    this.J.setWidth(this.f2089h == -1 ? -1 : 0);
                    this.J.setHeight(-1);
                }
            } else if (i5 != -2) {
                h2 = i5;
            }
            PopupWindow popupWindow = this.J;
            if (this.r || this.q) {
                z2 = false;
            }
            popupWindow.setOutsideTouchable(z2);
            this.J.update(j(), this.f2090i, this.f2091j, i4 < 0 ? -1 : i4, h2 < 0 ? -1 : h2);
        }
    }

    public void e(int i2) {
        Drawable background = this.J.getBackground();
        if (background != null) {
            background.getPadding(this.G);
            Rect rect = this.G;
            this.f2089h = rect.left + rect.right + i2;
            return;
        }
        j(i2);
    }

    public ListView f() {
        return this.f2087f;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v24, resolved type: b.b.g.I} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v25, resolved type: b.b.g.I} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v3, resolved type: android.widget.LinearLayout} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v30, resolved type: b.b.g.I} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int h() {
        /*
            r12 = this;
            b.b.g.I r0 = r12.f2087f
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = -1
            r3 = 1
            r4 = 0
            if (r0 != 0) goto L_0x00c1
            android.content.Context r0 = r12.f2085d
            b.b.g.L r5 = new b.b.g.L
            r5.<init>(r12)
            r12.E = r5
            boolean r5 = r12.I
            r5 = r5 ^ r3
            b.b.g.I r5 = r12.a(r0, r5)
            r12.f2087f = r5
            android.graphics.drawable.Drawable r5 = r12.x
            if (r5 == 0) goto L_0x0024
            b.b.g.I r6 = r12.f2087f
            r6.setSelector(r5)
        L_0x0024:
            b.b.g.I r5 = r12.f2087f
            android.widget.ListAdapter r6 = r12.f2086e
            r5.setAdapter(r6)
            b.b.g.I r5 = r12.f2087f
            android.widget.AdapterView$OnItemClickListener r6 = r12.y
            r5.setOnItemClickListener(r6)
            b.b.g.I r5 = r12.f2087f
            r5.setFocusable(r3)
            b.b.g.I r5 = r12.f2087f
            r5.setFocusableInTouchMode(r3)
            b.b.g.I r5 = r12.f2087f
            b.b.g.M r6 = new b.b.g.M
            r6.<init>(r12)
            r5.setOnItemSelectedListener(r6)
            b.b.g.I r5 = r12.f2087f
            b.b.g.N$c r6 = r12.C
            r5.setOnScrollListener(r6)
            android.widget.AdapterView$OnItemSelectedListener r5 = r12.z
            if (r5 == 0) goto L_0x0056
            b.b.g.I r6 = r12.f2087f
            r6.setOnItemSelectedListener(r5)
        L_0x0056:
            b.b.g.I r5 = r12.f2087f
            android.view.View r6 = r12.t
            if (r6 == 0) goto L_0x00ba
            android.widget.LinearLayout r7 = new android.widget.LinearLayout
            r7.<init>(r0)
            r7.setOrientation(r3)
            android.widget.LinearLayout$LayoutParams r0 = new android.widget.LinearLayout$LayoutParams
            r8 = 1065353216(0x3f800000, float:1.0)
            r0.<init>(r2, r4, r8)
            int r8 = r12.u
            if (r8 == 0) goto L_0x0091
            if (r8 == r3) goto L_0x008a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "Invalid hint position "
            r0.append(r5)
            int r5 = r12.u
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            java.lang.String r5 = "ListPopupWindow"
            android.util.Log.e(r5, r0)
            goto L_0x0097
        L_0x008a:
            r7.addView(r5, r0)
            r7.addView(r6)
            goto L_0x0097
        L_0x0091:
            r7.addView(r6)
            r7.addView(r5, r0)
        L_0x0097:
            int r0 = r12.f2089h
            if (r0 < 0) goto L_0x009e
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L_0x00a0
        L_0x009e:
            r0 = 0
            r5 = 0
        L_0x00a0:
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r5)
            r6.measure(r0, r4)
            android.view.ViewGroup$LayoutParams r0 = r6.getLayoutParams()
            android.widget.LinearLayout$LayoutParams r0 = (android.widget.LinearLayout.LayoutParams) r0
            int r5 = r6.getMeasuredHeight()
            int r6 = r0.topMargin
            int r5 = r5 + r6
            int r0 = r0.bottomMargin
            int r5 = r5 + r0
            r0 = r5
            r5 = r7
            goto L_0x00bb
        L_0x00ba:
            r0 = 0
        L_0x00bb:
            android.widget.PopupWindow r6 = r12.J
            r6.setContentView(r5)
            goto L_0x00df
        L_0x00c1:
            android.widget.PopupWindow r0 = r12.J
            android.view.View r0 = r0.getContentView()
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            android.view.View r0 = r12.t
            if (r0 == 0) goto L_0x00de
            android.view.ViewGroup$LayoutParams r5 = r0.getLayoutParams()
            android.widget.LinearLayout$LayoutParams r5 = (android.widget.LinearLayout.LayoutParams) r5
            int r0 = r0.getMeasuredHeight()
            int r6 = r5.topMargin
            int r0 = r0 + r6
            int r5 = r5.bottomMargin
            int r0 = r0 + r5
            goto L_0x00df
        L_0x00de:
            r0 = 0
        L_0x00df:
            android.widget.PopupWindow r5 = r12.J
            android.graphics.drawable.Drawable r5 = r5.getBackground()
            if (r5 == 0) goto L_0x00fb
            android.graphics.Rect r6 = r12.G
            r5.getPadding(r6)
            android.graphics.Rect r5 = r12.G
            int r6 = r5.top
            int r5 = r5.bottom
            int r5 = r5 + r6
            boolean r7 = r12.f2093l
            if (r7 != 0) goto L_0x0101
            int r6 = -r6
            r12.f2091j = r6
            goto L_0x0101
        L_0x00fb:
            android.graphics.Rect r5 = r12.G
            r5.setEmpty()
            r5 = 0
        L_0x0101:
            android.widget.PopupWindow r6 = r12.J
            int r6 = r6.getInputMethodMode()
            r7 = 2
            if (r6 != r7) goto L_0x010b
            goto L_0x010c
        L_0x010b:
            r3 = 0
        L_0x010c:
            android.view.View r4 = r12.j()
            int r6 = r12.f2091j
            int r3 = r12.a(r4, r6, r3)
            boolean r4 = r12.q
            if (r4 != 0) goto L_0x017e
            int r4 = r12.f2088g
            if (r4 != r2) goto L_0x011f
            goto L_0x017e
        L_0x011f:
            int r4 = r12.f2089h
            r6 = -2
            if (r4 == r6) goto L_0x0147
            r1 = 1073741824(0x40000000, float:2.0)
            if (r4 == r2) goto L_0x012e
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r4, r1)
        L_0x012c:
            r7 = r1
            goto L_0x0160
        L_0x012e:
            android.content.Context r2 = r12.f2085d
            android.content.res.Resources r2 = r2.getResources()
            android.util.DisplayMetrics r2 = r2.getDisplayMetrics()
            int r2 = r2.widthPixels
            android.graphics.Rect r4 = r12.G
            int r6 = r4.left
            int r4 = r4.right
            int r6 = r6 + r4
            int r2 = r2 - r6
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r1)
            goto L_0x012c
        L_0x0147:
            android.content.Context r2 = r12.f2085d
            android.content.res.Resources r2 = r2.getResources()
            android.util.DisplayMetrics r2 = r2.getDisplayMetrics()
            int r2 = r2.widthPixels
            android.graphics.Rect r4 = r12.G
            int r6 = r4.left
            int r4 = r4.right
            int r6 = r6 + r4
            int r2 = r2 - r6
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r1)
            goto L_0x012c
        L_0x0160:
            b.b.g.I r6 = r12.f2087f
            r8 = 0
            r9 = -1
            int r10 = r3 - r0
            r11 = -1
            int r1 = r6.a(r7, r8, r9, r10, r11)
            if (r1 <= 0) goto L_0x017c
            b.b.g.I r2 = r12.f2087f
            int r2 = r2.getPaddingTop()
            b.b.g.I r3 = r12.f2087f
            int r3 = r3.getPaddingBottom()
            int r2 = r2 + r3
            int r5 = r5 + r2
            int r0 = r0 + r5
        L_0x017c:
            int r1 = r1 + r0
            return r1
        L_0x017e:
            int r3 = r3 + r5
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.N.h():int");
    }

    public void j(int i2) {
        this.f2089h = i2;
    }

    public void b(boolean z2) {
        this.o = true;
        this.n = z2;
    }

    public void g(int i2) {
        this.J.setInputMethodMode(i2);
    }

    public void i() {
        I i2 = this.f2087f;
        if (i2 != null) {
            i2.setListSelectionHidden(true);
            i2.requestLayout();
        }
    }

    public void a(boolean z2) {
        this.I = z2;
        this.J.setFocusable(z2);
    }

    public void a(Drawable drawable) {
        this.J.setBackgroundDrawable(drawable);
    }

    public void a(View view) {
        this.w = view;
    }

    public int a() {
        return this.f2090i;
    }

    public void a(int i2) {
        this.f2090i = i2;
    }

    public void a(Rect rect) {
        this.H = rect != null ? new Rect(rect) : null;
    }

    public void a(AdapterView.OnItemClickListener onItemClickListener) {
        this.y = onItemClickListener;
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.J.setOnDismissListener(onDismissListener);
    }

    public I a(Context context, boolean z2) {
        return new I(context, z2);
    }

    public final int a(View view, int i2, boolean z2) {
        if (Build.VERSION.SDK_INT > 23) {
            return this.J.getMaxAvailableHeight(view, i2, z2);
        }
        Method method = f2083b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.J, new Object[]{view, Integer.valueOf(i2), Boolean.valueOf(z2)})).intValue();
            } catch (Exception unused) {
                Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
            }
        }
        return this.J.getMaxAvailableHeight(view, i2);
    }
}
