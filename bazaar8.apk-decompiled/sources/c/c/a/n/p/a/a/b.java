package c.c.a.n.p.a.a;

import android.text.Editable;
import android.text.TextWatcher;
import c.c.a.c.b.i;
import c.c.a.e;
import com.farsitel.bazaar.ui.login.merge.account.LoginWithEmailFragment;
import com.farsitel.bazaar.widget.LoadingButton;
import h.f.b.j;

/* compiled from: LoginWithEmailFragment.kt */
public final class b implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ LoginWithEmailFragment f6705a;

    public b(LoginWithEmailFragment loginWithEmailFragment) {
        this.f6705a = loginWithEmailFragment;
    }

    public void afterTextChanged(Editable editable) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        LoadingButton loadingButton = (LoadingButton) this.f6705a.e(e.proceedBtn);
        j.a((Object) loadingButton, "proceedBtn");
        loadingButton.setEnabled(i.d(String.valueOf(charSequence)));
        this.f6705a.Ua();
    }
}
