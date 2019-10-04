package cab.snapp.passenger.units.login.loginWithOTP;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.f;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.LoginByPhoneNumberResponse;
import cab.snapp.passenger.f.b.b.c;
import io.reactivex.e.g;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {

    /* renamed from: a  reason: collision with root package name */
    protected String f858a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    d f859b;
    @Inject
    c c;

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(LoginByPhoneNumberResponse loginByPhoneNumberResponse) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void b(Throwable th) throws Exception {
    }

    public void setPhoneNumber(String str) {
        this.f858a = str;
    }

    public void sendValidationCode(String str) throws UnsupportedEncodingException {
        if (str == null || str.isEmpty()) {
            if (getPresenter() != null) {
                ((c) getPresenter()).a((Throwable) null);
            }
            return;
        }
        if (getPresenter() != null) {
            c cVar = (c) getPresenter();
            if (cVar.getView() != null) {
                ((LoginWithOTPView) cVar.getView()).showLoadingDialog();
            }
        }
        addDisposable(this.f859b.loginWithPhoneToken(URLEncoder.encode(cab.snapp.c.d.convertPersianToEnglishNumbers(this.f858a), "UTF-8"), cab.snapp.c.d.convertPersianToEnglishNumbers(str)).subscribe(new g() {
            public final void accept(Object obj) {
                a.this.a((cab.snapp.snappnetwork.model.c) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.a((Throwable) obj);
            }
        }));
    }

    public void editPhoneNumber() {
        if (getRouter() != null) {
            ((d) getRouter()).navigateUp();
        }
    }

    public void resendSms() {
        a(false);
        if (this.f858a == null) {
            if (getRouter() != null) {
                ((d) getRouter()).navigateUp();
            }
        } else if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
            addDisposable(this.f859b.askTokenForPhoneNumber(cab.snapp.c.d.convertPersianToEnglishNumbers(this.f858a)).subscribe($$Lambda$a$ZRQoAVN2SV_6FNSJClck5TyzDCw.INSTANCE, $$Lambda$a$gu39FNRHi3A4uyna2fIZ_YbdN6g.INSTANCE));
        } else {
            ((c) getPresenter()).onNoInternetConnection();
        }
    }

    public void pressBack() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    /* access modifiers changed from: private */
    public void a(Throwable th) {
        if (getPresenter() != null) {
            ((c) getPresenter()).a(th);
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            a(true);
            this.c.reportScreenName("");
        }
    }

    private void a(boolean z) {
        if (getArguments() != null && getArguments().containsKey(LoginWithOTPController.ARGS_PHONE_NUMBER)) {
            this.f858a = getArguments().getString(LoginWithOTPController.ARGS_PHONE_NUMBER);
        }
        if (getPresenter() != null) {
            ((c) getPresenter()).onInitialize(this.f858a, z);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(cab.snapp.snappnetwork.model.c cVar) throws Exception {
        if (getPresenter() != null) {
            c cVar2 = (c) getPresenter();
            if (cVar2.getView() != null) {
                ((LoginWithOTPView) cVar2.getView()).hideLoadingDialog();
            }
        }
        if (getRouter() != null) {
            ((d) getRouter()).backToSplash();
        }
    }
}
