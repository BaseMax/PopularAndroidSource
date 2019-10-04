package c.c.a.n.b.c;

import androidx.core.widget.NestedScrollView;
import c.c.a.e;
import h.f.b.j;

/* compiled from: ReportFragment.kt */
final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f6224a;

    public d(e eVar) {
        this.f6224a = eVar;
    }

    public final void run() {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f6224a.f6226b.findViewById(e.nsReport);
        j.a((Object) nestedScrollView, "view.nsReport");
        ((NestedScrollView) this.f6224a.f6226b.findViewById(e.nsReport)).b(0, nestedScrollView.getBottom());
    }
}
