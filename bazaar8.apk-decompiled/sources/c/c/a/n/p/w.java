package c.c.a.n.p;

import android.os.CountDownTimer;
import androidx.appcompat.widget.AppCompatTextView;
import c.c.a.c.b.f;
import c.c.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.login.VerifyOtpFragment;
import h.f.b.j;

/* compiled from: VerifyOtpFragment.kt */
public final class w extends CountDownTimer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VerifyOtpFragment f6760a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public w(VerifyOtpFragment verifyOtpFragment, long j2, long j3) {
        super(j2, j3);
        this.f6760a = verifyOtpFragment;
    }

    public void onFinish() {
        this.f6760a.Ua();
    }

    public void onTick(long j2) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) this.f6760a.e(e.resendCodeButton);
        j.a((Object) appCompatTextView, "resendCodeButton");
        appCompatTextView.setText(this.f6760a.a((int) R.string.resend_after, f.b(j2)));
    }
}
