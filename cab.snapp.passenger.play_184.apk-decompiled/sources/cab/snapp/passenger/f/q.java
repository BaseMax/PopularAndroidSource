package cab.snapp.passenger.f;

import cab.snapp.passenger.data_access_layer.a.d;
import io.reactivex.z;

public final class q {

    /* renamed from: a  reason: collision with root package name */
    private d f588a;

    public q(d dVar) {
        this.f588a = dVar;
    }

    public final z<Boolean> requestConfirmationCodeByPhoneCall(String str) {
        return this.f588a.requestConfirmationCodeByPhoneCall(str).map($$Lambda$q$wSu2ZVHk_flhDhfPfKCM_jwAdSU.INSTANCE);
    }

    public final z<Boolean> requestConfirmationCodeBySms(String str) {
        return this.f588a.requestConfirmationCodeBySms(str).map($$Lambda$q$nKL_Ysq42QG2qt4XggkR1Narz9E.INSTANCE);
    }

    public final z<Boolean> requestConfirm(String str) {
        return this.f588a.verifyPhoneNumber(str).map($$Lambda$q$ZNercSAXgFT7GdF3fG8yhMHj0aA.INSTANCE);
    }
}
