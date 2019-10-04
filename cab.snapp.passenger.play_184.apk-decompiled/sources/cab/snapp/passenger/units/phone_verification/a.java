package cab.snapp.passenger.units.phone_verification;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.q;
import io.reactivex.e.g;
import java.util.UUID;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    private static final String d = UUID.randomUUID().toString();

    /* renamed from: a  reason: collision with root package name */
    protected q f1019a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    d f1020b;
    @Inject
    c c;
    private String e;

    public static String getPrivateChanelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(d);
    }

    public void requestSendCodeByCall(String str) {
        if (str != null) {
            this.e = str;
            addDisposable(this.f1019a.requestConfirmationCodeByPhoneCall(str).subscribe(new g() {
                public final void accept(Object obj) {
                    a.this.c((Boolean) obj);
                }
            }, new g() {
                public final void accept(Object obj) {
                    a.this.c((Throwable) obj);
                }
            }));
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(Boolean bool) throws Exception {
        this.c.reportEvent(c.e.SEND_MOBILE_NUMBER);
        this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_REGISTER_PHONE_NUMBER, "[successful]");
        if (getPresenter() != null) {
            ((c) getPresenter()).onSendCodeBySmsSuccess();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(Throwable th) throws Exception {
        if (getPresenter() != null && (th instanceof e)) {
            e eVar = (e) th;
            if (eVar.getErrorCode() == 1078) {
                ((c) getPresenter()).onDailyLimitForCallExceeded();
            } else if (eVar.getErrorCode() == 1035) {
                ((c) getPresenter()).onUserIsBlocked(th.getMessage());
            } else {
                ((c) getPresenter()).onSendCodeBySmsError();
            }
        }
    }

    public void requestSendCodeBySms(String str) {
        if (str != null) {
            this.e = str;
            addDisposable(this.f1019a.requestConfirmationCodeBySms(str).subscribe(new g() {
                public final void accept(Object obj) {
                    a.this.b((Boolean) obj);
                }
            }, new g() {
                public final void accept(Object obj) {
                    a.this.b((Throwable) obj);
                }
            }));
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Boolean bool) throws Exception {
        this.c.reportEvent(c.e.SEND_MOBILE_NUMBER);
        if (getPresenter() != null) {
            ((c) getPresenter()).onSendCodeBySmsSuccess();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        if (getPresenter() != null && (th instanceof e)) {
            e eVar = (e) th;
            if (eVar.getErrorCode() == 1030) {
                ((c) getPresenter()).onDailyLimitForSmsExceeded();
            } else if (eVar.getErrorCode() == 1035) {
                ((c) getPresenter()).onUserIsBlocked(th.getMessage());
            } else {
                ((c) getPresenter()).onSendCodeBySmsError();
            }
        }
    }

    public void requestVerifyPhoneNumberForEdit(String str) {
        addDisposable(this.f1019a.requestConfirm(str).subscribe(new g() {
            public final void accept(Object obj) {
                a.this.a((Boolean) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.a((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Boolean bool) throws Exception {
        this.c.reportEvent(c.e.CONFIRM_MOBILE_NUMBER);
        if (getPresenter() != null) {
            ((c) getPresenter()).onPhoneVerifySuccess();
        }
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getPrivateChanelId(), this.e);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null && (th instanceof e)) {
            if (((e) th).getErrorCode() == 1012) {
                ((c) getPresenter()).onCodeIsWrong();
                return;
            }
            ((c) getPresenter()).onPhoneVerifyError();
        }
    }

    public void finish() {
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getPrivateChanelId(), "");
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.f1019a = new q(this.f1020b);
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize();
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.c.reportScreenName("Phone verification Page");
    }
}
