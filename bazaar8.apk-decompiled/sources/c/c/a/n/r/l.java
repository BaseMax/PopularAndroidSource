package c.c.a.n.r;

import android.view.View;
import c.c.a.c.d.e;
import c.c.a.i.c;
import c.c.a.n.c.a.b;
import com.farsitel.bazaar.analytics.model.what.MyBazaarSettingsButtonClick;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarFragment;

/* compiled from: MyBazaarFragment.kt */
final class l implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MyBazaarFragment f6797a;

    public l(MyBazaarFragment myBazaarFragment) {
        this.f6797a = myBazaarFragment;
    }

    public final void onClick(View view) {
        b.a(this.f6797a, new MyBazaarSettingsButtonClick(e.a()), null, null, 6, null);
        c.a(b.w.b.b.a(this.f6797a), o.f6801a.a());
    }
}
