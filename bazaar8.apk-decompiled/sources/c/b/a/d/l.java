package c.b.a.d;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import c.b.a.e;
import c.b.a.n;
import java.util.HashSet;
import java.util.Set;

@Deprecated
/* compiled from: RequestManagerFragment */
public class l extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    public final a f4288a;

    /* renamed from: b  reason: collision with root package name */
    public final o f4289b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<l> f4290c;

    /* renamed from: d  reason: collision with root package name */
    public n f4291d;

    /* renamed from: e  reason: collision with root package name */
    public l f4292e;

    /* renamed from: f  reason: collision with root package name */
    public Fragment f4293f;

    /* compiled from: RequestManagerFragment */
    private class a implements o {
        public a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + l.this + "}";
        }
    }

    public l() {
        this(new a());
    }

    public void a(n nVar) {
        this.f4291d = nVar;
    }

    public final void b(l lVar) {
        this.f4290c.remove(lVar);
    }

    public n c() {
        return this.f4291d;
    }

    public o d() {
        return this.f4289b;
    }

    public final void e() {
        l lVar = this.f4292e;
        if (lVar != null) {
            lVar.b(this);
            this.f4292e = null;
        }
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            a(activity);
        } catch (IllegalStateException e2) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e2);
            }
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.f4288a.a();
        e();
    }

    public void onDetach() {
        super.onDetach();
        e();
    }

    public void onStart() {
        super.onStart();
        this.f4288a.b();
    }

    public void onStop() {
        super.onStop();
        this.f4288a.c();
    }

    public String toString() {
        return super.toString() + "{parent=" + b() + "}";
    }

    @SuppressLint({"ValidFragment"})
    public l(a aVar) {
        this.f4289b = new a();
        this.f4290c = new HashSet();
        this.f4288a = aVar;
    }

    public a a() {
        return this.f4288a;
    }

    @TargetApi(17)
    public final Fragment b() {
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        return parentFragment != null ? parentFragment : this.f4293f;
    }

    public final void a(l lVar) {
        this.f4290c.add(lVar);
    }

    public void a(Fragment fragment) {
        this.f4293f = fragment;
        if (fragment != null && fragment.getActivity() != null) {
            a(fragment.getActivity());
        }
    }

    public final void a(Activity activity) {
        e();
        this.f4292e = e.b((Context) activity).i().c(activity);
        if (!equals(this.f4292e)) {
            this.f4292e.a(this);
        }
    }
}
