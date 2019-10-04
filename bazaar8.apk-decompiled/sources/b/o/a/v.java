package b.o.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.activity.OnBackPressedDispatcher;
import androidx.fragment.app.BackStackState;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerState;
import androidx.fragment.app.FragmentState;
import androidx.lifecycle.Lifecycle;
import b.i.k.r;
import b.o.a.C0290n;
import b.r.H;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: FragmentManagerImpl */
public final class v extends C0290n implements LayoutInflater.Factory2 {

    /* renamed from: c  reason: collision with root package name */
    public static boolean f3095c = false;

    /* renamed from: d  reason: collision with root package name */
    public static final Interpolator f3096d = new DecelerateInterpolator(2.5f);

    /* renamed from: e  reason: collision with root package name */
    public static final Interpolator f3097e = new DecelerateInterpolator(1.5f);
    public boolean A;
    public boolean B;
    public ArrayList<C0277a> C;
    public ArrayList<Boolean> D;
    public ArrayList<Fragment> E;
    public Bundle F = null;
    public SparseArray<Parcelable> G = null;
    public ArrayList<g> H;
    public y I;
    public Runnable J = new C0292p(this);

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<e> f3098f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3099g;

    /* renamed from: h  reason: collision with root package name */
    public int f3100h = 0;

    /* renamed from: i  reason: collision with root package name */
    public final ArrayList<Fragment> f3101i = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    public final HashMap<String, Fragment> f3102j = new HashMap<>();

    /* renamed from: k  reason: collision with root package name */
    public ArrayList<C0277a> f3103k;

    /* renamed from: l  reason: collision with root package name */
    public ArrayList<Fragment> f3104l;
    public OnBackPressedDispatcher m;
    public final b.a.d n = new C0291o(this, false);
    public ArrayList<C0277a> o;
    public ArrayList<Integer> p;
    public ArrayList<C0290n.c> q;
    public final CopyOnWriteArrayList<c> r = new CopyOnWriteArrayList<>();
    public int s = 0;
    public C0289m t;
    public C0286j u;
    public Fragment v;
    public Fragment w;
    public boolean x;
    public boolean y;
    public boolean z;

    /* compiled from: FragmentManagerImpl */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Animation f3105a;

        /* renamed from: b  reason: collision with root package name */
        public final Animator f3106b;

        public a(Animation animation) {
            this.f3105a = animation;
            this.f3106b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        public a(Animator animator) {
            this.f3105a = null;
            this.f3106b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* compiled from: FragmentManagerImpl */
    private static class b extends AnimationSet implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final ViewGroup f3107a;

        /* renamed from: b  reason: collision with root package name */
        public final View f3108b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f3109c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f3110d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f3111e = true;

        public b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f3107a = viewGroup;
            this.f3108b = view;
            addAnimation(animation);
            this.f3107a.post(this);
        }

        public boolean getTransformation(long j2, Transformation transformation) {
            this.f3111e = true;
            if (this.f3109c) {
                return !this.f3110d;
            }
            if (!super.getTransformation(j2, transformation)) {
                this.f3109c = true;
                r.a(this.f3107a, this);
            }
            return true;
        }

        public void run() {
            if (this.f3109c || !this.f3111e) {
                this.f3107a.endViewTransition(this.f3108b);
                this.f3110d = true;
                return;
            }
            this.f3111e = false;
            this.f3107a.post(this);
        }

        public boolean getTransformation(long j2, Transformation transformation, float f2) {
            this.f3111e = true;
            if (this.f3109c) {
                return !this.f3110d;
            }
            if (!super.getTransformation(j2, transformation, f2)) {
                this.f3109c = true;
                r.a(this.f3107a, this);
            }
            return true;
        }
    }

