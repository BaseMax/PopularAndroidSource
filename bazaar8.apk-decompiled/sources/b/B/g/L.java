package b.b.g;

import android.view.View;

/* compiled from: ListPopupWindow */
class L implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ N f2080a;

    public L(N n) {
        this.f2080a = n;
    }

    public void run() {
        View j2 = this.f2080a.j();
        if (j2 != null && j2.getWindowToken() != null) {
            this.f2080a.d();
        }
    }
}
