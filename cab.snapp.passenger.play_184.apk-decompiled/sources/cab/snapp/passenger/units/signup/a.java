package cab.snapp.passenger.units.signup;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.f;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.i;
import cab.snapp.passenger.play.R;
import io.reactivex.e.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> implements i.a {

    /* renamed from: a  reason: collision with root package name */
    protected String f1258a;

    /* renamed from: b  reason: collision with root package name */
    protected String f1259b;
    protected i c;
    @Inject
    b d;
    @Inject
    d e;
    @Inject
    c f;
    private boolean g = false;

    public void requestSignUp(String str, String str2, String str3, boolean z) {
        if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
            this.f1258a = str2;
            this.f1259b = str3;
            c cVar = (c) getPresenter();
            if (cVar != null) {
                cVar.onBeforeRequest();
                addDisposable(this.e.signUp(str, str2, str3, z).subscribe(new g() {
                    public final void accept(Object obj) {
                        a.this.a((cab.snapp.snappnetwork.model.f) obj);
                    }
                }, new g() {
                    public final void accept(Object obj) {
                        a.this.a((Throwable) obj);
                    }
                }));
                return;
            }
            return;
        }
        ((c) getPresenter()).onNoInternetConnection();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null && (th instanceof e)) {
            e eVar = (e) th;
            if (eVar.getErrorCode() == 1001) {
                ((c) getPresenter()).onRequestError((int) R.string.duplicate_email);
                if (this.g && getRouter() != null) {
                    ((d) getRouter()).backToSplash();
                }
            } else if (eVar.getErrorCode() == 1046) {
                ((c) getPresenter()).onOnSignUpLimitExceeded();
            } else if (th.getMessage() != null) {
                ((c) getPresenter()).onRequestError(th.getMessage());
            } else {
                ((c) getPresenter()).onRequestError((int) R.string.error);
            }
        }
    }

    public void requestSignUpWithGoogle() {
        if (getPresenter() != null) {
            if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
                ((c) getPresenter()).onBeforeLoginWithGoogleRequest();
                i iVar = this.c;
                if (iVar != null) {
                    iVar.loginOrSignUpWithGoogle();
                }
                return;
            }
            ((c) getPresenter()).onNoInternetConnection();
        }
    }

    public void sendEmailToSnappSupportCenter(String str) {
        if (getActivity() != null) {
            try {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/html");
                intent.putExtra("android.intent.extra.EMAIL", new String[]{"care@snapp.cab"});
                intent.putExtra("android.intent.extra.SUBJECT", str);
                getActivity().startActivity(Intent.createChooser(intent, "Send Email"));
            } catch (ActivityNotFoundException e2) {
                e2.printStackTrace();
                com.a.a.a.logException(e2);
            }
        }
    }

    /* renamed from: onEmailGrantLoginSuccess */
    public void a(cab.snapp.snappnetwork.model.c cVar) {
        new cab.snapp.b.a(getActivity()).put("first_time_sign_up", Boolean.TRUE);
        this.f.reportEvent(c.e.SIGN_UP_WITH_EMAIL);
        if (!(cVar == null || cVar.getEmail() == null || cVar.getEmail().isEmpty())) {
            this.f.sendWithAttributesViaAdjust(c.a.SIGN_UP_WITH_EMAIL, cVar.getEmail(), null);
            this.f.sendWithAttributesViaAdjust(c.a.SIGN_UP_WITH_EMAIL_GHOST, cVar.getEmail(), null);
            this.f.sendWithAttributesViaAppmetrica(c.d.SIGN_UP, cVar.getEmail());
        }
        a();
    }

    public void onGoogleGrantLoginSuccess(cab.snapp.snappnetwork.model.c cVar) {
        cab.snapp.b.a aVar = new cab.snapp.b.a(getActivity());
        aVar.put("first_time_sign_up", Boolean.TRUE);
        if (cVar != null) {
            if (cVar.isNewUser()) {
                this.f.reportEvent(c.e.SIGN_UP_WITH_GOOGLE);
                if (cVar.getEmail() != null && !cVar.getEmail().isEmpty()) {
                    this.f.sendWithAttributesViaAdjust(c.a.SIGN_UP_WITH_GOOGLE, cVar.getEmail(), null);
                    this.f.sendWithAttributesViaAdjust(c.a.SIGN_UP_WITH_GOOGLE_GHOST, cVar.getEmail(), null);
                    this.f.sendWithAttributesViaAppmetrica(c.d.SIGN_UP, cVar.getEmail());
                }
            } else {
                aVar.put("HAS_SEEN_SKIPPABLE_PHONE_VERIFICATION_SHARED_PREF_KEY", Boolean.TRUE);
            }
        }
        a();
    }

    private void a() {
        if (getPresenter() != null) {
            ((c) getPresenter()).onRequestSuccess();
        }
        if (getRouter() != null) {
            ((d) getRouter()).backToSplash();
        }
    }

    public void onLoginError(Throwable th) {
        if (!(getPresenter() == null || getRouter() == null)) {
            if (!(th instanceof e) || ((e) th).getErrorCode() != 401) {
                ((c) getPresenter()).onRequestError(th.getMessage());
                ((d) getRouter()).backToSplash();
            } else {
                ((c) getPresenter()).onRequestError((int) R.string.view_login_google_error);
            }
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.c = new i(getController(), this, this.f);
            if (getPresenter() != null) {
                ((c) getPresenter()).setStatusBarColor();
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.f.reportScreenName("Signup Page");
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        i iVar = this.c;
        if (iVar != null) {
            iVar.onActivityResult(i, i2, intent);
        }
    }

    public void onGoogleTokenSucceed(String str) {
        addDisposable(this.e.loginWithGoogle(str).subscribe(new g() {
            public final void accept(Object obj) {
                a.this.onGoogleGrantLoginSuccess((cab.snapp.snappnetwork.model.c) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.onLoginError((Throwable) obj);
            }
        }));
    }

    public void onGoogleTokenError(String str) {
        if (getPresenter() != null) {
            ((c) getPresenter()).onRequestError();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(cab.snapp.snappnetwork.model.f fVar) throws Exception {
        this.g = true;
        addDisposable(this.e.loginWithEmail(this.f1258a, this.f1259b).subscribe(new g() {
            public final void accept(Object obj) {
                a.this.a((cab.snapp.snappnetwork.model.c) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.onLoginError((Throwable) obj);
            }
        }));
    }
}
