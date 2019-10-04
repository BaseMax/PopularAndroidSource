package c.c.a.n.p.a.a;

import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import c.c.a.e;
import com.farsitel.bazaar.ui.login.merge.account.LoginWithEmailFragment;
import h.f.b.j;

/* compiled from: LoginWithEmailFragment.kt */
final class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ LoginWithEmailFragment f6706a;

    public c(LoginWithEmailFragment loginWithEmailFragment) {
        this.f6706a = loginWithEmailFragment;
    }

    public final void onClick(View view) {
        LoginWithEmailFragment loginWithEmailFragment = this.f6706a;
        AppCompatEditText appCompatEditText = (AppCompatEditText) loginWithEmailFragment.e(e.emailEditText);
        j.a((Object) appCompatEditText, "emailEditText");
        loginWithEmailFragment.ia = String.valueOf(appCompatEditText.getText());
        LoginWithEmailFragment.b(this.f6706a).a(LoginWithEmailFragment.a(this.f6706a));
    }
}
