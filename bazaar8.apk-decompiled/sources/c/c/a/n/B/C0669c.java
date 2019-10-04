package c.c.a.n.b;

import android.view.View;
import c.c.a.n.c.a.b;
import com.farsitel.bazaar.analytics.model.what.InstallFabButtonClick;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;

/* renamed from: c.c.a.n.b.c  reason: case insensitive filesystem */
/* compiled from: AppDetailFragment.kt */
final class C0669c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6219a;

    public C0669c(AppDetailFragment appDetailFragment) {
        this.f6219a = appDetailFragment;
    }

    public final void onClick(View view) {
        AppDetailFragment appDetailFragment = this.f6219a;
        b.a(appDetailFragment, new InstallFabButtonClick(AppDetailFragment.a(appDetailFragment).b()), null, null, 6, null);
        this.f6219a.yb();
    }
}
