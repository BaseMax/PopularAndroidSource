package cab.snapp.passenger.units.login.loginWithPhoneNumber;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.f;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.LoginByPhoneNumberResponse;
import cab.snapp.passenger.f.b.b.c;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    d f872a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f873b;

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(LoginByPhoneNumberResponse loginByPhoneNumberResponse) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(Throwable th) throws Exception {
    }

    /* access modifiers changed from: package-private */
    public final void a(String str) {
        if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
            this.f872a.askTokenForPhoneNumber(cab.snapp.c.d.convertPersianToEnglishNumbers(str)).subscribe($$Lambda$a$8fns20EXZJbggTmOPpvjQbgmKuY.INSTANCE, $$Lambda$a$CL1zJjCQ8WCyYLFXZzAyMXGbGvY.INSTANCE);
            if (getRouter() != null) {
                ((d) getRouter()).routeToLoginWithOTP(str);
            }
            return;
        }
        ((c) getPresenter()).onNoInternetConnection();
    }

    public void pressBack() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.f873b.reportScreenName("");
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize();
            }
        }
    }
}
