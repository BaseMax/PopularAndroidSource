package c.c.a.n.p.a.a;

import android.text.Editable;
import android.text.TextWatcher;
import c.c.a.e;
import com.farsitel.bazaar.ui.login.merge.account.VerifyEmailOtpFragment;
import com.farsitel.bazaar.widget.LoadingButton;
import h.f.b.j;

/* compiled from: VerifyEmailOtpFragment.kt */
public final class l implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VerifyEmailOtpFragment f6717a;

    public l(VerifyEmailOtpFragment verifyEmailOtpFragment) {
        this.f6717a = verifyEmailOtpFragment;
    }

    public void afterTextChanged(Editable editable) {
        this.f6717a.Ya();
        LoadingButton loadingButton = (LoadingButton) this.f6717a.e(e.proceedBtn);
        j.a((Object) loadingButton, "proceedBtn");
        loadingButton.setEnabled(!(editable == null || editable.length() == 0));
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }
}
