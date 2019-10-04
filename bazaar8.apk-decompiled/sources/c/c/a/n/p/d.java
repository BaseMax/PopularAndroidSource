package c.c.a.n.p;

import android.text.Editable;
import android.text.TextWatcher;
import c.c.a.c.b.i;
import c.c.a.e;
import com.farsitel.bazaar.ui.login.RegisterFragment;
import com.farsitel.bazaar.widget.LoadingButton;

/* compiled from: RegisterFragment.kt */
public final class d implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RegisterFragment f6732a;

    public d(RegisterFragment registerFragment) {
        this.f6732a = registerFragment;
    }

    public void afterTextChanged(Editable editable) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        LoadingButton loadingButton = (LoadingButton) this.f6732a.e(e.proceedBtn);
        if (loadingButton != null) {
            loadingButton.setEnabled(i.e(String.valueOf(charSequence)));
        }
        this.f6732a.Za();
    }
}
