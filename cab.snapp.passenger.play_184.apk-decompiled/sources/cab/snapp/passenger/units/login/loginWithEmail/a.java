package cab.snapp.passenger.units.login.loginWithEmail;

import android.content.Intent;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.f;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.i;
import cab.snapp.passenger.play.R;
import io.reactivex.e.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> implements i.a {

    /* renamed from: a  reason: collision with root package name */
    i f839a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    d f840b;
    @Inject
    c c;
    @Inject
    cab.snapp.authenticator.c d;

    /* access modifiers changed from: package-private */
    public final void a(String str, String str2) {
        if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
            if (getPresenter() != null) {
                ((c) getPresenter()).onLoading();
            }
            addDisposable(this.f840b.loginWithEmail(str, str2).subscribe(new g() {
                public final void accept(Object obj) {
                    a.this.b((cab.snapp.snappnetwork.model.c) obj);
                }
            }, new g() {
                public final void accept(Object obj) {
                    a.this.a((Throwable) obj);
                }
            }));
            return;
        }
        ((c) getPresenter()).onNoInternetConnection();
    }

    public void sendRegisterEmail(String str) {
        addDisposable(this.f840b.sendEmailForVerificationBeforeLogin(str).subscribe(new g() {
            public final void accept(Object obj) {
                a.this.a((cab.snapp.snappnetwork.model.f) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.c((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(cab.snapp.snappnetwork.model.f fVar) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onRegisterEmailSuccess();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onRegisterEmailError(th.getMessage());
        }
    }

    /* access modifiers changed from: private */
    public void a(Throwable th) {
        if (getPresenter() != null) {
            ((c) getPresenter()).onFinishLoading();
        }
        if (!this.d.isUserAuthorized() || getRouter() == null) {
            if (getPresenter() != null && (th instanceof e)) {
                int errorCode = ((e) th).getErrorCode();
                if (errorCode == 401) {
                    ((c) getPresenter()).showLoginErrorToUser((int) R.string.email_or_password_is_wrong);
                    return;
                } else if (errorCode == 1014) {
                    ((c) getPresenter()).onEmailNotVerified();
                    return;
                } else {
                    ((c) getPresenter()).showLoginErrorToUser(th.getMessage());
                }
            }
            return;
        }
        ((d) getRouter()).backToSplash();
    }

    private void a() {
        if (getPresenter() != null) {
            ((c) getPresenter()).onFinishLoading();
        }
        if (getRouter() != null) {
            ((d) getRouter()).backToSplash();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getController() != null) {
                this.f839a = new i(getController(), this, this.c);
            }
            this.c.reportScreenName("");
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        if (getPresenter() != null) {
            ((c) getPresenter()).onInitialize();
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (getPresenter() != null) {
            ((c) getPresenter()).onLoading();
        }
        i iVar = this.f839a;
        if (iVar != null) {
            iVar.onActivityResult(i, i2, intent);
        }
    }

    public void onGoogleTokenSucceed(String str) {
        if (getPresenter() != null) {
            ((c) getPresenter()).onFinishLoading();
        }
        addDisposable(this.f840b.loginWithGoogle(str).subscribe(new g() {
            public final void accept(Object obj) {
                a.this.a((cab.snapp.snappnetwork.model.c) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.b((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        if (getPresenter() == null || !(th instanceof e) || ((e) th).getErrorCode() != 401) {
            a(th);
        } else {
            ((c) getPresenter()).showLoginErrorToUser((int) R.string.view_login_google_error);
        }
    }

    public void onGoogleTokenError(String str) {
        if (getPresenter() != null) {
            ((c) getPresenter()).onFinishLoading();
            ((c) getPresenter()).showLoginErrorToUser((int) R.string.error);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(cab.snapp.snappnetwork.model.c cVar) throws Exception {
        if (cVar != null && cVar.isNewUser()) {
            this.c.reportEvent(c.e.SIGN_UP_WITH_GOOGLE);
            if (cVar.getEmail() != null && !cVar.getEmail().isEmpty()) {
                this.c.sendWithAttributesViaAdjust(c.a.SIGN_UP_WITH_GOOGLE, cVar.getEmail(), null);
                this.c.sendWithAttributesViaAdjust(c.a.SIGN_UP_WITH_GOOGLE_GHOST, cVar.getEmail(), null);
            }
        }
        a();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(cab.snapp.snappnetwork.model.c cVar) throws Exception {
        a();
    }
}
