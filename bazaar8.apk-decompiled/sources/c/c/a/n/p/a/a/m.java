package c.c.a.n.p.a.a;

import android.os.CountDownTimer;
import androidx.appcompat.widget.AppCompatTextView;
import c.c.a.c.b.f;
import c.c.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.login.merge.account.VerifyEmailOtpFragment;

/* compiled from: VerifyEmailOtpFragment.kt */
public final class m extends CountDownTimer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VerifyEmailOtpFragment f6718a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public m(VerifyEmailOtpFragment verifyEmailOtpFragment, long j2, long j3) {
        super(j2, j3);
        this.f6718a = verifyEmailOtpFragment;
    }

    public void onFinish() {
        this.f6718a.Sa();
    }

    public void onTick(long j2) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) this.f6718a.e(e.resendCodeButton);
        if (appCompatTextView != null) {
            appCompatTextView.setText(this.f6718a.a((int) R.string.resend_after, f.b(j2)));
        }
    }
}
