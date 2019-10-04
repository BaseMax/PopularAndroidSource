package c.c.a.n.p;

import android.view.KeyEvent;
import android.widget.TextView;
import c.c.a.e;
import com.farsitel.bazaar.ui.login.VerifyOtpFragment;
import com.farsitel.bazaar.widget.LoadingButton;

/* compiled from: VerifyOtpFragment.kt */
final class t implements TextView.OnEditorActionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VerifyOtpFragment f6757a;

    public t(VerifyOtpFragment verifyOtpFragment) {
        this.f6757a = verifyOtpFragment;
    }

    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 6) {
            return false;
        }
        LoadingButton loadingButton = (LoadingButton) this.f6757a.e(e.proceedBtn);
        if (loadingButton == null || !loadingButton.isEnabled()) {
            return false;
        }
        this.f6757a.k(false);
        return true;
    }
}
