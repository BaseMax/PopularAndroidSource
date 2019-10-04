package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.Lifecycle;
import b.A.c;
import b.i.a.s;
import b.i.k.C0262e;
import b.o.a.C0285i;
import b.o.a.C0286j;
import b.o.a.C0288l;
import b.o.a.C0289m;
import b.o.a.C0290n;
import b.o.a.S;
import b.o.a.v;
import b.r.C0303i;
import b.r.H;
import b.r.I;
import b.r.j;
import b.r.k;
import b.r.m;
import b.r.t;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;

public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, k, I, c {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f657a = new Object();
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public ViewGroup G;
    public View H;
    public View I;
    public boolean J;
    public boolean K;
    public a L;
    public Runnable M;
    public boolean N;
    public boolean O;
    public float P;
    public LayoutInflater Q;
    public boolean R;
    public Lifecycle.State S;
    public m T;
    public S U;
    public t<k> V;
    public b.A.b W;
    public int X;

    /* renamed from: b  reason: collision with root package name */
    public int f658b;

    /* renamed from: c  reason: collision with root package name */
    public Bundle f659c;

    /* renamed from: d  reason: collision with root package name */
    public SparseArray<Parcelable> f660d;

    /* renamed from: e  reason: collision with root package name */
    public Boolean f661e;

    /* renamed from: f  reason: collision with root package name */
    public String f662f;

    /* renamed from: g  reason: collision with root package name */
    public Bundle f663g;

    /* renamed from: h  reason: collision with root package name */
    public Fragment f664h;

    /* renamed from: i  reason: collision with root package name */
    public String f665i;

    /* renamed from: j  reason: collision with root package name */
    public int f666j;

    /* renamed from: k  reason: collision with root package name */
    public Boolean f667k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f668l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r;
    public v s;
    public C0289m t;
    public v u;
    public Fragment v;
    public int w;
    public int x;
    public String y;
    public boolean z;

    public static class InstantiationException extends RuntimeException {
        public InstantiationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0284h();

        /* renamed from: a  reason: collision with root package name */
        public final Bundle f670a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            this.f670a = parcel.readBundle();
            if (classLoader != null) {
                Bundle bundle = this.f670a;
                if (bundle != null) {
                    bundle.setClassLoader(classLoader);
                }
            }
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeBundle(this.f670a);
        }
    }

    static class a {

        /* renamed from: a  reason: collision with root package name */
        public View f671a;

        /* renamed from: b  reason: collision with root package name */
        public Animator f672b;

        /* renamed from: c  reason: collision with root package name */
        public int f673c;

        /* renamed from: d  reason: collision with root package name */
        public int f674d;

        /* renamed from: e  reason: collision with root package name */
        public int f675e;

        /* renamed from: f  reason: collision with root package name */
        public int f676f;

        /* renamed from: g  reason: collision with root package name */
        public Object f677g = null;

        /* renamed from: h  reason: collision with root package name */
        public Object f678h;

        /* renamed from: i  reason: collision with root package name */
        public Object f679i;

        /* renamed from: j  reason: collision with root package name */
        public Object f680j;

        /* renamed from: k  reason: collision with root package name */
        public Object f681k;

        /* renamed from: l  reason: collision with root package name */
        public Object f682l;
        public Boolean m;
        public Boolean n;
        public s o;
        public s p;
        public boolean q;
        public b r;
        public boolean s;

        public a() {
            Object obj = Fragment.f657a;
            this.f678h = obj;
            this.f679i = null;
            this.f680j = obj;
            this.f681k = null;
            this.f682l = obj;
            this.o = null;
            this.p = null;
        }
    }

    interface b {
        void a();

        void b();
    }

    public Fragment() {
        this.f658b = 0;
        this.f662f = UUID.randomUUID().toString();
        this.f665i = null;
        this.f667k = null;
        this.u = new v();
        this.E = true;
        this.K = true;
        this.M = new C0281e(this);
        this.S = Lifecycle.State.RESUMED;
        this.V = new t<>();
        ca();
    }

    @Deprecated
    public static Fragment a(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) C0288l.d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.m(bundle);
            }
            return fragment;
        } catch (InstantiationException e2) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (IllegalAccessException e3) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e3);
        } catch (NoSuchMethodException e4) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e4);
        } catch (InvocationTargetException e5) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e5);
        }
    }

    public View A() {
        a aVar = this.L;
        if (aVar == null) {
            return null;
        }
        return aVar.f671a;
    }

    public void Aa() {
        onLowMemory();
        this.u.o();
    }

    public Animator B() {
        a aVar = this.L;
        if (aVar == null) {
            return null;
        }
        return aVar.f672b;
    }

    public void Ba() {
        this.u.p();
        if (this.H != null) {
            this.U.a(Lifecycle.Event.ON_PAUSE);
        }
        this.T.b(Lifecycle.Event.ON_PAUSE);
        this.f658b = 3;
        this.F = false;
        sa();
        if (!this.F) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
        }
    }

    public final Bundle C() {
        return this.f663g;
    }

    public void Ca() {
        boolean l2 = this.s.l(this);
        Boolean bool = this.f667k;
        if (bool == null || bool.booleanValue() != l2) {
            this.f667k = Boolean.valueOf(l2);
            d(l2);
            this.u.q();
        }
    }

    public final C0290n D() {
        if (this.t != null) {
            return this.u;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public void Da() {
        this.u.C();
        this.u.w();
        this.f658b = 4;
        this.F = false;
        ta();
        if (this.F) {
            this.T.b(Lifecycle.Event.ON_RESUME);
            if (this.H != null) {
                this.U.a(Lifecycle.Event.ON_RESUME);
            }
            this.u.r();
            this.u.w();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
    }

    public Context E() {
        C0289m mVar = this.t;
        if (mVar == null) {
            return null;
        }
        return mVar.f();
    }

    public void Ea() {
        this.u.C();
        this.u.w();
        this.f658b = 3;
        this.F = false;
        ua();
        if (this.F) {
            this.T.b(Lifecycle.Event.ON_START);
            if (this.H != null) {
                this.U.a(Lifecycle.Event.ON_START);
            }
            this.u.s();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
    }

    public Object F() {
        a aVar = this.L;
        if (aVar == null) {
            return null;
        }
        return aVar.f677g;
    }

    public void Fa() {
        this.u.t();
        if (this.H != null) {
            this.U.a(Lifecycle.Event.ON_STOP);
        }
        this.T.b(Lifecycle.Event.ON_STOP);
        this.f658b = 2;
        this.F = false;
        va();
        if (!this.F) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    public s G() {
        a aVar = this.L;
        if (aVar == null) {
            return null;
        }
        return aVar.o;
    }

    public final C0285i Ga() {
        C0285i x2 = x();
        if (x2 != null) {
            return x2;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public Object H() {
        a aVar = this.L;
        if (aVar == null) {
            return null;
        }
        return aVar.f679i;
    }

    public final Context Ha() {
        Context E2 = E();
        if (E2 != null) {
            return E2;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public s I() {
        a aVar = this.L;
        if (aVar == null) {
            return null;
        }
        return aVar.p;
    }

    public final C0290n Ia() {
        C0290n J2 = J();
        if (J2 != null) {
            return J2;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final C0290n J() {
        return this.s;
    }

    public final View Ja() {
        View aa = aa();
        if (aa != null) {
            return aa;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public final Object K() {
        C0289m mVar = this.t;
        if (mVar == null) {
            return null;
        }
        return mVar.h();
    }

    public void Ka() {
        v vVar = this.s;
        if (vVar == null || vVar.t == null) {
            w().q = false;
        } else if (Looper.myLooper() != this.s.t.g().getLooper()) {
            this.s.t.g().postAtFrontOfQueue(new C0282f(this));
        } else {
            v();
        }
    }

    public final int L() {
        return this.w;
    }

    public final LayoutInflater M() {
        LayoutInflater layoutInflater = this.Q;
        return layoutInflater == null ? i((Bundle) null) : layoutInflater;
    }

    public int N() {
        a aVar = this.L;
        if (aVar == null) {
            return 0;
        }
        return aVar.f674d;
    }

    public int O() {
        a aVar = this.L;
        if (aVar == null) {
            return 0;
        }
        return aVar.f675e;
    }

    public int P() {
        a aVar = this.L;
        if (aVar == null) {
            return 0;
        }
        return aVar.f676f;
    }

    public final Fragment Q() {
        return this.v;
    }

    public Object R() {
        a aVar = this.L;
        if (aVar == null) {
            return null;
        }
        Object obj = aVar.f680j;
        if (obj == f657a) {
            obj = H();
        }
        return obj;
    }

    public final Resources S() {
        return Ha().getResources();
    }

    public final boolean T() {
        return this.B;
    }

    public Object U() {
        a aVar = this.L;
        if (aVar == null) {
            return null;
        }
        Object obj = aVar.f678h;
        if (obj == f657a) {
            obj = F();
        }
        return obj;
    }

    public Object V() {
        a aVar = this.L;
        if (aVar == null) {
            return null;
        }
        return aVar.f681k;
    }

    public Object W() {
        a aVar = this.L;
        if (aVar == null) {
            return null;
        }
        Object obj = aVar.f682l;
        if (obj == f657a) {
            obj = V();
        }
        return obj;
    }

    public int X() {
        a aVar = this.L;
        if (aVar == null) {
            return 0;
        }
        return aVar.f673c;
    }

    public final Fragment Y() {
        Fragment fragment = this.f664h;
        if (fragment != null) {
            return fragment;
        }
        v vVar = this.s;
        if (vVar != null) {
            String str = this.f665i;
            if (str != null) {
                return vVar.f3102j.get(str);
            }
        }
        return null;
    }

    @Deprecated
    public boolean Z() {
        return this.K;
    }

    public Animation a(int i2, boolean z2, int i3) {
        return null;
    }

    public void a(int i2, int i3, Intent intent) {
    }

    public void a(int i2, String[] strArr, int[] iArr) {
    }

    public void a(Menu menu) {
    }

    public void a(Menu menu, MenuInflater menuInflater) {
    }

    public void a(View view, Bundle bundle) {
    }

    public void a(Fragment fragment) {
    }

    public void a(boolean z2) {
    }

    public boolean a(MenuItem menuItem) {
        return false;
    }

    public View aa() {
        return this.H;
    }

    public Animator b(int i2, boolean z2, int i3) {
        return null;
    }

    public Lifecycle b() {
        return this.T;
    }

    public void b(Menu menu) {
    }

    public void b(boolean z2) {
    }

    public boolean b(MenuItem menuItem) {
        return false;
    }

    public k ba() {
        S s2 = this.U;
        if (s2 != null) {
            return s2;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public void c(Bundle bundle) {
        this.F = true;
        k(bundle);
        if (!this.u.d(1)) {
            this.u.l();
        }
    }

    public void c(boolean z2) {
    }

    public final void ca() {
        this.T = new m(this);
        this.W = b.A.b.a((c) this);
        if (Build.VERSION.SDK_INT >= 19) {
            this.T.a((j) new C0303i() {
                public void a(k kVar, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_STOP) {
                        View view = Fragment.this.H;
                        if (view != null) {
                            view.cancelPendingInputEvents();
                        }
                    }
                }
            });
        }
    }

    public final b.A.a d() {
        return this.W.a();
    }

    public void d(boolean z2) {
    }

    public void da() {
        ca();
        this.f662f = UUID.randomUUID().toString();
        this.f668l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.r = 0;
        this.s = null;
        this.u = new v();
        this.t = null;
        this.w = 0;
        this.x = 0;
        this.y = null;
        this.z = false;
        this.A = false;
    }

    public H e() {
        v vVar = this.s;
        if (vVar != null) {
            return vVar.i(this);
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    public void e(Bundle bundle) {
    }

    public final boolean ea() {
        return this.t != null && this.f668l;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public void f(Bundle bundle) {
        this.F = true;
    }

    public final boolean fa() {
        return this.z;
    }

    public void g(boolean z2) {
        if (this.D != z2) {
            this.D = z2;
            if (ea() && !fa()) {
                this.t.l();
            }
        }
    }

    public boolean ga() {
        a aVar = this.L;
        if (aVar == null) {
            return false;
        }
        return aVar.s;
    }

    public void h(Bundle bundle) {
        this.u.C();
        this.f658b = 1;
        this.F = false;
        this.W.a(bundle);
        c(bundle);
        this.R = true;
        if (this.F) {
            this.T.b(Lifecycle.Event.ON_CREATE);
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
    }

    public final boolean ha() {
        return this.r > 0;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void i(boolean z2) {
        if (this.E != z2) {
            this.E = z2;
            if (this.D && ea() && !fa()) {
                this.t.l();
            }
        }
    }

    public boolean ia() {
        a aVar = this.L;
        if (aVar == null) {
            return false;
        }
        return aVar.q;
    }

    @Deprecated
    public void j(boolean z2) {
        if (!this.K && z2 && this.f658b < 3 && this.s != null && ea() && this.R) {
            this.s.q(this);
        }
        this.K = z2;
        this.J = this.f658b < 3 && !z2;
        if (this.f659c != null) {
            this.f661e = Boolean.valueOf(z2);
        }
    }

    public final boolean ja() {
        return this.m;
    }

    public void k(Bundle bundle) {
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            if (parcelable != null) {
                this.u.a(parcelable);
                this.u.l();
            }
        }
    }

    public final boolean ka() {
        return this.f658b >= 4;
    }

    public final void l(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.f660d;
        if (sparseArray != null) {
            this.I.restoreHierarchyState(sparseArray);
            this.f660d = null;
        }
        this.F = false;
        f(bundle);
        if (!this.F) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
        } else if (this.H != null) {
            this.U.a(Lifecycle.Event.ON_CREATE);
        }
    }

    public final boolean la() {
        v vVar = this.s;
        if (vVar == null) {
            return false;
        }
        return vVar.e();
    }

    public void m(Bundle bundle) {
        if (this.s == null || !la()) {
            this.f663g = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    public final boolean ma() {
        if (ea() && !fa()) {
            View view = this.H;
            if (!(view == null || view.getWindowToken() == null || this.H.getVisibility() != 0)) {
                return true;
            }
        }
        return false;
    }

    public void na() {
        this.u.C();
    }

    public void oa() {
        this.F = true;
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.F = true;
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        Ga().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onLowMemory() {
        this.F = true;
    }

    public void pa() {
    }

    public void qa() {
        this.F = true;
    }

    public void ra() {
        this.F = true;
    }

    public void sa() {
        this.F = true;
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        a(intent, i2, (Bundle) null);
    }

    public void ta() {
        this.F = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        b.i.j.a.a(this, sb);
        sb.append(" (");
        sb.append(this.f662f);
        sb.append(")");
        if (this.w != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.w));
        }
        if (this.y != null) {
            sb.append(" ");
            sb.append(this.y);
        }
        sb.append('}');
        return sb.toString();
    }

    public void ua() {
        this.F = true;
    }

    public void v() {
        a aVar = this.L;
        b bVar = null;
        if (aVar != null) {
            aVar.q = false;
            b bVar2 = aVar.r;
            aVar.r = null;
            bVar = bVar2;
        }
        if (bVar != null) {
            bVar.b();
        }
    }

    public void va() {
        this.F = true;
    }

    public final a w() {
        if (this.L == null) {
            this.L = new a();
        }
        return this.L;
    }

    public void wa() {
        this.u.a(this.t, (C0286j) new C0283g(this), this);
        this.F = false;
        a(this.t.f());
        if (!this.F) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onAttach()");
        }
    }

    public final C0285i x() {
        C0289m mVar = this.t;
        if (mVar == null) {
            return null;
        }
        return (C0285i) mVar.d();
    }

    public void xa() {
        this.u.m();
        this.T.b(Lifecycle.Event.ON_DESTROY);
        this.f658b = 0;
        this.F = false;
        this.R = false;
        oa();
        if (!this.F) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
        }
    }

    public boolean y() {
        a aVar = this.L;
        if (aVar != null) {
            Boolean bool = aVar.n;
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        return true;
    }

    public void ya() {
        this.u.n();
        if (this.H != null) {
            this.U.a(Lifecycle.Event.ON_DESTROY);
        }
        this.f658b = 1;
        this.F = false;
        qa();
        if (this.F) {
            b.s.a.a.a(this).a();
            this.q = false;
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
    }

    public boolean z() {
        a aVar = this.L;
        if (aVar != null) {
            Boolean bool = aVar.m;
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        return true;
    }

    public void za() {
        this.F = false;
        ra();
        this.Q = null;
        if (!this.F) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDetach()");
        } else if (!this.u.B()) {
            this.u.m();
            this.u = new v();
        }
    }

    public final String b(int i2) {
        return S().getString(i2);
    }

    public LayoutInflater d(Bundle bundle) {
        return a(bundle);
    }

    public void f(boolean z2) {
        c(z2);
        this.u.b(z2);
    }

    public boolean b(String str) {
        C0289m mVar = this.t;
        if (mVar != null) {
            return mVar.a(str);
        }
        return false;
    }

    public boolean d(Menu menu) {
        boolean z2 = false;
        if (this.z) {
            return false;
        }
        if (this.D && this.E) {
            z2 = true;
            b(menu);
        }
        return z2 | this.u.b(menu);
    }

    public void e(boolean z2) {
        b(z2);
        this.u.a(z2);
    }

    public void b(Bundle bundle) {
        this.F = true;
    }

    public boolean c(MenuItem menuItem) {
        if (this.z || (!a(menuItem) && !this.u.a(menuItem))) {
            return false;
        }
        return true;
    }

    public void g(Bundle bundle) {
        this.u.C();
        this.f658b = 2;
        this.F = false;
        b(bundle);
        if (this.F) {
            this.u.k();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    public LayoutInflater i(Bundle bundle) {
        this.Q = d(bundle);
        return this.Q;
    }

    public void b(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.u.C();
        this.q = true;
        this.U = new S();
        this.H = a(layoutInflater, viewGroup, bundle);
        if (this.H != null) {
            this.U.a();
            this.V.b(this.U);
        } else if (!this.U.e()) {
            this.U = null;
        } else {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
    }

    public boolean d(MenuItem menuItem) {
        if (this.z || ((!this.D || !this.E || !b(menuItem)) && !this.u.b(menuItem))) {
            return false;
        }
        return true;
    }

    public void c(Menu menu) {
        if (!this.z) {
            if (this.D && this.E) {
                a(menu);
            }
            this.u.a(menu);
        }
    }

    public void j(Bundle bundle) {
        e(bundle);
        this.W.b(bundle);
        Parcelable E2 = this.u.E();
        if (E2 != null) {
            bundle.putParcelable("android:support:fragments", E2);
        }
    }

    public void a(Fragment fragment, int i2) {
        C0290n J2 = J();
        C0290n J3 = fragment != null ? fragment.J() : null;
        if (J2 == null || J3 == null || J2 == J3) {
            Fragment fragment2 = fragment;
            while (fragment2 != null) {
                if (fragment2 != this) {
                    fragment2 = fragment2.Y();
                } else {
                    throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
                }
            }
            if (fragment == null) {
                this.f665i = null;
                this.f664h = null;
            } else if (this.s == null || fragment.s == null) {
                this.f665i = null;
                this.f664h = fragment;
            } else {
                this.f665i = fragment.f662f;
                this.f664h = null;
            }
            this.f666j = i2;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " must share the same FragmentManager to be set as a target fragment");
    }

    public void h(boolean z2) {
        w().s = z2;
    }

    public void d(int i2) {
        w().f673c = i2;
    }

    public void c(int i2) {
        if (this.L != null || i2 != 0) {
            w().f674d = i2;
        }
    }

    public Fragment(int i2) {
        this();
        this.X = i2;
    }

    public boolean b(Menu menu, MenuInflater menuInflater) {
        boolean z2 = false;
        if (this.z) {
            return false;
        }
        if (this.D && this.E) {
            z2 = true;
            a(menu, menuInflater);
        }
        return z2 | this.u.a(menu, menuInflater);
    }

    public final String a(int i2, Object... objArr) {
        return S().getString(i2, objArr);
    }

    public void a(@SuppressLint({"UnknownNullness"}) Intent intent) {
        a(intent, (Bundle) null);
    }

    public void a(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        C0289m mVar = this.t;
        if (mVar != null) {
            mVar.a(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void a(@SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        C0289m mVar = this.t;
        if (mVar != null) {
            mVar.a(this, intent, i2, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public void a(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        C0289m mVar = this.t;
        if (mVar != null) {
            mVar.a(this, intentSender, i2, intent, i3, i4, i5, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final void a(String[] strArr, int i2) {
        C0289m mVar = this.t;
        if (mVar != null) {
            mVar.a(this, strArr, i2);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @Deprecated
    public LayoutInflater a(Bundle bundle) {
        C0289m mVar = this.t;
        if (mVar != null) {
            LayoutInflater i2 = mVar.i();
            v vVar = this.u;
            vVar.z();
            C0262e.b(i2, vVar);
            return i2;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    public void a(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.F = true;
        C0289m mVar = this.t;
        Activity d2 = mVar == null ? null : mVar.d();
        if (d2 != null) {
            this.F = false;
            a(d2, attributeSet, bundle);
        }
    }

    @Deprecated
    public void a(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.F = true;
    }

    public void a(Context context) {
        this.F = true;
        C0289m mVar = this.t;
        Activity d2 = mVar == null ? null : mVar.d();
        if (d2 != null) {
            this.F = false;
            a(d2);
        }
    }

    @Deprecated
    public void a(Activity activity) {
        this.F = true;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2 = this.X;
        if (i2 != 0) {
            return layoutInflater.inflate(i2, viewGroup, false);
        }
        return null;
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.w));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.x));
        printWriter.print(" mTag=");
        printWriter.println(this.y);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f658b);
        printWriter.print(" mWho=");
        printWriter.print(this.f662f);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.r);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f668l);
        printWriter.print(" mRemoving=");
        printWriter.print(this.m);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.n);
        printWriter.print(" mInLayout=");
        printWriter.println(this.o);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.z);
        printWriter.print(" mDetached=");
        printWriter.print(this.A);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.E);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.D);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.B);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.K);
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.s);
        }
        if (this.t != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.t);
        }
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.v);
        }
        if (this.f663g != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f663g);
        }
        if (this.f659c != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f659c);
        }
        if (this.f660d != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f660d);
        }
        Fragment Y = Y();
        if (Y != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(Y);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f666j);
        }
        if (N() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(N());
        }
        if (this.G != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.G);
        }
        if (this.H != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.H);
        }
        if (this.I != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.H);
        }
        if (A() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(A());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(X());
        }
        if (E() != null) {
            b.s.a.a.a(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.u + ":");
        v vVar = this.u;
        vVar.a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    public Fragment a(String str) {
        if (str.equals(this.f662f)) {
            return this;
        }
        return this.u.b(str);
    }

    public void a(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.u.a(configuration);
    }

    public void a(b bVar) {
        w();
        b bVar2 = this.L.r;
        if (bVar != bVar2) {
            if (bVar == null || bVar2 == null) {
                a aVar = this.L;
                if (aVar.q) {
                    aVar.r = bVar;
                }
                if (bVar != null) {
                    bVar.a();
                }
                return;
            }
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
    }

    public void a(int i2, int i3) {
        if (this.L != null || i2 != 0 || i3 != 0) {
            w();
            a aVar = this.L;
            aVar.f675e = i2;
            aVar.f676f = i3;
        }
    }

    public void a(View view) {
        w().f671a = view;
    }

    public void a(Animator animator) {
        w().f672b = animator;
    }
}
