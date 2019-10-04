package cab.snapp.passenger.units.skippable_mobile_verification;

import android.os.Handler;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.q;
import io.reactivex.e.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f1278a;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f1279b;
    @Inject
    d c;
    @Inject
    cab.snapp.passenger.data_access_layer.a.d d;
    @Inject
    c e;
    private q f;

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getPresenter() != null) {
                ((c) getPresenter()).initialize();
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.e.reportScreenName("skipable mobile verification");
    }

    public void onApplicationRootBackPressed() {
        skip();
    }

    /* access modifiers changed from: protected */
    public void a() {
        if (getRouter() != null) {
            ((d) getRouter()).goToMainController();
        }
    }

    public void requestGiveMeVerificationCode(String str) {
        if (getPresenter() != null && !this.f1278a) {
            this.f1278a = true;
            ((c) getPresenter()).onBeforeSendMeVerificationCode();
            this.f = new q(this.d);
            addDisposable(this.f.requestConfirmationCodeBySms(str).subscribe(new g() {
                public final void accept(Object obj) {
                    a.this.b((Boolean) obj);
                }
            }, new g() {
                public final void accept(Object obj) {
                    a.this.a((Throwable) obj);
                }
            }));
        }
    }

    /* access modifiers changed from: private */
    public void a(Throwable th) {
        this.f1278a = false;
        if (getPresenter() != null && (th instanceof e)) {
            e eVar = (e) th;
            if (eVar.getErrorCode() == 1030) {
                ((c) getPresenter()).onDailyLimitSucceeded();
            } else if (eVar.getErrorCode() == 1035) {
                ((c) getPresenter()).onUserIsBlocked(eVar.getMessage());
            } else {
                ((c) getPresenter()).onSendMeVerificationCodeError();
            }
        }
    }

    /* access modifiers changed from: private */
    public void b(Boolean bool) {
        this.e.reportEvent(c.e.SEND_MOBILE_NUMBER);
        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_REGISTER_PHONE_NUMBER, "[successful]");
        this.f1278a = false;
        if (getPresenter() != null) {
            ((c) getPresenter()).onSendMeVerificationCodeSuccessful();
        }
    }

    public void requestVerify(String str) {
        if (getPresenter() != null && !this.f1279b) {
            this.f1279b = true;
            ((c) getPresenter()).onBeforeVerify();
            this.f = new q(this.d);
            addDisposable(this.f.requestConfirm(str).subscribe(new g() {
                public final void accept(Object obj) {
                    a.this.a((Boolean) obj);
                }
            }, new g() {
                public final void accept(Object obj) {
                    a.this.b((Throwable) obj);
                }
            }));
        }
    }

    /* access modifiers changed from: private */
    public void b(Throwable th) {
        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.TOAST_CONFIRMATION_CODE_IS_WRONG, "[show]");
        this.f1279b = false;
        if (getPresenter() != null) {
            if (!(th instanceof e) || ((e) th).getErrorCode() != 1012) {
                ((c) getPresenter()).onVerifyError();
            } else {
                ((c) getPresenter()).onCodeIsInvalid();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Boolean bool) {
        this.e.reportEvent(c.e.CONFIRM_MOBILE_NUMBER);
        this.f1279b = false;
        if (getPresenter() != null) {
            ((c) getPresenter()).onVerifySuccessful();
        }
        a();
    }

    public void skip() {
        if (getPresenter() != null) {
            ((c) getPresenter()).finish();
        }
        new Handler().postDelayed(new Runnable() {
            public final void run() {
                a.this.a();
            }
        }, 300);
    }
}
