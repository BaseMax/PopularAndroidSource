package b.o.a;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import b.G.a.a;

/* compiled from: FragmentPagerAdapter */
public abstract class z extends a {

    /* renamed from: c  reason: collision with root package name */
    public final C0290n f3129c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3130d;

    /* renamed from: e  reason: collision with root package name */
    public C f3131e;

    /* renamed from: f  reason: collision with root package name */
    public Fragment f3132f;

    @Deprecated
    public z(C0290n nVar) {
        this(nVar, 0);
    }

    public Object a(ViewGroup viewGroup, int i2) {
        if (this.f3131e == null) {
            this.f3131e = this.f3129c.a();
        }
        long d2 = d(i2);
        Fragment a2 = this.f3129c.a(a(viewGroup.getId(), d2));
        if (a2 != null) {
            this.f3131e.a(a2);
        } else {
            a2 = c(i2);
            this.f3131e.a(viewGroup.getId(), a2, a(viewGroup.getId(), d2));
        }
        if (a2 != this.f3132f) {
            a2.i(false);
            if (this.f3130d == 1) {
                this.f3131e.a(a2, Lifecycle.State.STARTED);
            } else {
                a2.j(false);
            }
        }
        return a2;
    }

    public void a(Parcelable parcelable, ClassLoader classLoader) {
    }

    public Parcelable b() {
        return null;
    }

    public void b(ViewGroup viewGroup) {
        if (viewGroup.getId() == -1) {
            throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
        }
    }

    public abstract Fragment c(int i2);

    public long d(int i2) {
        return (long) i2;
    }

    public z(C0290n nVar, int i2) {
        this.f3131e = null;
        this.f3132f = null;
        this.f3129c = nVar;
        this.f3130d = i2;
    }

    public void b(ViewGroup viewGroup, int i2, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f3132f;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.i(false);
                if (this.f3130d == 1) {
                    if (this.f3131e == null) {
                        this.f3131e = this.f3129c.a();
                    }
                    this.f3131e.a(this.f3132f, Lifecycle.State.STARTED);
                } else {
                    this.f3132f.j(false);
                }
            }
            fragment.i(true);
            if (this.f3130d == 1) {
                if (this.f3131e == null) {
                    this.f3131e = this.f3129c.a();
                }
                this.f3131e.a(fragment, Lifecycle.State.RESUMED);
            } else {
                fragment.j(true);
            }
            this.f3132f = fragment;
        }
    }

    public void a(ViewGroup viewGroup, int i2, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f3131e == null) {
            this.f3131e = this.f3129c.a();
        }
        this.f3131e.b(fragment);
        if (fragment == this.f3132f) {
            this.f3132f = null;
        }
    }

    public void a(ViewGroup viewGroup) {
        C c2 = this.f3131e;
        if (c2 != null) {
            c2.c();
            this.f3131e = null;
        }
    }

    public boolean a(View view, Object obj) {
        return ((Fragment) obj).aa() == view;
    }

    public static String a(int i2, long j2) {
        return "android:switcher:" + i2 + ":" + j2;
    }
}
