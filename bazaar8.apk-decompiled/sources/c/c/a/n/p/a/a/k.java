package c.c.a.n.p.a.a;

import android.view.KeyEvent;
import android.widget.TextView;
import c.c.a.e;
import com.farsitel.bazaar.ui.login.merge.account.VerifyEmailOtpFragment;
import com.farsitel.bazaar.widget.LoadingButton;
import h.f.b.j;

/* compiled from: VerifyEmailOtpFragment.kt */
final class k implements TextView.OnEditorActionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VerifyEmailOtpFragment f6716a;

    public k(VerifyEmailOtpFragment verifyEmailOtpFragment) {
        this.f6716a = verifyEmailOtpFragment;
    }

    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 6) {
            return false;
        }
        LoadingButton loadingButton = (LoadingButton) this.f6716a.e(e.proceedBtn);
        j.a((Object) loadingButton, "proceedBtn");
        if (!loadingButton.isEnabled()) {
            return false;
        }
        this.f6716a.Ua();
        return true;
    }
}
