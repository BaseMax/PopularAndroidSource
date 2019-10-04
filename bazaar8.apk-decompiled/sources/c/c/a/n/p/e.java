package c.c.a.n.p;

import android.content.Context;
import android.text.style.ClickableSpan;
import android.view.View;
import c.c.a.i.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.login.RegisterFragment;
import h.f.b.j;

/* compiled from: RegisterFragment.kt */
public final class e extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RegisterFragment f6733a;

    public e(RegisterFragment registerFragment) {
        this.f6733a = registerFragment;
    }

    public void onClick(View view) {
        j.b(view, "widget");
        Context Ha = this.f6733a.Ha();
        j.a((Object) Ha, "requireContext()");
        String b2 = this.f6733a.b((int) R.string.privacy_login_link);
        j.a((Object) b2, "getString(R.string.privacy_login_link)");
        b.a(Ha, b2, false, 2, null);
    }
}
