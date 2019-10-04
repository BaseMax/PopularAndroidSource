package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.customview.view.AbsSavedState;
import b.i.k.A;
import b.i.k.C0258a;
import b.i.k.C0266i;
import b.i.k.C0269l;
import b.i.k.a.d;
import b.i.k.z;
import b.y.a.C0331a;
import b.y.a.C0334d;
import b.y.a.C0343m;
import b.y.a.C0348s;
import b.y.a.C0350u;
import b.y.a.N;
import b.y.a.U;
import b.y.a.V;
import com.crashlytics.android.core.CodedOutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RecyclerView extends ViewGroup implements b.i.k.t, C0266i {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f794a = {16843830};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f795b = {16842987};

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f796c;

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f797d = (Build.VERSION.SDK_INT >= 23);

    /* renamed from: e  reason: collision with root package name */
    public static final boolean f798e = (Build.VERSION.SDK_INT >= 16);

    /* renamed from: f  reason: collision with root package name */
    public static final boolean f799f = (Build.VERSION.SDK_INT >= 21);

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f800g = (Build.VERSION.SDK_INT <= 15);

    /* renamed from: h  reason: collision with root package name */
    public static final boolean f801h = (Build.VERSION.SDK_INT <= 15);

    /* renamed from: i  reason: collision with root package name */
    public static final Class<?>[] f802i;

    /* renamed from: j  reason: collision with root package name */
    public static final Interpolator f803j = new G();
    public m A;
    public final int[] Aa;
    public boolean B;
    public C0269l Ba;
    public boolean C;
    public final int[] Ca;
    public boolean D;
    public final int[] Da;
    public boolean E;
    public final int[] Ea;
    public int F;
    public final int[] Fa;
    public boolean G;
    public final List<w> Ga;
    public boolean H;
    public Runnable Ha;
    public boolean I;
    public final V.b Ia;
    public int J;
    public boolean K;
    public final AccessibilityManager L;
    public List<k> M;
    public boolean N;
    public boolean O;
    public int P;
    public int Q;
    public e R;
    public EdgeEffect S;
    public EdgeEffect T;
    public EdgeEffect U;
    public EdgeEffect V;
    public f W;
    public int aa;
    public int ba;
    public VelocityTracker ca;
    public int da;
    public int ea;
    public int fa;
    public int ga;
    public int ha;
    public l ia;
    public final int ja;

    /* renamed from: k  reason: collision with root package name */
    public final r f804k;
    public final int ka;

    /* renamed from: l  reason: collision with root package name */
    public final p f805l;
    public float la;
    public SavedState m;
    public float ma;
    public C0331a n;
    public boolean na;
    public C0334d o;
    public final v oa;
    public final V p;
    public C0350u pa;
    public boolean q;
    public C0350u.a qa;
    public final Runnable r;
    public final t ra;
    public final Rect s;
    public n sa;
    public final Rect t;
    public List<n> ta;
    public final RectF u;
    public boolean ua;
    public a v;
    public boolean va;
    public i w;
    public f.b wa;
    public q x;
    public boolean xa;
    public final ArrayList<h> y;
    public N ya;
    public final ArrayList<m> z;
    public d za;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new M();

        /* renamed from: c  reason: collision with root package name */
        public Parcelable f806c;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f806c = parcel.readParcelable(classLoader == null ? i.class.getClassLoader() : classLoader);
        }

        public void a(SavedState savedState) {
            this.f806c = savedState.f806c;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.f806c, 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static abstract class a<VH extends w> {

        /* renamed from: a  reason: collision with root package name */
        public final b f807a = new b();

        /* renamed from: b  reason: collision with root package name */
        public boolean f808b = false;

        public abstract int a();

        public long a(int i2) {
            return -1;
        }

        public void a(VH vh, int i2, List<Object> list) {
            b(vh, i2);
        }

        public void a(RecyclerView recyclerView) {
        }

        public boolean a(VH vh) {
            return false;
        }

        public int b(int i2) {
            return 0;
        }

        public abstract VH b(ViewGroup viewGroup, int i2);

        public void b(VH vh) {
        }

        public abstract void b(VH vh, int i2);

        public void b(RecyclerView recyclerView) {
        }

        public final boolean b() {
            return this.f807a.a();
        }

        public void c(VH vh) {
        }

        public final boolean c() {
            return this.f808b;
        }

        public final void d() {
            this.f807a.b();
        }

        public void d(VH vh) {
        }

        public final void e(int i2) {
            this.f807a.d(i2, 1);
        }

        public final VH a(ViewGroup viewGroup, int i2) {
            try {
                b.i.g.a.a("RV CreateView");
                VH b2 = b(viewGroup, i2);
                if (b2.f891b.getParent() == null) {
                    b2.f896g = i2;
                    return b2;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } finally {
                b.i.g.a.a();
            }
        }

        public void b(c cVar) {
            this.f807a.unregisterObserver(cVar);
        }

        public final void c(int i2) {
            this.f807a.b(i2, 1);
        }

        public final void d(int i2) {
            this.f807a.c(i2, 1);
        }

        public final void b(int i2, int i3) {
            this.f807a.c(i2, i3);
        }

        public final void c(int i2, int i3) {
            this.f807a.d(i2, i3);
        }

        public final void a(VH vh, int i2) {
            vh.f893d = i2;
            if (c()) {
                vh.f895f = a(i2);
            }
            vh.a(1, 519);
            b.i.g.a.a("RV OnBindView");
            a(vh, i2, vh.l());
            vh.b();
            ViewGroup.LayoutParams layoutParams = vh.f891b.getLayoutParams();
            if (layoutParams instanceof j) {
                ((j) layoutParams).f838c = true;
            }
            b.i.g.a.a();
        }

        public void a(boolean z) {
            if (!b()) {
                this.f808b = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void a(c cVar) {
            this.f807a.registerObserver(cVar);
        }

        public final void a(int i2, Object obj) {
            this.f807a.a(i2, 1, obj);
        }

        public final void a(int i2, int i3, Object obj) {
            this.f807a.a(i2, i3, obj);
        }

        public final void a(int i2, int i3) {
            this.f807a.a(i2, i3);
        }
    }

    static class b extends Observable<c> {
        public boolean a() {
            return !this.mObservers.isEmpty();
        }

        public void b() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a();
            }
        }

        public void c(int i2, int i3) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).b(i2, i3);
            }
        }

        public void d(int i2, int i3) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).c(i2, i3);
            }
        }

        public void a(int i2, int i3, Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a(i2, i3, obj);
            }
        }

        public void b(int i2, int i3) {
            a(i2, i3, null);
        }

        public void a(int i2, int i3) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).a(i2, i3, 1);
            }
        }
    }

    public static abstract class c {
        public void a() {
        }

        public void a(int i2, int i3) {
        }

        public void a(int i2, int i3, int i4) {
        }

        public void a(int i2, int i3, Object obj) {
            a(i2, i3);
        }

        public void b(int i2, int i3) {
        }

        public void c(int i2, int i3) {
        }
    }

    public interface d {
        int a(int i2, int i3);
    }

    public static class e {
        public EdgeEffect a(RecyclerView recyclerView, int i2) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class f {

        /* renamed from: a  reason: collision with root package name */
        public b f809a = null;

        /* renamed from: b  reason: collision with root package name */
        public ArrayList<a> f810b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        public long f811c = 120;

        /* renamed from: d  reason: collision with root package name */
        public long f812d = 120;

        /* renamed from: e  reason: collision with root package name */
        public long f813e = 250;

        /* renamed from: f  reason: collision with root package name */
        public long f814f = 250;

        public interface a {
            void a();
        }

        interface b {
            void a(w wVar);
        }

        public static class c {

            /* renamed from: a  reason: collision with root package name */
            public int f815a;

            /* renamed from: b  reason: collision with root package name */
            public int f816b;

            /* renamed from: c  reason: collision with root package name */
            public int f817c;

            /* renamed from: d  reason: collision with root package name */
            public int f818d;

            public c a(w wVar) {
                a(wVar, 0);
                return this;
            }

            public c a(w wVar, int i2) {
                View view = wVar.f891b;
                this.f815a = view.getLeft();
                this.f816b = view.getTop();
                this.f817c = view.getRight();
                this.f818d = view.getBottom();
                return this;
            }
        }

        public void a(long j2) {
            this.f814f = j2;
        }

        public abstract boolean a(w wVar, c cVar, c cVar2);

        public abstract boolean a(w wVar, w wVar2, c cVar, c cVar2);

        public abstract void b();

        public abstract boolean b(w wVar);

        public abstract boolean b(w wVar, c cVar, c cVar2);

        public long c() {
            return this.f811c;
        }

        public abstract boolean c(w wVar, c cVar, c cVar2);

        public long d() {
            return this.f814f;
        }

        public abstract void d(w wVar);

        public long e() {
            return this.f813e;
        }

        public void e(w wVar) {
        }

        public long f() {
            return this.f812d;
        }

        public abstract boolean g();

        public c h() {
            return new c();
        }

        public abstract void i();

        public void a(b bVar) {
            this.f809a = bVar;
        }

        public final void c(w wVar) {
            e(wVar);
            b bVar = this.f809a;
            if (bVar != null) {
                bVar.a(wVar);
            }
        }

        public c a(t tVar, w wVar, int i2, List<Object> list) {
            c h2 = h();
            h2.a(wVar);
            return h2;
        }

        public c a(t tVar, w wVar) {
            c h2 = h();
            h2.a(wVar);
            return h2;
        }

        public static int a(w wVar) {
            int i2 = wVar.f900k & 14;
            if (wVar.o()) {
                return 4;
            }
            if ((i2 & 4) == 0) {
                int k2 = wVar.k();
                int g2 = wVar.g();
                if (!(k2 == -1 || g2 == -1 || k2 == g2)) {
                    i2 |= 2048;
                }
            }
            return i2;
        }

        public boolean a(w wVar, List<Object> list) {
            return b(wVar);
        }

        public final void a() {
            int size = this.f810b.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f810b.get(i2).a();
            }
            this.f810b.clear();
        }
    }

    private class g implements f.b {
        public g() {
        }

        public void a(w wVar) {
            wVar.a(true);
            if (wVar.f898i != null && wVar.f899j == null) {
                wVar.f898i = null;
            }
            wVar.f899j = null;
            if (!wVar.x() && !RecyclerView.this.n(wVar.f891b) && wVar.s()) {
                RecyclerView.this.removeDetachedView(wVar.f891b, false);
            }
        }
    }

    public static abstract class h {
        @Deprecated
        public void a(Canvas canvas, RecyclerView recyclerView) {
        }

        public void a(Canvas canvas, RecyclerView recyclerView, t tVar) {
            a(canvas, recyclerView);
        }

        @Deprecated
        public void b(Canvas canvas, RecyclerView recyclerView) {
        }

        public void b(Canvas canvas, RecyclerView recyclerView, t tVar) {
            b(canvas, recyclerView);
        }

        @Deprecated
        public void a(Rect rect, int i2, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void a(Rect rect, View view, RecyclerView recyclerView, t tVar) {
            a(rect, ((j) view.getLayoutParams()).a(), recyclerView);
        }
    }

    public static abstract class i {

        /* renamed from: a  reason: collision with root package name */
        public C0334d f820a;

        /* renamed from: b  reason: collision with root package name */
        public RecyclerView f821b;

        /* renamed from: c  reason: collision with root package name */
        public final U.b f822c = new K(this);

        /* renamed from: d  reason: collision with root package name */
        public final U.b f823d = new L(this);

        /* renamed from: e  reason: collision with root package name */
        public U f824e = new U(this.f822c);

        /* renamed from: f  reason: collision with root package name */
        public U f825f = new U(this.f823d);

        /* renamed from: g  reason: collision with root package name */
        public s f826g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f827h = false;

        /* renamed from: i  reason: collision with root package name */
        public boolean f828i = false;

        /* renamed from: j  reason: collision with root package name */
        public boolean f829j = false;

        /* renamed from: k  reason: collision with root package name */
        public boolean f830k = true;

        /* renamed from: l  reason: collision with root package name */
        public boolean f831l = true;
        public int m;
        public boolean n;
        public int o;
        public int p;
        public int q;
        public int r;

        public interface a {
            void a(int i2, int i3);
        }

        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public int f832a;

            /* renamed from: b  reason: collision with root package name */
            public int f833b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f834c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f835d;
        }

        public void A() {
            this.f827h = true;
        }

        public boolean B() {
            return false;
        }

        public void C() {
            s sVar = this.f826g;
            if (sVar != null) {
                sVar.h();
            }
        }

        public boolean D() {
            return false;
        }

        public int a(int i2, p pVar, t tVar) {
            return 0;
        }

        public int a(t tVar) {
            return 0;
        }

        public View a(View view, int i2, p pVar, t tVar) {
            return null;
        }

        public void a(int i2, int i3, t tVar, a aVar) {
        }

        public void a(int i2, a aVar) {
        }

        public void a(Rect rect, int i2, int i3) {
            c(a(i2, rect.width() + o() + p(), m()), a(i3, rect.height() + q() + n(), l()));
        }

        public void a(Parcelable parcelable) {
        }

        public void a(a aVar, a aVar2) {
        }

        public void a(RecyclerView recyclerView, int i2, int i3, int i4) {
        }

        public boolean a() {
            return false;
        }

        public boolean a(j jVar) {
            return jVar != null;
        }

        public boolean a(p pVar, t tVar, View view, int i2, Bundle bundle) {
            return false;
        }

        public boolean a(RecyclerView recyclerView, ArrayList<View> arrayList, int i2, int i3) {
            return false;
        }

        public int b(int i2, p pVar, t tVar) {
            return 0;
        }

        public int b(t tVar) {
            return 0;
        }

        public void b(int i2, int i3) {
            this.q = View.MeasureSpec.getSize(i2);
            this.o = View.MeasureSpec.getMode(i2);
            if (this.o == 0 && !RecyclerView.f797d) {
                this.q = 0;
            }
            this.r = View.MeasureSpec.getSize(i3);
            this.p = View.MeasureSpec.getMode(i3);
            if (this.p == 0 && !RecyclerView.f797d) {
                this.r = 0;
            }
        }

        public void b(RecyclerView recyclerView) {
        }

        public void b(RecyclerView recyclerView, int i2, int i3) {
        }

        public boolean b() {
            return false;
        }

        public int c(p pVar, t tVar) {
            return 0;
        }

        public int c(t tVar) {
            return 0;
        }

        public View c(View view) {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView == null) {
                return null;
            }
            View c2 = recyclerView.c(view);
            if (c2 != null && !this.f820a.d(c2)) {
                return c2;
            }
            return null;
        }

        public abstract j c();

        @Deprecated
        public void c(RecyclerView recyclerView) {
        }

        public void c(RecyclerView recyclerView, int i2, int i3) {
        }

        public int d() {
            return -1;
        }

        public int d(t tVar) {
            return 0;
        }

        public View d(View view, int i2) {
            return null;
        }

        public void d(int i2, int i3) {
            int e2 = e();
            if (e2 == 0) {
                this.f821b.c(i2, i3);
                return;
            }
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = Integer.MIN_VALUE;
            for (int i8 = 0; i8 < e2; i8++) {
                View d2 = d(i8);
                Rect rect = this.f821b.s;
                b(d2, rect);
                int i9 = rect.left;
                if (i9 < i4) {
                    i4 = i9;
                }
                int i10 = rect.right;
                if (i10 > i6) {
                    i6 = i10;
                }
                int i11 = rect.top;
                if (i11 < i5) {
                    i5 = i11;
                }
                int i12 = rect.bottom;
                if (i12 > i7) {
                    i7 = i12;
                }
            }
            this.f821b.s.set(i4, i5, i6, i7);
            a(this.f821b.s, i2, i3);
        }

        public void d(RecyclerView recyclerView) {
        }

        public void d(RecyclerView recyclerView, int i2, int i3) {
        }

        public boolean d(p pVar, t tVar) {
            return false;
        }

        public int e(t tVar) {
            return 0;
        }

        public void e(p pVar, t tVar) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public int f(t tVar) {
            return 0;
        }

        public void f(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f821b = null;
                this.f820a = null;
                this.q = 0;
                this.r = 0;
            } else {
                this.f821b = recyclerView;
                this.f820a = recyclerView.o;
                this.q = recyclerView.getWidth();
                this.r = recyclerView.getHeight();
            }
            this.o = 1073741824;
            this.p = 1073741824;
        }

        public View g() {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView == null) {
                return null;
            }
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null || this.f820a.d(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public void g(int i2) {
        }

        public void g(t tVar) {
        }

        public void h(int i2) {
            if (d(i2) != null) {
                this.f820a.f(i2);
            }
        }

        public int i() {
            return this.p;
        }

        public void i(int i2) {
        }

        public int j() {
            RecyclerView recyclerView = this.f821b;
            a adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.a();
            }
            return 0;
        }

        public int k() {
            return z.m(this.f821b);
        }

        public int l(View view) {
            return ((j) view.getLayoutParams()).a();
        }

        public int m(View view) {
            return ((j) view.getLayoutParams()).f837b.right;
        }

        public int n() {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public void o(View view) {
            this.f820a.e(view);
        }

        public int p() {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int q() {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int r() {
            return this.q;
        }

        public int s() {
            return this.o;
        }

        public boolean t() {
            int e2 = e();
            for (int i2 = 0; i2 < e2; i2++) {
                ViewGroup.LayoutParams layoutParams = d(i2).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean u() {
            return this.f828i;
        }

        public boolean v() {
            return this.f829j;
        }

        public final boolean w() {
            return this.f831l;
        }

        public boolean x() {
            s sVar = this.f826g;
            return sVar != null && sVar.e();
        }

        public Parcelable y() {
            return null;
        }

        public void z() {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public int e() {
            C0334d dVar = this.f820a;
            if (dVar != null) {
                return dVar.a();
            }
            return 0;
        }

        public int i(View view) {
            return view.getRight() + m(view);
        }

        public int k(View view) {
            return ((j) view.getLayoutParams()).f837b.left;
        }

        public int l() {
            return z.n(this.f821b);
        }

        public int m() {
            return z.o(this.f821b);
        }

        public int n(View view) {
            return ((j) view.getLayoutParams()).f837b.top;
        }

        public int o() {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public void e(int i2) {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView != null) {
                recyclerView.g(i2);
            }
        }

        public int h() {
            return this.r;
        }

        public int j(View view) {
            return view.getTop() - n(view);
        }

        public View c(int i2) {
            int e2 = e();
            for (int i3 = 0; i3 < e2; i3++) {
                View d2 = d(i3);
                w i4 = RecyclerView.i(d2);
                if (i4 != null && i4.j() == i2 && !i4.y() && (this.f821b.ra.d() || !i4.q())) {
                    return d2;
                }
            }
            return null;
        }

        public int g(View view) {
            Rect rect = ((j) view.getLayoutParams()).f837b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int h(View view) {
            Rect rect = ((j) view.getLayoutParams()).f837b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int e(View view) {
            return view.getBottom() + d(view);
        }

        public static int a(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode == Integer.MIN_VALUE) {
                return Math.min(size, Math.max(i3, i4));
            }
            if (mode != 1073741824) {
                size = Math.max(i3, i4);
            }
            return size;
        }

        public void e(RecyclerView recyclerView) {
            b(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public void b(RecyclerView recyclerView, p pVar) {
            c(recyclerView);
        }

        public void c(View view, int i2) {
            a(view, i2, (j) view.getLayoutParams());
        }

        public void a(String str) {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView != null) {
                recyclerView.a(str);
            }
        }

        public void b(s sVar) {
            s sVar2 = this.f826g;
            if (!(sVar2 == null || sVar == sVar2 || !sVar2.e())) {
                this.f826g.h();
            }
            this.f826g = sVar;
            this.f826g.a(this.f821b, this);
        }

        public void c(p pVar) {
            int e2 = pVar.e();
            for (int i2 = e2 - 1; i2 >= 0; i2--) {
                View c2 = pVar.c(i2);
                w i3 = RecyclerView.i(c2);
                if (!i3.y()) {
                    i3.a(false);
                    if (i3.s()) {
                        this.f821b.removeDetachedView(c2, false);
                    }
                    f fVar = this.f821b.W;
                    if (fVar != null) {
                        fVar.d(i3);
                    }
                    i3.a(true);
                    pVar.a(c2);
                }
            }
            pVar.c();
            if (e2 > 0) {
                this.f821b.invalidate();
            }
        }

        public boolean f() {
            RecyclerView recyclerView = this.f821b;
            return recyclerView != null && recyclerView.q;
        }

        public final void a(boolean z) {
            if (z != this.f831l) {
                this.f831l = z;
                this.m = 0;
                RecyclerView recyclerView = this.f821b;
                if (recyclerView != null) {
                    recyclerView.f805l.j();
                }
            }
        }

        public View d(int i2) {
            C0334d dVar = this.f820a;
            if (dVar != null) {
                return dVar.c(i2);
            }
            return null;
        }

        public void f(int i2) {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView != null) {
                recyclerView.h(i2);
            }
        }

        public int d(View view) {
            return ((j) view.getLayoutParams()).f837b.bottom;
        }

        public int f(View view) {
            return view.getLeft() - k(view);
        }

        public void b(View view) {
            b(view, -1);
        }

        public void b(View view, int i2) {
            a(view, i2, false);
        }

        public void a(RecyclerView recyclerView) {
            this.f828i = true;
            b(recyclerView);
        }

        public void b(int i2) {
            a(i2, d(i2));
        }

        public boolean b(View view, int i2, int i3, j jVar) {
            return !this.f830k || !b(view.getMeasuredWidth(), i2, jVar.width) || !b(view.getMeasuredHeight(), i3, jVar.height);
        }

        public void a(RecyclerView recyclerView, p pVar) {
            this.f828i = false;
            b(recyclerView, pVar);
        }

        public static boolean b(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i3);
            int size = View.MeasureSpec.getSize(i3);
            boolean z = false;
            if (i4 > 0 && i2 != i4) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                if (size >= i2) {
                    z = true;
                }
                return z;
            } else if (mode == 0) {
                return true;
            } else {
                if (mode != 1073741824) {
                    return false;
                }
                if (size == i2) {
                    z = true;
                }
                return z;
            }
        }

        public boolean a(Runnable runnable) {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public j a(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof j) {
                return new j((j) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new j((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new j(layoutParams);
        }

        public void b(View view, Rect rect) {
            RecyclerView.b(view, rect);
        }

        public void c(int i2, int i3) {
            this.f821b.setMeasuredDimension(i2, i3);
        }

        public boolean b(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return a(recyclerView, view, rect, z, false);
        }

        public void b(p pVar) {
            for (int e2 = e() - 1; e2 >= 0; e2--) {
                if (!RecyclerView.i(d(e2)).y()) {
                    a(e2, pVar);
                }
            }
        }

        public j a(Context context, AttributeSet attributeSet) {
            return new j(context, attributeSet);
        }

        public void a(RecyclerView recyclerView, t tVar, int i2) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public int b(p pVar, t tVar) {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView == null || recyclerView.v == null || !b()) {
                return 1;
            }
            return this.f821b.v.a();
        }

        public void a(View view) {
            a(view, -1);
        }

        public void a(View view, int i2) {
            a(view, i2, true);
        }

        public final void a(View view, int i2, boolean z) {
            w i3 = RecyclerView.i(view);
            if (z || i3.q()) {
                this.f821b.p.a(i3);
            } else {
                this.f821b.p.g(i3);
            }
            j jVar = (j) view.getLayoutParams();
            if (i3.A() || i3.r()) {
                if (i3.r()) {
                    i3.z();
                } else {
                    i3.c();
                }
                this.f820a.a(view, i2, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f821b) {
                int c2 = this.f820a.c(view);
                if (i2 == -1) {
                    i2 = this.f820a.a();
                }
                if (c2 == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f821b.indexOfChild(view) + this.f821b.o());
                } else if (c2 != i2) {
                    this.f821b.w.a(c2, i2);
                }
            } else {
                this.f820a.a(view, i2, false);
                jVar.f838c = true;
                s sVar = this.f826g;
                if (sVar != null && sVar.e()) {
                    this.f826g.b(view);
                }
            }
            if (jVar.f839d) {
                i3.f891b.invalidate();
                jVar.f839d = false;
            }
        }

        public final void a(int i2, View view) {
            this.f820a.a(i2);
        }

        public void a(View view, int i2, j jVar) {
            w i3 = RecyclerView.i(view);
            if (i3.q()) {
                this.f821b.p.a(i3);
            } else {
                this.f821b.p.g(i3);
            }
            this.f820a.a(view, i2, jVar, i3.q());
        }

        public void a(int i2, int i3) {
            View d2 = d(i2);
            if (d2 != null) {
                b(i2);
                c(d2, i3);
                return;
            }
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + this.f821b.toString());
        }

        public void a(View view, p pVar) {
            o(view);
            pVar.b(view);
        }

        public void a(int i2, p pVar) {
            View d2 = d(i2);
            h(i2);
            pVar.b(d2);
        }

        public void a(p pVar) {
            for (int e2 = e() - 1; e2 >= 0; e2--) {
                a(pVar, e2, d(e2));
            }
        }

        public final void a(p pVar, int i2, View view) {
            w i3 = RecyclerView.i(view);
            if (!i3.y()) {
                if (!i3.o() || i3.q() || this.f821b.v.c()) {
                    b(i2);
                    pVar.c(view);
                    this.f821b.p.d(i3);
                } else {
                    h(i2);
                    pVar.d(i3);
                }
            }
        }

        public boolean a(View view, int i2, int i3, j jVar) {
            return view.isLayoutRequested() || !this.f830k || !b(view.getWidth(), i2, jVar.width) || !b(view.getHeight(), i3, jVar.height);
        }

        public void a(View view, int i2, int i3) {
            j jVar = (j) view.getLayoutParams();
            Rect k2 = this.f821b.k(view);
            int i4 = i2 + k2.left + k2.right;
            int i5 = i3 + k2.top + k2.bottom;
            int a2 = a(r(), s(), o() + p() + jVar.leftMargin + jVar.rightMargin + i4, jVar.width, a());
            int a3 = a(h(), i(), q() + n() + jVar.topMargin + jVar.bottomMargin + i5, jVar.height, b());
            if (a(view, a2, a3, jVar)) {
                view.measure(a2, a3);
            }
        }

        public static int a(int i2, int i3, int i4, int i5, boolean z) {
            int i6;
            int i7 = i2 - i4;
            int i8 = 0;
            int max = Math.max(0, i7);
            if (z) {
                if (i5 < 0) {
                    if (i5 == -1) {
                        if (i3 == Integer.MIN_VALUE || (i3 != 0 && i3 == 1073741824)) {
                            i6 = max;
                        } else {
                            i3 = 0;
                            i6 = 0;
                        }
                        i8 = i3;
                        max = i6;
                        return View.MeasureSpec.makeMeasureSpec(max, i8);
                    }
                    max = 0;
                    return View.MeasureSpec.makeMeasureSpec(max, i8);
                }
            } else if (i5 < 0) {
                if (i5 == -1) {
                    i8 = i3;
                } else {
                    if (i5 == -2) {
                        if (i3 == Integer.MIN_VALUE || i3 == 1073741824) {
                            i8 = Integer.MIN_VALUE;
                        }
                    }
                    max = 0;
                }
                return View.MeasureSpec.makeMeasureSpec(max, i8);
            }
            max = i5;
            i8 = 1073741824;
            return View.MeasureSpec.makeMeasureSpec(max, i8);
        }

        public void a(View view, int i2, int i3, int i4, int i5) {
            j jVar = (j) view.getLayoutParams();
            Rect rect = jVar.f837b;
            view.layout(i2 + rect.left + jVar.leftMargin, i3 + rect.top + jVar.topMargin, (i4 - rect.right) - jVar.rightMargin, (i5 - rect.bottom) - jVar.bottomMargin);
        }

        public void a(View view, boolean z, Rect rect) {
            if (z) {
                Rect rect2 = ((j) view.getLayoutParams()).f837b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f821b != null) {
                Matrix matrix = view.getMatrix();
                if (matrix != null && !matrix.isIdentity()) {
                    RectF rectF = this.f821b.u;
                    rectF.set(rect);
                    matrix.mapRect(rectF);
                    rect.set((int) Math.floor((double) rectF.left), (int) Math.floor((double) rectF.top), (int) Math.ceil((double) rectF.right), (int) Math.ceil((double) rectF.bottom));
                }
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void a(View view, Rect rect) {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.k(view));
            }
        }

        public final int[] a(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            int[] iArr = new int[2];
            int o2 = o();
            int q2 = q();
            int r2 = r() - p();
            int h2 = h() - n();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width() + left;
            int height = rect.height() + top;
            int i2 = left - o2;
            int min = Math.min(0, i2);
            int i3 = top - q2;
            int min2 = Math.min(0, i3);
            int i4 = width - r2;
            int max = Math.max(0, i4);
            int max2 = Math.max(0, height - h2);
            if (k() != 1) {
                if (min == 0) {
                    min = Math.min(i2, max);
                }
                max = min;
            } else if (max == 0) {
                max = Math.max(min, i4);
            }
            if (min2 == 0) {
                min2 = Math.min(i3, max2);
            }
            iArr[0] = max;
            iArr[1] = min2;
            return iArr;
        }

        public boolean a(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] a2 = a(recyclerView, view, rect, z);
            int i2 = a2[0];
            int i3 = a2[1];
            if ((z2 && !a(recyclerView, i2, i3)) || (i2 == 0 && i3 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i2, i3);
            } else {
                recyclerView.j(i2, i3);
            }
            return true;
        }

        public boolean a(View view, boolean z, boolean z2) {
            boolean z3 = this.f824e.a(view, 24579) && this.f825f.a(view, 24579);
            return z ? z3 : !z3;
        }

        public final boolean a(RecyclerView recyclerView, int i2, int i3) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int o2 = o();
            int q2 = q();
            int r2 = r() - p();
            int h2 = h() - n();
            Rect rect = this.f821b.s;
            b(focusedChild, rect);
            if (rect.left - i2 >= r2 || rect.right - i2 <= o2 || rect.top - i3 >= h2 || rect.bottom - i3 <= q2) {
                return false;
            }
            return true;
        }

        @Deprecated
        public boolean a(RecyclerView recyclerView, View view, View view2) {
            return x() || recyclerView.y();
        }

        public boolean a(RecyclerView recyclerView, t tVar, View view, View view2) {
            return a(recyclerView, view, view2);
        }

        public void a(RecyclerView recyclerView, int i2, int i3, Object obj) {
            d(recyclerView, i2, i3);
        }

        public void a(p pVar, t tVar, int i2, int i3) {
            this.f821b.c(i2, i3);
        }

        public void a(s sVar) {
            if (this.f826g == sVar) {
                this.f826g = null;
            }
        }

        public void a(b.i.k.a.d dVar) {
            RecyclerView recyclerView = this.f821b;
            a(recyclerView.f805l, recyclerView.ra, dVar);
        }

        public void a(p pVar, t tVar, b.i.k.a.d dVar) {
            if (this.f821b.canScrollVertically(-1) || this.f821b.canScrollHorizontally(-1)) {
                dVar.a(8192);
                dVar.k(true);
            }
            if (this.f821b.canScrollVertically(1) || this.f821b.canScrollHorizontally(1)) {
                dVar.a((int) CodedOutputStream.DEFAULT_BUFFER_SIZE);
                dVar.k(true);
            }
            dVar.a((Object) d.b.a(b(pVar, tVar), a(pVar, tVar), d(pVar, tVar), c(pVar, tVar)));
        }

        public void a(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f821b;
            a(recyclerView.f805l, recyclerView.ra, accessibilityEvent);
        }

        public void a(p pVar, t tVar, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView != null && accessibilityEvent != null) {
                boolean z = true;
                if (!recyclerView.canScrollVertically(1) && !this.f821b.canScrollVertically(-1) && !this.f821b.canScrollHorizontally(-1) && !this.f821b.canScrollHorizontally(1)) {
                    z = false;
                }
                accessibilityEvent.setScrollable(z);
                a aVar = this.f821b.v;
                if (aVar != null) {
                    accessibilityEvent.setItemCount(aVar.a());
                }
            }
        }

        public void a(View view, b.i.k.a.d dVar) {
            w i2 = RecyclerView.i(view);
            if (i2 != null && !i2.q() && !this.f820a.d(i2.f891b)) {
                RecyclerView recyclerView = this.f821b;
                a(recyclerView.f805l, recyclerView.ra, view, dVar);
            }
        }

        public void a(p pVar, t tVar, View view, b.i.k.a.d dVar) {
            dVar.b((Object) d.c.a(b() ? l(view) : 0, 1, a() ? l(view) : 0, 1, false, false));
        }

        public int a(p pVar, t tVar) {
            RecyclerView recyclerView = this.f821b;
            if (recyclerView == null || recyclerView.v == null || !a()) {
                return 1;
            }
            return this.f821b.v.a();
        }

        public boolean a(int i2, Bundle bundle) {
            RecyclerView recyclerView = this.f821b;
            return a(recyclerView.f805l, recyclerView.ra, i2, bundle);
        }

        /* JADX WARNING: Removed duplicated region for block: B:24:0x0070 A[ADDED_TO_REGION] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean a(androidx.recyclerview.widget.RecyclerView.p r2, androidx.recyclerview.widget.RecyclerView.t r3, int r4, android.os.Bundle r5) {
            /*
                r1 = this;
                androidx.recyclerview.widget.RecyclerView r2 = r1.f821b
                r3 = 0
                if (r2 != 0) goto L_0x0006
                return r3
            L_0x0006:
                r5 = 4096(0x1000, float:5.74E-42)
                r0 = 1
                if (r4 == r5) goto L_0x0042
                r5 = 8192(0x2000, float:1.14794E-41)
                if (r4 == r5) goto L_0x0012
                r2 = 0
            L_0x0010:
                r4 = 0
                goto L_0x006e
            L_0x0012:
                r4 = -1
                boolean r2 = r2.canScrollVertically(r4)
                if (r2 == 0) goto L_0x0029
                int r2 = r1.h()
                int r5 = r1.q()
                int r2 = r2 - r5
                int r5 = r1.n()
                int r2 = r2 - r5
                int r2 = -r2
                goto L_0x002a
            L_0x0029:
                r2 = 0
            L_0x002a:
                androidx.recyclerview.widget.RecyclerView r5 = r1.f821b
                boolean r4 = r5.canScrollHorizontally(r4)
                if (r4 == 0) goto L_0x0010
                int r4 = r1.r()
                int r5 = r1.o()
                int r4 = r4 - r5
                int r5 = r1.p()
                int r4 = r4 - r5
                int r4 = -r4
                goto L_0x006e
            L_0x0042:
                boolean r2 = r2.canScrollVertically(r0)
                if (r2 == 0) goto L_0x0057
                int r2 = r1.h()
                int r4 = r1.q()
                int r2 = r2 - r4
                int r4 = r1.n()
                int r2 = r2 - r4
                goto L_0x0058
            L_0x0057:
                r2 = 0
            L_0x0058:
                androidx.recyclerview.widget.RecyclerView r4 = r1.f821b
                boolean r4 = r4.canScrollHorizontally(r0)
                if (r4 == 0) goto L_0x0010
                int r4 = r1.r()
                int r5 = r1.o()
                int r4 = r4 - r5
                int r5 = r1.p()
                int r4 = r4 - r5
            L_0x006e:
                if (r2 != 0) goto L_0x0073
                if (r4 != 0) goto L_0x0073
                return r3
            L_0x0073:
                androidx.recyclerview.widget.RecyclerView r3 = r1.f821b
                r3.j(r4, r2)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.i.a(androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$t, int, android.os.Bundle):boolean");
        }

        public boolean a(View view, int i2, Bundle bundle) {
            RecyclerView recyclerView = this.f821b;
            return a(recyclerView.f805l, recyclerView.ra, view, i2, bundle);
        }

        public static b a(Context context, AttributeSet attributeSet, int i2, int i3) {
            b bVar = new b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.y.b.RecyclerView, i2, i3);
            bVar.f832a = obtainStyledAttributes.getInt(b.y.b.RecyclerView_android_orientation, 1);
            bVar.f833b = obtainStyledAttributes.getInt(b.y.b.RecyclerView_spanCount, 1);
            bVar.f834c = obtainStyledAttributes.getBoolean(b.y.b.RecyclerView_reverseLayout, false);
            bVar.f835d = obtainStyledAttributes.getBoolean(b.y.b.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return bVar;
        }
    }

    public static class j extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public w f836a;

        /* renamed from: b  reason: collision with root package name */
        public final Rect f837b = new Rect();

        /* renamed from: c  reason: collision with root package name */
        public boolean f838c = true;

        /* renamed from: d  reason: collision with root package name */
        public boolean f839d = false;

        public j(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public int a() {
            return this.f836a.j();
        }

        public boolean b() {
            return this.f836a.t();
        }

        public boolean c() {
            return this.f836a.q();
        }

        public boolean d() {
            return this.f836a.o();
        }

        public j(int i2, int i3) {
            super(i2, i3);
        }

        public j(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public j(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public j(j jVar) {
            super(jVar);
        }
    }

    public interface k {
        void a(View view);

        void b(View view);
    }

    public static abstract class l {
        public abstract boolean a(int i2, int i3);
    }

    public interface m {
        void a(RecyclerView recyclerView, MotionEvent motionEvent);

        void a(boolean z);

        boolean b(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    public static abstract class n {
        public void a(RecyclerView recyclerView, int i2) {
        }

        public void a(RecyclerView recyclerView, int i2, int i3) {
        }
    }

    public static class o {

        /* renamed from: a  reason: collision with root package name */
        public SparseArray<a> f840a = new SparseArray<>();

        /* renamed from: b  reason: collision with root package name */
        public int f841b = 0;

        static class a {

            /* renamed from: a  reason: collision with root package name */
            public final ArrayList<w> f842a = new ArrayList<>();

            /* renamed from: b  reason: collision with root package name */
            public int f843b = 5;

            /* renamed from: c  reason: collision with root package name */
            public long f844c = 0;

            /* renamed from: d  reason: collision with root package name */
            public long f845d = 0;
        }

        public w a(int i2) {
            a aVar = this.f840a.get(i2);
            if (aVar == null || aVar.f842a.isEmpty()) {
                return null;
            }
            ArrayList<w> arrayList = aVar.f842a;
            return arrayList.remove(arrayList.size() - 1);
        }

        public void b() {
            for (int i2 = 0; i2 < this.f840a.size(); i2++) {
                this.f840a.valueAt(i2).f842a.clear();
            }
        }

        public void c() {
            this.f841b--;
        }

        public void b(int i2, long j2) {
            a b2 = b(i2);
            b2.f844c = a(b2.f844c, j2);
        }

        public void a(w wVar) {
            int i2 = wVar.i();
            ArrayList<w> arrayList = b(i2).f842a;
            if (this.f840a.get(i2).f843b > arrayList.size()) {
                wVar.v();
                arrayList.add(wVar);
            }
        }

        public boolean b(int i2, long j2, long j3) {
            long j4 = b(i2).f844c;
            return j4 == 0 || j2 + j4 < j3;
        }

        public final a b(int i2) {
            a aVar = this.f840a.get(i2);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f840a.put(i2, aVar2);
            return aVar2;
        }

        public long a(long j2, long j3) {
            return j2 == 0 ? j3 : ((j2 / 4) * 3) + (j3 / 4);
        }

        public void a(int i2, long j2) {
            a b2 = b(i2);
            b2.f845d = a(b2.f845d, j2);
        }

        public boolean a(int i2, long j2, long j3) {
            long j4 = b(i2).f845d;
            return j4 == 0 || j2 + j4 < j3;
        }

        public void a() {
            this.f841b++;
        }

        public void a(a aVar, a aVar2, boolean z) {
            if (aVar != null) {
                c();
            }
            if (!z && this.f841b == 0) {
                b();
            }
            if (aVar2 != null) {
                a();
            }
        }
    }

    public final class p {

        /* renamed from: a  reason: collision with root package name */
        public final ArrayList<w> f846a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        public ArrayList<w> f847b = null;

        /* renamed from: c  reason: collision with root package name */
        public final ArrayList<w> f848c = new ArrayList<>();

        /* renamed from: d  reason: collision with root package name */
        public final List<w> f849d = Collections.unmodifiableList(this.f846a);

        /* renamed from: e  reason: collision with root package name */
        public int f850e = 2;

        /* renamed from: f  reason: collision with root package name */
        public int f851f = 2;

        /* renamed from: g  reason: collision with root package name */
        public o f852g;

        /* renamed from: h  reason: collision with root package name */
        public u f853h;

        public p() {
        }

        public void a() {
            this.f846a.clear();
            i();
        }

        public View b(int i2, boolean z) {
            return a(i2, z, Long.MAX_VALUE).f891b;
        }

        public final void c(w wVar) {
            View view = wVar.f891b;
            if (view instanceof ViewGroup) {
                a((ViewGroup) view, false);
            }
        }

        public View d(int i2) {
            return b(i2, false);
        }

        public void e(int i2) {
            a(this.f848c.get(i2), true);
            this.f848c.remove(i2);
        }

        public void f(int i2) {
            this.f850e = i2;
            j();
        }

        public void g() {
            int size = this.f848c.size();
            for (int i2 = 0; i2 < size; i2++) {
                j jVar = (j) this.f848c.get(i2).f891b.getLayoutParams();
                if (jVar != null) {
                    jVar.f838c = true;
                }
            }
        }

        public void h() {
            int size = this.f848c.size();
            for (int i2 = 0; i2 < size; i2++) {
                w wVar = this.f848c.get(i2);
                if (wVar != null) {
                    wVar.a(6);
                    wVar.a((Object) null);
                }
            }
            a aVar = RecyclerView.this.v;
            if (aVar == null || !aVar.c()) {
                i();
            }
        }

        public void i() {
            for (int size = this.f848c.size() - 1; size >= 0; size--) {
                e(size);
            }
            this.f848c.clear();
            if (RecyclerView.f799f) {
                RecyclerView.this.qa.a();
            }
        }

        public void j() {
            i iVar = RecyclerView.this.w;
            this.f851f = this.f850e + (iVar != null ? iVar.m : 0);
            for (int size = this.f848c.size() - 1; size >= 0 && this.f848c.size() > this.f851f; size--) {
                e(size);
            }
        }

        public void b(View view) {
            w i2 = RecyclerView.i(view);
            if (i2.s()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (i2.r()) {
                i2.z();
            } else if (i2.A()) {
                i2.c();
            }
            d(i2);
        }

        public void d(w wVar) {
            boolean z;
            boolean z2 = false;
            if (wVar.r() || wVar.f891b.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(wVar.r());
                sb.append(" isAttached:");
                if (wVar.f891b.getParent() != null) {
                    z2 = true;
                }
                sb.append(z2);
                sb.append(RecyclerView.this.o());
                throw new IllegalArgumentException(sb.toString());
            } else if (wVar.s()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + wVar + RecyclerView.this.o());
            } else if (!wVar.y()) {
                boolean f2 = wVar.f();
                a aVar = RecyclerView.this.v;
                if ((aVar != null && f2 && aVar.a(wVar)) || wVar.p()) {
                    if (this.f851f <= 0 || wVar.b(526)) {
                        z = false;
                    } else {
                        int size = this.f848c.size();
                        if (size >= this.f851f && size > 0) {
                            e(0);
                            size--;
                        }
                        if (RecyclerView.f799f && size > 0 && !RecyclerView.this.qa.a(wVar.f893d)) {
                            int i2 = size - 1;
                            while (i2 >= 0) {
                                if (!RecyclerView.this.qa.a(this.f848c.get(i2).f893d)) {
                                    break;
                                }
                                i2--;
                            }
                            size = i2 + 1;
                        }
                        this.f848c.add(size, wVar);
                        z = true;
                    }
                    if (!z) {
                        a(wVar, true);
                        z2 = true;
                    }
                } else {
                    z = false;
                }
                RecyclerView.this.p.h(wVar);
                if (!z && !z2 && f2) {
                    wVar.s = null;
                }
            } else {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.o());
            }
        }

        public final boolean a(w wVar, int i2, int i3, long j2) {
            wVar.s = RecyclerView.this;
            int i4 = wVar.i();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j2 != Long.MAX_VALUE && !this.f852g.a(i4, nanoTime, j2)) {
                return false;
            }
            RecyclerView.this.v.a(wVar, i2);
            this.f852g.a(wVar.i(), RecyclerView.this.getNanoTime() - nanoTime);
            a(wVar);
            if (RecyclerView.this.ra.d()) {
                wVar.f897h = i3;
            }
            return true;
        }

        public void c(View view) {
            w i2 = RecyclerView.i(view);
            if (!i2.b(12) && i2.t() && !RecyclerView.this.b(i2)) {
                if (this.f847b == null) {
                    this.f847b = new ArrayList<>();
                }
                i2.a(this, true);
                this.f847b.add(i2);
            } else if (!i2.o() || i2.q() || RecyclerView.this.v.c()) {
                i2.a(this, false);
                this.f846a.add(i2);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.o());
            }
        }

        public List<w> f() {
            return this.f849d;
        }

        public void e(w wVar) {
            if (wVar.p) {
                this.f847b.remove(wVar);
            } else {
                this.f846a.remove(wVar);
            }
            wVar.o = null;
            wVar.p = false;
            wVar.c();
        }

        public boolean f(w wVar) {
            if (wVar.q()) {
                return RecyclerView.this.ra.d();
            }
            int i2 = wVar.f893d;
            if (i2 < 0 || i2 >= RecyclerView.this.v.a()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + wVar + RecyclerView.this.o());
            }
            boolean z = false;
            if (!RecyclerView.this.ra.d() && RecyclerView.this.v.b(wVar.f893d) != wVar.i()) {
                return false;
            }
            if (!RecyclerView.this.v.c()) {
                return true;
            }
            if (wVar.h() == RecyclerView.this.v.a(wVar.f893d)) {
                z = true;
            }
            return z;
        }

        public w b(int i2) {
            ArrayList<w> arrayList = this.f847b;
            if (arrayList != null) {
                int size = arrayList.size();
                if (size != 0) {
                    int i3 = 0;
                    int i4 = 0;
                    while (i4 < size) {
                        w wVar = this.f847b.get(i4);
                        if (wVar.A() || wVar.j() != i2) {
                            i4++;
                        } else {
                            wVar.a(32);
                            return wVar;
                        }
                    }
                    if (RecyclerView.this.v.c()) {
                        int c2 = RecyclerView.this.n.c(i2);
                        if (c2 > 0 && c2 < RecyclerView.this.v.a()) {
                            long a2 = RecyclerView.this.v.a(c2);
                            while (i3 < size) {
                                w wVar2 = this.f847b.get(i3);
                                if (wVar2.A() || wVar2.h() != a2) {
                                    i3++;
                                } else {
                                    wVar2.a(32);
                                    return wVar2;
                                }
                            }
                        }
                    }
                }
            }
            return null;
        }

        public int e() {
            return this.f846a.size();
        }

        public int a(int i2) {
            if (i2 < 0 || i2 >= RecyclerView.this.ra.a()) {
                throw new IndexOutOfBoundsException("invalid position " + i2 + ". State " + "item count is " + RecyclerView.this.ra.a() + RecyclerView.this.o());
            } else if (!RecyclerView.this.ra.d()) {
                return i2;
            } else {
                return RecyclerView.this.n.c(i2);
            }
        }

        public View c(int i2) {
            return this.f846a.get(i2).f891b;
        }

        public void c() {
            this.f846a.clear();
            ArrayList<w> arrayList = this.f847b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:12:0x002b  */
        /* JADX WARNING: Removed duplicated region for block: B:27:0x005f  */
        /* JADX WARNING: Removed duplicated region for block: B:78:0x01a6  */
        /* JADX WARNING: Removed duplicated region for block: B:81:0x01c9  */
        /* JADX WARNING: Removed duplicated region for block: B:94:0x0202  */
        /* JADX WARNING: Removed duplicated region for block: B:95:0x0210  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public androidx.recyclerview.widget.RecyclerView.w a(int r17, boolean r18, long r19) {
            /*
                r16 = this;
                r6 = r16
                r3 = r17
                r0 = r18
                if (r3 < 0) goto L_0x0233
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$t r1 = r1.ra
                int r1 = r1.a()
                if (r3 >= r1) goto L_0x0233
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$t r1 = r1.ra
                boolean r1 = r1.d()
                r2 = 0
                r7 = 1
                r8 = 0
                if (r1 == 0) goto L_0x0027
                androidx.recyclerview.widget.RecyclerView$w r1 = r16.b((int) r17)
                if (r1 == 0) goto L_0x0028
                r4 = 1
                goto L_0x0029
            L_0x0027:
                r1 = r2
            L_0x0028:
                r4 = 0
            L_0x0029:
                if (r1 != 0) goto L_0x005d
                androidx.recyclerview.widget.RecyclerView$w r1 = r16.a((int) r17, (boolean) r18)
                if (r1 == 0) goto L_0x005d
                boolean r5 = r6.f((androidx.recyclerview.widget.RecyclerView.w) r1)
                if (r5 != 0) goto L_0x005c
                if (r0 != 0) goto L_0x005a
                r5 = 4
                r1.a((int) r5)
                boolean r5 = r1.r()
                if (r5 == 0) goto L_0x004e
                androidx.recyclerview.widget.RecyclerView r5 = androidx.recyclerview.widget.RecyclerView.this
                android.view.View r9 = r1.f891b
                r5.removeDetachedView(r9, r8)
                r1.z()
                goto L_0x0057
            L_0x004e:
                boolean r5 = r1.A()
                if (r5 == 0) goto L_0x0057
                r1.c()
            L_0x0057:
                r6.d((androidx.recyclerview.widget.RecyclerView.w) r1)
            L_0x005a:
                r1 = r2
                goto L_0x005d
            L_0x005c:
                r4 = 1
            L_0x005d:
                if (r1 != 0) goto L_0x0185
                androidx.recyclerview.widget.RecyclerView r5 = androidx.recyclerview.widget.RecyclerView.this
                b.y.a.a r5 = r5.n
                int r5 = r5.c((int) r3)
                if (r5 < 0) goto L_0x0148
                androidx.recyclerview.widget.RecyclerView r9 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$a r9 = r9.v
                int r9 = r9.a()
                if (r5 >= r9) goto L_0x0148
                androidx.recyclerview.widget.RecyclerView r9 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$a r9 = r9.v
                int r9 = r9.b((int) r5)
                androidx.recyclerview.widget.RecyclerView r10 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$a r10 = r10.v
                boolean r10 = r10.c()
                if (r10 == 0) goto L_0x0096
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$a r1 = r1.v
                long r10 = r1.a((int) r5)
                androidx.recyclerview.widget.RecyclerView$w r1 = r6.a((long) r10, (int) r9, (boolean) r0)
                if (r1 == 0) goto L_0x0096
                r1.f893d = r5
                r4 = 1
            L_0x0096:
                if (r1 != 0) goto L_0x00eb
                androidx.recyclerview.widget.RecyclerView$u r0 = r6.f853h
                if (r0 == 0) goto L_0x00eb
                android.view.View r0 = r0.a(r6, r3, r9)
                if (r0 == 0) goto L_0x00eb
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$w r1 = r1.h((android.view.View) r0)
                if (r1 == 0) goto L_0x00ce
                boolean r0 = r1.y()
                if (r0 != 0) goto L_0x00b1
                goto L_0x00eb
            L_0x00b1:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."
                r1.append(r2)
                androidx.recyclerview.widget.RecyclerView r2 = androidx.recyclerview.widget.RecyclerView.this
                java.lang.String r2 = r2.o()
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            L_0x00ce:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "getViewForPositionAndType returned a view which does not have a ViewHolder"
                r1.append(r2)
                androidx.recyclerview.widget.RecyclerView r2 = androidx.recyclerview.widget.RecyclerView.this
                java.lang.String r2 = r2.o()
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            L_0x00eb:
                if (r1 != 0) goto L_0x0101
                androidx.recyclerview.widget.RecyclerView$o r0 = r16.d()
                androidx.recyclerview.widget.RecyclerView$w r1 = r0.a((int) r9)
                if (r1 == 0) goto L_0x0101
                r1.v()
                boolean r0 = androidx.recyclerview.widget.RecyclerView.f796c
                if (r0 == 0) goto L_0x0101
                r6.c((androidx.recyclerview.widget.RecyclerView.w) r1)
            L_0x0101:
                if (r1 != 0) goto L_0x0185
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                long r0 = r0.getNanoTime()
                r10 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r5 = (r19 > r10 ? 1 : (r19 == r10 ? 0 : -1))
                if (r5 == 0) goto L_0x011f
                androidx.recyclerview.widget.RecyclerView$o r10 = r6.f852g
                r11 = r9
                r12 = r0
                r14 = r19
                boolean r5 = r10.b(r11, r12, r14)
                if (r5 != 0) goto L_0x011f
                return r2
            L_0x011f:
                androidx.recyclerview.widget.RecyclerView r2 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$a r5 = r2.v
                androidx.recyclerview.widget.RecyclerView$w r2 = r5.a((android.view.ViewGroup) r2, (int) r9)
                boolean r5 = androidx.recyclerview.widget.RecyclerView.f799f
                if (r5 == 0) goto L_0x013a
                android.view.View r5 = r2.f891b
                androidx.recyclerview.widget.RecyclerView r5 = androidx.recyclerview.widget.RecyclerView.e((android.view.View) r5)
                if (r5 == 0) goto L_0x013a
                java.lang.ref.WeakReference r10 = new java.lang.ref.WeakReference
                r10.<init>(r5)
                r2.f892c = r10
            L_0x013a:
                androidx.recyclerview.widget.RecyclerView r5 = androidx.recyclerview.widget.RecyclerView.this
                long r10 = r5.getNanoTime()
                androidx.recyclerview.widget.RecyclerView$o r5 = r6.f852g
                long r10 = r10 - r0
                r5.b(r9, r10)
                r10 = r2
                goto L_0x0186
            L_0x0148:
                java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Inconsistency detected. Invalid item position "
                r1.append(r2)
                r1.append(r3)
                java.lang.String r2 = "(offset:"
                r1.append(r2)
                r1.append(r5)
                java.lang.String r2 = ")."
                r1.append(r2)
                java.lang.String r2 = "state:"
                r1.append(r2)
                androidx.recyclerview.widget.RecyclerView r2 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$t r2 = r2.ra
                int r2 = r2.a()
                r1.append(r2)
                androidx.recyclerview.widget.RecyclerView r2 = androidx.recyclerview.widget.RecyclerView.this
                java.lang.String r2 = r2.o()
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            L_0x0185:
                r10 = r1
            L_0x0186:
                r9 = r4
                if (r9 == 0) goto L_0x01bf
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$t r0 = r0.ra
                boolean r0 = r0.d()
                if (r0 != 0) goto L_0x01bf
                r0 = 8192(0x2000, float:1.14794E-41)
                boolean r1 = r10.b((int) r0)
                if (r1 == 0) goto L_0x01bf
                r10.a((int) r8, (int) r0)
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$t r0 = r0.ra
                boolean r0 = r0.f881k
                if (r0 == 0) goto L_0x01bf
                int r0 = androidx.recyclerview.widget.RecyclerView.f.a((androidx.recyclerview.widget.RecyclerView.w) r10)
                r0 = r0 | 4096(0x1000, float:5.74E-42)
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$f r2 = r1.W
                androidx.recyclerview.widget.RecyclerView$t r1 = r1.ra
                java.util.List r4 = r10.l()
                androidx.recyclerview.widget.RecyclerView$f$c r0 = r2.a((androidx.recyclerview.widget.RecyclerView.t) r1, (androidx.recyclerview.widget.RecyclerView.w) r10, (int) r0, (java.util.List<java.lang.Object>) r4)
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                r1.a((androidx.recyclerview.widget.RecyclerView.w) r10, (androidx.recyclerview.widget.RecyclerView.f.c) r0)
            L_0x01bf:
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$t r0 = r0.ra
                boolean r0 = r0.d()
                if (r0 == 0) goto L_0x01d2
                boolean r0 = r10.n()
                if (r0 == 0) goto L_0x01d2
                r10.f897h = r3
                goto L_0x01e5
            L_0x01d2:
                boolean r0 = r10.n()
                if (r0 == 0) goto L_0x01e7
                boolean r0 = r10.u()
                if (r0 != 0) goto L_0x01e7
                boolean r0 = r10.o()
                if (r0 == 0) goto L_0x01e5
                goto L_0x01e7
            L_0x01e5:
                r0 = 0
                goto L_0x01fa
            L_0x01e7:
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                b.y.a.a r0 = r0.n
                int r2 = r0.c((int) r3)
                r0 = r16
                r1 = r10
                r3 = r17
                r4 = r19
                boolean r0 = r0.a(r1, r2, r3, r4)
            L_0x01fa:
                android.view.View r1 = r10.f891b
                android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
                if (r1 != 0) goto L_0x0210
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                android.view.ViewGroup$LayoutParams r1 = r1.generateDefaultLayoutParams()
                androidx.recyclerview.widget.RecyclerView$j r1 = (androidx.recyclerview.widget.RecyclerView.j) r1
                android.view.View r2 = r10.f891b
                r2.setLayoutParams(r1)
                goto L_0x0228
            L_0x0210:
                androidx.recyclerview.widget.RecyclerView r2 = androidx.recyclerview.widget.RecyclerView.this
                boolean r2 = r2.checkLayoutParams(r1)
                if (r2 != 0) goto L_0x0226
                androidx.recyclerview.widget.RecyclerView r2 = androidx.recyclerview.widget.RecyclerView.this
                android.view.ViewGroup$LayoutParams r1 = r2.generateLayoutParams((android.view.ViewGroup.LayoutParams) r1)
                androidx.recyclerview.widget.RecyclerView$j r1 = (androidx.recyclerview.widget.RecyclerView.j) r1
                android.view.View r2 = r10.f891b
                r2.setLayoutParams(r1)
                goto L_0x0228
            L_0x0226:
                androidx.recyclerview.widget.RecyclerView$j r1 = (androidx.recyclerview.widget.RecyclerView.j) r1
            L_0x0228:
                r1.f836a = r10
                if (r9 == 0) goto L_0x022f
                if (r0 == 0) goto L_0x022f
                goto L_0x0230
            L_0x022f:
                r7 = 0
            L_0x0230:
                r1.f839d = r7
                return r10
            L_0x0233:
                java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Invalid item position "
                r1.append(r2)
                r1.append(r3)
                java.lang.String r2 = "("
                r1.append(r2)
                r1.append(r3)
                java.lang.String r2 = "). Item count:"
                r1.append(r2)
                androidx.recyclerview.widget.RecyclerView r2 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$t r2 = r2.ra
                int r2 = r2.a()
                r1.append(r2)
                androidx.recyclerview.widget.RecyclerView r2 = androidx.recyclerview.widget.RecyclerView.this
                java.lang.String r2 = r2.o()
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.p.a(int, boolean, long):androidx.recyclerview.widget.RecyclerView$w");
        }

        public void c(int i2, int i3) {
            int i4 = i3 + i2;
            for (int size = this.f848c.size() - 1; size >= 0; size--) {
                w wVar = this.f848c.get(size);
                if (wVar != null) {
                    int i5 = wVar.f893d;
                    if (i5 >= i2 && i5 < i4) {
                        wVar.a(2);
                        e(size);
                    }
                }
            }
        }

        public void b(w wVar) {
            q qVar = RecyclerView.this.x;
            if (qVar != null) {
                qVar.a(wVar);
            }
            a aVar = RecyclerView.this.v;
            if (aVar != null) {
                aVar.d(wVar);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.ra != null) {
                recyclerView.p.h(wVar);
            }
        }

        public void b(int i2, int i3) {
            int i4;
            int i5;
            int i6;
            if (i2 < i3) {
                i6 = i2;
                i5 = i3;
                i4 = -1;
            } else {
                i5 = i2;
                i6 = i3;
                i4 = 1;
            }
            int size = this.f848c.size();
            for (int i7 = 0; i7 < size; i7++) {
                w wVar = this.f848c.get(i7);
                if (wVar != null) {
                    int i8 = wVar.f893d;
                    if (i8 >= i6 && i8 <= i5) {
                        if (i8 == i2) {
                            wVar.a(i3 - i2, false);
                        } else {
                            wVar.a(i4, false);
                        }
                    }
                }
            }
        }

        public o d() {
            if (this.f852g == null) {
                this.f852g = new o();
            }
            return this.f852g;
        }

        public void b() {
            int size = this.f848c.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f848c.get(i2).a();
            }
            int size2 = this.f846a.size();
            for (int i3 = 0; i3 < size2; i3++) {
                this.f846a.get(i3).a();
            }
            ArrayList<w> arrayList = this.f847b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    this.f847b.get(i4).a();
                }
            }
        }

        public final void a(w wVar) {
            if (RecyclerView.this.x()) {
                View view = wVar.f891b;
                if (z.k(view) == 0) {
                    z.g(view, 1);
                }
                if (!z.v(view)) {
                    wVar.a(16384);
                    z.a(view, RecyclerView.this.ya.b());
                }
            }
        }

        public final void a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        public void a(w wVar, boolean z) {
            RecyclerView.c(wVar);
            if (wVar.b(16384)) {
                wVar.a(0, 16384);
                z.a(wVar.f891b, (C0258a) null);
            }
            if (z) {
                b(wVar);
            }
            wVar.s = null;
            d().a(wVar);
        }

        public void a(View view) {
            w i2 = RecyclerView.i(view);
            i2.o = null;
            i2.p = false;
            i2.c();
            d(i2);
        }

        public w a(int i2, boolean z) {
            int size = this.f846a.size();
            int i3 = 0;
            int i4 = 0;
            while (i4 < size) {
                w wVar = this.f846a.get(i4);
                if (wVar.A() || wVar.j() != i2 || wVar.o() || (!RecyclerView.this.ra.f878h && wVar.q())) {
                    i4++;
                } else {
                    wVar.a(32);
                    return wVar;
                }
            }
            if (!z) {
                View b2 = RecyclerView.this.o.b(i2);
                if (b2 != null) {
                    w i5 = RecyclerView.i(b2);
                    RecyclerView.this.o.g(b2);
                    int c2 = RecyclerView.this.o.c(b2);
                    if (c2 != -1) {
                        RecyclerView.this.o.a(c2);
                        c(b2);
                        i5.a(8224);
                        return i5;
                    }
                    throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + i5 + RecyclerView.this.o());
                }
            }
            int size2 = this.f848c.size();
            while (i3 < size2) {
                w wVar2 = this.f848c.get(i3);
                if (wVar2.o() || wVar2.j() != i2) {
                    i3++;
                } else {
                    if (!z) {
                        this.f848c.remove(i3);
                    }
                    return wVar2;
                }
            }
            return null;
        }

        public w a(long j2, int i2, boolean z) {
            for (int size = this.f846a.size() - 1; size >= 0; size--) {
                w wVar = this.f846a.get(size);
                if (wVar.h() == j2 && !wVar.A()) {
                    if (i2 == wVar.i()) {
                        wVar.a(32);
                        if (wVar.q() && !RecyclerView.this.ra.d()) {
                            wVar.a(2, 14);
                        }
                        return wVar;
                    } else if (!z) {
                        this.f846a.remove(size);
                        RecyclerView.this.removeDetachedView(wVar.f891b, false);
                        a(wVar.f891b);
                    }
                }
            }
            int size2 = this.f848c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                w wVar2 = this.f848c.get(size2);
                if (wVar2.h() == j2) {
                    if (i2 == wVar2.i()) {
                        if (!z) {
                            this.f848c.remove(size2);
                        }
                        return wVar2;
                    } else if (!z) {
                        e(size2);
                        return null;
                    }
                }
            }
        }

        public void a(a aVar, a aVar2, boolean z) {
            a();
            d().a(aVar, aVar2, z);
        }

        public void a(int i2, int i3) {
            int size = this.f848c.size();
            for (int i4 = 0; i4 < size; i4++) {
                w wVar = this.f848c.get(i4);
                if (wVar != null && wVar.f893d >= i2) {
                    wVar.a(i3, true);
                }
            }
        }

        public void a(int i2, int i3, boolean z) {
            int i4 = i2 + i3;
            for (int size = this.f848c.size() - 1; size >= 0; size--) {
                w wVar = this.f848c.get(size);
                if (wVar != null) {
                    int i5 = wVar.f893d;
                    if (i5 >= i4) {
                        wVar.a(-i3, z);
                    } else if (i5 >= i2) {
                        wVar.a(8);
                        e(size);
                    }
                }
            }
        }

        public void a(u uVar) {
            this.f853h = uVar;
        }

        public void a(o oVar) {
            o oVar2 = this.f852g;
            if (oVar2 != null) {
                oVar2.c();
            }
            this.f852g = oVar;
            if (this.f852g != null && RecyclerView.this.getAdapter() != null) {
                this.f852g.a();
            }
        }
    }

    public interface q {
        void a(w wVar);
    }

    private class r extends c {
        public r() {
        }

        public void a() {
            RecyclerView.this.a((String) null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.ra.f877g = true;
            recyclerView.b(true);
            if (!RecyclerView.this.n.c()) {
                RecyclerView.this.requestLayout();
            }
        }

        public void b(int i2, int i3) {
            RecyclerView.this.a((String) null);
            if (RecyclerView.this.n.b(i2, i3)) {
                b();
            }
        }

        public void c(int i2, int i3) {
            RecyclerView.this.a((String) null);
            if (RecyclerView.this.n.c(i2, i3)) {
                b();
            }
        }

        public void b() {
            if (RecyclerView.f798e) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.C && recyclerView.B) {
                    z.a((View) recyclerView, recyclerView.r);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.K = true;
            recyclerView2.requestLayout();
        }

        public void a(int i2, int i3, Object obj) {
            RecyclerView.this.a((String) null);
            if (RecyclerView.this.n.a(i2, i3, obj)) {
                b();
            }
        }

        public void a(int i2, int i3, int i4) {
            RecyclerView.this.a((String) null);
            if (RecyclerView.this.n.a(i2, i3, i4)) {
                b();
            }
        }
    }

    public static abstract class s {

        /* renamed from: a  reason: collision with root package name */
        public int f856a = -1;

        /* renamed from: b  reason: collision with root package name */
        public RecyclerView f857b;

        /* renamed from: c  reason: collision with root package name */
        public i f858c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f859d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f860e;

        /* renamed from: f  reason: collision with root package name */
        public View f861f;

        /* renamed from: g  reason: collision with root package name */
        public final a f862g = new a(0, 0);

        /* renamed from: h  reason: collision with root package name */
        public boolean f863h;

        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public int f864a;

            /* renamed from: b  reason: collision with root package name */
            public int f865b;

            /* renamed from: c  reason: collision with root package name */
            public int f866c;

            /* renamed from: d  reason: collision with root package name */
            public int f867d;

            /* renamed from: e  reason: collision with root package name */
            public Interpolator f868e;

            /* renamed from: f  reason: collision with root package name */
            public boolean f869f;

            /* renamed from: g  reason: collision with root package name */
            public int f870g;

            public a(int i2, int i3) {
                this(i2, i3, Integer.MIN_VALUE, null);
            }

            public void a(int i2) {
                this.f867d = i2;
            }

            public final void b() {
                if (this.f868e != null && this.f866c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                } else if (this.f866c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public a(int i2, int i3, int i4, Interpolator interpolator) {
                this.f867d = -1;
                this.f869f = false;
                this.f870g = 0;
                this.f864a = i2;
                this.f865b = i3;
                this.f866c = i4;
                this.f868e = interpolator;
            }

            public boolean a() {
                return this.f867d >= 0;
            }

            public void a(RecyclerView recyclerView) {
                int i2 = this.f867d;
                if (i2 >= 0) {
                    this.f867d = -1;
                    recyclerView.f(i2);
                    this.f869f = false;
                    return;
                }
                if (this.f869f) {
                    b();
                    Interpolator interpolator = this.f868e;
                    if (interpolator == null) {
                        int i3 = this.f866c;
                        if (i3 == Integer.MIN_VALUE) {
                            recyclerView.oa.b(this.f864a, this.f865b);
                        } else {
                            recyclerView.oa.a(this.f864a, this.f865b, i3);
                        }
                    } else {
                        recyclerView.oa.a(this.f864a, this.f865b, this.f866c, interpolator);
                    }
                    this.f870g++;
                    if (this.f870g > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f869f = false;
                } else {
                    this.f870g = 0;
                }
            }

            public void a(int i2, int i3, int i4, Interpolator interpolator) {
                this.f864a = i2;
                this.f865b = i3;
                this.f866c = i4;
                this.f868e = interpolator;
                this.f869f = true;
            }
        }

        public interface b {
            PointF a(int i2);
        }

        public abstract void a(int i2, int i3, t tVar, a aVar);

        public abstract void a(View view, t tVar, a aVar);

        public void a(RecyclerView recyclerView, i iVar) {
            if (this.f863h) {
                Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started " + "more than once. Each instance of" + getClass().getSimpleName() + " " + "is intended to only be used once. You should create a new instance for " + "each use.");
            }
            this.f857b = recyclerView;
            this.f858c = iVar;
            int i2 = this.f856a;
            if (i2 != -1) {
                this.f857b.ra.f871a = i2;
                this.f860e = true;
                this.f859d = true;
                this.f861f = b(c());
                f();
                this.f857b.oa.c();
                this.f863h = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        public i b() {
            return this.f858c;
        }

        public void c(int i2) {
            this.f856a = i2;
        }

        public boolean d() {
            return this.f859d;
        }

        public boolean e() {
            return this.f860e;
        }

        public abstract void f();

        public abstract void g();

        public final void h() {
            if (this.f860e) {
                this.f860e = false;
                g();
                this.f857b.ra.f871a = -1;
                this.f861f = null;
                this.f856a = -1;
                this.f859d = false;
                this.f858c.a(this);
                this.f858c = null;
                this.f857b = null;
            }
        }

        public View b(int i2) {
            return this.f857b.w.c(i2);
        }

        public int c() {
            return this.f856a;
        }

        public void b(View view) {
            if (a(view) == c()) {
                this.f861f = view;
            }
        }

        public PointF a(int i2) {
            i b2 = b();
            if (b2 instanceof b) {
                return ((b) b2).a(i2);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName());
            return null;
        }

        public void a(int i2, int i3) {
            RecyclerView recyclerView = this.f857b;
            if (!this.f860e || this.f856a == -1 || recyclerView == null) {
                h();
            }
            if (this.f859d && this.f861f == null && this.f858c != null) {
                PointF a2 = a(this.f856a);
                if (!(a2 == null || (a2.x == 0.0f && a2.y == 0.0f))) {
                    recyclerView.a((int) Math.signum(a2.x), (int) Math.signum(a2.y), (int[]) null);
                }
            }
            this.f859d = false;
            View view = this.f861f;
            if (view != null) {
                if (a(view) == this.f856a) {
                    a(this.f861f, recyclerView.ra, this.f862g);
                    this.f862g.a(recyclerView);
                    h();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f861f = null;
                }
            }
            if (this.f860e) {
                a(i2, i3, recyclerView.ra, this.f862g);
                boolean a3 = this.f862g.a();
                this.f862g.a(recyclerView);
                if (!a3) {
                    return;
                }
                if (this.f860e) {
                    this.f859d = true;
                    recyclerView.oa.c();
                    return;
                }
                h();
            }
        }

        public int a(View view) {
            return this.f857b.g(view);
        }

        public int a() {
            return this.f857b.w.e();
        }

        public void a(PointF pointF) {
            float f2 = pointF.x;
            float f3 = pointF.y;
            float sqrt = (float) Math.sqrt((double) ((f2 * f2) + (f3 * f3)));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }
    }

    public static class t {

        /* renamed from: a  reason: collision with root package name */
        public int f871a = -1;

        /* renamed from: b  reason: collision with root package name */
        public SparseArray<Object> f872b;

        /* renamed from: c  reason: collision with root package name */
        public int f873c = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f874d = 0;

        /* renamed from: e  reason: collision with root package name */
        public int f875e = 1;

        /* renamed from: f  reason: collision with root package name */
        public int f876f = 0;

        /* renamed from: g  reason: collision with root package name */
        public boolean f877g = false;

        /* renamed from: h  reason: collision with root package name */
        public boolean f878h = false;

        /* renamed from: i  reason: collision with root package name */
        public boolean f879i = false;

        /* renamed from: j  reason: collision with root package name */
        public boolean f880j = false;

        /* renamed from: k  reason: collision with root package name */
        public boolean f881k = false;

        /* renamed from: l  reason: collision with root package name */
        public boolean f882l = false;
        public int m;
        public long n;
        public int o;
        public int p;
        public int q;

        public void a(int i2) {
            if ((this.f875e & i2) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i2) + " but it is " + Integer.toBinaryString(this.f875e));
            }
        }

        public int b() {
            return this.f871a;
        }

        public boolean c() {
            return this.f871a != -1;
        }

        public boolean d() {
            return this.f878h;
        }

        public boolean e() {
            return this.f882l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f871a + ", mData=" + this.f872b + ", mItemCount=" + this.f876f + ", mIsMeasuring=" + this.f880j + ", mPreviousLayoutItemCount=" + this.f873c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f874d + ", mStructureChanged=" + this.f877g + ", mInPreLayout=" + this.f878h + ", mRunSimpleAnimations=" + this.f881k + ", mRunPredictiveAnimations=" + this.f882l + '}';
        }

        public void a(a aVar) {
            this.f875e = 1;
            this.f876f = aVar.a();
            this.f878h = false;
            this.f879i = false;
            this.f880j = false;
        }

        public int a() {
            return this.f878h ? this.f873c - this.f874d : this.f876f;
        }
    }

    public static abstract class u {
        public abstract View a(p pVar, int i2, int i3);
    }

    class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public int f883a;

        /* renamed from: b  reason: collision with root package name */
        public int f884b;

        /* renamed from: c  reason: collision with root package name */
        public OverScroller f885c;

        /* renamed from: d  reason: collision with root package name */
        public Interpolator f886d = RecyclerView.f803j;

        /* renamed from: e  reason: collision with root package name */
        public boolean f887e = false;

        /* renamed from: f  reason: collision with root package name */
        public boolean f888f = false;

        public v() {
            this.f885c = new OverScroller(RecyclerView.this.getContext(), RecyclerView.f803j);
        }

        public final void a() {
            this.f888f = false;
            this.f887e = true;
        }

        public final void b() {
            this.f887e = false;
            if (this.f888f) {
                c();
            }
        }

        public void c() {
            if (this.f887e) {
                this.f888f = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            z.a((View) RecyclerView.this, (Runnable) this);
        }

        public void d() {
            RecyclerView.this.removeCallbacks(this);
            this.f885c.abortAnimation();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:45:0x00eb, code lost:
            if (r8 > 0) goto L_0x00ef;
         */
        /* JADX WARNING: Removed duplicated region for block: B:43:0x00e7  */
        /* JADX WARNING: Removed duplicated region for block: B:49:0x00f7  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r22 = this;
                r0 = r22
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$i r1 = r1.w
                if (r1 != 0) goto L_0x000c
                r22.d()
                return
            L_0x000c:
                r22.a()
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                r1.d()
                android.widget.OverScroller r1 = r0.f885c
                androidx.recyclerview.widget.RecyclerView r2 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$i r2 = r2.w
                androidx.recyclerview.widget.RecyclerView$s r2 = r2.f826g
                boolean r3 = r1.computeScrollOffset()
                r4 = 0
                if (r3 == 0) goto L_0x018b
                androidx.recyclerview.widget.RecyclerView r3 = androidx.recyclerview.widget.RecyclerView.this
                int[] r3 = r3.Da
                int r11 = r1.getCurrX()
                int r12 = r1.getCurrY()
                int r5 = r0.f883a
                int r13 = r11 - r5
                int r5 = r0.f884b
                int r14 = r12 - r5
                r0.f883a = r11
                r0.f884b = r12
                androidx.recyclerview.widget.RecyclerView r5 = androidx.recyclerview.widget.RecyclerView.this
                r9 = 0
                r10 = 1
                r6 = r13
                r7 = r14
                r8 = r3
                boolean r5 = r5.a((int) r6, (int) r7, (int[]) r8, (int[]) r9, (int) r10)
                r6 = 1
                if (r5 == 0) goto L_0x004f
                r5 = r3[r4]
                int r13 = r13 - r5
                r3 = r3[r6]
                int r14 = r14 - r3
            L_0x004f:
                androidx.recyclerview.widget.RecyclerView r3 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$a r5 = r3.v
                if (r5 == 0) goto L_0x009c
                int[] r5 = r3.Fa
                r3.a((int) r13, (int) r14, (int[]) r5)
                androidx.recyclerview.widget.RecyclerView r3 = androidx.recyclerview.widget.RecyclerView.this
                int[] r3 = r3.Fa
                r5 = r3[r4]
                r3 = r3[r6]
                int r7 = r13 - r5
                int r8 = r14 - r3
                if (r2 == 0) goto L_0x00a0
                boolean r9 = r2.d()
                if (r9 != 0) goto L_0x00a0
                boolean r9 = r2.e()
                if (r9 == 0) goto L_0x00a0
                androidx.recyclerview.widget.RecyclerView r9 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$t r9 = r9.ra
                int r9 = r9.a()
                if (r9 != 0) goto L_0x0082
                r2.h()
                goto L_0x00a0
            L_0x0082:
                int r10 = r2.c()
                if (r10 < r9) goto L_0x0094
                int r9 = r9 - r6
                r2.c(r9)
                int r9 = r13 - r7
                int r10 = r14 - r8
                r2.a((int) r9, (int) r10)
                goto L_0x00a0
            L_0x0094:
                int r9 = r13 - r7
                int r10 = r14 - r8
                r2.a((int) r9, (int) r10)
                goto L_0x00a0
            L_0x009c:
                r3 = 0
                r5 = 0
                r7 = 0
                r8 = 0
            L_0x00a0:
                androidx.recyclerview.widget.RecyclerView r9 = androidx.recyclerview.widget.RecyclerView.this
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$h> r9 = r9.y
                boolean r9 = r9.isEmpty()
                if (r9 != 0) goto L_0x00af
                androidx.recyclerview.widget.RecyclerView r9 = androidx.recyclerview.widget.RecyclerView.this
                r9.invalidate()
            L_0x00af:
                androidx.recyclerview.widget.RecyclerView r9 = androidx.recyclerview.widget.RecyclerView.this
                int r9 = r9.getOverScrollMode()
                r10 = 2
                if (r9 == r10) goto L_0x00bd
                androidx.recyclerview.widget.RecyclerView r9 = androidx.recyclerview.widget.RecyclerView.this
                r9.b((int) r13, (int) r14)
            L_0x00bd:
                androidx.recyclerview.widget.RecyclerView r15 = androidx.recyclerview.widget.RecyclerView.this
                r20 = 0
                r21 = 1
                r16 = r5
                r17 = r3
                r18 = r7
                r19 = r8
                boolean r9 = r15.a((int) r16, (int) r17, (int) r18, (int) r19, (int[]) r20, (int) r21)
                if (r9 != 0) goto L_0x0113
                if (r7 != 0) goto L_0x00d5
                if (r8 == 0) goto L_0x0113
            L_0x00d5:
                float r9 = r1.getCurrVelocity()
                int r9 = (int) r9
                if (r7 == r11) goto L_0x00e4
                if (r7 >= 0) goto L_0x00e0
                int r15 = -r9
                goto L_0x00e5
            L_0x00e0:
                if (r7 <= 0) goto L_0x00e4
                r15 = r9
                goto L_0x00e5
            L_0x00e4:
                r15 = 0
            L_0x00e5:
                if (r8 == r12) goto L_0x00ee
                if (r8 >= 0) goto L_0x00eb
                int r9 = -r9
                goto L_0x00ef
            L_0x00eb:
                if (r8 <= 0) goto L_0x00ee
                goto L_0x00ef
            L_0x00ee:
                r9 = 0
            L_0x00ef:
                androidx.recyclerview.widget.RecyclerView r4 = androidx.recyclerview.widget.RecyclerView.this
                int r4 = r4.getOverScrollMode()
                if (r4 == r10) goto L_0x00fc
                androidx.recyclerview.widget.RecyclerView r4 = androidx.recyclerview.widget.RecyclerView.this
                r4.a((int) r15, (int) r9)
            L_0x00fc:
                if (r15 != 0) goto L_0x0106
                if (r7 == r11) goto L_0x0106
                int r4 = r1.getFinalX()
                if (r4 != 0) goto L_0x0113
            L_0x0106:
                if (r9 != 0) goto L_0x0110
                if (r8 == r12) goto L_0x0110
                int r4 = r1.getFinalY()
                if (r4 != 0) goto L_0x0113
            L_0x0110:
                r1.abortAnimation()
            L_0x0113:
                if (r5 != 0) goto L_0x0117
                if (r3 == 0) goto L_0x011c
            L_0x0117:
                androidx.recyclerview.widget.RecyclerView r4 = androidx.recyclerview.widget.RecyclerView.this
                r4.e(r5, r3)
            L_0x011c:
                androidx.recyclerview.widget.RecyclerView r4 = androidx.recyclerview.widget.RecyclerView.this
                boolean r4 = r4.awakenScrollBars()
                if (r4 != 0) goto L_0x0129
                androidx.recyclerview.widget.RecyclerView r4 = androidx.recyclerview.widget.RecyclerView.this
                r4.invalidate()
            L_0x0129:
                if (r14 == 0) goto L_0x0139
                androidx.recyclerview.widget.RecyclerView r4 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$i r4 = r4.w
                boolean r4 = r4.b()
                if (r4 == 0) goto L_0x0139
                if (r3 != r14) goto L_0x0139
                r3 = 1
                goto L_0x013a
            L_0x0139:
                r3 = 0
            L_0x013a:
                if (r13 == 0) goto L_0x014a
                androidx.recyclerview.widget.RecyclerView r4 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.RecyclerView$i r4 = r4.w
                boolean r4 = r4.a()
                if (r4 == 0) goto L_0x014a
                if (r5 != r13) goto L_0x014a
                r4 = 1
                goto L_0x014b
            L_0x014a:
                r4 = 0
            L_0x014b:
                if (r13 != 0) goto L_0x014f
                if (r14 == 0) goto L_0x0156
            L_0x014f:
                if (r4 != 0) goto L_0x0156
                if (r3 == 0) goto L_0x0154
                goto L_0x0156
            L_0x0154:
                r3 = 0
                goto L_0x0157
            L_0x0156:
                r3 = 1
            L_0x0157:
                boolean r1 = r1.isFinished()
                if (r1 != 0) goto L_0x0175
                if (r3 != 0) goto L_0x0168
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                boolean r1 = r1.e((int) r6)
                if (r1 != 0) goto L_0x0168
                goto L_0x0175
            L_0x0168:
                r22.c()
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                b.y.a.u r3 = r1.pa
                if (r3 == 0) goto L_0x018b
                r3.a((androidx.recyclerview.widget.RecyclerView) r1, (int) r13, (int) r14)
                goto L_0x018b
            L_0x0175:
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                r3 = 0
                r1.setScrollState(r3)
                boolean r1 = androidx.recyclerview.widget.RecyclerView.f799f
                if (r1 == 0) goto L_0x0186
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                b.y.a.u$a r1 = r1.qa
                r1.a()
            L_0x0186:
                androidx.recyclerview.widget.RecyclerView r1 = androidx.recyclerview.widget.RecyclerView.this
                r1.a((int) r6)
            L_0x018b:
                if (r2 == 0) goto L_0x019e
                boolean r1 = r2.d()
                if (r1 == 0) goto L_0x0197
                r1 = 0
                r2.a((int) r1, (int) r1)
            L_0x0197:
                boolean r1 = r0.f888f
                if (r1 != 0) goto L_0x019e
                r2.h()
            L_0x019e:
                r22.b()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.v.run():void");
        }

        public void a(int i2, int i3) {
            RecyclerView.this.setScrollState(2);
            this.f884b = 0;
            this.f883a = 0;
            this.f885c.fling(0, 0, i2, i3, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            c();
        }

        public void b(int i2, int i3) {
            b(i2, i3, 0, 0);
        }

        public void b(int i2, int i3, int i4, int i5) {
            a(i2, i3, a(i2, i3, i4, i5));
        }

        public final float a(float f2) {
            return (float) Math.sin((double) ((f2 - 0.5f) * 0.47123894f));
        }

        public final int a(int i2, int i3, int i4, int i5) {
            int i6;
            int abs = Math.abs(i2);
            int abs2 = Math.abs(i3);
            boolean z = abs > abs2;
            int sqrt = (int) Math.sqrt((double) ((i4 * i4) + (i5 * i5)));
            int sqrt2 = (int) Math.sqrt((double) ((i2 * i2) + (i3 * i3)));
            int width = z ? RecyclerView.this.getWidth() : RecyclerView.this.getHeight();
            int i7 = width / 2;
            float f2 = (float) width;
            float f3 = (float) i7;
            float a2 = f3 + (a(Math.min(1.0f, (((float) sqrt2) * 1.0f) / f2)) * f3);
            if (sqrt > 0) {
                i6 = Math.round(Math.abs(a2 / ((float) sqrt)) * 1000.0f) * 4;
            } else {
                if (!z) {
                    abs = abs2;
                }
                i6 = (int) (((((float) abs) / f2) + 1.0f) * 300.0f);
            }
            return Math.min(i6, 2000);
        }

        public void a(int i2, int i3, int i4) {
            a(i2, i3, i4, RecyclerView.f803j);
        }

        public void a(int i2, int i3, Interpolator interpolator) {
            int a2 = a(i2, i3, 0, 0);
            if (interpolator == null) {
                interpolator = RecyclerView.f803j;
            }
            a(i2, i3, a2, interpolator);
        }

        public void a(int i2, int i3, int i4, Interpolator interpolator) {
            if (this.f886d != interpolator) {
                this.f886d = interpolator;
                this.f885c = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.f884b = 0;
            this.f883a = 0;
            this.f885c.startScroll(0, 0, i2, i3, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f885c.computeScrollOffset();
            }
            c();
        }
    }

    public static abstract class w {

        /* renamed from: a  reason: collision with root package name */
        public static final List<Object> f890a = Collections.emptyList();

        /* renamed from: b  reason: collision with root package name */
        public final View f891b;

        /* renamed from: c  reason: collision with root package name */
        public WeakReference<RecyclerView> f892c;

        /* renamed from: d  reason: collision with root package name */
        public int f893d = -1;

        /* renamed from: e  reason: collision with root package name */
        public int f894e = -1;

        /* renamed from: f  reason: collision with root package name */
        public long f895f = -1;

        /* renamed from: g  reason: collision with root package name */
        public int f896g = -1;

        /* renamed from: h  reason: collision with root package name */
        public int f897h = -1;

        /* renamed from: i  reason: collision with root package name */
        public w f898i = null;

        /* renamed from: j  reason: collision with root package name */
        public w f899j = null;

        /* renamed from: k  reason: collision with root package name */
        public int f900k;

        /* renamed from: l  reason: collision with root package name */
        public List<Object> f901l = null;
        public List<Object> m = null;
        public int n = 0;
        public p o = null;
        public boolean p = false;
        public int q = 0;
        public int r = -1;
        public RecyclerView s;

        public w(View view) {
            if (view != null) {
                this.f891b = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        public boolean A() {
            return (this.f900k & 32) != 0;
        }

        public void a(int i2, int i3, boolean z) {
            a(8);
            a(i3, z);
            this.f893d = i2;
        }

        public boolean b(int i2) {
            return (i2 & this.f900k) != 0;
        }

        public void c() {
            this.f900k &= -33;
        }

        public void d() {
            this.f900k &= -257;
        }

        public final void e() {
            if (this.f901l == null) {
                this.f901l = new ArrayList();
                this.m = Collections.unmodifiableList(this.f901l);
            }
        }

        public boolean f() {
            return (this.f900k & 16) == 0 && z.y(this.f891b);
        }

        public final int g() {
            RecyclerView recyclerView = this.s;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.d(this);
        }

        public final long h() {
            return this.f895f;
        }

        public final int i() {
            return this.f896g;
        }

        public final int j() {
            int i2 = this.f897h;
            return i2 == -1 ? this.f893d : i2;
        }

        public final int k() {
            return this.f894e;
        }

        public List<Object> l() {
            if ((this.f900k & 1024) != 0) {
                return f890a;
            }
            List<Object> list = this.f901l;
            if (list == null || list.size() == 0) {
                return f890a;
            }
            return this.m;
        }

        public boolean m() {
            return (this.f900k & 512) != 0 || o();
        }

        public boolean n() {
            return (this.f900k & 1) != 0;
        }

        public boolean o() {
            return (this.f900k & 4) != 0;
        }

        public final boolean p() {
            return (this.f900k & 16) == 0 && !z.y(this.f891b);
        }

        public boolean q() {
            return (this.f900k & 8) != 0;
        }

        public boolean r() {
            return this.o != null;
        }

        public boolean s() {
            return (this.f900k & 256) != 0;
        }

        public boolean t() {
            return (this.f900k & 2) != 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.f893d + " id=" + this.f895f + ", oldPos=" + this.f894e + ", pLpos:" + this.f897h);
            if (r()) {
                sb.append(" scrap ");
                sb.append(this.p ? "[changeScrap]" : "[attachedScrap]");
            }
            if (o()) {
                sb.append(" invalid");
            }
            if (!n()) {
                sb.append(" unbound");
            }
            if (u()) {
                sb.append(" update");
            }
            if (q()) {
                sb.append(" removed");
            }
            if (y()) {
                sb.append(" ignored");
            }
            if (s()) {
                sb.append(" tmpDetached");
            }
            if (!p()) {
                sb.append(" not recyclable(" + this.n + ")");
            }
            if (m()) {
                sb.append(" undefined adapter position");
            }
            if (this.f891b.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public boolean u() {
            return (this.f900k & 2) != 0;
        }

        public void v() {
            this.f900k = 0;
            this.f893d = -1;
            this.f894e = -1;
            this.f895f = -1;
            this.f897h = -1;
            this.n = 0;
            this.f898i = null;
            this.f899j = null;
            b();
            this.q = 0;
            this.r = -1;
            RecyclerView.c(this);
        }

        public void w() {
            if (this.f894e == -1) {
                this.f894e = this.f893d;
            }
        }

        public boolean x() {
            return (this.f900k & 16) != 0;
        }

        public boolean y() {
            return (this.f900k & 128) != 0;
        }

        public void z() {
            this.o.e(this);
        }

        public void b() {
            List<Object> list = this.f901l;
            if (list != null) {
                list.clear();
            }
            this.f900k &= -1025;
        }

        public void a(int i2, boolean z) {
            if (this.f894e == -1) {
                this.f894e = this.f893d;
            }
            if (this.f897h == -1) {
                this.f897h = this.f893d;
            }
            if (z) {
                this.f897h += i2;
            }
            this.f893d += i2;
            if (this.f891b.getLayoutParams() != null) {
                ((j) this.f891b.getLayoutParams()).f838c = true;
            }
        }

        public void b(RecyclerView recyclerView) {
            recyclerView.a(this, this.q);
            this.q = 0;
        }

        public void a() {
            this.f894e = -1;
            this.f897h = -1;
        }

        public void a(p pVar, boolean z) {
            this.o = pVar;
            this.p = z;
        }

        public void a(int i2, int i3) {
            this.f900k = (i2 & i3) | (this.f900k & (i3 ^ -1));
        }

        public void a(int i2) {
            this.f900k = i2 | this.f900k;
        }

        public void a(Object obj) {
            if (obj == null) {
                a(1024);
            } else if ((1024 & this.f900k) == 0) {
                e();
                this.f901l.add(obj);
            }
        }

        public void a(RecyclerView recyclerView) {
            int i2 = this.r;
            if (i2 != -1) {
                this.q = i2;
            } else {
                this.q = z.k(this.f891b);
            }
            recyclerView.a(this, 4);
        }

        public final void a(boolean z) {
            this.n = z ? this.n - 1 : this.n + 1;
            int i2 = this.n;
            if (i2 < 0) {
                this.n = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && i2 == 1) {
                this.f900k |= 16;
            } else if (z && this.n == 0) {
                this.f900k &= -17;
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v15, resolved type: java.lang.Class<?>[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        /*
            r0 = 1
            int[] r1 = new int[r0]
            r2 = 0
            r3 = 16843830(0x1010436, float:2.369658E-38)
            r1[r2] = r3
            f794a = r1
            int[] r1 = new int[r0]
            r3 = 16842987(0x10100eb, float:2.3694217E-38)
            r1[r2] = r3
            f795b = r1
            int r1 = android.os.Build.VERSION.SDK_INT
            r3 = 18
            if (r1 == r3) goto L_0x0025
            r3 = 19
            if (r1 == r3) goto L_0x0025
            r3 = 20
            if (r1 != r3) goto L_0x0023
            goto L_0x0025
        L_0x0023:
            r1 = 0
            goto L_0x0026
        L_0x0025:
            r1 = 1
        L_0x0026:
            f796c = r1
            int r1 = android.os.Build.VERSION.SDK_INT
            r3 = 23
            if (r1 < r3) goto L_0x0030
            r1 = 1
            goto L_0x0031
        L_0x0030:
            r1 = 0
        L_0x0031:
            f797d = r1
            int r1 = android.os.Build.VERSION.SDK_INT
            r3 = 16
            if (r1 < r3) goto L_0x003b
            r1 = 1
            goto L_0x003c
        L_0x003b:
            r1 = 0
        L_0x003c:
            f798e = r1
            int r1 = android.os.Build.VERSION.SDK_INT
            r3 = 21
            if (r1 < r3) goto L_0x0046
            r1 = 1
            goto L_0x0047
        L_0x0046:
            r1 = 0
        L_0x0047:
            f799f = r1
            int r1 = android.os.Build.VERSION.SDK_INT
            r3 = 15
            if (r1 > r3) goto L_0x0051
            r1 = 1
            goto L_0x0052
        L_0x0051:
            r1 = 0
        L_0x0052:
            f800g = r1
            int r1 = android.os.Build.VERSION.SDK_INT
            if (r1 > r3) goto L_0x005a
            r1 = 1
            goto L_0x005b
        L_0x005a:
            r1 = 0
        L_0x005b:
            f801h = r1
            r1 = 4
            java.lang.Class[] r1 = new java.lang.Class[r1]
            java.lang.Class<android.content.Context> r3 = android.content.Context.class
            r1[r2] = r3
            java.lang.Class<android.util.AttributeSet> r2 = android.util.AttributeSet.class
            r1[r0] = r2
            r0 = 2
            java.lang.Class r2 = java.lang.Integer.TYPE
            r1[r0] = r2
            r0 = 3
            r1[r0] = r2
            f802i = r1
            b.y.a.G r0 = new b.y.a.G
            r0.<init>()
            f803j = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.<clinit>():void");
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    private C0269l getScrollingChildHelper() {
        if (this.Ba == null) {
            this.Ba = new C0269l(this);
        }
        return this.Ba;
    }

    public void A() {
        int b2 = this.o.b();
        for (int i2 = 0; i2 < b2; i2++) {
            w i3 = i(this.o.e(i2));
            if (i3 != null && !i3.y()) {
                i3.a(6);
            }
        }
        z();
        this.f805l.h();
    }

    public void B() {
        this.P++;
    }

    public void C() {
        a(true);
    }

    public void D() {
        if (!this.xa && this.B) {
            z.a((View) this, this.Ha);
            this.xa = true;
        }
    }

    public final boolean E() {
        return this.W != null && this.w.D();
    }

    public final void F() {
        if (this.N) {
            this.n.f();
            if (this.O) {
                this.w.d(this);
            }
        }
        if (E()) {
            this.n.e();
        } else {
            this.n.b();
        }
        boolean z2 = false;
        boolean z3 = this.ua || this.va;
        this.ra.f881k = this.E && this.W != null && (this.N || z3 || this.w.f827h) && (!this.N || this.v.c());
        t tVar = this.ra;
        if (tVar.f881k && z3 && !this.N && E()) {
            z2 = true;
        }
        tVar.f882l = z2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00ab, code lost:
        if (r0.isFocusable() != false) goto L_0x00af;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void G() {
        /*
            r7 = this;
            boolean r0 = r7.na
            if (r0 == 0) goto L_0x00b2
            androidx.recyclerview.widget.RecyclerView$a r0 = r7.v
            if (r0 == 0) goto L_0x00b2
            boolean r0 = r7.hasFocus()
            if (r0 == 0) goto L_0x00b2
            int r0 = r7.getDescendantFocusability()
            r1 = 393216(0x60000, float:5.51013E-40)
            if (r0 == r1) goto L_0x00b2
            int r0 = r7.getDescendantFocusability()
            r1 = 131072(0x20000, float:1.83671E-40)
            if (r0 != r1) goto L_0x0026
            boolean r0 = r7.isFocused()
            if (r0 == 0) goto L_0x0026
            goto L_0x00b2
        L_0x0026:
            boolean r0 = r7.isFocused()
            if (r0 != 0) goto L_0x0055
            android.view.View r0 = r7.getFocusedChild()
            boolean r1 = f801h
            if (r1 == 0) goto L_0x004c
            android.view.ViewParent r1 = r0.getParent()
            if (r1 == 0) goto L_0x0040
            boolean r1 = r0.hasFocus()
            if (r1 != 0) goto L_0x004c
        L_0x0040:
            b.y.a.d r0 = r7.o
            int r0 = r0.a()
            if (r0 != 0) goto L_0x0055
            r7.requestFocus()
            return
        L_0x004c:
            b.y.a.d r1 = r7.o
            boolean r0 = r1.d((android.view.View) r0)
            if (r0 != 0) goto L_0x0055
            return
        L_0x0055:
            androidx.recyclerview.widget.RecyclerView$t r0 = r7.ra
            long r0 = r0.n
            r2 = -1
            r4 = 0
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 == 0) goto L_0x0071
            androidx.recyclerview.widget.RecyclerView$a r0 = r7.v
            boolean r0 = r0.c()
            if (r0 == 0) goto L_0x0071
            androidx.recyclerview.widget.RecyclerView$t r0 = r7.ra
            long r0 = r0.n
            androidx.recyclerview.widget.RecyclerView$w r0 = r7.a((long) r0)
            goto L_0x0072
        L_0x0071:
            r0 = r4
        L_0x0072:
            if (r0 == 0) goto L_0x008a
            b.y.a.d r1 = r7.o
            android.view.View r5 = r0.f891b
            boolean r1 = r1.d((android.view.View) r5)
            if (r1 != 0) goto L_0x008a
            android.view.View r1 = r0.f891b
            boolean r1 = r1.hasFocusable()
            if (r1 != 0) goto L_0x0087
            goto L_0x008a
        L_0x0087:
            android.view.View r4 = r0.f891b
            goto L_0x0096
        L_0x008a:
            b.y.a.d r0 = r7.o
            int r0 = r0.a()
            if (r0 <= 0) goto L_0x0096
            android.view.View r4 = r7.p()
        L_0x0096:
            if (r4 == 0) goto L_0x00b2
            androidx.recyclerview.widget.RecyclerView$t r0 = r7.ra
            int r0 = r0.o
            long r5 = (long) r0
            int r1 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r1 == 0) goto L_0x00ae
            android.view.View r0 = r4.findViewById(r0)
            if (r0 == 0) goto L_0x00ae
            boolean r1 = r0.isFocusable()
            if (r1 == 0) goto L_0x00ae
            goto L_0x00af
        L_0x00ae:
            r0 = r4
        L_0x00af:
            r0.requestFocus()
        L_0x00b2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.G():void");
    }

    public final void H() {
        boolean z2;
        EdgeEffect edgeEffect = this.S;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z2 = this.S.isFinished();
        } else {
            z2 = false;
        }
        EdgeEffect edgeEffect2 = this.T;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 |= this.T.isFinished();
        }
        EdgeEffect edgeEffect3 = this.U;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z2 |= this.U.isFinished();
        }
        EdgeEffect edgeEffect4 = this.V;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z2 |= this.V.isFinished();
        }
        if (z2) {
            z.F(this);
        }
    }

    public void I() {
        f fVar = this.W;
        if (fVar != null) {
            fVar.b();
        }
        i iVar = this.w;
        if (iVar != null) {
            iVar.b(this.f805l);
            this.w.c(this.f805l);
        }
        this.f805l.a();
    }

    public void J() {
        int a2 = this.o.a();
        for (int i2 = 0; i2 < a2; i2++) {
            View c2 = this.o.c(i2);
            w h2 = h(c2);
            if (h2 != null) {
                w wVar = h2.f899j;
                if (wVar != null) {
                    View view = wVar.f891b;
                    int left = c2.getLeft();
                    int top = c2.getTop();
                    if (left != view.getLeft() || top != view.getTop()) {
                        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                    }
                }
            }
        }
    }

    public final void K() {
        t tVar = this.ra;
        tVar.n = -1;
        tVar.m = -1;
        tVar.o = -1;
    }

    public final void L() {
        VelocityTracker velocityTracker = this.ca;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        a(0);
        H();
    }

    public final void M() {
        int i2;
        w wVar = null;
        View focusedChild = (!this.na || !hasFocus() || this.v == null) ? null : getFocusedChild();
        if (focusedChild != null) {
            wVar = d(focusedChild);
        }
        if (wVar == null) {
            K();
            return;
        }
        this.ra.n = this.v.c() ? wVar.h() : -1;
        t tVar = this.ra;
        if (this.N) {
            i2 = -1;
        } else if (wVar.q()) {
            i2 = wVar.f894e;
        } else {
            i2 = wVar.g();
        }
        tVar.m = i2;
        this.ra.o = j(wVar.f891b);
    }

    public void N() {
        int b2 = this.o.b();
        for (int i2 = 0; i2 < b2; i2++) {
            w i3 = i(this.o.e(i2));
            if (!i3.y()) {
                i3.w();
            }
        }
    }

    public void O() {
        this.F++;
        if (this.F == 1 && !this.H) {
            this.G = false;
        }
    }

    public void P() {
        setScrollState(0);
        Q();
    }

    public final void Q() {
        this.oa.d();
        i iVar = this.w;
        if (iVar != null) {
            iVar.C();
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        i iVar = this.w;
        if (iVar == null || !iVar.a(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    public void b(h hVar) {
        i iVar = this.w;
        if (iVar != null) {
            iVar.a("Cannot remove item decoration during a scroll  or layout");
        }
        this.y.remove(hVar);
        if (this.y.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        z();
        requestLayout();
    }

    public void c() {
        List<n> list = this.ta;
        if (list != null) {
            list.clear();
        }
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof j) && this.w.a((j) layoutParams);
    }

    public int computeHorizontalScrollExtent() {
        i iVar = this.w;
        int i2 = 0;
        if (iVar == null) {
            return 0;
        }
        if (iVar.a()) {
            i2 = this.w.a(this.ra);
        }
        return i2;
    }

    public int computeHorizontalScrollOffset() {
        i iVar = this.w;
        int i2 = 0;
        if (iVar == null) {
            return 0;
        }
        if (iVar.a()) {
            i2 = this.w.b(this.ra);
        }
        return i2;
    }

    public int computeHorizontalScrollRange() {
        i iVar = this.w;
        int i2 = 0;
        if (iVar == null) {
            return 0;
        }
        if (iVar.a()) {
            i2 = this.w.c(this.ra);
        }
        return i2;
    }

    public int computeVerticalScrollExtent() {
        i iVar = this.w;
        int i2 = 0;
        if (iVar == null) {
            return 0;
        }
        if (iVar.b()) {
            i2 = this.w.d(this.ra);
        }
        return i2;
    }

    public int computeVerticalScrollOffset() {
        i iVar = this.w;
        int i2 = 0;
        if (iVar == null) {
            return 0;
        }
        if (iVar.b()) {
            i2 = this.w.e(this.ra);
        }
        return i2;
    }

    public int computeVerticalScrollRange() {
        i iVar = this.w;
        int i2 = 0;
        if (iVar == null) {
            return 0;
        }
        if (iVar.b()) {
            i2 = this.w.f(this.ra);
        }
        return i2;
    }

    public h d(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            return this.y.get(i2);
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return getScrollingChildHelper().a(f2, f3, z2);
    }

    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().a(f2, f3);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr);
    }

    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    public void draw(Canvas canvas) {
        boolean z2;
        boolean z3;
        super.draw(canvas);
        int size = this.y.size();
        boolean z4 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.y.get(i2).b(canvas, this, this.ra);
        }
        EdgeEffect edgeEffect = this.S;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.q ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((float) ((-getHeight()) + paddingBottom), 0.0f);
            EdgeEffect edgeEffect2 = this.S;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.T;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.q) {
                canvas.translate((float) getPaddingLeft(), (float) getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.T;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.U;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.q ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate((float) (-paddingTop), (float) (-width));
            EdgeEffect edgeEffect6 = this.U;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.V;
        if (edgeEffect7 == null || edgeEffect7.isFinished()) {
            z3 = z2;
        } else {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.q) {
                canvas.translate((float) ((-getWidth()) + getPaddingRight()), (float) ((-getHeight()) + getPaddingBottom()));
            } else {
                canvas.translate((float) (-getWidth()), (float) (-getHeight()));
            }
            EdgeEffect edgeEffect8 = this.V;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z3 = z4 | z2;
            canvas.restoreToCount(save4);
        }
        if (!z3 && this.W != null && this.y.size() > 0 && this.W.g()) {
            z3 = true;
        }
        if (z3) {
            z.F(this);
        }
    }

    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public final void e() {
        int i2 = this.J;
        this.J = 0;
        if (i2 != 0 && x()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(2048);
            b.i.k.a.b.a(obtain, i2);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    public void f(int i2) {
        i iVar = this.w;
        if (iVar != null) {
            iVar.i(i2);
            awakenScrollBars();
        }
    }

    public View focusSearch(View view, int i2) {
        View view2;
        boolean z2;
        View d2 = this.w.d(view, i2);
        if (d2 != null) {
            return d2;
        }
        boolean z3 = this.v != null && this.w != null && !y() && !this.H;
        FocusFinder instance = FocusFinder.getInstance();
        if (!z3 || !(i2 == 2 || i2 == 1)) {
            View findNextFocus = instance.findNextFocus(this, view, i2);
            if (findNextFocus != null || !z3) {
                view2 = findNextFocus;
            } else {
                d();
                if (c(view) == null) {
                    return null;
                }
                O();
                view2 = this.w.a(view, i2, this.f805l, this.ra);
                c(false);
            }
        } else {
            if (this.w.b()) {
                int i3 = i2 == 2 ? 130 : 33;
                z2 = instance.findNextFocus(this, view, i3) == null;
                if (f800g) {
                    i2 = i3;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.w.a()) {
                int i4 = (this.w.k() == 1) ^ (i2 == 2) ? 66 : 17;
                z2 = instance.findNextFocus(this, view, i4) == null;
                if (f800g) {
                    i2 = i4;
                }
            }
            if (z2) {
                d();
                if (c(view) == null) {
                    return null;
                }
                O();
                this.w.a(view, i2, this.f805l, this.ra);
                c(false);
            }
            view2 = instance.findNextFocus(this, view, i2);
        }
        if (view2 == null || view2.hasFocusable()) {
            if (!a(view, view2, i2)) {
                view2 = super.focusSearch(view, i2);
            }
            return view2;
        } else if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        } else {
            a(view2, (View) null);
            return view;
        }
    }

    public final void g() {
        boolean z2 = true;
        this.ra.a(1);
        a(this.ra);
        this.ra.f880j = false;
        O();
        this.p.a();
        B();
        F();
        M();
        t tVar = this.ra;
        if (!tVar.f881k || !this.va) {
            z2 = false;
        }
        tVar.f879i = z2;
        this.va = false;
        this.ua = false;
        t tVar2 = this.ra;
        tVar2.f878h = tVar2.f882l;
        tVar2.f876f = this.v.a();
        a(this.Aa);
        if (this.ra.f881k) {
            int a2 = this.o.a();
            for (int i2 = 0; i2 < a2; i2++) {
                w i3 = i(this.o.c(i2));
                if (!i3.y() && (!i3.o() || this.v.c())) {
                    this.p.c(i3, this.W.a(this.ra, i3, f.a(i3), i3.l()));
                    if (this.ra.f879i && i3.t() && !i3.q() && !i3.y() && !i3.o()) {
                        this.p.a(e(i3), i3);
                    }
                }
            }
        }
        if (this.ra.f882l) {
            N();
            t tVar3 = this.ra;
            boolean z3 = tVar3.f877g;
            tVar3.f877g = false;
            this.w.e(this.f805l, tVar3);
            this.ra.f877g = z3;
            for (int i4 = 0; i4 < this.o.a(); i4++) {
                w i5 = i(this.o.c(i4));
                if (!i5.y() && !this.p.c(i5)) {
                    int a3 = f.a(i5);
                    boolean b2 = i5.b(8192);
                    if (!b2) {
                        a3 |= CodedOutputStream.DEFAULT_BUFFER_SIZE;
                    }
                    f.c a4 = this.W.a(this.ra, i5, a3, i5.l());
                    if (b2) {
                        a(i5, a4);
                    } else {
                        this.p.a(i5, a4);
                    }
                }
            }
            b();
        } else {
            b();
        }
        C();
        c(false);
        this.ra.f875e = 2;
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        i iVar = this.w;
        if (iVar != null) {
            return iVar.c();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + o());
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        i iVar = this.w;
        if (iVar != null) {
            return iVar.a(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + o());
    }

    public a getAdapter() {
        return this.v;
    }

    public int getBaseline() {
        i iVar = this.w;
        if (iVar != null) {
            return iVar.d();
        }
        return super.getBaseline();
    }

    public int getChildDrawingOrder(int i2, int i3) {
        d dVar = this.za;
        if (dVar == null) {
            return super.getChildDrawingOrder(i2, i3);
        }
        return dVar.a(i2, i3);
    }

    public boolean getClipToPadding() {
        return this.q;
    }

    public N getCompatAccessibilityDelegate() {
        return this.ya;
    }

    public e getEdgeEffectFactory() {
        return this.R;
    }

    public f getItemAnimator() {
        return this.W;
    }

    public int getItemDecorationCount() {
        return this.y.size();
    }

    public i getLayoutManager() {
        return this.w;
    }

    public int getMaxFlingVelocity() {
        return this.ka;
    }

    public int getMinFlingVelocity() {
        return this.ja;
    }

    public long getNanoTime() {
        if (f799f) {
            return System.nanoTime();
        }
        return 0;
    }

    public l getOnFlingListener() {
        return this.ia;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.na;
    }

    public o getRecycledViewPool() {
        return this.f805l.d();
    }

    public int getScrollState() {
        return this.aa;
    }

    public final void h() {
        O();
        B();
        this.ra.a(6);
        this.n.b();
        this.ra.f876f = this.v.a();
        t tVar = this.ra;
        tVar.f874d = 0;
        tVar.f878h = false;
        this.w.e(this.f805l, tVar);
        t tVar2 = this.ra;
        tVar2.f877g = false;
        this.m = null;
        tVar2.f881k = tVar2.f881k && this.W != null;
        this.ra.f875e = 4;
        C();
        c(false);
    }

    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().b();
    }

    public final void i() {
        this.ra.a(4);
        O();
        B();
        t tVar = this.ra;
        tVar.f875e = 1;
        if (tVar.f881k) {
            for (int a2 = this.o.a() - 1; a2 >= 0; a2--) {
                w i2 = i(this.o.c(a2));
                if (!i2.y()) {
                    long e2 = e(i2);
                    f.c a3 = this.W.a(this.ra, i2);
                    w a4 = this.p.a(e2);
                    if (a4 == null || a4.y()) {
                        this.p.b(i2, a3);
                    } else {
                        boolean b2 = this.p.b(a4);
                        boolean b3 = this.p.b(i2);
                        if (!b2 || a4 != i2) {
                            f.c f2 = this.p.f(a4);
                            this.p.b(i2, a3);
                            f.c e3 = this.p.e(i2);
                            if (f2 == null) {
                                a(e2, i2, a4);
                            } else {
                                a(a4, i2, f2, e3, b2, b3);
                            }
                        } else {
                            this.p.b(i2, a3);
                        }
                    }
                }
            }
            this.p.a(this.Ia);
        }
        this.w.c(this.f805l);
        t tVar2 = this.ra;
        tVar2.f873c = tVar2.f876f;
        this.N = false;
        this.O = false;
        tVar2.f881k = false;
        tVar2.f882l = false;
        this.w.f827h = false;
        ArrayList<w> arrayList = this.f805l.f847b;
        if (arrayList != null) {
            arrayList.clear();
        }
        i iVar = this.w;
        if (iVar.n) {
            iVar.m = 0;
            iVar.n = false;
            this.f805l.j();
        }
        this.w.g(this.ra);
        C();
        c(false);
        this.p.a();
        int[] iArr = this.Aa;
        if (d(iArr[0], iArr[1])) {
            e(0, 0);
        }
        G();
        K();
    }

    public void i(int i2) {
    }

    public void i(int i2, int i3) {
    }

    public boolean isAttachedToWindow() {
        return this.B;
    }

    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().c();
    }

    public void j(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 < 0 || i2 >= itemDecorationCount) {
            throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
        }
        b(d(i2));
    }

    public void k(int i2) {
        if (!this.H) {
            P();
            i iVar = this.w;
            if (iVar == null) {
                Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
                return;
            }
            iVar.i(i2);
            awakenScrollBars();
        }
    }

    public void l(int i2) {
        if (!this.H) {
            i iVar = this.w;
            if (iVar == null) {
                Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            } else {
                iVar.a(this, this.ra, i2);
            }
        }
    }

    public void l(View view) {
    }

    public void m() {
        if (this.U == null) {
            this.U = this.R.a(this, 2);
            if (this.q) {
                this.U.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.U.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    public void m(View view) {
    }

    public boolean n(View view) {
        O();
        boolean f2 = this.o.f(view);
        if (f2) {
            w i2 = i(view);
            this.f805l.e(i2);
            this.f805l.d(i2);
        }
        c(!f2);
        return f2;
    }

    public String o() {
        return " " + super.toString() + ", adapter:" + this.v + ", layout:" + this.w + ", context:" + getContext();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004f, code lost:
        if (r0 >= 30.0f) goto L_0x0054;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onAttachedToWindow() {
        /*
            r4 = this;
            super.onAttachedToWindow()
            r0 = 0
            r4.P = r0
            r1 = 1
            r4.B = r1
            boolean r2 = r4.E
            if (r2 == 0) goto L_0x0014
            boolean r2 = r4.isLayoutRequested()
            if (r2 != 0) goto L_0x0014
            goto L_0x0015
        L_0x0014:
            r1 = 0
        L_0x0015:
            r4.E = r1
            androidx.recyclerview.widget.RecyclerView$i r1 = r4.w
            if (r1 == 0) goto L_0x001e
            r1.a((androidx.recyclerview.widget.RecyclerView) r4)
        L_0x001e:
            r4.xa = r0
            boolean r0 = f799f
            if (r0 == 0) goto L_0x0067
            java.lang.ThreadLocal<b.y.a.u> r0 = b.y.a.C0350u.f3543a
            java.lang.Object r0 = r0.get()
            b.y.a.u r0 = (b.y.a.C0350u) r0
            r4.pa = r0
            b.y.a.u r0 = r4.pa
            if (r0 != 0) goto L_0x0062
            b.y.a.u r0 = new b.y.a.u
            r0.<init>()
            r4.pa = r0
            android.view.Display r0 = b.i.k.z.h(r4)
            r1 = 1114636288(0x42700000, float:60.0)
            boolean r2 = r4.isInEditMode()
            if (r2 != 0) goto L_0x0052
            if (r0 == 0) goto L_0x0052
            float r0 = r0.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 < 0) goto L_0x0052
            goto L_0x0054
        L_0x0052:
            r0 = 1114636288(0x42700000, float:60.0)
        L_0x0054:
            b.y.a.u r1 = r4.pa
            r2 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r2 = r2 / r0
            long r2 = (long) r2
            r1.f3547e = r2
            java.lang.ThreadLocal<b.y.a.u> r0 = b.y.a.C0350u.f3543a
            r0.set(r1)
        L_0x0062:
            b.y.a.u r0 = r4.pa
            r0.a((androidx.recyclerview.widget.RecyclerView) r4)
        L_0x0067:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f fVar = this.W;
        if (fVar != null) {
            fVar.b();
        }
        P();
        this.B = false;
        i iVar = this.w;
        if (iVar != null) {
            iVar.a(this, this.f805l);
        }
        this.Ga.clear();
        removeCallbacks(this.Ha);
        this.p.b();
        if (f799f) {
            C0350u uVar = this.pa;
            if (uVar != null) {
                uVar.b(this);
                this.pa = null;
            }
        }
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.y.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.y.get(i2).a(canvas, this, this.ra);
        }
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f2;
        float f3;
        if (this.w != null && !this.H && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f3 = this.w.b() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.w.a()) {
                    f2 = motionEvent.getAxisValue(10);
                    if (!(f3 == 0.0f && f2 == 0.0f)) {
                        a((int) (f2 * this.la), (int) (f3 * this.ma), motionEvent);
                    }
                }
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    float axisValue = motionEvent.getAxisValue(26);
                    if (this.w.b()) {
                        f3 = -axisValue;
                    } else if (this.w.a()) {
                        f2 = axisValue;
                        f3 = 0.0f;
                        a((int) (f2 * this.la), (int) (f3 * this.ma), motionEvent);
                    }
                }
                f3 = 0.0f;
            }
            f2 = 0.0f;
            a((int) (f2 * this.la), (int) (f3 * this.ma), motionEvent);
        }
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        boolean z3 = false;
        if (this.H) {
            return false;
        }
        if (b(motionEvent)) {
            a();
            return true;
        }
        i iVar = this.w;
        if (iVar == null) {
            return false;
        }
        boolean a2 = iVar.a();
        boolean b2 = this.w.b();
        if (this.ca == null) {
            this.ca = VelocityTracker.obtain();
        }
        this.ca.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.I) {
                this.I = false;
            }
            this.ba = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.fa = x2;
            this.da = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.ga = y2;
            this.ea = y2;
            if (this.aa == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.Ea;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = a2 ? 1 : 0;
            if (b2) {
                i2 |= 2;
            }
            k(i2, 0);
        } else if (actionMasked == 1) {
            this.ca.clear();
            a(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.ba);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.ba + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x3 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.aa != 1) {
                int i3 = x3 - this.da;
                int i4 = y3 - this.ea;
                if (!a2 || Math.abs(i3) <= this.ha) {
                    z2 = false;
                } else {
                    this.fa = x3;
                    z2 = true;
                }
                if (b2 && Math.abs(i4) > this.ha) {
                    this.ga = y3;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            a();
        } else if (actionMasked == 5) {
            this.ba = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.fa = x4;
            this.da = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.ga = y4;
            this.ea = y4;
        } else if (actionMasked == 6) {
            c(motionEvent);
        }
        if (this.aa == 1) {
            z3 = true;
        }
        return z3;
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        b.i.g.a.a("RV OnLayout");
        f();
        b.i.g.a.a();
        this.E = true;
    }

    public void onMeasure(int i2, int i3) {
        i iVar = this.w;
        if (iVar == null) {
            c(i2, i3);
            return;
        }
        boolean z2 = false;
        if (iVar.v()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.w.a(this.f805l, this.ra, i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z2 = true;
            }
            if (!z2 && this.v != null) {
                if (this.ra.f875e == 1) {
                    g();
                }
                this.w.b(i2, i3);
                this.ra.f880j = true;
                h();
                this.w.d(i2, i3);
                if (this.w.B()) {
                    this.w.b(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    this.ra.f880j = true;
                    h();
                    this.w.d(i2, i3);
                }
            }
        } else if (this.C) {
            this.w.a(this.f805l, this.ra, i2, i3);
        } else {
            if (this.K) {
                O();
                B();
                F();
                C();
                t tVar = this.ra;
                if (tVar.f882l) {
                    tVar.f878h = true;
                } else {
                    this.n.b();
                    this.ra.f878h = false;
                }
                this.K = false;
                c(false);
            } else if (this.ra.f882l) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            a aVar = this.v;
            if (aVar != null) {
                this.ra.f876f = aVar.a();
            } else {
                this.ra.f876f = 0;
            }
            O();
            this.w.a(this.f805l, this.ra, i2, i3);
            c(false);
            this.ra.f878h = false;
        }
    }

    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (y()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        this.m = (SavedState) parcelable;
        super.onRestoreInstanceState(this.m.a());
        i iVar = this.w;
        if (iVar != null) {
            Parcelable parcelable2 = this.m.f806c;
            if (parcelable2 != null) {
                iVar.a(parcelable2);
            }
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.m;
        if (savedState2 != null) {
            savedState.a(savedState2);
        } else {
            i iVar = this.w;
            if (iVar != null) {
                savedState.f806c = iVar.y();
            } else {
                savedState.f806c = null;
            }
        }
        return savedState;
    }

    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4 || i3 != i5) {
            v();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x010c  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x011c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            r14 = this;
            boolean r0 = r14.H
            r1 = 0
            if (r0 != 0) goto L_0x01c7
            boolean r0 = r14.I
            if (r0 == 0) goto L_0x000b
            goto L_0x01c7
        L_0x000b:
            boolean r0 = r14.a((android.view.MotionEvent) r15)
            r2 = 1
            if (r0 == 0) goto L_0x0016
            r14.a()
            return r2
        L_0x0016:
            androidx.recyclerview.widget.RecyclerView$i r0 = r14.w
            if (r0 != 0) goto L_0x001b
            return r1
        L_0x001b:
            boolean r0 = r0.a()
            androidx.recyclerview.widget.RecyclerView$i r3 = r14.w
            boolean r3 = r3.b()
            android.view.VelocityTracker r4 = r14.ca
            if (r4 != 0) goto L_0x002f
            android.view.VelocityTracker r4 = android.view.VelocityTracker.obtain()
            r14.ca = r4
        L_0x002f:
            android.view.MotionEvent r4 = android.view.MotionEvent.obtain(r15)
            int r5 = r15.getActionMasked()
            int r6 = r15.getActionIndex()
            if (r5 != 0) goto L_0x0043
            int[] r7 = r14.Ea
            r7[r2] = r1
            r7[r1] = r1
        L_0x0043:
            int[] r7 = r14.Ea
            r8 = r7[r1]
            float r8 = (float) r8
            r7 = r7[r2]
            float r7 = (float) r7
            r4.offsetLocation(r8, r7)
            r7 = 1056964608(0x3f000000, float:0.5)
            if (r5 == 0) goto L_0x0196
            if (r5 == r2) goto L_0x0154
            r8 = 2
            if (r5 == r8) goto L_0x0088
            r0 = 3
            if (r5 == r0) goto L_0x0083
            r0 = 5
            if (r5 == r0) goto L_0x0067
            r0 = 6
            if (r5 == r0) goto L_0x0062
            goto L_0x01bc
        L_0x0062:
            r14.c((android.view.MotionEvent) r15)
            goto L_0x01bc
        L_0x0067:
            int r0 = r15.getPointerId(r6)
            r14.ba = r0
            float r0 = r15.getX(r6)
            float r0 = r0 + r7
            int r0 = (int) r0
            r14.fa = r0
            r14.da = r0
            float r15 = r15.getY(r6)
            float r15 = r15 + r7
            int r15 = (int) r15
            r14.ga = r15
            r14.ea = r15
            goto L_0x01bc
        L_0x0083:
            r14.a()
            goto L_0x01bc
        L_0x0088:
            int r5 = r14.ba
            int r5 = r15.findPointerIndex(r5)
            if (r5 >= 0) goto L_0x00ae
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>()
            java.lang.String r0 = "Error processing scroll; pointer index for id "
            r15.append(r0)
            int r0 = r14.ba
            r15.append(r0)
            java.lang.String r0 = " not found. Did any MotionEvents get skipped?"
            r15.append(r0)
            java.lang.String r15 = r15.toString()
            java.lang.String r0 = "RecyclerView"
            android.util.Log.e(r0, r15)
            return r1
        L_0x00ae:
            float r6 = r15.getX(r5)
            float r6 = r6 + r7
            int r6 = (int) r6
            float r15 = r15.getY(r5)
            float r15 = r15 + r7
            int r15 = (int) r15
            int r5 = r14.fa
            int r5 = r5 - r6
            int r7 = r14.ga
            int r13 = r7 - r15
            int[] r10 = r14.Da
            int[] r11 = r14.Ca
            r12 = 0
            r7 = r14
            r8 = r5
            r9 = r13
            boolean r7 = r7.a((int) r8, (int) r9, (int[]) r10, (int[]) r11, (int) r12)
            if (r7 == 0) goto L_0x00f4
            int[] r7 = r14.Da
            r8 = r7[r1]
            int r5 = r5 - r8
            r7 = r7[r2]
            int r13 = r13 - r7
            int[] r7 = r14.Ca
            r8 = r7[r1]
            float r8 = (float) r8
            r7 = r7[r2]
            float r7 = (float) r7
            r4.offsetLocation(r8, r7)
            int[] r7 = r14.Ea
            r8 = r7[r1]
            int[] r9 = r14.Ca
            r10 = r9[r1]
            int r8 = r8 + r10
            r7[r1] = r8
            r8 = r7[r2]
            r9 = r9[r2]
            int r8 = r8 + r9
            r7[r2] = r8
        L_0x00f4:
            int r7 = r14.aa
            if (r7 == r2) goto L_0x011f
            if (r0 == 0) goto L_0x0109
            int r7 = java.lang.Math.abs(r5)
            int r8 = r14.ha
            if (r7 <= r8) goto L_0x0109
            if (r5 <= 0) goto L_0x0106
            int r5 = r5 - r8
            goto L_0x0107
        L_0x0106:
            int r5 = r5 + r8
        L_0x0107:
            r7 = 1
            goto L_0x010a
        L_0x0109:
            r7 = 0
        L_0x010a:
            if (r3 == 0) goto L_0x011a
            int r8 = java.lang.Math.abs(r13)
            int r9 = r14.ha
            if (r8 <= r9) goto L_0x011a
            if (r13 <= 0) goto L_0x0118
            int r13 = r13 - r9
            goto L_0x0119
        L_0x0118:
            int r13 = r13 + r9
        L_0x0119:
            r7 = 1
        L_0x011a:
            if (r7 == 0) goto L_0x011f
            r14.setScrollState(r2)
        L_0x011f:
            int r7 = r14.aa
            if (r7 != r2) goto L_0x01bc
            int[] r7 = r14.Ca
            r8 = r7[r1]
            int r6 = r6 - r8
            r14.fa = r6
            r6 = r7[r2]
            int r15 = r15 - r6
            r14.ga = r15
            if (r0 == 0) goto L_0x0133
            r15 = r5
            goto L_0x0134
        L_0x0133:
            r15 = 0
        L_0x0134:
            if (r3 == 0) goto L_0x0138
            r0 = r13
            goto L_0x0139
        L_0x0138:
            r0 = 0
        L_0x0139:
            boolean r15 = r14.a((int) r15, (int) r0, (android.view.MotionEvent) r4)
            if (r15 == 0) goto L_0x0146
            android.view.ViewParent r15 = r14.getParent()
            r15.requestDisallowInterceptTouchEvent(r2)
        L_0x0146:
            b.y.a.u r15 = r14.pa
            if (r15 == 0) goto L_0x01bc
            if (r5 != 0) goto L_0x014e
            if (r13 == 0) goto L_0x01bc
        L_0x014e:
            b.y.a.u r15 = r14.pa
            r15.a((androidx.recyclerview.widget.RecyclerView) r14, (int) r5, (int) r13)
            goto L_0x01bc
        L_0x0154:
            android.view.VelocityTracker r15 = r14.ca
            r15.addMovement(r4)
            android.view.VelocityTracker r15 = r14.ca
            r5 = 1000(0x3e8, float:1.401E-42)
            int r6 = r14.ka
            float r6 = (float) r6
            r15.computeCurrentVelocity(r5, r6)
            r15 = 0
            if (r0 == 0) goto L_0x0170
            android.view.VelocityTracker r0 = r14.ca
            int r5 = r14.ba
            float r0 = r0.getXVelocity(r5)
            float r0 = -r0
            goto L_0x0171
        L_0x0170:
            r0 = 0
        L_0x0171:
            if (r3 == 0) goto L_0x017d
            android.view.VelocityTracker r3 = r14.ca
            int r5 = r14.ba
            float r3 = r3.getYVelocity(r5)
            float r3 = -r3
            goto L_0x017e
        L_0x017d:
            r3 = 0
        L_0x017e:
            int r5 = (r0 > r15 ? 1 : (r0 == r15 ? 0 : -1))
            if (r5 != 0) goto L_0x0186
            int r15 = (r3 > r15 ? 1 : (r3 == r15 ? 0 : -1))
            if (r15 == 0) goto L_0x018e
        L_0x0186:
            int r15 = (int) r0
            int r0 = (int) r3
            boolean r15 = r14.f(r15, r0)
            if (r15 != 0) goto L_0x0191
        L_0x018e:
            r14.setScrollState(r1)
        L_0x0191:
            r14.L()
            r1 = 1
            goto L_0x01bc
        L_0x0196:
            int r5 = r15.getPointerId(r1)
            r14.ba = r5
            float r5 = r15.getX()
            float r5 = r5 + r7
            int r5 = (int) r5
            r14.fa = r5
            r14.da = r5
            float r15 = r15.getY()
            float r15 = r15 + r7
            int r15 = (int) r15
            r14.ga = r15
            r14.ea = r15
            if (r0 == 0) goto L_0x01b4
            r15 = 1
            goto L_0x01b5
        L_0x01b4:
            r15 = 0
        L_0x01b5:
            if (r3 == 0) goto L_0x01b9
            r15 = r15 | 2
        L_0x01b9:
            r14.k(r15, r1)
        L_0x01bc:
            if (r1 != 0) goto L_0x01c3
            android.view.VelocityTracker r15 = r14.ca
            r15.addMovement(r4)
        L_0x01c3:
            r4.recycle()
            return r2
        L_0x01c7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final View p() {
        int i2 = this.ra.m;
        if (i2 == -1) {
            i2 = 0;
        }
        int a2 = this.ra.a();
        int i3 = i2;
        while (i3 < a2) {
            w c2 = c(i3);
            if (c2 == null) {
                break;
            } else if (c2.f891b.hasFocusable()) {
                return c2.f891b;
            } else {
                i3++;
            }
        }
        int min = Math.min(a2, i2);
        while (true) {
            min--;
            if (min < 0) {
                return null;
            }
            w c3 = c(min);
            if (c3 == null) {
                return null;
            }
            if (c3.f891b.hasFocusable()) {
                return c3.f891b;
            }
        }
    }

    public boolean q() {
        return !this.E || this.N || this.n.c();
    }

    public final boolean r() {
        int a2 = this.o.a();
        for (int i2 = 0; i2 < a2; i2++) {
            w i3 = i(this.o.c(i2));
            if (i3 != null && !i3.y() && i3.t()) {
                return true;
            }
        }
        return false;
    }

    public void removeDetachedView(View view, boolean z2) {
        w i2 = i(view);
        if (i2 != null) {
            if (i2.s()) {
                i2.d();
            } else if (!i2.y()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + i2 + o());
            }
        }
        view.clearAnimation();
        b(view);
        super.removeDetachedView(view, z2);
    }

    public void requestChildFocus(View view, View view2) {
        if (!this.w.a(this, this.ra, view, view2) && view2 != null) {
            a(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.w.b(this, view, rect, z2);
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.z.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.z.get(i2).a(z2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    public void requestLayout() {
        if (this.F != 0 || this.H) {
            this.G = true;
        } else {
            super.requestLayout();
        }
    }

    public void s() {
        this.n = new C0331a(new J(this));
    }

    public void scrollBy(int i2, int i3) {
        i iVar = this.w;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.H) {
            boolean a2 = iVar.a();
            boolean b2 = this.w.b();
            if (a2 || b2) {
                if (!a2) {
                    i2 = 0;
                }
                if (!b2) {
                    i3 = 0;
                }
                a(i2, i3, (MotionEvent) null);
            }
        }
    }

    public void scrollTo(int i2, int i3) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!a(accessibilityEvent)) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public void setAccessibilityDelegateCompat(N n2) {
        this.ya = n2;
        z.a((View) this, (C0258a) this.ya);
    }

    public void setAdapter(a aVar) {
        setLayoutFrozen(false);
        a(aVar, false, true);
        b(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(d dVar) {
        if (dVar != this.za) {
            this.za = dVar;
            setChildrenDrawingOrderEnabled(this.za != null);
        }
    }

    public void setClipToPadding(boolean z2) {
        if (z2 != this.q) {
            v();
        }
        this.q = z2;
        super.setClipToPadding(z2);
        if (this.E) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(e eVar) {
        b.i.j.h.a(eVar);
        this.R = eVar;
        v();
    }

    public void setHasFixedSize(boolean z2) {
        this.C = z2;
    }

    public void setItemAnimator(f fVar) {
        f fVar2 = this.W;
        if (fVar2 != null) {
            fVar2.b();
            this.W.a((f.b) null);
        }
        this.W = fVar;
        f fVar3 = this.W;
        if (fVar3 != null) {
            fVar3.a(this.wa);
        }
    }

    public void setItemViewCacheSize(int i2) {
        this.f805l.f(i2);
    }

    public void setLayoutFrozen(boolean z2) {
        if (z2 != this.H) {
            a("Do not setLayoutFrozen in layout or scroll");
            if (!z2) {
                this.H = false;
                if (!(!this.G || this.w == null || this.v == null)) {
                    requestLayout();
                }
                this.G = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.H = true;
            this.I = true;
            P();
        }
    }

    public void setLayoutManager(i iVar) {
        if (iVar != this.w) {
            P();
            if (this.w != null) {
                f fVar = this.W;
                if (fVar != null) {
                    fVar.b();
                }
                this.w.b(this.f805l);
                this.w.c(this.f805l);
                this.f805l.a();
                if (this.B) {
                    this.w.a(this, this.f805l);
                }
                this.w.f((RecyclerView) null);
                this.w = null;
            } else {
                this.f805l.a();
            }
            this.o.c();
            this.w = iVar;
            if (iVar != null) {
                if (iVar.f821b == null) {
                    this.w.f(this);
                    if (this.B) {
                        this.w.a(this);
                    }
                } else {
                    throw new IllegalArgumentException("LayoutManager " + iVar + " is already attached to a RecyclerView:" + iVar.f821b.o());
                }
            }
            this.f805l.j();
            requestLayout();
        }
    }

    public void setNestedScrollingEnabled(boolean z2) {
        getScrollingChildHelper().a(z2);
    }

    public void setOnFlingListener(l lVar) {
        this.ia = lVar;
    }

    @Deprecated
    public void setOnScrollListener(n nVar) {
        this.sa = nVar;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.na = z2;
    }

    public void setRecycledViewPool(o oVar) {
        this.f805l.a(oVar);
    }

    public void setRecyclerListener(q qVar) {
        this.x = qVar;
    }

    public void setScrollState(int i2) {
        if (i2 != this.aa) {
            this.aa = i2;
            if (i2 != 2) {
                Q();
            }
            b(i2);
        }
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
            } else {
                this.ha = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.ha = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(u uVar) {
        this.f805l.a(uVar);
    }

    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().c(i2);
    }

    public void stopNestedScroll() {
        getScrollingChildHelper().d();
    }

    @SuppressLint({"InlinedApi"})
    public final void t() {
        if (z.l(this) == 0) {
            z.h(this, 8);
        }
    }

    public final void u() {
        this.o = new C0334d(new I(this));
    }

    public void v() {
        this.V = null;
        this.T = null;
        this.U = null;
        this.S = null;
    }

    public void w() {
        if (this.y.size() != 0) {
            i iVar = this.w;
            if (iVar != null) {
                iVar.a("Cannot invalidate item decorations during a scroll or layout");
            }
            z();
            requestLayout();
        }
    }

    public boolean x() {
        AccessibilityManager accessibilityManager = this.L;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean y() {
        return this.P > 0;
    }

    public void z() {
        int b2 = this.o.b();
        for (int i2 = 0; i2 < b2; i2++) {
            ((j) this.o.e(i2).getLayoutParams()).f838c = true;
        }
        this.f805l.g();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f804k = new r();
        this.f805l = new p();
        this.p = new V();
        this.r = new E(this);
        this.s = new Rect();
        this.t = new Rect();
        this.u = new RectF();
        this.y = new ArrayList<>();
        this.z = new ArrayList<>();
        this.F = 0;
        this.N = false;
        this.O = false;
        this.P = 0;
        this.Q = 0;
        this.R = new e();
        this.W = new C0343m();
        this.aa = 0;
        this.ba = -1;
        this.la = Float.MIN_VALUE;
        this.ma = Float.MIN_VALUE;
        boolean z2 = true;
        this.na = true;
        this.oa = new v();
        this.qa = f799f ? new C0350u.a() : null;
        this.ra = new t();
        this.ua = false;
        this.va = false;
        this.wa = new g();
        this.xa = false;
        this.Aa = new int[2];
        this.Ca = new int[2];
        this.Da = new int[2];
        this.Ea = new int[2];
        this.Fa = new int[2];
        this.Ga = new ArrayList();
        this.Ha = new F(this);
        this.Ia = new H(this);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f795b, i2, 0);
            this.q = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        } else {
            this.q = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.ha = viewConfiguration.getScaledTouchSlop();
        this.la = A.b(viewConfiguration, context);
        this.ma = A.c(viewConfiguration, context);
        this.ja = viewConfiguration.getScaledMinimumFlingVelocity();
        this.ka = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.W.a(this.wa);
        s();
        u();
        t();
        if (z.k(this) == 0) {
            z.g(this, 1);
        }
        this.L = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new N(this));
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, b.y.b.RecyclerView, i2, 0);
            String string = obtainStyledAttributes2.getString(b.y.b.RecyclerView_layoutManager);
            if (obtainStyledAttributes2.getInt(b.y.b.RecyclerView_android_descendantFocusability, -1) == -1) {
                setDescendantFocusability(262144);
            }
            this.D = obtainStyledAttributes2.getBoolean(b.y.b.RecyclerView_fastScrollEnabled, false);
            if (this.D) {
                a((StateListDrawable) obtainStyledAttributes2.getDrawable(b.y.b.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes2.getDrawable(b.y.b.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes2.getDrawable(b.y.b.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes2.getDrawable(b.y.b.RecyclerView_fastScrollHorizontalTrackDrawable));
            }
            obtainStyledAttributes2.recycle();
            a(context, string, attributeSet, i2, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, f794a, i2, 0);
                boolean z3 = obtainStyledAttributes3.getBoolean(0, true);
                obtainStyledAttributes3.recycle();
                z2 = z3;
            }
        } else {
            setDescendantFocusability(262144);
        }
        setNestedScrollingEnabled(z2);
    }

    public void c(boolean z2) {
        if (this.F < 1) {
            this.F = 1;
        }
        if (!z2 && !this.H) {
            this.G = false;
        }
        if (this.F == 1) {
            if (z2 && this.G && !this.H && this.w != null && this.v != null) {
                f();
            }
            if (!this.H) {
                this.G = false;
            }
        }
        this.F--;
    }

    public void d() {
        if (!this.E || this.N) {
            b.i.g.a.a("RV FullInvalidate");
            f();
            b.i.g.a.a();
        } else if (this.n.c()) {
            if (this.n.d(4) && !this.n.d(11)) {
                b.i.g.a.a("RV PartialInvalidate");
                O();
                B();
                this.n.e();
                if (!this.G) {
                    if (r()) {
                        f();
                    } else {
                        this.n.a();
                    }
                }
                c(true);
                C();
                b.i.g.a.a();
            } else if (this.n.c()) {
                b.i.g.a.a("RV FullInvalidate");
                f();
                b.i.g.a.a();
            }
        }
    }

    public boolean f(int i2, int i3) {
        i iVar = this.w;
        int i4 = 0;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        } else if (this.H) {
            return false;
        } else {
            boolean a2 = iVar.a();
            boolean b2 = this.w.b();
            if (!a2 || Math.abs(i2) < this.ja) {
                i2 = 0;
            }
            if (!b2 || Math.abs(i3) < this.ja) {
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            float f2 = (float) i2;
            float f3 = (float) i3;
            if (!dispatchNestedPreFling(f2, f3)) {
                boolean z2 = a2 || b2;
                dispatchNestedFling(f2, f3, z2);
                l lVar = this.ia;
                if (lVar != null && lVar.a(i2, i3)) {
                    return true;
                }
                if (z2) {
                    if (a2) {
                        i4 = 1;
                    }
                    if (b2) {
                        i4 |= 2;
                    }
                    k(i4, 1);
                    int i5 = this.ka;
                    int max = Math.max(-i5, Math.min(i2, i5));
                    int i6 = this.ka;
                    this.oa.a(max, Math.max(-i6, Math.min(i3, i6)));
                    return true;
                }
            }
            return false;
        }
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        i iVar = this.w;
        if (iVar != null) {
            return iVar.a(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + o());
    }

    public void j(int i2, int i3) {
        a(i2, i3, (Interpolator) null);
    }

    public final void a(Context context, String str, AttributeSet attributeSet, int i2, int i3) {
        ClassLoader classLoader;
        Constructor<? extends U> constructor;
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                String a2 = a(context, trim);
                try {
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    Class<? extends U> asSubclass = classLoader.loadClass(a2).asSubclass(i.class);
                    Object[] objArr = null;
                    try {
                        constructor = asSubclass.getConstructor(f802i);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), Integer.valueOf(i3)};
                    } catch (NoSuchMethodException e2) {
                        constructor = asSubclass.getConstructor(new Class[0]);
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((i) constructor.newInstance(objArr));
                } catch (NoSuchMethodException e3) {
                    e3.initCause(e2);
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + a2, e3);
                } catch (ClassNotFoundException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + a2, e4);
                } catch (InvocationTargetException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + a2, e5);
                } catch (InstantiationException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + a2, e6);
                } catch (IllegalAccessException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + a2, e7);
                } catch (ClassCastException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + a2, e8);
                }
            }
        }
    }

    public final int j(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    public void l() {
        if (this.S == null) {
            this.S = this.R.a(this, 0);
            if (this.q) {
                this.S.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                this.S.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    public void k() {
        if (this.V == null) {
            this.V = this.R.a(this, 3);
            if (this.q) {
                this.V.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.V.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public void n() {
        if (this.T == null) {
            this.T = this.R.a(this, 1);
            if (this.q) {
                this.T.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                this.T.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public void b(n nVar) {
        List<n> list = this.ta;
        if (list != null) {
            list.remove(nVar);
        }
    }

    public long e(w wVar) {
        return this.v.c() ? wVar.h() : (long) wVar.f893d;
    }

    public void e(int i2, int i3) {
        this.Q++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        i(i2, i3);
        n nVar = this.sa;
        if (nVar != null) {
            nVar.a(this, i2, i3);
        }
        List<n> list = this.ta;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ta.get(size).a(this, i2, i3);
            }
        }
        this.Q--;
    }

    public void b(int i2, int i3) {
        boolean z2;
        EdgeEffect edgeEffect = this.S;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            z2 = false;
        } else {
            this.S.onRelease();
            z2 = this.S.isFinished();
        }
        EdgeEffect edgeEffect2 = this.U;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.U.onRelease();
            z2 |= this.U.isFinished();
        }
        EdgeEffect edgeEffect3 = this.T;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.T.onRelease();
            z2 |= this.T.isFinished();
        }
        EdgeEffect edgeEffect4 = this.V;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.V.onRelease();
            z2 |= this.V.isFinished();
        }
        if (z2) {
            z.F(this);
        }
    }

    public void j() {
        for (int size = this.Ga.size() - 1; size >= 0; size--) {
            w wVar = this.Ga.get(size);
            if (wVar.f891b.getParent() == this && !wVar.y()) {
                int i2 = wVar.r;
                if (i2 != -1) {
                    z.g(wVar.f891b, i2);
                    wVar.r = -1;
                }
            }
        }
        this.Ga.clear();
    }

    public final void c(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.ba) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.ba = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.fa = x2;
            this.da = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.ga = y2;
            this.ea = y2;
        }
    }

    public Rect k(View view) {
        j jVar = (j) view.getLayoutParams();
        if (!jVar.f838c) {
            return jVar.f837b;
        }
        if (this.ra.d() && (jVar.b() || jVar.d())) {
            return jVar.f837b;
        }
        Rect rect = jVar.f837b;
        rect.set(0, 0, 0, 0);
        int size = this.y.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.s.set(0, 0, 0, 0);
            this.y.get(i2).a(this.s, view, this, this.ra);
            int i3 = rect.left;
            Rect rect2 = this.s;
            rect.left = i3 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        jVar.f838c = false;
        return rect;
    }

    public void h(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int b2 = this.o.b();
        if (i2 < i3) {
            i6 = i2;
            i5 = i3;
            i4 = -1;
        } else {
            i5 = i2;
            i6 = i3;
            i4 = 1;
        }
        for (int i7 = 0; i7 < b2; i7++) {
            w i8 = i(this.o.e(i7));
            if (i8 != null) {
                int i9 = i8.f893d;
                if (i9 >= i6 && i9 <= i5) {
                    if (i9 == i2) {
                        i8.a(i3 - i2, false);
                    } else {
                        i8.a(i4, false);
                    }
                    this.ra.f877g = true;
                }
            }
        }
        this.f805l.b(i2, i3);
        requestLayout();
    }

    public void c(int i2, int i3) {
        setMeasuredDimension(i.a(i2, getPaddingLeft() + getPaddingRight(), z.o(this)), i.a(i3, getPaddingTop() + getPaddingBottom(), z.n(this)));
    }

    public void f() {
        if (this.v == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
        } else if (this.w == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
        } else {
            t tVar = this.ra;
            tVar.f880j = false;
            if (tVar.f875e == 1) {
                g();
                this.w.e(this);
                h();
            } else if (!this.n.d() && this.w.r() == getWidth() && this.w.h() == getHeight()) {
                this.w.e(this);
            } else {
                this.w.e(this);
                h();
            }
            i();
        }
    }

    public static RecyclerView e(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView e2 = e(viewGroup.getChildAt(i2));
            if (e2 != null) {
                return e2;
            }
        }
        return null;
    }

    public void b(m mVar) {
        this.z.remove(mVar);
        if (this.A == mVar) {
            this.A = null;
        }
    }

    public w h(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return i(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public final String a(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        } else if (str.contains(".")) {
            return str;
        } else {
            return RecyclerView.class.getPackage().getName() + '.' + str;
        }
    }

    public View c(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = (View) parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public final boolean b(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.A = null;
        }
        int size = this.z.size();
        int i2 = 0;
        while (i2 < size) {
            m mVar = this.z.get(i2);
            if (!mVar.b(this, motionEvent) || action == 3) {
                i2++;
            } else {
                this.A = mVar;
                return true;
            }
        }
        return false;
    }

    public final boolean d(int i2, int i3) {
        a(this.Aa);
        int[] iArr = this.Aa;
        return (iArr[0] == i2 && iArr[1] == i3) ? false : true;
    }

    public void h(int i2) {
        int a2 = this.o.a();
        for (int i3 = 0; i3 < a2; i3++) {
            this.o.c(i3).offsetTopAndBottom(i2);
        }
    }

    public boolean e(int i2) {
        return getScrollingChildHelper().b(i2);
    }

    public w d(View view) {
        View c2 = c(view);
        if (c2 == null) {
            return null;
        }
        return h(c2);
    }

    public void a(a aVar, boolean z2) {
        setLayoutFrozen(false);
        a(aVar, true, z2);
        b(true);
        requestLayout();
    }

    public w c(int i2) {
        w wVar = null;
        if (this.N) {
            return null;
        }
        int b2 = this.o.b();
        for (int i3 = 0; i3 < b2; i3++) {
            w i4 = i(this.o.e(i3));
            if (i4 != null && !i4.q() && d(i4) == i2) {
                if (!this.o.d(i4.f891b)) {
                    return i4;
                }
                wVar = i4;
            }
        }
        return wVar;
    }

    public boolean k(int i2, int i3) {
        return getScrollingChildHelper().a(i2, i3);
    }

    public int d(w wVar) {
        if (wVar.b(524) || !wVar.n()) {
            return -1;
        }
        return this.n.a(wVar.f893d);
    }

    public void b(w wVar, f.c cVar, f.c cVar2) {
        a(wVar);
        wVar.a(false);
        if (this.W.b(wVar, cVar, cVar2)) {
            D();
        }
    }

    public final void a(a aVar, boolean z2, boolean z3) {
        a aVar2 = this.v;
        if (aVar2 != null) {
            aVar2.b((c) this.f804k);
            this.v.b(this);
        }
        if (!z2 || z3) {
            I();
        }
        this.n.f();
        a aVar3 = this.v;
        this.v = aVar;
        if (aVar != null) {
            aVar.a((c) this.f804k);
            aVar.a(this);
        }
        i iVar = this.w;
        if (iVar != null) {
            iVar.a(aVar3, this.v);
        }
        this.f805l.a(aVar3, this.v, z2);
        this.ra.f877g = true;
    }

    public int f(View view) {
        w i2 = i(view);
        if (i2 != null) {
            return i2.g();
        }
        return -1;
    }

    public static void c(w wVar) {
        WeakReference<RecyclerView> weakReference = wVar.f892c;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view != wVar.f891b) {
                    ViewParent parent = view.getParent();
                    view = parent instanceof View ? (View) parent : null;
                } else {
                    return;
                }
            }
            wVar.f892c = null;
        }
    }

    public void b() {
        int b2 = this.o.b();
        for (int i2 = 0; i2 < b2; i2++) {
            w i3 = i(this.o.e(i2));
            if (!i3.y()) {
                i3.a();
            }
        }
        this.f805l.b();
    }

    public boolean b(w wVar) {
        f fVar = this.W;
        return fVar == null || fVar.a(wVar, wVar.l());
    }

    public void b(boolean z2) {
        this.O = z2 | this.O;
        this.N = true;
        A();
    }

    public static w i(View view) {
        if (view == null) {
            return null;
        }
        return ((j) view.getLayoutParams()).f836a;
    }

    public final void a(w wVar) {
        View view = wVar.f891b;
        boolean z2 = view.getParent() == this;
        this.f805l.e(h(view));
        if (wVar.s()) {
            this.o.a(view, -1, view.getLayoutParams(), true);
        } else if (!z2) {
            this.o.a(view, true);
        } else {
            this.o.a(view);
        }
    }

    public static void b(View view, Rect rect) {
        j jVar = (j) view.getLayoutParams();
        Rect rect2 = jVar.f837b;
        rect.set((view.getLeft() - rect2.left) - jVar.leftMargin, (view.getTop() - rect2.top) - jVar.topMargin, view.getRight() + rect2.right + jVar.rightMargin, view.getBottom() + rect2.bottom + jVar.bottomMargin);
    }

    public void g(int i2, int i3) {
        int b2 = this.o.b();
        for (int i4 = 0; i4 < b2; i4++) {
            w i5 = i(this.o.e(i4));
            if (i5 != null && !i5.y() && i5.f893d >= i2) {
                i5.a(i3, false);
                this.ra.f877g = true;
            }
        }
        this.f805l.a(i2, i3);
        requestLayout();
    }

    public void a(h hVar, int i2) {
        i iVar = this.w;
        if (iVar != null) {
            iVar.a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.y.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.y.add(hVar);
        } else {
            this.y.add(i2, hVar);
        }
        z();
        requestLayout();
    }

    public void b(int i2) {
        i iVar = this.w;
        if (iVar != null) {
            iVar.g(i2);
        }
        i(i2);
        n nVar = this.sa;
        if (nVar != null) {
            nVar.a(this, i2);
        }
        List<n> list = this.ta;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ta.get(size).a(this, i2);
            }
        }
    }

    public int g(View view) {
        w i2 = i(view);
        if (i2 != null) {
            return i2.j();
        }
        return -1;
    }

    public void g(int i2) {
        int a2 = this.o.a();
        for (int i3 = 0; i3 < a2; i3++) {
            this.o.c(i3).offsetLeftAndRight(i2);
        }
    }

    public void a(h hVar) {
        a(hVar, -1);
    }

    public void a(n nVar) {
        if (this.ta == null) {
            this.ta = new ArrayList();
        }
        this.ta.add(nVar);
    }

    public void b(View view) {
        w i2 = i(view);
        m(view);
        a aVar = this.v;
        if (!(aVar == null || i2 == null)) {
            aVar.c(i2);
        }
        List<k> list = this.M;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.M.get(size).a(view);
            }
        }
    }

    public void a(int i2, int i3, int[] iArr) {
        O();
        B();
        b.i.g.a.a("RV Scroll");
        a(this.ra);
        int a2 = i2 != 0 ? this.w.a(i2, this.f805l, this.ra) : 0;
        int b2 = i3 != 0 ? this.w.b(i3, this.f805l, this.ra) : 0;
        b.i.g.a.a();
        J();
        C();
        c(false);
        if (iArr != null) {
            iArr[0] = a2;
            iArr[1] = b2;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x009b, code lost:
        if (r0 != 0) goto L_0x00a0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(int r19, int r20, android.view.MotionEvent r21) {
        /*
            r18 = this;
            r7 = r18
            r8 = r19
            r9 = r20
            r10 = r21
            r18.d()
            androidx.recyclerview.widget.RecyclerView$a r0 = r7.v
            r11 = 1
            r12 = 0
            if (r0 == 0) goto L_0x0025
            int[] r0 = r7.Fa
            r7.a((int) r8, (int) r9, (int[]) r0)
            int[] r0 = r7.Fa
            r1 = r0[r12]
            r0 = r0[r11]
            int r2 = r8 - r1
            int r3 = r9 - r0
            r6 = r0
            r15 = r1
            r13 = r2
            r14 = r3
            goto L_0x0029
        L_0x0025:
            r6 = 0
            r13 = 0
            r14 = 0
            r15 = 0
        L_0x0029:
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView$h> r0 = r7.y
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0034
            r18.invalidate()
        L_0x0034:
            int[] r5 = r7.Ca
            r16 = 0
            r0 = r18
            r1 = r15
            r2 = r6
            r3 = r13
            r4 = r14
            r17 = r6
            r6 = r16
            boolean r0 = r0.a((int) r1, (int) r2, (int) r3, (int) r4, (int[]) r5, (int) r6)
            if (r0 == 0) goto L_0x0076
            int r0 = r7.fa
            int[] r1 = r7.Ca
            r2 = r1[r12]
            int r0 = r0 - r2
            r7.fa = r0
            int r0 = r7.ga
            r2 = r1[r11]
            int r0 = r0 - r2
            r7.ga = r0
            if (r10 == 0) goto L_0x0063
            r0 = r1[r12]
            float r0 = (float) r0
            r1 = r1[r11]
            float r1 = (float) r1
            r10.offsetLocation(r0, r1)
        L_0x0063:
            int[] r0 = r7.Ea
            r1 = r0[r12]
            int[] r2 = r7.Ca
            r3 = r2[r12]
            int r1 = r1 + r3
            r0[r12] = r1
            r1 = r0[r11]
            r2 = r2[r11]
            int r1 = r1 + r2
            r0[r11] = r1
            goto L_0x0097
        L_0x0076:
            int r0 = r18.getOverScrollMode()
            r1 = 2
            if (r0 == r1) goto L_0x0097
            if (r10 == 0) goto L_0x0094
            r0 = 8194(0x2002, float:1.1482E-41)
            boolean r0 = b.i.k.C0265h.d(r10, r0)
            if (r0 != 0) goto L_0x0094
            float r0 = r21.getX()
            float r1 = (float) r13
            float r2 = r21.getY()
            float r3 = (float) r14
            r7.a((float) r0, (float) r1, (float) r2, (float) r3)
        L_0x0094:
            r18.b((int) r19, (int) r20)
        L_0x0097:
            if (r15 != 0) goto L_0x009e
            r0 = r17
            if (r0 == 0) goto L_0x00a3
            goto L_0x00a0
        L_0x009e:
            r0 = r17
        L_0x00a0:
            r7.e(r15, r0)
        L_0x00a3:
            boolean r1 = r18.awakenScrollBars()
            if (r1 != 0) goto L_0x00ac
            r18.invalidate()
        L_0x00ac:
            if (r15 != 0) goto L_0x00b0
            if (r0 == 0) goto L_0x00b1
        L_0x00b0:
            r12 = 1
        L_0x00b1:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.a(int, int, android.view.MotionEvent):boolean");
    }

    public void a(int i2, int i3, Interpolator interpolator) {
        i iVar = this.w;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.H) {
            if (!iVar.a()) {
                i2 = 0;
            }
            if (!this.w.b()) {
                i3 = 0;
            }
            if (!(i2 == 0 && i3 == 0)) {
                this.oa.a(i2, i3, interpolator);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0056  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 1065353216(0x3f800000, float:1.0)
            r1 = 1
            r2 = 0
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 >= 0) goto L_0x0021
            r6.l()
            android.widget.EdgeEffect r3 = r6.S
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r0 - r9
            b.i.l.d.a(r3, r4, r9)
        L_0x001f:
            r9 = 1
            goto L_0x003c
        L_0x0021:
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 <= 0) goto L_0x003b
            r6.m()
            android.widget.EdgeEffect r3 = r6.U
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            b.i.l.d.a(r3, r4, r9)
            goto L_0x001f
        L_0x003b:
            r9 = 0
        L_0x003c:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 >= 0) goto L_0x0056
            r6.n()
            android.widget.EdgeEffect r9 = r6.T
            float r0 = -r10
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r0 = r0 / r3
            int r3 = r6.getWidth()
            float r3 = (float) r3
            float r7 = r7 / r3
            b.i.l.d.a(r9, r0, r7)
            goto L_0x0072
        L_0x0056:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 <= 0) goto L_0x0071
            r6.k()
            android.widget.EdgeEffect r9 = r6.V
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r3 = r10 / r3
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r0 = r0 - r7
            b.i.l.d.a(r9, r3, r0)
            goto L_0x0072
        L_0x0071:
            r1 = r9
        L_0x0072:
            if (r1 != 0) goto L_0x007c
            int r7 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r7 != 0) goto L_0x007c
            int r7 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r7 == 0) goto L_0x007f
        L_0x007c:
            b.i.k.z.F(r6)
        L_0x007f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.a(float, float, float, float):void");
    }

    public void a(int i2, int i3) {
        if (i2 < 0) {
            l();
            this.S.onAbsorb(-i2);
        } else if (i2 > 0) {
            m();
            this.U.onAbsorb(i2);
        }
        if (i3 < 0) {
            n();
            this.T.onAbsorb(-i3);
        } else if (i3 > 0) {
            k();
            this.V.onAbsorb(i3);
        }
        if (i2 != 0 || i3 != 0) {
            z.F(this);
        }
    }

    public final boolean a(View view, View view2, int i2) {
        int i3;
        boolean z2 = false;
        if (!(view2 == null || view2 == this)) {
            if (c(view2) == null) {
                return false;
            }
            if (view == null || c(view) == null) {
                return true;
            }
            this.s.set(0, 0, view.getWidth(), view.getHeight());
            this.t.set(0, 0, view2.getWidth(), view2.getHeight());
            offsetDescendantRectToMyCoords(view, this.s);
            offsetDescendantRectToMyCoords(view2, this.t);
            char c2 = 65535;
            int i4 = this.w.k() == 1 ? -1 : 1;
            Rect rect = this.s;
            int i5 = rect.left;
            int i6 = this.t.left;
            if ((i5 < i6 || rect.right <= i6) && this.s.right < this.t.right) {
                i3 = 1;
            } else {
                Rect rect2 = this.s;
                int i7 = rect2.right;
                int i8 = this.t.right;
                i3 = ((i7 > i8 || rect2.left >= i8) && this.s.left > this.t.left) ? -1 : 0;
            }
            Rect rect3 = this.s;
            int i9 = rect3.top;
            int i10 = this.t.top;
            if ((i9 < i10 || rect3.bottom <= i10) && this.s.bottom < this.t.bottom) {
                c2 = 1;
            } else {
                Rect rect4 = this.s;
                int i11 = rect4.bottom;
                int i12 = this.t.bottom;
                if ((i11 <= i12 && rect4.top < i12) || this.s.top <= this.t.top) {
                    c2 = 0;
                }
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    if (c2 > 0 || (c2 == 0 && i3 * i4 >= 0)) {
                        z2 = true;
                    }
                    return z2;
                } else if (i2 == 17) {
                    if (i3 < 0) {
                        z2 = true;
                    }
                    return z2;
                } else if (i2 == 33) {
                    if (c2 < 0) {
                        z2 = true;
                    }
                    return z2;
                } else if (i2 == 66) {
                    if (i3 > 0) {
                        z2 = true;
                    }
                    return z2;
                } else if (i2 == 130) {
                    if (c2 > 0) {
                        z2 = true;
                    }
                    return z2;
                } else {
                    throw new IllegalArgumentException("Invalid direction: " + i2 + o());
                }
            } else if (c2 < 0 || (c2 == 0 && i3 * i4 <= 0)) {
                z2 = true;
            }
        }
        return z2;
    }

    public final void a(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.s.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof j) {
            j jVar = (j) layoutParams;
            if (!jVar.f838c) {
                Rect rect = jVar.f837b;
                Rect rect2 = this.s;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.s);
            offsetRectIntoDescendantCoords(view, this.s);
        }
        this.w.a(this, view, this.s, !this.E, view2 == null);
    }

    public void a(String str) {
        if (y()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + o());
            }
            throw new IllegalStateException(str);
        } else if (this.Q > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + o()));
        }
    }

    public void a(m mVar) {
        this.z.add(mVar);
    }

    public final boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        m mVar = this.A;
        if (mVar != null) {
            if (action == 0) {
                this.A = null;
            } else {
                mVar.a(this, motionEvent);
                if (action == 3 || action == 1) {
                    this.A = null;
                }
                return true;
            }
        }
        if (action != 0) {
            int size = this.z.size();
            for (int i2 = 0; i2 < size; i2++) {
                m mVar2 = this.z.get(i2);
                if (mVar2.b(this, motionEvent)) {
                    this.A = mVar2;
                    return true;
                }
            }
        }
        return false;
    }

    public final void a() {
        L();
        setScrollState(0);
    }

    public void a(boolean z2) {
        this.P--;
        if (this.P < 1) {
            this.P = 0;
            if (z2) {
                e();
                j();
            }
        }
    }

    public boolean a(AccessibilityEvent accessibilityEvent) {
        if (!y()) {
            return false;
        }
        int a2 = accessibilityEvent != null ? b.i.k.a.b.a(accessibilityEvent) : 0;
        if (a2 == 0) {
            a2 = 0;
        }
        this.J = a2 | this.J;
        return true;
    }

    public final void a(t tVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.oa.f885c;
            tVar.p = overScroller.getFinalX() - overScroller.getCurrX();
            tVar.q = overScroller.getFinalY() - overScroller.getCurrY();
            return;
        }
        tVar.p = 0;
        tVar.q = 0;
    }

    public final void a(long j2, w wVar, w wVar2) {
        int a2 = this.o.a();
        for (int i2 = 0; i2 < a2; i2++) {
            w i3 = i(this.o.c(i2));
            if (i3 != wVar && e(i3) == j2) {
                a aVar = this.v;
                if (aVar == null || !aVar.c()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + i3 + " \n View Holder 2:" + wVar + o());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + i3 + " \n View Holder 2:" + wVar + o());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + wVar2 + " cannot be found but it is necessary for " + wVar + o());
    }

    public void a(w wVar, f.c cVar) {
        wVar.a(0, 8192);
        if (this.ra.f879i && wVar.t() && !wVar.q() && !wVar.y()) {
            this.p.a(e(wVar), wVar);
        }
        this.p.c(wVar, cVar);
    }

    public final void a(int[] iArr) {
        int a2 = this.o.a();
        if (a2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < a2; i4++) {
            w i5 = i(this.o.c(i4));
            if (!i5.y()) {
                int j2 = i5.j();
                if (j2 < i2) {
                    i2 = j2;
                }
                if (j2 > i3) {
                    i3 = j2;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    public void a(w wVar, f.c cVar, f.c cVar2) {
        wVar.a(false);
        if (this.W.a(wVar, cVar, cVar2)) {
            D();
        }
    }

    public final void a(w wVar, w wVar2, f.c cVar, f.c cVar2, boolean z2, boolean z3) {
        wVar.a(false);
        if (z2) {
            a(wVar);
        }
        if (wVar != wVar2) {
            if (z3) {
                a(wVar2);
            }
            wVar.f898i = wVar2;
            a(wVar);
            this.f805l.e(wVar);
            wVar2.a(false);
            wVar2.f899j = wVar;
        }
        if (this.W.a(wVar, wVar2, cVar, cVar2)) {
            D();
        }
    }

    public void a(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int b2 = this.o.b();
        for (int i5 = 0; i5 < b2; i5++) {
            w i6 = i(this.o.e(i5));
            if (i6 != null && !i6.y()) {
                int i7 = i6.f893d;
                if (i7 >= i4) {
                    i6.a(-i3, z2);
                    this.ra.f877g = true;
                } else if (i7 >= i2) {
                    i6.a(i2 - 1, -i3, z2);
                    this.ra.f877g = true;
                }
            }
        }
        this.f805l.a(i2, i3, z2);
        requestLayout();
    }

    public void a(int i2, int i3, Object obj) {
        int b2 = this.o.b();
        int i4 = i2 + i3;
        for (int i5 = 0; i5 < b2; i5++) {
            View e2 = this.o.e(i5);
            w i6 = i(e2);
            if (i6 != null && !i6.y()) {
                int i7 = i6.f893d;
                if (i7 >= i2 && i7 < i4) {
                    i6.a(2);
                    i6.a(obj);
                    ((j) e2.getLayoutParams()).f838c = true;
                }
            }
        }
        this.f805l.c(i2, i3);
    }

    public w a(int i2, boolean z2) {
        int b2 = this.o.b();
        w wVar = null;
        for (int i3 = 0; i3 < b2; i3++) {
            w i4 = i(this.o.e(i3));
            if (i4 != null && !i4.q()) {
                if (z2) {
                    if (i4.f893d != i2) {
                        continue;
                    }
                } else if (i4.j() != i2) {
                    continue;
                }
                if (!this.o.d(i4.f891b)) {
                    return i4;
                }
                wVar = i4;
            }
        }
        return wVar;
    }

    public w a(long j2) {
        a aVar = this.v;
        w wVar = null;
        if (aVar != null && aVar.c()) {
            int b2 = this.o.b();
            for (int i2 = 0; i2 < b2; i2++) {
                w i3 = i(this.o.e(i2));
                if (i3 != null && !i3.q() && i3.h() == j2) {
                    if (!this.o.d(i3.f891b)) {
                        return i3;
                    }
                    wVar = i3;
                }
            }
        }
        return wVar;
    }

    public void a(View view, Rect rect) {
        b(view, rect);
    }

    public void a(View view) {
        w i2 = i(view);
        l(view);
        a aVar = this.v;
        if (!(aVar == null || i2 == null)) {
            aVar.b(i2);
        }
        List<k> list = this.M;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.M.get(size).b(view);
            }
        }
    }

    public boolean a(w wVar, int i2) {
        if (y()) {
            wVar.r = i2;
            this.Ga.add(wVar);
            return false;
        }
        z.g(wVar.f891b, i2);
        return true;
    }

    public void a(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + o());
        }
        Resources resources = getContext().getResources();
        new C0348s(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(b.y.a.fastscroll_default_thickness), resources.getDimensionPixelSize(b.y.a.fastscroll_minimum_range), resources.getDimensionPixelOffset(b.y.a.fastscroll_margin));
    }

    public void a(int i2) {
        getScrollingChildHelper().d(i2);
    }

    public boolean a(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr, i6);
    }

    public boolean a(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, i4);
    }
}
