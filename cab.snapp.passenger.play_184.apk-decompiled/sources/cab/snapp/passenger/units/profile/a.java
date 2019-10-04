package cab.snapp.passenger.units.profile;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.data.models.Profile;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.data_access_layer.network.responses.CreditResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RegisterEmailResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.phone_verification.PhoneVerificationController;
import io.reactivex.e.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    f f1031a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f1032b;
    private CreditResponse c;

    /* access modifiers changed from: private */
    public static /* synthetic */ void d(Throwable th) throws Exception {
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ProfileResponse profileResponse) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onProfileReady(profileResponse);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void e(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onProfileError();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(CreditResponse creditResponse) throws Exception {
        this.c = creditResponse;
    }

    /* access modifiers changed from: package-private */
    public final void a(String str, String str2, String str3, String str4, int i, String str5) {
        Profile profile = new Profile();
        profile.setName(str);
        profile.setEmail(str2);
        profile.setPhone(str3);
        profile.setAddress(str4);
        profile.setGender(Integer.valueOf(i));
        profile.setBirthday(str5);
        if (getPresenter() != null) {
            ((c) getPresenter()).onBeforeUpdateProfile();
        }
        addDisposable(this.f1031a.saveChanges(profile).subscribe(new g() {
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
        this.f1032b.reportEvent(c.e.SAVE_PROFILE);
        if (getPresenter() != null) {
            ((c) getPresenter()).onUpdateProfileSuccessful();
        }
        finish();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(Throwable th) throws Exception {
        if (getPresenter() != null) {
            if (!(th instanceof e) || ((e) th).getErrorCode() != 1021) {
                ((c) getPresenter()).onUpdateProfileError();
            } else {
                ((c) getPresenter()).onUpdateProfileError(R.string.password_is_not_ok);
            }
        }
    }

    public void onPhoneNumberClicked() {
        if (getPresenter() != null) {
            CreditResponse creditResponse = this.c;
            if (creditResponse == null || creditResponse.getApWalletRegistrationStatus() != 0) {
                ((c) getPresenter()).showApWalletUnlinkWarning();
            } else {
                startPhoneVerificationProcedure();
            }
        }
    }

    public void startPhoneVerificationProcedure() {
        if (getPresenter() != null && getController() != null) {
            ((c) getPresenter()).presentPhoneVerificationUnit(new PhoneVerificationController(), getController().getChildFragmentManager());
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(String str) {
        if (getPresenter() != null) {
            ((c) getPresenter()).onBeforeSendEmail();
        }
        addDisposable(this.f1031a.sendRegistrationEmail(str).subscribe(new g() {
            public final void accept(Object obj) {
                a.this.b((RegisterEmailResponse) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.b((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(RegisterEmailResponse registerEmailResponse) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onSendEmailSuccess();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onSendEmailError(th.getMessage());
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (getPresenter() != null) {
            ((c) getPresenter()).onBeforeResendEmail();
        }
        addDisposable(this.f1031a.resendRegistrationEmail().subscribe(new g() {
            public final void accept(Object obj) {
                a.this.a((RegisterEmailResponse) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.a((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(RegisterEmailResponse registerEmailResponse) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onResendEmailSuccess();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onResendEmailError(th.getMessage());
        }
    }

    /* access modifiers changed from: private */
    public void b(String str) {
        if (getPresenter() != null) {
            if (!str.isEmpty()) {
                ((c) getPresenter()).onNewPhoneVerified(str);
            }
            ((c) getPresenter()).finishPresentingPhoneVerificationUnit();
        }
    }

    public void finish() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize();
                ((c) getPresenter()).onGettingProfile();
            }
            addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(cab.snapp.passenger.units.phone_verification.a.getPrivateChanelId(), new g() {
                public final void accept(Object obj) {
                    a.this.b((String) obj);
                }
            }));
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.f1032b.reportScreenName("Edit Profile Page");
        addDisposable(this.f1031a.fetchAndRefreshProfile().subscribe(new g() {
            public final void accept(Object obj) {
                a.this.a((ProfileResponse) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                a.this.e((Throwable) obj);
            }
        }));
        this.c = this.f1031a.getCredit();
        if (this.c == null) {
            addDisposable(this.f1031a.fetchAndRefreshCredit(CreditRequest.PLACE.SIDE_MENU_TOPUP).subscribe(new g() {
                public final void accept(Object obj) {
                    a.this.a((CreditResponse) obj);
                }
            }, $$Lambda$a$hsrg6LbxnUb9qfkyVjbJQb8.INSTANCE));
        }
    }

    public void onUnitPause() {
        super.onUnitPause();
        if (getPresenter() != null) {
            ((c) getPresenter()).onPause();
        }
    }

    public void confirmApWalletUnlink() {
        startPhoneVerificationProcedure();
    }
}
