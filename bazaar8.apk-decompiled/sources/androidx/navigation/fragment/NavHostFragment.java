package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import b.o.a.C;
import b.r.k;
import b.w.C0313j;
import b.w.J;
import b.w.K;
import b.w.b.a;
import b.w.b.c;
import b.w.b.d;
import b.w.o;
import b.w.t;
import b.w.u;

public class NavHostFragment extends Fragment implements t {
    public u Y;
    public Boolean Z = null;
    public int aa;
    public boolean ba;

    public static C0313j b(Fragment fragment) {
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.Q()) {
            if (fragment2 instanceof NavHostFragment) {
                return ((NavHostFragment) fragment2).Ma();
            }
            Fragment d2 = fragment2.Ia().d();
            if (d2 instanceof NavHostFragment) {
                return ((NavHostFragment) d2).Ma();
            }
        }
        View aa2 = fragment.aa();
        if (aa2 != null) {
            return J.a(aa2);
        }
        throw new IllegalStateException("Fragment " + fragment + " does not have a NavController set");
    }

    @Deprecated
    public K<? extends c.a> La() {
        return new c(Ha(), D(), L());
    }

    public final C0313j Ma() {
        u uVar = this.Y;
        if (uVar != null) {
            return uVar;
        }
        throw new IllegalStateException("NavController is not available before onCreate()");
    }

    public void a(Context context) {
        super.a(context);
        if (this.ba) {
            C a2 = Ia().a();
            a2.d(this);
            a2.a();
        }
    }

    public void c(Bundle bundle) {
        Bundle bundle2;
        super.c(bundle);
        this.Y = new u(Ha());
        this.Y.a((k) this);
        this.Y.a(Ga().c());
        u uVar = this.Y;
        Boolean bool = this.Z;
        int i2 = 0;
        uVar.a(bool != null && bool.booleanValue());
        Bundle bundle3 = null;
        this.Z = null;
        this.Y.a(e());
        a((C0313j) this.Y);
        if (bundle != null) {
            bundle2 = bundle.getBundle("android-support-nav:fragment:navControllerState");
            if (bundle.getBoolean("android-support-nav:fragment:defaultHost", false)) {
                this.ba = true;
                C a2 = Ia().a();
                a2.d(this);
                a2.a();
            }
        } else {
            bundle2 = null;
        }
        if (bundle2 != null) {
            this.Y.b(bundle2);
        }
        int i3 = this.aa;
        if (i3 != 0) {
            this.Y.c(i3);
            return;
        }
        Bundle C = C();
        if (C != null) {
            i2 = C.getInt("android-support-nav:fragment:graphId");
        }
        if (C != null) {
            bundle3 = C.getBundle("android-support-nav:fragment:startDestinationArgs");
        }
        if (i2 != 0) {
            this.Y.b(i2, bundle3);
        }
    }

    public void d(boolean z) {
        u uVar = this.Y;
        if (uVar != null) {
            uVar.a(z);
        } else {
            this.Z = Boolean.valueOf(z);
        }
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        Bundle j2 = this.Y.j();
        if (j2 != null) {
            bundle.putBundle("android-support-nav:fragment:navControllerState", j2);
        }
        if (this.ba) {
            bundle.putBoolean("android-support-nav:fragment:defaultHost", true);
        }
    }

    public void a(C0313j jVar) {
        jVar.g().a((K<? extends o>) new a(Ha(), D()));
        jVar.g().a((K<? extends o>) La());
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        frameLayout.setId(L());
        return frameLayout;
    }

    public void a(View view, Bundle bundle) {
        super.a(view, bundle);
        if (view instanceof ViewGroup) {
            J.a(view, (C0313j) this.Y);
            if (view.getParent() != null) {
                View view2 = (View) view.getParent();
                if (view2.getId() == L()) {
                    J.a(view2, (C0313j) this.Y);
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("created host view " + view + " is not a ViewGroup");
    }

    public void a(Context context, AttributeSet attributeSet, Bundle bundle) {
        super.a(context, attributeSet, bundle);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.NavHost);
        int resourceId = obtainStyledAttributes.getResourceId(d.NavHost_navGraph, 0);
        if (resourceId != 0) {
            this.aa = resourceId;
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, d.NavHostFragment);
        if (obtainStyledAttributes2.getBoolean(d.NavHostFragment_defaultNavHost, false)) {
            this.ba = true;
        }
        obtainStyledAttributes2.recycle();
    }
}