    /* compiled from: FragmentManagerImpl */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final C0290n.b f3112a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3113b;
    }

    /* compiled from: FragmentManagerImpl */
    static class d {

        /* renamed from: a  reason: collision with root package name */
        public static final int[] f3114a = {16842755, 16842960, 16842961};
    }

    /* compiled from: FragmentManagerImpl */
    interface e {
        boolean a(ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* compiled from: FragmentManagerImpl */
    private class f implements e {

        /* renamed from: a  reason: collision with root package name */
        public final String f3115a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3116b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3117c;

        public f(String str, int i2, int i3) {
            this.f3115a = str;
            this.f3116b = i2;
            this.f3117c = i3;
        }

        public boolean a(ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = v.this.w;
            if (fragment != null && this.f3116b < 0 && this.f3115a == null && fragment.D().f()) {
                return false;
            }
            return v.this.a(arrayList, arrayList2, this.f3115a, this.f3116b, this.f3117c);
        }
    }

    /* compiled from: FragmentManagerImpl */
    static class g implements Fragment.b {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f3119a;

        /* renamed from: b  reason: collision with root package name */
        public final C0277a f3120b;

        /* renamed from: c  reason: collision with root package name */
        public int f3121c;

        public g(C0277a aVar, boolean z) {
            this.f3119a = z;
            this.f3120b = aVar;
        }

        public void a() {
            this.f3121c++;
        }

        public void b() {
            this.f3121c--;
            if (this.f3121c == 0) {
                this.f3120b.s.F();
            }
        }

        public void c() {
            C0277a aVar = this.f3120b;
            aVar.s.a(aVar, this.f3119a, false, false);
        }

        public void d() {
            boolean z = this.f3121c > 0;
            v vVar = this.f3120b.s;
            int size = vVar.f3101i.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = vVar.f3101i.get(i2);
                fragment.a((Fragment.b) null);
                if (z && fragment.ia()) {
                    fragment.Ka();
                }
            }
            C0277a aVar = this.f3120b;
            aVar.s.a(aVar, this.f3119a, !z, true);
        }

        public boolean e() {
            return this.f3121c == 0;
        }
    }

    public static int b(int i2, boolean z2) {
        if (i2 == 4097) {
            return z2 ? 1 : 2;
        }
        if (i2 == 4099) {
            return z2 ? 5 : 6;
        }
        if (i2 != 8194) {
            return -1;
        }
        return z2 ? 3 : 4;
    }

    public static int e(int i2) {
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 != 4099) {
            return i2 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    public void A() {
        w();
        if (this.n.b()) {
            f();
        } else {
            this.m.a();
        }
    }

    public boolean B() {
        return this.A;
    }

    public void C() {
        this.y = false;
        this.z = false;
        int size = this.f3101i.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f3101i.get(i2);
            if (fragment != null) {
                fragment.na();
            }
        }
    }

    public void D() {
        if (this.q != null) {
            for (int i2 = 0; i2 < this.q.size(); i2++) {
                this.q.get(i2).onBackStackChanged();
            }
        }
    }

    public Parcelable E() {
        ArrayList<String> arrayList;
        x();
        v();
        w();
        this.y = true;
        BackStackState[] backStackStateArr = null;
        if (this.f3102j.isEmpty()) {
            return null;
        }
        ArrayList<FragmentState> arrayList2 = new ArrayList<>(this.f3102j.size());
        boolean z2 = false;
        for (Fragment next : this.f3102j.values()) {
            if (next != null) {
                if (next.s == this) {
                    FragmentState fragmentState = new FragmentState(next);
                    arrayList2.add(fragmentState);
                    if (next.f658b <= 0 || fragmentState.m != null) {
                        fragmentState.m = next.f659c;
                    } else {
                        fragmentState.m = t(next);
                        String str = next.f665i;
                        if (str != null) {
                            Fragment fragment = this.f3102j.get(str);
                            if (fragment != null) {
                                if (fragmentState.m == null) {
                                    fragmentState.m = new Bundle();
                                }
                                a(fragmentState.m, "android:target_state", fragment);
                                int i2 = next.f666j;
                                if (i2 != 0) {
                                    fragmentState.m.putInt("android:target_req_state", i2);
                                }
                            } else {
                                a((RuntimeException) new IllegalStateException("Failure saving state: " + next + " has target not in fragment manager: " + next.f665i));
                                throw null;
                            }
                        }
                    }
                    if (f3095c) {
                        Log.v("FragmentManager", "Saved state of " + next + ": " + fragmentState.m);
                    }
                    z2 = true;
                } else {
                    a((RuntimeException) new IllegalStateException("Failure saving state: active " + next + " was removed from the FragmentManager"));
                    throw null;
                }
            }
        }
        if (!z2) {
            if (f3095c) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        int size = this.f3101i.size();
        if (size > 0) {
            arrayList = new ArrayList<>(size);
            Iterator<Fragment> it = this.f3101i.iterator();
            while (it.hasNext()) {
                Fragment next2 = it.next();
                arrayList.add(next2.f662f);
                if (next2.s != this) {
                    a((RuntimeException) new IllegalStateException("Failure saving state: active " + next2 + " was removed from the FragmentManager"));
                    throw null;
                } else if (f3095c) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + next2.f662f + "): " + next2);
                }
            }
        } else {
            arrayList = null;
        }
        ArrayList<C0277a> arrayList3 = this.f3103k;
        if (arrayList3 != null) {
            int size2 = arrayList3.size();
            if (size2 > 0) {
                backStackStateArr = new BackStackState[size2];
                for (int i3 = 0; i3 < size2; i3++) {
                    backStackStateArr[i3] = new BackStackState(this.f3103k.get(i3));
                    if (f3095c) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i3 + ": " + this.f3103k.get(i3));
                    }
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f683a = arrayList2;
        fragmentManagerState.f684b = arrayList;
        fragmentManagerState.f685c = backStackStateArr;
        Fragment fragment2 = this.w;
        if (fragment2 != null) {
            fragmentManagerState.f686d = fragment2.f662f;
        }
        fragmentManagerState.f687e = this.f3100h;
        return fragmentManagerState;
    }

    public void F() {
        synchronized (this) {
            boolean z2 = false;
            boolean z3 = this.H != null && !this.H.isEmpty();
            if (this.f3098f != null && this.f3098f.size() == 1) {
                z2 = true;
            }
            if (z3 || z2) {
                this.t.g().removeCallbacks(this.J);
                this.t.g().post(this.J);
                H();
            }
        }
    }

    public void G() {
        for (Fragment next : this.f3102j.values()) {
            if (next != null) {
                q(next);
            }
        }
    }

    public final void H() {
        ArrayList<e> arrayList = this.f3098f;
        boolean z2 = true;
        if (arrayList == null || arrayList.isEmpty()) {
            b.a.d dVar = this.n;
            if (y() <= 0 || !l(this.v)) {
                z2 = false;
            }
            dVar.a(z2);
            return;
        }
        this.n.a(true);
    }

    public final void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new b.i.j.b("FragmentManager"));
        C0289m mVar = this.t;
        if (mVar != null) {
            try {
                mVar.a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        } else {
            try {
                a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e3) {
                Log.e("FragmentManager", "Failed dumping state", e3);
            }
        }
        throw runtimeException;
    }

    public void b(Fragment fragment) {
        if (f3095c) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.A) {
            fragment.A = false;
            if (fragment.f668l) {
                return;
            }
            if (!this.f3101i.contains(fragment)) {
                if (f3095c) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                synchronized (this.f3101i) {
                    this.f3101i.add(fragment);
                }
                fragment.f668l = true;
                if (k(fragment)) {
                    this.x = true;
                    return;
                }
                return;
            }
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
    }

    public List<Fragment> c() {
        List<Fragment> list;
        if (this.f3101i.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f3101i) {
            list = (List) this.f3101i.clone();
        }
        return list;
    }

    public boolean d(int i2) {
        return this.s >= i2;
    }

    public boolean e() {
        return this.y || this.z;
    }

    public boolean f() {
        i();
        return a((String) null, -1, 0);
    }

    public final Fragment g(Fragment fragment) {
        ViewGroup viewGroup = fragment.G;
        View view = fragment.H;
        if (!(viewGroup == null || view == null)) {
            for (int indexOf = this.f3101i.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
                Fragment fragment2 = this.f3101i.get(indexOf);
                if (fragment2.G == viewGroup && fragment2.H != null) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public y h(Fragment fragment) {
        return this.I.c(fragment);
    }

    public H i(Fragment fragment) {
        return this.I.d(fragment);
    }

    public void j(Fragment fragment) {
        if (f3095c) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.z) {
            fragment.z = true;
            fragment.O = true ^ fragment.O;
        }
    }

    public void k() {
        this.y = false;
        this.z = false;
        b(2);
    }

    public boolean l(Fragment fragment) {
        boolean z2 = true;
        if (fragment == null) {
            return true;
        }
        v vVar = fragment.s;
        if (fragment != vVar.d() || !l(vVar.v)) {
            z2 = false;
        }
        return z2;
    }

    public void m(Fragment fragment) {
        if (this.f3102j.get(fragment.f662f) == null) {
            this.f3102j.put(fragment.f662f, fragment);
            if (fragment.C) {
                if (fragment.B) {
                    a(fragment);
                } else {
                    s(fragment);
                }
                fragment.C = false;
            }
            if (f3095c) {
                Log.v("FragmentManager", "Added fragment to active set " + fragment);
            }
        }
    }

    public void n(Fragment fragment) {
        if (this.f3102j.get(fragment.f662f) != null) {
            if (f3095c) {
                Log.v("FragmentManager", "Removed fragment from active set " + fragment);
            }
            for (Fragment next : this.f3102j.values()) {
                if (next != null && fragment.f662f.equals(next.f665i)) {
                    next.f664h = fragment;
                    next.f665i = null;
                }
            }
            this.f3102j.put(fragment.f662f, null);
            s(fragment);
            String str = fragment.f665i;
            if (str != null) {
                fragment.f664h = this.f3102j.get(str);
            }
            fragment.da();
        }
    }

    public void o(Fragment fragment) {
        if (fragment != null) {
            if (!this.f3102j.containsKey(fragment.f662f)) {
                if (f3095c) {
                    Log.v("FragmentManager", "Ignoring moving " + fragment + " to state " + this.s + "since it is not added to " + this);
                }
                return;
            }
            int i2 = this.s;
            if (fragment.m) {
                if (fragment.ha()) {
                    i2 = Math.min(i2, 1);
                } else {
                    i2 = Math.min(i2, 0);
                }
            }
            a(fragment, i2, fragment.O(), fragment.P(), false);
            if (fragment.H != null) {
                Fragment g2 = g(fragment);
                if (g2 != null) {
                    View view = g2.H;
                    ViewGroup viewGroup = fragment.G;
                    int indexOfChild = viewGroup.indexOfChild(view);
                    int indexOfChild2 = viewGroup.indexOfChild(fragment.H);
                    if (indexOfChild2 < indexOfChild) {
                        viewGroup.removeViewAt(indexOfChild2);
                        viewGroup.addView(fragment.H, indexOfChild);
                    }
                }
                if (fragment.N && fragment.G != null) {
                    float f2 = fragment.P;
                    if (f2 > 0.0f) {
                        fragment.H.setAlpha(f2);
                    }
                    fragment.P = 0.0f;
                    fragment.N = false;
                    a a2 = a(fragment, fragment.O(), true, fragment.P());
                    if (a2 != null) {
                        Animation animation = a2.f3105a;
                        if (animation != null) {
                            fragment.H.startAnimation(animation);
                        } else {
                            a2.f3106b.setTarget(fragment.H);
                            a2.f3106b.start();
                        }
                    }
                }
            }
            if (fragment.O) {
                c(fragment);
            }
        }
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment;
        AttributeSet attributeSet2 = attributeSet;
        String str2 = str;
        Fragment fragment2 = null;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet2.getAttributeValue(null, "class");
        Context context2 = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet2, d.f3114a);
        int i2 = 0;
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        String str3 = attributeValue;
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (str3 == null || !C0288l.b(context.getClassLoader(), str3)) {
            return null;
        }
        if (view != null) {
            i2 = view.getId();
        }
        if (i2 == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str3);
        }
        if (resourceId != -1) {
            fragment2 = a(resourceId);
        }
        if (fragment2 == null && string != null) {
            fragment2 = a(string);
        }
        if (fragment2 == null && i2 != -1) {
            fragment2 = a(i2);
        }
        if (f3095c) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str3 + " existing=" + fragment2);
        }
        if (fragment2 == null) {
            Fragment a2 = b().a(context.getClassLoader(), str3);
            a2.n = true;
            a2.w = resourceId != 0 ? resourceId : i2;
            a2.x = i2;
            a2.y = string;
            a2.o = true;
            a2.s = this;
            C0289m mVar = this.t;
            a2.t = mVar;
            a2.a(mVar.f(), attributeSet2, a2.f659c);
            a(a2, true);
            fragment = a2;
        } else if (!fragment2.o) {
            fragment2.o = true;
            C0289m mVar2 = this.t;
            fragment2.t = mVar2;
            fragment2.a(mVar2.f(), attributeSet2, fragment2.f659c);
            fragment = fragment2;
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(i2) + " with another fragment for " + str3);
        }
        if (this.s >= 1 || !fragment.n) {
            p(fragment);
        } else {
            a(fragment, 1, 0, 0, false);
        }
        View view2 = fragment.H;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (fragment.H.getTag() == null) {
                fragment.H.setTag(string);
            }
            return fragment.H;
        }
        throw new IllegalStateException("Fragment " + str3 + " did not create a view.");
    }

    public void p(Fragment fragment) {
        a(fragment, this.s, 0, 0, false);
    }

    public void q(Fragment fragment) {
        if (fragment.J) {
            if (this.f3099g) {
                this.B = true;
                return;
            }
            fragment.J = false;
            a(fragment, this.s, 0, 0, false);
        }
    }

    public void r(Fragment fragment) {
        if (f3095c) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.r);
        }
        boolean z2 = !fragment.ha();
        if (!fragment.A || z2) {
            synchronized (this.f3101i) {
                this.f3101i.remove(fragment);
            }
            if (k(fragment)) {
                this.x = true;
            }
            fragment.f668l = false;
            fragment.m = true;
        }
    }

    public void s(Fragment fragment) {
        if (e()) {
            if (f3095c) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
            return;
        }
        if (this.I.e(fragment) && f3095c) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    public Bundle t(Fragment fragment) {
        Bundle bundle;
        if (this.F == null) {
            this.F = new Bundle();
        }
        fragment.j(this.F);
        d(fragment, this.F, false);
        if (!this.F.isEmpty()) {
            bundle = this.F;
            this.F = null;
        } else {
            bundle = null;
        }
        if (fragment.H != null) {
            u(fragment);
        }
        if (fragment.f660d != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.f660d);
        }
        if (!fragment.K) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.K);
        }
        return bundle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.v;
        if (fragment != null) {
            b.i.j.a.a(fragment, sb);
        } else {
            b.i.j.a.a(this.t, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    public void u() {
        if (this.B) {
            this.B = false;
            G();
        }
    }

    public final void v() {
        for (Fragment next : this.f3102j.values()) {
            if (next != null) {
                if (next.A() != null) {
                    int X = next.X();
                    View A2 = next.A();
                    Animation animation = A2.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        A2.clearAnimation();
                    }
                    next.a((View) null);
                    a(next, X, 0, 0, false);
                } else if (next.B() != null) {
                    next.B().end();
                }
            }
        }
    }

    public void w(Fragment fragment) {
        if (f3095c) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.z) {
            fragment.z = false;
            fragment.O = !fragment.O;
        }
    }

    public final void x() {
        if (this.H != null) {
            while (!this.H.isEmpty()) {
                this.H.remove(0).d();
            }
        }
    }

    public int y() {
        ArrayList<C0277a> arrayList = this.f3103k;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public LayoutInflater.Factory2 z() {
        return this;
    }

    public void d(Fragment fragment) {
        if (f3095c) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.A) {
            fragment.A = true;
            if (fragment.f668l) {
                if (f3095c) {
                    Log.v("FragmentManager", "remove from detach: " + fragment);
                }
                synchronized (this.f3101i) {
                    this.f3101i.remove(fragment);
                }
                if (k(fragment)) {
                    this.x = true;
                }
                fragment.f668l = false;
            }
        }
    }

    public final void e(Fragment fragment) {
        if (fragment != null && this.f3102j.get(fragment.f662f) == fragment) {
            fragment.Ca();
        }
    }

    public void h(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).h(fragment, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.g(this, fragment);
            }
        }
    }

    public final void i() {
        if (e()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    public void p() {
        b(3);
    }

    public void f(Fragment fragment) {
        if (fragment.n && !fragment.q) {
            fragment.b(fragment.i(fragment.f659c), (ViewGroup) null, fragment.f659c);
            View view = fragment.H;
            if (view != null) {
                fragment.I = view;
                view.setSaveFromParentEnabled(false);
                if (fragment.z) {
                    fragment.H.setVisibility(8);
                }
                fragment.a(fragment.H, fragment.f659c);
                a(fragment, fragment.H, fragment.f659c, false);
                return;
            }
            fragment.I = null;
        }
    }

    public void e(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).e(fragment, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.d(this, fragment);
            }
        }
    }

    public final boolean k(Fragment fragment) {
        return (fragment.D && fragment.E) || fragment.u.h();
    }

    public void u(Fragment fragment) {
        if (fragment.I != null) {
            SparseArray<Parcelable> sparseArray = this.G;
            if (sparseArray == null) {
                this.G = new SparseArray<>();
            } else {
                sparseArray.clear();
            }
            fragment.I.saveHierarchyState(this.G);
            if (this.G.size() > 0) {
                fragment.f660d = this.G;
                this.G = null;
            }
        }
    }

    public final void j() {
        this.f3099g = false;
        this.D.clear();
        this.C.clear();
    }

    public void l() {
        this.y = false;
        this.z = false;
        b(1);
    }

    /* JADX INFO: finally extract failed */
    public boolean w() {
        c(true);
        boolean z2 = false;
        while (b(this.C, this.D)) {
            this.f3099g = true;
            try {
                c(this.C, this.D);
                j();
                z2 = true;
            } catch (Throwable th) {
                j();
                throw th;
            }
        }
        H();
        u();
        g();
        return z2;
    }

    public void c(Fragment fragment) {
        if (fragment.H != null) {
            a a2 = a(fragment, fragment.O(), !fragment.z, fragment.P());
            if (a2 != null) {
                Animator animator = a2.f3106b;
                if (animator != null) {
                    animator.setTarget(fragment.H);
                    if (!fragment.z) {
                        fragment.H.setVisibility(0);
                    } else if (fragment.ga()) {
                        fragment.h(false);
                    } else {
                        ViewGroup viewGroup = fragment.G;
                        View view = fragment.H;
                        viewGroup.startViewTransition(view);
                        a2.f3106b.addListener(new t(this, viewGroup, view, fragment));
                    }
                    a2.f3106b.start();
                }
            }
            if (a2 != null) {
                fragment.H.startAnimation(a2.f3105a);
                a2.f3105a.start();
            }
            fragment.H.setVisibility((!fragment.z || fragment.ga()) ? 0 : 8);
            if (fragment.ga()) {
                fragment.h(false);
            }
        }
        if (fragment.f668l && k(fragment)) {
            this.x = true;
        }
        fragment.O = false;
        fragment.a(fragment.z);
    }

    public final void g() {
        this.f3102j.values().removeAll(Collections.singleton(null));
    }

    public void q() {
        H();
        e(this.w);
    }

    public void s() {
        this.y = false;
        this.z = false;
        b(3);
    }

    public void g(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).g(fragment, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.f(this, fragment);
            }
        }
    }

    public void m() {
        this.A = true;
        w();
        b(0);
        this.t = null;
        this.u = null;
        this.v = null;
        if (this.m != null) {
            this.n.c();
            this.m = null;
        }
    }

    public boolean h() {
        boolean z2 = false;
        for (Fragment next : this.f3102j.values()) {
            if (next != null) {
                z2 = k(next);
                continue;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public C a() {
        return new C0277a(this);
    }

    public void a(String str, int i2) {
        a((e) new f(str, -1, i2), false);
    }

    public void f(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).f(fragment, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.e(this, fragment);
            }
        }
    }

    public void n() {
        b(1);
    }

    public void r() {
        this.y = false;
        this.z = false;
        b(4);
    }

    public void v(Fragment fragment) {
        if (fragment == null || (this.f3102j.get(fragment.f662f) == fragment && (fragment.t == null || fragment.J() == this))) {
            Fragment fragment2 = this.w;
            this.w = fragment;
            e(fragment2);
            e(this.w);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public void a(int i2, int i3) {
        if (i2 >= 0) {
            a((e) new f(null, i2, i3), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    public Fragment d() {
        return this.w;
    }

    public final boolean a(String str, int i2, int i3) {
        w();
        c(true);
        Fragment fragment = this.w;
        if (fragment != null && i2 < 0 && str == null && fragment.D().f()) {
            return true;
        }
        boolean a2 = a(this.C, this.D, str, i2, i3);
        if (a2) {
            this.f3099g = true;
            try {
                c(this.C, this.D);
            } finally {
                j();
            }
        }
        H();
        u();
        g();
        return a2;
    }

    public Fragment b(String str) {
        for (Fragment next : this.f3102j.values()) {
            if (next != null) {
                Fragment a2 = next.a(str);
                if (a2 != null) {
                    return a2;
                }
            }
        }
        return null;
    }

    public void d(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).d(fragment, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.c(this, fragment);
            }
        }
    }

    public void t() {
        this.z = true;
        b(2);
    }

    public int b(C0277a aVar) {
        synchronized (this) {
            if (this.p != null) {
                if (this.p.size() > 0) {
                    int intValue = this.p.remove(this.p.size() - 1).intValue();
                    if (f3095c) {
                        Log.v("FragmentManager", "Adding back stack index " + intValue + " with " + aVar);
                    }
                    this.o.set(intValue, aVar);
                    return intValue;
                }
            }
            if (this.o == null) {
                this.o = new ArrayList<>();
            }
            int size = this.o.size();
            if (f3095c) {
                Log.v("FragmentManager", "Setting back stack index " + size + " to " + aVar);
            }
            this.o.add(aVar);
            return size;
        }
    }

    public void d(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).d(fragment, bundle, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.d(this, fragment, bundle);
            }
        }
    }

    public void a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.s == this) {
            bundle.putString(str, fragment.f662f);
            return;
        }
        a((RuntimeException) new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        throw null;
    }

    public void b(e eVar, boolean z2) {
        if (!z2 || (this.t != null && !this.A)) {
            c(z2);
            if (eVar.a(this.C, this.D)) {
                this.f3099g = true;
                try {
                    c(this.C, this.D);
                } finally {
                    j();
                }
            }
            H();
            u();
            g();
        }
    }

    public Fragment a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragment = this.f3102j.get(string);
        if (fragment != null) {
            return fragment;
        }
        a((RuntimeException) new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        throw null;
    }

    public void c(int i2) {
        synchronized (this) {
            this.o.set(i2, null);
            if (this.p == null) {
                this.p = new ArrayList<>();
            }
            if (f3095c) {
                Log.v("FragmentManager", "Freeing back stack index " + i2);
            }
            this.p.add(Integer.valueOf(i2));
        }
    }

    public void o() {
        for (int i2 = 0; i2 < this.f3101i.size(); i2++) {
            Fragment fragment = this.f3101i.get(i2);
            if (fragment != null) {
                fragment.Aa();
            }
        }
    }

    public void a(Fragment fragment) {
        if (e()) {
            if (f3095c) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
            return;
        }
        if (this.I.a(fragment) && f3095c) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
        }
    }

    public final void c(boolean z2) {
        if (this.f3099g) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        } else if (this.t == null) {
            throw new IllegalStateException("Fragment host has been destroyed");
        } else if (Looper.myLooper() == this.t.g().getLooper()) {
            if (!z2) {
                i();
            }
            if (this.C == null) {
                this.C = new ArrayList<>();
                this.D = new ArrayList<>();
            }
            this.f3099g = true;
            try {
                a((ArrayList<C0277a>) null, (ArrayList<Boolean>) null);
            } finally {
                this.f3099g = false;
            }
        } else {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f3102j.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (Fragment next : this.f3102j.values()) {
                printWriter.print(str);
                printWriter.println(next);
                if (next != null) {
                    next.a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size = this.f3101i.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f3101i.get(i2).toString());
            }
        }
        ArrayList<Fragment> arrayList = this.f3104l;
        if (arrayList != null) {
            int size2 = arrayList.size();
            if (size2 > 0) {
                printWriter.print(str);
                printWriter.println("Fragments Created Menus:");
                for (int i3 = 0; i3 < size2; i3++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i3);
                    printWriter.print(": ");
                    printWriter.println(this.f3104l.get(i3).toString());
                }
            }
        }
        ArrayList<C0277a> arrayList2 = this.f3103k;
        if (arrayList2 != null) {
            int size3 = arrayList2.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack:");
                for (int i4 = 0; i4 < size3; i4++) {
                    C0277a aVar = this.f3103k.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(aVar.toString());
                    aVar.a(str2, printWriter);
                }
            }
        }
        synchronized (this) {
            if (this.o != null) {
                int size4 = this.o.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Back Stack Indices:");
                    for (int i5 = 0; i5 < size4; i5++) {
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i5);
                        printWriter.print(": ");
                        printWriter.println(this.o.get(i5));
                    }
                }
            }
            if (this.p != null && this.p.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.p.toArray()));
            }
        }
        ArrayList<e> arrayList3 = this.f3098f;
        if (arrayList3 != null) {
            int size5 = arrayList3.size();
            if (size5 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i6 = 0; i6 < size5; i6++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i6);
                    printWriter.print(": ");
                    printWriter.println(this.f3098f.get(i6));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.t);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.u);
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.v);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.s);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.y);
        printWriter.print(" mStopped=");
        printWriter.print(this.z);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.A);
        if (this.x) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.x);
        }
    }

    public final void b(ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        int i4;
        ArrayList<C0277a> arrayList3 = arrayList;
        ArrayList<Boolean> arrayList4 = arrayList2;
        int i5 = i2;
        int i6 = i3;
        boolean z2 = arrayList3.get(i5).q;
        ArrayList<Fragment> arrayList5 = this.E;
        if (arrayList5 == null) {
            this.E = new ArrayList<>();
        } else {
            arrayList5.clear();
        }
        this.E.addAll(this.f3101i);
        Fragment d2 = d();
        boolean z3 = false;
        for (int i7 = i5; i7 < i6; i7++) {
            C0277a aVar = arrayList3.get(i7);
            if (!arrayList4.get(i7).booleanValue()) {
                d2 = aVar.a(this.E, d2);
            } else {
                d2 = aVar.b(this.E, d2);
            }
            z3 = z3 || aVar.f2983h;
        }
        this.E.clear();
        if (!z2) {
            H.a(this, arrayList, arrayList2, i2, i3, false);
        }
        a(arrayList, arrayList2, i2, i3);
        if (z2) {
            b.f.d dVar = new b.f.d();
            a((b.f.d<Fragment>) dVar);
            int a2 = a(arrayList, arrayList2, i2, i3, (b.f.d<Fragment>) dVar);
            b((b.f.d<Fragment>) dVar);
            i4 = a2;
        } else {
            i4 = i6;
        }
        if (i4 != i5 && z2) {
            H.a(this, arrayList, arrayList2, i2, i4, true);
            a(this.s, true);
        }
        while (i5 < i6) {
            C0277a aVar2 = arrayList3.get(i5);
            if (arrayList4.get(i5).booleanValue()) {
                int i8 = aVar2.u;
                if (i8 >= 0) {
                    c(i8);
                    aVar2.u = -1;
                }
            }
            aVar2.h();
            i5++;
        }
        if (z3) {
            D();
        }
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    public final void c(ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList != null && !arrayList.isEmpty()) {
            if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
                throw new IllegalStateException("Internal error with the back stack records");
            }
            a(arrayList, arrayList2);
            int size = arrayList.size();
            int i2 = 0;
            int i3 = 0;
            while (i2 < size) {
                if (!arrayList.get(i2).q) {
                    if (i3 != i2) {
                        b(arrayList, arrayList2, i3, i2);
                    }
                    i3 = i2 + 1;
                    if (arrayList2.get(i2).booleanValue()) {
                        while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).q) {
                            i3++;
                        }
                    }
                    b(arrayList, arrayList2, i2, i3);
                    i2 = i3 - 1;
                }
                i2++;
            }
            if (i3 != size) {
                b(arrayList, arrayList2, i3, size);
            }
        }
    }

    public void c(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).c(fragment, bundle, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.c(this, fragment, bundle);
            }
        }
    }

    public final void b(b.f.d<Fragment> dVar) {
        int size = dVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment g2 = dVar.g(i2);
            if (!g2.f668l) {
                View Ja = g2.Ja();
                g2.P = Ja.getAlpha();
                Ja.setAlpha(0.0f);
            }
        }
    }

    public void c(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).c(fragment, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.b(this, fragment);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003b, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean b(java.util.ArrayList<b.o.a.C0277a> r5, java.util.ArrayList<java.lang.Boolean> r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.util.ArrayList<b.o.a.v$e> r0 = r4.f3098f     // Catch:{ all -> 0x003c }
            r1 = 0
            if (r0 == 0) goto L_0x003a
            java.util.ArrayList<b.o.a.v$e> r0 = r4.f3098f     // Catch:{ all -> 0x003c }
            int r0 = r0.size()     // Catch:{ all -> 0x003c }
            if (r0 != 0) goto L_0x000f
            goto L_0x003a
        L_0x000f:
            java.util.ArrayList<b.o.a.v$e> r0 = r4.f3098f     // Catch:{ all -> 0x003c }
            int r0 = r0.size()     // Catch:{ all -> 0x003c }
            r2 = 0
        L_0x0016:
            if (r1 >= r0) goto L_0x0028
            java.util.ArrayList<b.o.a.v$e> r3 = r4.f3098f     // Catch:{ all -> 0x003c }
            java.lang.Object r3 = r3.get(r1)     // Catch:{ all -> 0x003c }
            b.o.a.v$e r3 = (b.o.a.v.e) r3     // Catch:{ all -> 0x003c }
            boolean r3 = r3.a(r5, r6)     // Catch:{ all -> 0x003c }
            r2 = r2 | r3
            int r1 = r1 + 1
            goto L_0x0016
        L_0x0028:
            java.util.ArrayList<b.o.a.v$e> r5 = r4.f3098f     // Catch:{ all -> 0x003c }
            r5.clear()     // Catch:{ all -> 0x003c }
            b.o.a.m r5 = r4.t     // Catch:{ all -> 0x003c }
            android.os.Handler r5 = r5.g()     // Catch:{ all -> 0x003c }
            java.lang.Runnable r6 = r4.J     // Catch:{ all -> 0x003c }
            r5.removeCallbacks(r6)     // Catch:{ all -> 0x003c }
            monitor-exit(r4)     // Catch:{ all -> 0x003c }
            return r2
        L_0x003a:
            monitor-exit(r4)     // Catch:{ all -> 0x003c }
            return r1
        L_0x003c:
            r5 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x003c }
            goto L_0x0040
        L_0x003f:
            throw r5
        L_0x0040:
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: b.o.a.v.b(java.util.ArrayList, java.util.ArrayList):boolean");
    }

    /* JADX INFO: finally extract failed */
    public final void b(int i2) {
        try {
            this.f3099g = true;
            a(i2, false);
            this.f3099g = false;
            w();
        } catch (Throwable th) {
            this.f3099g = false;
            throw th;
        }
    }

    public void b(boolean z2) {
        for (int size = this.f3101i.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f3101i.get(size);
            if (fragment != null) {
                fragment.f(z2);
            }
        }
    }

    public boolean b(Menu menu) {
        if (this.s < 1) {
            return false;
        }
        boolean z2 = false;
        for (int i2 = 0; i2 < this.f3101i.size(); i2++) {
            Fragment fragment = this.f3101i.get(i2);
            if (fragment != null && fragment.d(menu)) {
                z2 = true;
            }
        }
        return z2;
    }

    public boolean b(MenuItem menuItem) {
        if (this.s < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.f3101i.size(); i2++) {
            Fragment fragment = this.f3101i.get(i2);
            if (fragment != null && fragment.d(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public static a a(float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(f3096d);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(f3097e);
        alphaAnimation.setDuration(220);
        animationSet.addAnimation(alphaAnimation);
        return new a((Animation) animationSet);
    }

    public C0288l b() {
        if (super.b() == C0290n.f3078a) {
            Fragment fragment = this.v;
            if (fragment != null) {
                return fragment.s.b();
            }
            a((C0288l) new u(this));
        }
        return super.b();
    }

    public void b(Fragment fragment, Context context, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).b(fragment, context, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.b((C0290n) this, fragment, context);
            }
        }
    }

    public static a a(float f2, float f3) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f3);
        alphaAnimation.setInterpolator(f3097e);
        alphaAnimation.setDuration(220);
        return new a((Animation) alphaAnimation);
    }

    public a a(Fragment fragment, int i2, boolean z2, int i3) {
        int N = fragment.N();
        boolean z3 = false;
        fragment.c(0);
        ViewGroup viewGroup = fragment.G;
        if (viewGroup != null && viewGroup.getLayoutTransition() != null) {
            return null;
        }
        Animation a2 = fragment.a(i2, z2, N);
        if (a2 != null) {
            return new a(a2);
        }
        Animator b2 = fragment.b(i2, z2, N);
        if (b2 != null) {
            return new a(b2);
        }
        if (N != 0) {
            boolean equals = "anim".equals(this.t.f().getResources().getResourceTypeName(N));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(this.t.f(), N);
                    if (loadAnimation != null) {
                        return new a(loadAnimation);
                    }
                    z3 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z3) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(this.t.f(), N);
                    if (loadAnimator != null) {
                        return new a(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(this.t.f(), N);
                        if (loadAnimation2 != null) {
                            return new a(loadAnimation2);
                        }
                    } else {
                        throw e3;
                    }
                }
            }
        }
        if (i2 == 0) {
            return null;
        }
        int b3 = b(i2, z2);
        if (b3 < 0) {
            return null;
        }
        switch (b3) {
            case 1:
                return a(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return a(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return a(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return a(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return a(0.0f, 1.0f);
            case 6:
                return a(1.0f, 0.0f);
            default:
                if (i3 == 0 && this.t.k()) {
                    i3 = this.t.j();
                }
                if (i3 == 0) {
                }
                return null;
        }
    }

    public void b(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).b(fragment, bundle, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.b((C0290n) this, fragment, bundle);
            }
        }
    }

    public void b(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).b(fragment, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.a(this, fragment);
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v0, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v2, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v3, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v4, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v5, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v6, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v7, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v8, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v9, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v10, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v11, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v12, resolved type: int} */
    /* JADX WARNING: type inference failed for: r11v1 */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0084, code lost:
        if (r0 != 3) goto L_0x04d6;
     */
    /* JADX WARNING: Failed to insert additional move for type inference */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x01e9  */
    /* JADX WARNING: Removed duplicated region for block: B:104:0x01ee  */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x02df  */
    /* JADX WARNING: Removed duplicated region for block: B:262:0x04db  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(androidx.fragment.app.Fragment r19, int r20, int r21, int r22, boolean r23) {
        /*
            r18 = this;
            r6 = r18
            r7 = r19
            boolean r0 = r7.f668l
            r8 = 1
            if (r0 == 0) goto L_0x0011
            boolean r0 = r7.A
            if (r0 == 0) goto L_0x000e
            goto L_0x0011
        L_0x000e:
            r0 = r20
            goto L_0x0016
        L_0x0011:
            r0 = r20
            if (r0 <= r8) goto L_0x0016
            r0 = 1
        L_0x0016:
            boolean r1 = r7.m
            if (r1 == 0) goto L_0x002a
            int r1 = r7.f658b
            if (r0 <= r1) goto L_0x002a
            if (r1 != 0) goto L_0x0028
            boolean r0 = r19.ha()
            if (r0 == 0) goto L_0x0028
            r0 = 1
            goto L_0x002a
        L_0x0028:
            int r0 = r7.f658b
        L_0x002a:
            boolean r1 = r7.J
            r9 = 3
            r10 = 2
            if (r1 == 0) goto L_0x0037
            int r1 = r7.f658b
            if (r1 >= r9) goto L_0x0037
            if (r0 <= r10) goto L_0x0037
            r0 = 2
        L_0x0037:
            androidx.lifecycle.Lifecycle$State r1 = r7.S
            androidx.lifecycle.Lifecycle$State r2 = androidx.lifecycle.Lifecycle.State.CREATED
            if (r1 != r2) goto L_0x0042
            int r0 = java.lang.Math.min(r0, r8)
            goto L_0x004a
        L_0x0042:
            int r1 = r1.ordinal()
            int r0 = java.lang.Math.min(r0, r1)
        L_0x004a:
            r11 = r0
            int r0 = r7.f658b
            java.lang.String r12 = "FragmentManager"
            r13 = 0
            r14 = 0
            if (r0 > r11) goto L_0x0325
            boolean r0 = r7.n
            if (r0 == 0) goto L_0x005c
            boolean r0 = r7.o
            if (r0 != 0) goto L_0x005c
            return
        L_0x005c:
            android.view.View r0 = r19.A()
            if (r0 != 0) goto L_0x0068
            android.animation.Animator r0 = r19.B()
            if (r0 == 0) goto L_0x007c
        L_0x0068:
            r7.a((android.view.View) r14)
            r7.a((android.animation.Animator) r14)
            int r2 = r19.X()
            r3 = 0
            r4 = 0
            r5 = 1
            r0 = r18
            r1 = r19
            r0.a((androidx.fragment.app.Fragment) r1, (int) r2, (int) r3, (int) r4, (boolean) r5)
        L_0x007c:
            int r0 = r7.f658b
            if (r0 == 0) goto L_0x008e
            if (r0 == r8) goto L_0x01e7
            if (r0 == r10) goto L_0x008b
            if (r0 == r9) goto L_0x0088
            goto L_0x04d6
        L_0x0088:
            r0 = 3
            goto L_0x02ff
        L_0x008b:
            r0 = 2
            goto L_0x02dd
        L_0x008e:
            if (r11 <= 0) goto L_0x01e7
            boolean r0 = f3095c
            if (r0 == 0) goto L_0x00a8
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "moveto CREATED: "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            android.util.Log.v(r12, r0)
        L_0x00a8:
            android.os.Bundle r0 = r7.f659c
            if (r0 == 0) goto L_0x0101
            b.o.a.m r1 = r6.t
            android.content.Context r1 = r1.f()
            java.lang.ClassLoader r1 = r1.getClassLoader()
            r0.setClassLoader(r1)
            android.os.Bundle r0 = r7.f659c
            java.lang.String r1 = "android:view_state"
            android.util.SparseArray r0 = r0.getSparseParcelableArray(r1)
            r7.f660d = r0
            android.os.Bundle r0 = r7.f659c
            java.lang.String r1 = "android:target_state"
            androidx.fragment.app.Fragment r0 = r6.a((android.os.Bundle) r0, (java.lang.String) r1)
            if (r0 == 0) goto L_0x00d0
            java.lang.String r0 = r0.f662f
            goto L_0x00d1
        L_0x00d0:
            r0 = r14
        L_0x00d1:
            r7.f665i = r0
            java.lang.String r0 = r7.f665i
            if (r0 == 0) goto L_0x00e1
            android.os.Bundle r0 = r7.f659c
            java.lang.String r1 = "android:target_req_state"
            int r0 = r0.getInt(r1, r13)
            r7.f666j = r0
        L_0x00e1:
            java.lang.Boolean r0 = r7.f661e
            if (r0 == 0) goto L_0x00ee
            boolean r0 = r0.booleanValue()
            r7.K = r0
            r7.f661e = r14
            goto L_0x00f8
        L_0x00ee:
            android.os.Bundle r0 = r7.f659c
            java.lang.String r1 = "android:user_visible_hint"
            boolean r0 = r0.getBoolean(r1, r8)
            r7.K = r0
        L_0x00f8:
            boolean r0 = r7.K
            if (r0 != 0) goto L_0x0101
            r7.J = r8
            if (r11 <= r10) goto L_0x0101
            r11 = 2
        L_0x0101:
            b.o.a.m r0 = r6.t
            r7.t = r0
            androidx.fragment.app.Fragment r1 = r6.v
            r7.v = r1
            if (r1 == 0) goto L_0x010e
            b.o.a.v r0 = r1.u
            goto L_0x0110
        L_0x010e:
            b.o.a.v r0 = r0.f3077e
        L_0x0110:
            r7.s = r0
            androidx.fragment.app.Fragment r0 = r7.f664h
            java.lang.String r15 = " that does not belong to this FragmentManager!"
            java.lang.String r5 = " declared target fragment "
            java.lang.String r4 = "Fragment "
            if (r0 == 0) goto L_0x016b
            java.util.HashMap<java.lang.String, androidx.fragment.app.Fragment> r1 = r6.f3102j
            java.lang.String r0 = r0.f662f
            java.lang.Object r0 = r1.get(r0)
            androidx.fragment.app.Fragment r1 = r7.f664h
            if (r0 != r1) goto L_0x0149
            int r0 = r1.f658b
            if (r0 >= r8) goto L_0x013e
            r2 = 1
            r3 = 0
            r16 = 0
            r17 = 1
            r0 = r18
            r9 = r4
            r4 = r16
            r10 = r5
            r5 = r17
            r0.a((androidx.fragment.app.Fragment) r1, (int) r2, (int) r3, (int) r4, (boolean) r5)
            goto L_0x0140
        L_0x013e:
            r9 = r4
            r10 = r5
        L_0x0140:
            androidx.fragment.app.Fragment r0 = r7.f664h
            java.lang.String r0 = r0.f662f
            r7.f665i = r0
            r7.f664h = r14
            goto L_0x016d
        L_0x0149:
            r9 = r4
            r10 = r5
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r9)
            r1.append(r7)
            r1.append(r10)
            androidx.fragment.app.Fragment r2 = r7.f664h
            r1.append(r2)
            r1.append(r15)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x016b:
            r9 = r4
            r10 = r5
        L_0x016d:
            java.lang.String r0 = r7.f665i
            if (r0 == 0) goto L_0x01aa
            java.util.HashMap<java.lang.String, androidx.fragment.app.Fragment> r1 = r6.f3102j
            java.lang.Object r0 = r1.get(r0)
            r1 = r0
            androidx.fragment.app.Fragment r1 = (androidx.fragment.app.Fragment) r1
            if (r1 == 0) goto L_0x018a
            int r0 = r1.f658b
            if (r0 >= r8) goto L_0x01aa
            r2 = 1
            r3 = 0
            r4 = 0
            r5 = 1
            r0 = r18
            r0.a((androidx.fragment.app.Fragment) r1, (int) r2, (int) r3, (int) r4, (boolean) r5)
            goto L_0x01aa
        L_0x018a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r9)
            r1.append(r7)
            r1.append(r10)
            java.lang.String r2 = r7.f665i
            r1.append(r2)
            r1.append(r15)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x01aa:
            b.o.a.m r0 = r6.t
            android.content.Context r0 = r0.f()
            r6.b((androidx.fragment.app.Fragment) r7, (android.content.Context) r0, (boolean) r13)
            r19.wa()
            androidx.fragment.app.Fragment r0 = r7.v
            if (r0 != 0) goto L_0x01c0
            b.o.a.m r0 = r6.t
            r0.a((androidx.fragment.app.Fragment) r7)
            goto L_0x01c3
        L_0x01c0:
            r0.a((androidx.fragment.app.Fragment) r7)
        L_0x01c3:
            b.o.a.m r0 = r6.t
            android.content.Context r0 = r0.f()
            r6.a((androidx.fragment.app.Fragment) r7, (android.content.Context) r0, (boolean) r13)
            boolean r0 = r7.R
            if (r0 != 0) goto L_0x01e0
            android.os.Bundle r0 = r7.f659c
            r6.c(r7, r0, r13)
            android.os.Bundle r0 = r7.f659c
            r7.h((android.os.Bundle) r0)
            android.os.Bundle r0 = r7.f659c
            r6.b((androidx.fragment.app.Fragment) r7, (android.os.Bundle) r0, (boolean) r13)
            goto L_0x01e7
        L_0x01e0:
            android.os.Bundle r0 = r7.f659c
            r7.k(r0)
            r7.f658b = r8
        L_0x01e7:
            if (r11 <= 0) goto L_0x01ec
            r18.f(r19)
        L_0x01ec:
            if (r11 <= r8) goto L_0x008b
            boolean r0 = f3095c
            if (r0 == 0) goto L_0x0206
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "moveto ACTIVITY_CREATED: "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            android.util.Log.v(r12, r0)
        L_0x0206:
            boolean r0 = r7.n
            if (r0 != 0) goto L_0x02c6
            int r0 = r7.x
            if (r0 == 0) goto L_0x027c
            r1 = -1
            if (r0 == r1) goto L_0x025d
            b.o.a.j r1 = r6.u
            android.view.View r0 = r1.a(r0)
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            if (r0 != 0) goto L_0x027d
            boolean r1 = r7.p
            if (r1 == 0) goto L_0x0220
            goto L_0x027d
        L_0x0220:
            android.content.res.Resources r0 = r19.S()     // Catch:{ NotFoundException -> 0x022b }
            int r1 = r7.x     // Catch:{ NotFoundException -> 0x022b }
            java.lang.String r0 = r0.getResourceName(r1)     // Catch:{ NotFoundException -> 0x022b }
            goto L_0x022d
        L_0x022b:
            java.lang.String r0 = "unknown"
        L_0x022d:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "No view found for id 0x"
            r2.append(r3)
            int r3 = r7.x
            java.lang.String r3 = java.lang.Integer.toHexString(r3)
            r2.append(r3)
            java.lang.String r3 = " ("
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = ") for fragment "
            r2.append(r0)
            r2.append(r7)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            r6.a((java.lang.RuntimeException) r1)
            throw r14
        L_0x025d:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Cannot create fragment "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r2 = " for a container view with no id"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            r6.a((java.lang.RuntimeException) r0)
            throw r14
        L_0x027c:
            r0 = r14
        L_0x027d:
            r7.G = r0
            android.os.Bundle r1 = r7.f659c
            android.view.LayoutInflater r1 = r7.i((android.os.Bundle) r1)
            android.os.Bundle r2 = r7.f659c
            r7.b((android.view.LayoutInflater) r1, (android.view.ViewGroup) r0, (android.os.Bundle) r2)
            android.view.View r1 = r7.H
            if (r1 == 0) goto L_0x02c4
            r7.I = r1
            r1.setSaveFromParentEnabled(r13)
            if (r0 == 0) goto L_0x029a
            android.view.View r1 = r7.H
            r0.addView(r1)
        L_0x029a:
            boolean r0 = r7.z
            if (r0 == 0) goto L_0x02a5
            android.view.View r0 = r7.H
            r1 = 8
            r0.setVisibility(r1)
        L_0x02a5:
            android.view.View r0 = r7.H
            android.os.Bundle r1 = r7.f659c
            r7.a((android.view.View) r0, (android.os.Bundle) r1)
            android.view.View r0 = r7.H
            android.os.Bundle r1 = r7.f659c
            r6.a((androidx.fragment.app.Fragment) r7, (android.view.View) r0, (android.os.Bundle) r1, (boolean) r13)
            android.view.View r0 = r7.H
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L_0x02c0
            android.view.ViewGroup r0 = r7.G
            if (r0 == 0) goto L_0x02c0
            goto L_0x02c1
        L_0x02c0:
            r8 = 0
        L_0x02c1:
            r7.N = r8
            goto L_0x02c6
        L_0x02c4:
            r7.I = r14
        L_0x02c6:
            android.os.Bundle r0 = r7.f659c
            r7.g((android.os.Bundle) r0)
            android.os.Bundle r0 = r7.f659c
            r6.a((androidx.fragment.app.Fragment) r7, (android.os.Bundle) r0, (boolean) r13)
            android.view.View r0 = r7.H
            if (r0 == 0) goto L_0x02d9
            android.os.Bundle r0 = r7.f659c
            r7.l(r0)
        L_0x02d9:
            r7.f659c = r14
            goto L_0x008b
        L_0x02dd:
            if (r11 <= r0) goto L_0x0088
            boolean r0 = f3095c
            if (r0 == 0) goto L_0x02f7
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "moveto STARTED: "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            android.util.Log.v(r12, r0)
        L_0x02f7:
            r19.Ea()
            r6.f(r7, r13)
            goto L_0x0088
        L_0x02ff:
            if (r11 <= r0) goto L_0x04d6
            boolean r0 = f3095c
            if (r0 == 0) goto L_0x0319
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "moveto RESUMED: "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            android.util.Log.v(r12, r0)
        L_0x0319:
            r19.Da()
            r6.e(r7, r13)
            r7.f659c = r14
            r7.f660d = r14
            goto L_0x04d6
        L_0x0325:
            if (r0 <= r11) goto L_0x04d6
            if (r0 == r8) goto L_0x0405
            r1 = 2
            if (r0 == r1) goto L_0x0375
            r1 = 3
            if (r0 == r1) goto L_0x0354
            r1 = 4
            if (r0 == r1) goto L_0x0334
            goto L_0x04d6
        L_0x0334:
            if (r11 >= r1) goto L_0x0354
            boolean r0 = f3095c
            if (r0 == 0) goto L_0x034e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "movefrom RESUMED: "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            android.util.Log.v(r12, r0)
        L_0x034e:
            r19.Ba()
            r6.d(r7, r13)
        L_0x0354:
            r0 = 3
            if (r11 >= r0) goto L_0x0375
            boolean r0 = f3095c
            if (r0 == 0) goto L_0x036f
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "movefrom STARTED: "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            android.util.Log.v(r12, r0)
        L_0x036f:
            r19.Fa()
            r6.g(r7, r13)
        L_0x0375:
            r0 = 2
            if (r11 >= r0) goto L_0x0405
            boolean r0 = f3095c
            if (r0 == 0) goto L_0x0390
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "movefrom ACTIVITY_CREATED: "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            android.util.Log.v(r12, r0)
        L_0x0390:
            android.view.View r0 = r7.H
            if (r0 == 0) goto L_0x03a3
            b.o.a.m r0 = r6.t
            boolean r0 = r0.b(r7)
            if (r0 == 0) goto L_0x03a3
            android.util.SparseArray<android.os.Parcelable> r0 = r7.f660d
            if (r0 != 0) goto L_0x03a3
            r18.u(r19)
        L_0x03a3:
            r19.ya()
            r6.h(r7, r13)
            android.view.View r0 = r7.H
            if (r0 == 0) goto L_0x03f6
            android.view.ViewGroup r1 = r7.G
            if (r1 == 0) goto L_0x03f6
            r1.endViewTransition(r0)
            android.view.View r0 = r7.H
            r0.clearAnimation()
            androidx.fragment.app.Fragment r0 = r19.Q()
            if (r0 == 0) goto L_0x03c7
            androidx.fragment.app.Fragment r0 = r19.Q()
            boolean r0 = r0.m
            if (r0 != 0) goto L_0x03f6
        L_0x03c7:
            int r0 = r6.s
            r1 = 0
            if (r0 <= 0) goto L_0x03e7
            boolean r0 = r6.A
            if (r0 != 0) goto L_0x03e7
            android.view.View r0 = r7.H
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L_0x03e7
            float r0 = r7.P
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x03e7
            r0 = r21
            r2 = r22
            b.o.a.v$a r0 = r6.a((androidx.fragment.app.Fragment) r7, (int) r0, (boolean) r13, (int) r2)
            goto L_0x03e8
        L_0x03e7:
            r0 = r14
        L_0x03e8:
            r7.P = r1
            if (r0 == 0) goto L_0x03ef
            r6.a((androidx.fragment.app.Fragment) r7, (b.o.a.v.a) r0, (int) r11)
        L_0x03ef:
            android.view.ViewGroup r0 = r7.G
            android.view.View r1 = r7.H
            r0.removeView(r1)
        L_0x03f6:
            r7.G = r14
            r7.H = r14
            r7.U = r14
            b.r.t<b.r.k> r0 = r7.V
            r0.b(r14)
            r7.I = r14
            r7.o = r13
        L_0x0405:
            if (r11 >= r8) goto L_0x04d6
            boolean r0 = r6.A
            if (r0 == 0) goto L_0x042c
            android.view.View r0 = r19.A()
            if (r0 == 0) goto L_0x041c
            android.view.View r0 = r19.A()
            r7.a((android.view.View) r14)
            r0.clearAnimation()
            goto L_0x042c
        L_0x041c:
            android.animation.Animator r0 = r19.B()
            if (r0 == 0) goto L_0x042c
            android.animation.Animator r0 = r19.B()
            r7.a((android.animation.Animator) r14)
            r0.cancel()
        L_0x042c:
            android.view.View r0 = r19.A()
            if (r0 != 0) goto L_0x04d2
            android.animation.Animator r0 = r19.B()
            if (r0 == 0) goto L_0x043a
            goto L_0x04d2
        L_0x043a:
            boolean r0 = f3095c
            if (r0 == 0) goto L_0x0452
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "movefrom CREATED: "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            android.util.Log.v(r12, r0)
        L_0x0452:
            boolean r0 = r7.m
            if (r0 == 0) goto L_0x045e
            boolean r0 = r19.ha()
            if (r0 != 0) goto L_0x045e
            r0 = 1
            goto L_0x045f
        L_0x045e:
            r0 = 0
        L_0x045f:
            if (r0 != 0) goto L_0x046d
            b.o.a.y r1 = r6.I
            boolean r1 = r1.f(r7)
            if (r1 == 0) goto L_0x046a
            goto L_0x046d
        L_0x046a:
            r7.f658b = r13
            goto L_0x049e
        L_0x046d:
            b.o.a.m r1 = r6.t
            boolean r2 = r1 instanceof b.r.I
            if (r2 == 0) goto L_0x047a
            b.o.a.y r1 = r6.I
            boolean r8 = r1.f()
            goto L_0x048f
        L_0x047a:
            android.content.Context r1 = r1.f()
            boolean r1 = r1 instanceof android.app.Activity
            if (r1 == 0) goto L_0x048f
            b.o.a.m r1 = r6.t
            android.content.Context r1 = r1.f()
            android.app.Activity r1 = (android.app.Activity) r1
            boolean r1 = r1.isChangingConfigurations()
            r8 = r8 ^ r1
        L_0x048f:
            if (r0 != 0) goto L_0x0493
            if (r8 == 0) goto L_0x0498
        L_0x0493:
            b.o.a.y r1 = r6.I
            r1.b(r7)
        L_0x0498:
            r19.xa()
            r6.b((androidx.fragment.app.Fragment) r7, (boolean) r13)
        L_0x049e:
            r19.za()
            r6.c((androidx.fragment.app.Fragment) r7, (boolean) r13)
            if (r23 != 0) goto L_0x04d6
            if (r0 != 0) goto L_0x04ce
            b.o.a.y r0 = r6.I
            boolean r0 = r0.f(r7)
            if (r0 == 0) goto L_0x04b1
            goto L_0x04ce
        L_0x04b1:
            r7.t = r14
            r7.v = r14
            r7.s = r14
            java.lang.String r0 = r7.f665i
            if (r0 == 0) goto L_0x04d6
            java.util.HashMap<java.lang.String, androidx.fragment.app.Fragment> r1 = r6.f3102j
            java.lang.Object r0 = r1.get(r0)
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            if (r0 == 0) goto L_0x04d6
            boolean r1 = r0.T()
            if (r1 == 0) goto L_0x04d6
            r7.f664h = r0
            goto L_0x04d6
        L_0x04ce:
            r18.n(r19)
            goto L_0x04d6
        L_0x04d2:
            r7.d((int) r11)
            goto L_0x04d7
        L_0x04d6:
            r8 = r11
        L_0x04d7:
            int r0 = r7.f658b
            if (r0 == r8) goto L_0x0503
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "moveToState: Fragment state for "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r1 = " not updated inline; expected state "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r1 = " found "
            r0.append(r1)
            int r1 = r7.f658b
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            android.util.Log.w(r12, r0)
            r7.f658b = r8
        L_0x0503:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.o.a.v.a(androidx.fragment.app.Fragment, int, int, int, boolean):void");
    }

    public final void a(Fragment fragment, a aVar, int i2) {
        View view = fragment.H;
        ViewGroup viewGroup = fragment.G;
        viewGroup.startViewTransition(view);
        fragment.d(i2);
        Animation animation = aVar.f3105a;
        if (animation != null) {
            b bVar = new b(animation, viewGroup, view);
            fragment.a(fragment.H);
            bVar.setAnimationListener(new r(this, viewGroup, fragment));
            fragment.H.startAnimation(bVar);
            return;
        }
        Animator animator = aVar.f3106b;
        fragment.a(animator);
        animator.addListener(new C0294s(this, viewGroup, view, fragment));
        animator.setTarget(fragment.H);
        animator.start();
    }

    public void a(int i2, boolean z2) {
        if (this.t == null && i2 != 0) {
            throw new IllegalStateException("No activity");
        } else if (z2 || i2 != this.s) {
            this.s = i2;
            int size = this.f3101i.size();
            for (int i3 = 0; i3 < size; i3++) {
                o(this.f3101i.get(i3));
            }
            for (Fragment next : this.f3102j.values()) {
                if (next != null && ((next.m || next.A) && !next.N)) {
                    o(next);
                }
            }
            G();
            if (this.x) {
                C0289m mVar = this.t;
                if (mVar != null && this.s == 4) {
                    mVar.l();
                    this.x = false;
                }
            }
        }
    }

    public void a(Fragment fragment, boolean z2) {
        if (f3095c) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        m(fragment);
        if (fragment.A) {
            return;
        }
        if (!this.f3101i.contains(fragment)) {
            synchronized (this.f3101i) {
                this.f3101i.add(fragment);
            }
            fragment.f668l = true;
            fragment.m = false;
            if (fragment.H == null) {
                fragment.O = false;
            }
            if (k(fragment)) {
                this.x = true;
            }
            if (z2) {
                p(fragment);
                return;
            }
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    public Fragment a(int i2) {
        for (int size = this.f3101i.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f3101i.get(size);
            if (fragment != null && fragment.w == i2) {
                return fragment;
            }
        }
        for (Fragment next : this.f3102j.values()) {
            if (next != null && next.w == i2) {
                return next;
            }
        }
        return null;
    }

    public Fragment a(String str) {
        if (str != null) {
            for (int size = this.f3101i.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f3101i.get(size);
                if (fragment != null && str.equals(fragment.y)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (Fragment next : this.f3102j.values()) {
                if (next != null && str.equals(next.y)) {
                    return next;
                }
            }
        }
        return null;
    }

    public void a(e eVar, boolean z2) {
        if (!z2) {
            i();
        }
        synchronized (this) {
            if (!this.A) {
                if (this.t != null) {
                    if (this.f3098f == null) {
                        this.f3098f = new ArrayList<>();
                    }
                    this.f3098f.add(eVar);
                    F();
                    return;
                }
            }
            if (!z2) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    public void a(int i2, C0277a aVar) {
        synchronized (this) {
            if (this.o == null) {
                this.o = new ArrayList<>();
            }
            int size = this.o.size();
            if (i2 < size) {
                if (f3095c) {
                    Log.v("FragmentManager", "Setting back stack index " + i2 + " to " + aVar);
                }
                this.o.set(i2, aVar);
            } else {
                while (size < i2) {
                    this.o.add(null);
                    if (this.p == null) {
                        this.p = new ArrayList<>();
                    }
                    if (f3095c) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.p.add(Integer.valueOf(size));
                    size++;
                }
                if (f3095c) {
                    Log.v("FragmentManager", "Adding back stack index " + i2 + " with " + aVar);
                }
                this.o.add(aVar);
            }
        }
    }

    public final void a(ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2) {
        ArrayList<g> arrayList3 = this.H;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            g gVar = this.H.get(i2);
            if (arrayList != null && !gVar.f3119a) {
                int indexOf = arrayList.indexOf(gVar.f3120b);
                if (indexOf != -1 && arrayList2.get(indexOf).booleanValue()) {
                    this.H.remove(i2);
                    i2--;
                    size--;
                    gVar.c();
                    i2++;
                }
            }
            if (gVar.e() || (arrayList != null && gVar.f3120b.a(arrayList, 0, arrayList.size()))) {
                this.H.remove(i2);
                i2--;
                size--;
                if (arrayList != null && !gVar.f3119a) {
                    int indexOf2 = arrayList.indexOf(gVar.f3120b);
                    if (indexOf2 != -1 && arrayList2.get(indexOf2).booleanValue()) {
                        gVar.c();
                    }
                }
                gVar.d();
            }
            i2++;
        }
    }

    public final int a(ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, b.f.d<Fragment> dVar) {
        int i4 = i3;
        for (int i5 = i3 - 1; i5 >= i2; i5--) {
            C0277a aVar = arrayList.get(i5);
            boolean booleanValue = arrayList2.get(i5).booleanValue();
            if (aVar.g() && !aVar.a(arrayList, i5 + 1, i3)) {
                if (this.H == null) {
                    this.H = new ArrayList<>();
                }
                g gVar = new g(aVar, booleanValue);
                this.H.add(gVar);
                aVar.a((Fragment.b) gVar);
                if (booleanValue) {
                    aVar.e();
                } else {
                    aVar.c(false);
                }
                i4--;
                if (i5 != i4) {
                    arrayList.remove(i5);
                    arrayList.add(i4, aVar);
                }
                a(dVar);
            }
        }
        return i4;
    }

    public void a(C0277a aVar, boolean z2, boolean z3, boolean z4) {
        if (z2) {
            aVar.c(z4);
        } else {
            aVar.e();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z2));
        if (z3) {
            H.a(this, (ArrayList<C0277a>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z4) {
            a(this.s, true);
        }
        for (Fragment next : this.f3102j.values()) {
            if (next != null && next.H != null && next.N && aVar.b(next.x)) {
                float f2 = next.P;
                if (f2 > 0.0f) {
                    next.H.setAlpha(f2);
                }
                if (z4) {
                    next.P = 0.0f;
                } else {
                    next.P = -1.0f;
                    next.N = false;
                }
            }
        }
    }

    public static void a(ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        while (i2 < i3) {
            C0277a aVar = arrayList.get(i2);
            boolean z2 = true;
            if (arrayList2.get(i2).booleanValue()) {
                aVar.a(-1);
                if (i2 != i3 - 1) {
                    z2 = false;
                }
                aVar.c(z2);
            } else {
                aVar.a(1);
                aVar.e();
            }
            i2++;
        }
    }

    public final void a(b.f.d<Fragment> dVar) {
        int i2 = this.s;
        if (i2 >= 1) {
            int min = Math.min(i2, 3);
            int size = this.f3101i.size();
            for (int i3 = 0; i3 < size; i3++) {
                Fragment fragment = this.f3101i.get(i3);
                if (fragment.f658b < min) {
                    a(fragment, min, fragment.N(), fragment.O(), false);
                    if (fragment.H != null && !fragment.z && fragment.N) {
                        dVar.add(fragment);
                    }
                }
            }
        }
    }

    public void a(C0277a aVar) {
        if (this.f3103k == null) {
            this.f3103k = new ArrayList<>();
        }
        this.f3103k.add(aVar);
    }

    public boolean a(ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        int i4;
        ArrayList<C0277a> arrayList3 = this.f3103k;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f3103k.remove(size));
            arrayList2.add(true);
        } else {
            if (str != null || i2 >= 0) {
                i4 = this.f3103k.size() - 1;
                while (i4 >= 0) {
                    C0277a aVar = this.f3103k.get(i4);
                    if ((str != null && str.equals(aVar.f())) || (i2 >= 0 && i2 == aVar.u)) {
                        break;
                    }
                    i4--;
                }
                if (i4 < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        i4--;
                        if (i4 < 0) {
                            break;
                        }
                        C0277a aVar2 = this.f3103k.get(i4);
                        if ((str == null || !str.equals(aVar2.f())) && (i2 < 0 || i2 != aVar2.u)) {
                            break;
                        }
                    }
                }
            } else {
                i4 = -1;
            }
            if (i4 == this.f3103k.size() - 1) {
                return false;
            }
            for (int size2 = this.f3103k.size() - 1; size2 > i4; size2--) {
                arrayList.add(this.f3103k.remove(size2));
                arrayList2.add(true);
            }
        }
        return true;
    }

    public void a(Parcelable parcelable) {
        FragmentState fragmentState;
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.f683a != null) {
                for (Fragment next : this.I.e()) {
                    if (f3095c) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + next);
                    }
                    Iterator<FragmentState> it = fragmentManagerState.f683a.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            fragmentState = null;
                            break;
                        }
                        fragmentState = it.next();
                        if (fragmentState.f689b.equals(next.f662f)) {
                            break;
                        }
                    }
                    if (fragmentState == null) {
                        if (f3095c) {
                            Log.v("FragmentManager", "Discarding retained Fragment " + next + " that was not found in the set of active Fragments " + fragmentManagerState.f683a);
                        }
                        Fragment fragment = next;
                        a(fragment, 1, 0, 0, false);
                        next.m = true;
                        a(fragment, 0, 0, 0, false);
                    } else {
                        fragmentState.n = next;
                        next.f660d = null;
                        next.r = 0;
                        next.o = false;
                        next.f668l = false;
                        Fragment fragment2 = next.f664h;
                        next.f665i = fragment2 != null ? fragment2.f662f : null;
                        next.f664h = null;
                        Bundle bundle = fragmentState.m;
                        if (bundle != null) {
                            bundle.setClassLoader(this.t.f().getClassLoader());
                            next.f660d = fragmentState.m.getSparseParcelableArray("android:view_state");
                            next.f659c = fragmentState.m;
                        }
                    }
                }
                this.f3102j.clear();
                Iterator<FragmentState> it2 = fragmentManagerState.f683a.iterator();
                while (it2.hasNext()) {
                    FragmentState next2 = it2.next();
                    if (next2 != null) {
                        Fragment a2 = next2.a(this.t.f().getClassLoader(), b());
                        a2.s = this;
                        if (f3095c) {
                            Log.v("FragmentManager", "restoreSaveState: active (" + a2.f662f + "): " + a2);
                        }
                        this.f3102j.put(a2.f662f, a2);
                        next2.n = null;
                    }
                }
                this.f3101i.clear();
                ArrayList<String> arrayList = fragmentManagerState.f684b;
                if (arrayList != null) {
                    Iterator<String> it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment3 = this.f3102j.get(it3.next());
                        if (fragment3 != null) {
                            fragment3.f668l = true;
                            if (f3095c) {
                                Log.v("FragmentManager", "restoreSaveState: added (" + r1 + "): " + fragment3);
                            }
                            if (!this.f3101i.contains(fragment3)) {
                                synchronized (this.f3101i) {
                                    this.f3101i.add(fragment3);
                                }
                            } else {
                                throw new IllegalStateException("Already added " + fragment3);
                            }
                        } else {
                            a((RuntimeException) new IllegalStateException("No instantiated fragment for (" + r1 + ")"));
                            throw null;
                        }
                    }
                }
                BackStackState[] backStackStateArr = fragmentManagerState.f685c;
                if (backStackStateArr != null) {
                    this.f3103k = new ArrayList<>(backStackStateArr.length);
                    int i2 = 0;
                    while (true) {
                        BackStackState[] backStackStateArr2 = fragmentManagerState.f685c;
                        if (i2 >= backStackStateArr2.length) {
                            break;
                        }
                        C0277a a3 = backStackStateArr2[i2].a(this);
                        if (f3095c) {
                            Log.v("FragmentManager", "restoreAllState: back stack #" + i2 + " (index " + a3.u + "): " + a3);
                            PrintWriter printWriter = new PrintWriter(new b.i.j.b("FragmentManager"));
                            a3.a("  ", printWriter, false);
                            printWriter.close();
                        }
                        this.f3103k.add(a3);
                        int i3 = a3.u;
                        if (i3 >= 0) {
                            a(i3, a3);
                        }
                        i2++;
                    }
                } else {
                    this.f3103k = null;
                }
                String str = fragmentManagerState.f686d;
                if (str != null) {
                    this.w = this.f3102j.get(str);
                    e(this.w);
                }
                this.f3100h = fragmentManagerState.f687e;
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v7, resolved type: b.a.g} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v8, resolved type: androidx.fragment.app.Fragment} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v9, resolved type: androidx.fragment.app.Fragment} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v10, resolved type: androidx.fragment.app.Fragment} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(b.o.a.C0289m r3, b.o.a.C0286j r4, androidx.fragment.app.Fragment r5) {
        /*
            r2 = this;
            b.o.a.m r0 = r2.t
            if (r0 != 0) goto L_0x004d
            r2.t = r3
            r2.u = r4
            r2.v = r5
            androidx.fragment.app.Fragment r4 = r2.v
            if (r4 == 0) goto L_0x0011
            r2.H()
        L_0x0011:
            boolean r4 = r3 instanceof b.a.g
            if (r4 == 0) goto L_0x0028
            r4 = r3
            b.a.g r4 = (b.a.g) r4
            androidx.activity.OnBackPressedDispatcher r0 = r4.c()
            r2.m = r0
            if (r5 == 0) goto L_0x0021
            r4 = r5
        L_0x0021:
            androidx.activity.OnBackPressedDispatcher r0 = r2.m
            b.a.d r1 = r2.n
            r0.a(r4, r1)
        L_0x0028:
            if (r5 == 0) goto L_0x0033
            b.o.a.v r3 = r5.s
            b.o.a.y r3 = r3.h(r5)
            r2.I = r3
            goto L_0x004c
        L_0x0033:
            boolean r4 = r3 instanceof b.r.I
            if (r4 == 0) goto L_0x0044
            b.r.I r3 = (b.r.I) r3
            b.r.H r3 = r3.e()
            b.o.a.y r3 = b.o.a.y.a((b.r.H) r3)
            r2.I = r3
            goto L_0x004c
        L_0x0044:
            b.o.a.y r3 = new b.o.a.y
            r4 = 0
            r3.<init>(r4)
            r2.I = r3
        L_0x004c:
            return
        L_0x004d:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "Already attached"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: b.o.a.v.a(b.o.a.m, b.o.a.j, androidx.fragment.app.Fragment):void");
    }

    public void a(boolean z2) {
        for (int size = this.f3101i.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f3101i.get(size);
            if (fragment != null) {
                fragment.e(z2);
            }
        }
    }

    public void a(Configuration configuration) {
        for (int i2 = 0; i2 < this.f3101i.size(); i2++) {
            Fragment fragment = this.f3101i.get(i2);
            if (fragment != null) {
                fragment.a(configuration);
            }
        }
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        if (this.s < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z2 = false;
        for (int i2 = 0; i2 < this.f3101i.size(); i2++) {
            Fragment fragment = this.f3101i.get(i2);
            if (fragment != null && fragment.b(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z2 = true;
            }
        }
        if (this.f3104l != null) {
            for (int i3 = 0; i3 < this.f3104l.size(); i3++) {
                Fragment fragment2 = this.f3104l.get(i3);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.pa();
                }
            }
        }
        this.f3104l = arrayList;
        return z2;
    }

    public boolean a(MenuItem menuItem) {
        if (this.s < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.f3101i.size(); i2++) {
            Fragment fragment = this.f3101i.get(i2);
            if (fragment != null && fragment.c(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void a(Menu menu) {
        if (this.s >= 1) {
            for (int i2 = 0; i2 < this.f3101i.size(); i2++) {
                Fragment fragment = this.f3101i.get(i2);
                if (fragment != null) {
                    fragment.c(menu);
                }
            }
        }
    }

    public void a(Fragment fragment, Lifecycle.State state) {
        if (this.f3102j.get(fragment.f662f) == fragment && (fragment.t == null || fragment.J() == this)) {
            fragment.S = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public void a(Fragment fragment, Context context, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).a(fragment, context, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.a((C0290n) this, fragment, context);
            }
        }
    }

    public void a(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).a(fragment, bundle, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.a((C0290n) this, fragment, bundle);
            }
        }
    }

    public void a(Fragment fragment, View view, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.v;
        if (fragment2 != null) {
            C0290n J2 = fragment2.J();
            if (J2 instanceof v) {
                ((v) J2).a(fragment, view, bundle, true);
            }
        }
        Iterator<c> it = this.r.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (!z2 || next.f3113b) {
                next.f3112a.a(this, fragment, view, bundle);
            }
        }
    }
}
