package b.o.a;

import android.view.View;
import androidx.fragment.app.Fragment;

/* renamed from: b.o.a.g  reason: case insensitive filesystem */
/* compiled from: Fragment */
class C0283g extends C0286j {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Fragment f3063a;

    public C0283g(Fragment fragment) {
        this.f3063a = fragment;
    }

    public View a(int i2) {
        View view = this.f3063a.H;
        if (view != null) {
            return view.findViewById(i2);
        }
        throw new IllegalStateException("Fragment " + this + " does not have a view");
    }

    public boolean a() {
        return this.f3063a.H != null;
    }
}
