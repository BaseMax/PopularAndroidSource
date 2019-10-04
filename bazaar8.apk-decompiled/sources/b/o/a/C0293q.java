package b.o.a;

import android.view.View;
import androidx.fragment.app.Fragment;

/* renamed from: b.o.a.q  reason: case insensitive filesystem */
/* compiled from: FragmentManagerImpl */
class C0293q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ r f3082a;

    public C0293q(r rVar) {
        this.f3082a = rVar;
    }

    public void run() {
        if (this.f3082a.f3084b.A() != null) {
            this.f3082a.f3084b.a((View) null);
            r rVar = this.f3082a;
            v vVar = rVar.f3085c;
            Fragment fragment = rVar.f3084b;
            vVar.a(fragment, fragment.X(), 0, 0, false);
        }
    }
}
