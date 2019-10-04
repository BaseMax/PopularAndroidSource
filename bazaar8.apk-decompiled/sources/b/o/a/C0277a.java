package b.o.a;

import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import b.i.j.b;
import b.o.a.C;
import b.o.a.C0290n;
import b.o.a.v;
import java.io.PrintWriter;
import java.util.ArrayList;

/* renamed from: b.o.a.a  reason: case insensitive filesystem */
/* compiled from: BackStackRecord */
public final class C0277a extends C implements C0290n.a, v.e {
    public final v s;
    public boolean t;
    public int u = -1;

    public C0277a(v vVar) {
        this.s = vVar;
    }

    public void a(String str, PrintWriter printWriter) {
        a(str, printWriter, true);
    }

    public C b(Fragment fragment) {
        v vVar = fragment.s;
        if (vVar == null || vVar == this.s) {
            super.b(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public C c(Fragment fragment) {
        v vVar = fragment.s;
        if (vVar == null || vVar == this.s) {
            super.c(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public C d(Fragment fragment) {
        if (fragment != null) {
            v vVar = fragment.s;
            if (!(vVar == null || vVar == this.s)) {
                throw new IllegalStateException("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
            }
        }
        super.d(fragment);
        return this;
    }

    public void e() {
        int size = this.f2976a.size();
        for (int i2 = 0; i2 < size; i2++) {
            C.a aVar = this.f2976a.get(i2);
            Fragment fragment = aVar.f2989b;
            if (fragment != null) {
                fragment.a(this.f2981f, this.f2982g);
            }
            switch (aVar.f2988a) {
                case 1:
                    fragment.c(aVar.f2990c);
                    this.s.a(fragment, false);
                    break;
                case 3:
                    fragment.c(aVar.f2991d);
                    this.s.r(fragment);
                    break;
                case 4:
                    fragment.c(aVar.f2991d);
                    this.s.j(fragment);
                    break;
                case 5:
                    fragment.c(aVar.f2990c);
                    this.s.w(fragment);
                    break;
                case 6:
                    fragment.c(aVar.f2991d);
                    this.s.d(fragment);
                    break;
                case 7:
                    fragment.c(aVar.f2990c);
                    this.s.b(fragment);
                    break;
                case 8:
                    this.s.v(fragment);
                    break;
                case 9:
                    this.s.v(null);
                    break;
                case 10:
                    this.s.a(fragment, aVar.f2995h);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2988a);
            }
            if (!(this.q || aVar.f2988a == 1 || fragment == null)) {
                this.s.o(fragment);
            }
        }
        if (!this.q) {
            v vVar = this.s;
            vVar.a(vVar.s, true);
        }
    }

    public String f() {
        return this.f2985j;
    }

    public boolean g() {
        for (int i2 = 0; i2 < this.f2976a.size(); i2++) {
            if (b(this.f2976a.get(i2))) {
                return true;
            }
        }
        return false;
    }

    public void h() {
        if (this.r != null) {
            for (int i2 = 0; i2 < this.r.size(); i2++) {
                this.r.get(i2).run();
            }
            this.r = null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.u >= 0) {
            sb.append(" #");
            sb.append(this.u);
        }
        if (this.f2985j != null) {
            sb.append(" ");
            sb.append(this.f2985j);
        }
        sb.append("}");
        return sb.toString();
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f2985j);
            printWriter.print(" mIndex=");
            printWriter.print(this.u);
            printWriter.print(" mCommitted=");
            printWriter.println(this.t);
            if (this.f2981f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f2981f));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.f2982g));
            }
            if (!(this.f2977b == 0 && this.f2978c == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2977b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2978c));
            }
            if (!(this.f2979d == 0 && this.f2980e == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2979d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2980e));
            }
            if (!(this.f2986k == 0 && this.f2987l == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2986k));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f2987l);
            }
            if (!(this.m == 0 && this.n == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.m));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.n);
            }
        }
        if (!this.f2976a.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f2976a.size();
            for (int i2 = 0; i2 < size; i2++) {
                C.a aVar = this.f2976a.get(i2);
                switch (aVar.f2988a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        str2 = "cmd=" + aVar.f2988a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(aVar.f2989b);
                if (z) {
                    if (!(aVar.f2990c == 0 && aVar.f2991d == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f2990c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f2991d));
                    }
                    if (aVar.f2992e != 0 || aVar.f2993f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f2992e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f2993f));
                    }
                }
            }
        }
    }

    public int b() {
        return b(true);
    }

    public void c() {
        d();
        this.s.b((v.e) this, true);
    }

    public int b(boolean z) {
        if (!this.t) {
            if (v.f3095c) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new b("FragmentManager"));
                a("  ", printWriter);
                printWriter.close();
            }
            this.t = true;
            if (this.f2983h) {
                this.u = this.s.b(this);
            } else {
                this.u = -1;
            }
            this.s.a((v.e) this, z);
            return this.u;
        }
        throw new IllegalStateException("commit already called");
    }

    public void c(boolean z) {
        for (int size = this.f2976a.size() - 1; size >= 0; size--) {
            C.a aVar = this.f2976a.get(size);
            Fragment fragment = aVar.f2989b;
            if (fragment != null) {
                fragment.a(v.e(this.f2981f), this.f2982g);
            }
            switch (aVar.f2988a) {
                case 1:
                    fragment.c(aVar.f2993f);
                    this.s.r(fragment);
                    break;
                case 3:
                    fragment.c(aVar.f2992e);
                    this.s.a(fragment, false);
                    break;
                case 4:
                    fragment.c(aVar.f2992e);
                    this.s.w(fragment);
                    break;
                case 5:
                    fragment.c(aVar.f2993f);
                    this.s.j(fragment);
                    break;
                case 6:
                    fragment.c(aVar.f2992e);
                    this.s.b(fragment);
                    break;
                case 7:
                    fragment.c(aVar.f2993f);
                    this.s.d(fragment);
                    break;
                case 8:
                    this.s.v(null);
                    break;
                case 9:
                    this.s.v(fragment);
                    break;
                case 10:
                    this.s.a(fragment, aVar.f2994g);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2988a);
            }
            if (!(this.q || aVar.f2988a == 3 || fragment == null)) {
                this.s.o(fragment);
            }
        }
        if (!this.q && z) {
            v vVar = this.s;
            vVar.a(vVar.s, true);
        }
    }

    public boolean b(int i2) {
        int size = this.f2976a.size();
        for (int i3 = 0; i3 < size; i3++) {
            Fragment fragment = this.f2976a.get(i3).f2989b;
            int i4 = fragment != null ? fragment.x : 0;
            if (i4 != 0 && i4 == i2) {
                return true;
            }
        }
        return false;
    }

    public Fragment b(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f2976a.size() - 1; size >= 0; size--) {
            C.a aVar = this.f2976a.get(size);
            int i2 = aVar.f2988a;
            if (i2 != 1) {
                if (i2 != 3) {
                    switch (i2) {
                        case 6:
                            break;
                        case 7:
                            break;
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = aVar.f2989b;
                            break;
                        case 10:
                            aVar.f2995h = aVar.f2994g;
                            break;
                    }
                }
                arrayList.add(aVar.f2989b);
            }
            arrayList.remove(aVar.f2989b);
        }
        return fragment;
    }

    public static boolean b(C.a aVar) {
        Fragment fragment = aVar.f2989b;
        return fragment != null && fragment.f668l && fragment.H != null && !fragment.A && !fragment.z && fragment.ia();
    }

    public void a(int i2, Fragment fragment, String str, int i3) {
        super.a(i2, fragment, str, i3);
        fragment.s = this.s;
    }

    public C a(Fragment fragment, Lifecycle.State state) {
        if (fragment.s != this.s) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.s);
        } else if (state.a(Lifecycle.State.CREATED)) {
            super.a(fragment, state);
            return this;
        } else {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle below " + Lifecycle.State.CREATED);
        }
    }

    public void a(int i2) {
        if (this.f2983h) {
            if (v.f3095c) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i2);
            }
            int size = this.f2976a.size();
            for (int i3 = 0; i3 < size; i3++) {
                Fragment fragment = this.f2976a.get(i3).f2989b;
                if (fragment != null) {
                    fragment.r += i2;
                    if (v.f3095c) {
                        Log.v("FragmentManager", "Bump nesting of " + r3.f2989b + " to " + r3.f2989b.r);
                    }
                }
            }
        }
    }

    public int a() {
        return b(false);
    }

    public boolean a(ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2) {
        if (v.f3095c) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (this.f2983h) {
            this.s.a(this);
        }
        return true;
    }

    public boolean a(ArrayList<C0277a> arrayList, int i2, int i3) {
        if (i3 == i2) {
            return false;
        }
        int size = this.f2976a.size();
        int i4 = -1;
        for (int i5 = 0; i5 < size; i5++) {
            Fragment fragment = this.f2976a.get(i5).f2989b;
            int i6 = fragment != null ? fragment.x : 0;
            if (!(i6 == 0 || i6 == i4)) {
                for (int i7 = i2; i7 < i3; i7++) {
                    C0277a aVar = arrayList.get(i7);
                    int size2 = aVar.f2976a.size();
                    for (int i8 = 0; i8 < size2; i8++) {
                        Fragment fragment2 = aVar.f2976a.get(i8).f2989b;
                        if ((fragment2 != null ? fragment2.x : 0) == i6) {
                            return true;
                        }
                    }
                }
                i4 = i6;
            }
        }
        return false;
    }

    public Fragment a(ArrayList<Fragment> arrayList, Fragment fragment) {
        ArrayList<Fragment> arrayList2 = arrayList;
        Fragment fragment2 = fragment;
        int i2 = 0;
        while (i2 < this.f2976a.size()) {
            C.a aVar = this.f2976a.get(i2);
            int i3 = aVar.f2988a;
            if (i3 != 1) {
                if (i3 == 2) {
                    Fragment fragment3 = aVar.f2989b;
                    int i4 = fragment3.x;
                    Fragment fragment4 = fragment2;
                    int i5 = i2;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment5 = arrayList2.get(size);
                        if (fragment5.x == i4) {
                            if (fragment5 == fragment3) {
                                z = true;
                            } else {
                                if (fragment5 == fragment4) {
                                    this.f2976a.add(i5, new C.a(9, fragment5));
                                    i5++;
                                    fragment4 = null;
                                }
                                C.a aVar2 = new C.a(3, fragment5);
                                aVar2.f2990c = aVar.f2990c;
                                aVar2.f2992e = aVar.f2992e;
                                aVar2.f2991d = aVar.f2991d;
                                aVar2.f2993f = aVar.f2993f;
                                this.f2976a.add(i5, aVar2);
                                arrayList2.remove(fragment5);
                                i5++;
                            }
                        }
                    }
                    if (z) {
                        this.f2976a.remove(i5);
                        i5--;
                    } else {
                        aVar.f2988a = 1;
                        arrayList2.add(fragment3);
                    }
                    i2 = i5;
                    fragment2 = fragment4;
                } else if (i3 == 3 || i3 == 6) {
                    arrayList2.remove(aVar.f2989b);
                    Fragment fragment6 = aVar.f2989b;
                    if (fragment6 == fragment2) {
                        this.f2976a.add(i2, new C.a(9, fragment6));
                        i2++;
                        fragment2 = null;
                    }
                } else if (i3 != 7) {
                    if (i3 == 8) {
                        this.f2976a.add(i2, new C.a(9, fragment2));
                        i2++;
                        fragment2 = aVar.f2989b;
                    }
                }
                i2++;
            }
            arrayList2.add(aVar.f2989b);
            i2++;
        }
        return fragment2;
    }

    public void a(Fragment.b bVar) {
        for (int i2 = 0; i2 < this.f2976a.size(); i2++) {
            C.a aVar = this.f2976a.get(i2);
            if (b(aVar)) {
                aVar.f2989b.a(bVar);
            }
        }
    }
}
