package c.c.a.n.m;

import android.content.Context;
import android.view.View;
import b.w.C0313j;
import b.w.b.b;
import c.c.a.c.d.e;
import c.c.a.d;
import com.farsitel.bazaar.ui.home.HomeFragment;
import com.google.android.material.snackbar.Snackbar;
import h.f.b.j;

/* compiled from: HomeFragment.kt */
final class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Snackbar f6681a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ HomeFragment f6682b;

    public c(Snackbar snackbar, HomeFragment homeFragment) {
        this.f6681a = snackbar;
        this.f6682b = homeFragment;
    }

    public final void onClick(View view) {
        C0313j a2 = b.a(this.f6682b);
        d.l lVar = d.f4738a;
        Context d2 = this.f6681a.d();
        j.a((Object) d2, "context");
        String packageName = d2.getPackageName();
        j.a((Object) packageName, "context.packageName");
        c.c.a.i.c.a(a2, lVar.a(packageName, e.a(), true));
    }
}
