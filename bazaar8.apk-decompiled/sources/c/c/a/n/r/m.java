package c.c.a.n.r;

import android.content.Context;
import android.view.View;
import c.c.a.c.d.e;
import c.c.a.n.c.a.b;
import com.farsitel.bazaar.analytics.model.what.MyBazaarHelpButtonClick;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarFragment;
import h.f.b.j;

/* compiled from: MyBazaarFragment.kt */
final class m implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f6798a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ MyBazaarFragment f6799b;

    public m(String str, MyBazaarFragment myBazaarFragment) {
        this.f6798a = str;
        this.f6799b = myBazaarFragment;
    }

    public final void onClick(View view) {
        b.a(this.f6799b, new MyBazaarHelpButtonClick(e.a()), null, null, 6, null);
        Context Ha = this.f6799b.Ha();
        j.a((Object) Ha, "requireContext()");
        c.c.a.i.b.a(Ha, this.f6798a, false, 2, null);
    }
}
