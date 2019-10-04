package c.c.a.n.p.a.a;

import android.view.KeyEvent;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import c.c.a.e;
import com.farsitel.bazaar.ui.login.merge.account.LoginWithEmailFragment;
import h.f.b.j;

/* compiled from: LoginWithEmailFragment.kt */
final class a implements TextView.OnEditorActionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ LoginWithEmailFragment f6704a;

    public a(LoginWithEmailFragment loginWithEmailFragment) {
        this.f6704a = loginWithEmailFragment;
    }

    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 5) {
            return false;
        }
        LoginWithEmailFragment loginWithEmailFragment = this.f6704a;
        AppCompatEditText appCompatEditText = (AppCompatEditText) loginWithEmailFragment.e(e.emailEditText);
        j.a((Object) appCompatEditText, "emailEditText");
        loginWithEmailFragment.ia = String.valueOf(appCompatEditText.getText());
        LoginWithEmailFragment.b(this.f6704a).a(LoginWithEmailFragment.a(this.f6704a));
        return true;
    }
}
