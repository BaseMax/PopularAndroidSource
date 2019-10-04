package c.c.a.n.p;

import android.text.Editable;
import android.text.TextWatcher;
import c.c.a.e;
import com.farsitel.bazaar.ui.login.VerifyOtpFragment;
import com.farsitel.bazaar.widget.LoadingButton;
import h.f.b.j;

/* compiled from: VerifyOtpFragment.kt */
public final class u implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VerifyOtpFragment f6758a;

    public u(VerifyOtpFragment verifyOtpFragment) {
        this.f6758a = verifyOtpFragment;
    }

    public void afterTextChanged(Editable editable) {
        this.f6758a._a();
        LoadingButton loadingButton = (LoadingButton) this.f6758a.e(e.proceedBtn);
        j.a((Object) loadingButton, "proceedBtn");
        loadingButton.setEnabled(!(editable == null || editable.length() == 0));
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }
}
