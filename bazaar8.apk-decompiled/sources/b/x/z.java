package b.x;

import android.os.Bundle;
import android.view.View;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import b.i.k.C0258a;
import b.i.k.a.d;

/* compiled from: PreferenceRecyclerViewAccessibilityDelegate */
class z extends C0258a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ A f3405d;

    public z(A a2) {
        this.f3405d = a2;
    }

    public void a(View view, d dVar) {
        this.f3405d.f3351g.a(view, dVar);
        int f2 = this.f3405d.f3350f.f(view);
        RecyclerView.a adapter = this.f3405d.f3350f.getAdapter();
        if (adapter instanceof w) {
            Preference f3 = ((w) adapter).f(f2);
            if (f3 != null) {
                f3.a(dVar);
            }
        }
    }

    public boolean a(View view, int i2, Bundle bundle) {
        return this.f3405d.f3351g.a(view, i2, bundle);
    }
}
