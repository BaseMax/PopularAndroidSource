package c.c.a.n.m;

import android.app.Activity;
import c.c.a.d.a.d;
import c.c.a.d.f.r;
import com.farsitel.bazaar.core.app.Permission;
import com.farsitel.bazaar.ui.home.MainActivity;
import h.a.k;
import h.f.b.j;
import h.h;
import java.util.List;

/* compiled from: MainActivity.kt */
public final class f implements r<h> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MainActivity f6684a;

    public f(MainActivity mainActivity) {
        this.f6684a = mainActivity;
    }

    public void onCancel() {
        r.a.a(this);
    }

    public void a() {
        r.a.b(this);
    }

    public void a(h hVar) {
        j.b(hVar, "result");
        d b2 = this.f6684a.H;
        if (b2 != null) {
            b2.a((List<? extends Permission>) k.a(Permission.ACCESS_COARSE_LOCATION), (Activity) this.f6684a, 46755);
        }
        r.a.a(this, hVar);
    }
}
