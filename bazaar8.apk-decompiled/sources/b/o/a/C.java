package b.o.a;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import b.i.k.z;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* compiled from: FragmentTransaction */
public abstract class C {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<a> f2976a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public int f2977b;

    /* renamed from: c  reason: collision with root package name */
    public int f2978c;

    /* renamed from: d  reason: collision with root package name */
    public int f2979d;

    /* renamed from: e  reason: collision with root package name */
    public int f2980e;

    /* renamed from: f  reason: collision with root package name */
    public int f2981f;

    /* renamed from: g  reason: collision with root package name */
    public int f2982g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2983h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f2984i = true;

    /* renamed from: j  reason: collision with root package name */
    public String f2985j;

    /* renamed from: k  reason: collision with root package name */
    public int f2986k;

    /* renamed from: l  reason: collision with root package name */
    public CharSequence f2987l;
    public int m;
    public CharSequence n;
    public ArrayList<String> o;
    public ArrayList<String> p;
    public boolean q = false;
    public ArrayList<Runnable> r;

    /* compiled from: FragmentTransaction */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f2988a;

        /* renamed from: b  reason: collision with root package name */
        public Fragment f2989b;

        /* renamed from: c  reason: collision with root package name */
        public int f2990c;

        /* renamed from: d  reason: collision with root package name */
        public int f2991d;

        /* renamed from: e  reason: collision with root package name */
        public int f2992e;

        /* renamed from: f  reason: collision with root package name */
        public int f2993f;

        /* renamed from: g  reason: collision with root package name */
        public Lifecycle.State f2994g;

        /* renamed from: h  reason: collision with root package name */
        public Lifecycle.State f2995h;

        public a() {
        }

        public a(int i2, Fragment fragment) {
            this.f2988a = i2;
            this.f2989b = fragment;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f2994g = state;
            this.f2995h = state;
        }

        public a(int i2, Fragment fragment, Lifecycle.State state) {
            this.f2988a = i2;
            this.f2989b = fragment;
            this.f2994g = fragment.S;
            this.f2995h = state;
        }
    }

    public abstract int a();

    public void a(a aVar) {
        this.f2976a.add(aVar);
        aVar.f2990c = this.f2977b;
        aVar.f2991d = this.f2978c;
        aVar.f2992e = this.f2979d;
        aVar.f2993f = this.f2980e;
    }

    public abstract int b();

    public C b(int i2, Fragment fragment) {
        b(i2, fragment, null);
        return this;
    }

    public C c(Fragment fragment) {
        a(new a(3, fragment));
        return this;
    }

    public abstract void c();

    public C d(Fragment fragment) {
        a(new a(8, fragment));
        return this;
    }

    public C b(int i2, Fragment fragment, String str) {
        if (i2 != 0) {
            a(i2, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    public C d() {
        if (!this.f2983h) {
            this.f2984i = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    public C b(Fragment fragment) {
        a(new a(6, fragment));
        return this;
    }

    public C a(Fragment fragment, String str) {
        a(0, fragment, str, 1);
        return this;
    }

    public C a(int i2, Fragment fragment) {
        a(i2, fragment, (String) null, 1);
        return this;
    }

    public C a(int i2, Fragment fragment, String str) {
        a(i2, fragment, str, 1);
        return this;
    }

    public void a(int i2, Fragment fragment, String str, int i3) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.y;
            if (str2 == null || str.equals(str2)) {
                fragment.y = str;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.y + " now " + str);
            }
        }
        if (i2 != 0) {
            if (i2 != -1) {
                int i4 = fragment.w;
                if (i4 == 0 || i4 == i2) {
                    fragment.w = i2;
                    fragment.x = i2;
                } else {
                    throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.w + " now " + i2);
                }
            } else {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
        }
        a(new a(i3, fragment));
    }

    public C a(Fragment fragment) {
        a(new a(7, fragment));
        return this;
    }

    public C a(Fragment fragment, Lifecycle.State state) {
        a(new a(10, fragment, state));
        return this;
    }

    public C a(int i2, int i3, int i4, int i5) {
        this.f2977b = i2;
        this.f2978c = i3;
        this.f2979d = i4;
        this.f2980e = i5;
        return this;
    }

    public C a(View view, String str) {
        if (H.b()) {
            String r2 = z.r(view);
            if (r2 != null) {
                if (this.o == null) {
                    this.o = new ArrayList<>();
                    this.p = new ArrayList<>();
                } else if (this.p.contains(str)) {
                    throw new IllegalArgumentException("A shared element with the target name '" + str + "' has already been added to the transaction.");
                } else if (this.o.contains(r2)) {
                    throw new IllegalArgumentException("A shared element with the source name '" + r2 + "' has already been added to the transaction.");
                }
                this.o.add(r2);
                this.p.add(str);
            } else {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
        }
        return this;
    }

    public C a(String str) {
        if (this.f2984i) {
            this.f2983h = true;
            this.f2985j = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }

    public C a(boolean z) {
        this.q = z;
        return this;
    }
}
