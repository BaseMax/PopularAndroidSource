package cab.snapp.passenger.units.profile;

import android.app.Activity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.a.b;
import cab.snapp.c.i;
import cab.snapp.passenger.data.models.ProfileMeta;
import cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.phone_verification.PhoneVerificationController;
import cab.snapp.snappdialog.b.d;
import cab.snapp.snappdialog.dialogViews.a.b;
import cab.snapp.snappuikit.b.a;
import java.util.ArrayList;
import org.eclipse.paho.a.a.w;

public final class c extends BasePresenter<ProfileView, a> {

    /* renamed from: a  reason: collision with root package name */
    String f1035a;

    /* renamed from: b  reason: collision with root package name */
    String f1036b;
    boolean c = false;
    String d;
    int e;
    int f;
    protected d g = new d() {
        public final void onSingleItemSelected(int i, String str) {
            ProfileView profileView = (ProfileView) c.this.getView();
            if (!(profileView == null || profileView.getContext() == null || str == null)) {
                c.this.f = cab.snapp.passenger.f.c.getCodeFromString(profileView.getContext(), str);
            }
        }
    };
    protected a h = new a() {
        public final boolean editTextClickable() {
            return false;
        }

        public final void onActionButtonCLicked() {
        }

        public final void onEditTextClicked() {
            c.this.onGenderClicked();
        }
    };
    String i;
    cab.snapp.snappdialog.c.a j;
    protected a k = new a() {
        public final boolean editTextClickable() {
            return false;
        }

        public final void onActionButtonCLicked() {
        }

        public final void onEditTextClicked() {
            c.this.onBirthdayClicked();
        }
    };
    String l;
    protected TextWatcher m = new TextWatcher() {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (charSequence != null) {
                c.this.l = charSequence.toString();
            }
        }
    };
    protected a n = new a() {
        public final boolean editTextClickable() {
            return false;
        }

        public final void onActionButtonCLicked() {
        }

        public final void onEditTextClicked() {
            c.this.onPhoneNumberClicked();
        }
    };
    protected TextWatcher o = new TextWatcher() {
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void afterTextChanged(Editable editable) {
            if (editable == null) {
                c.this.f1036b = null;
                return;
            }
            c.this.f1036b = editable.toString();
        }
    };
    protected a p = new a() {
        public final boolean editTextClickable() {
            return false;
        }

        public final void onActionButtonCLicked() {
            c cVar = c.this;
            if (cVar.getInteractor() != null) {
                ((a) cVar.getInteractor()).a();
            }
        }

        public final void onEditTextClicked() {
            c.this.onEmailClicked();
        }
    };
    String q;
    protected TextWatcher r = new TextWatcher() {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (charSequence != null) {
                c.this.q = charSequence.toString();
            }
        }
    };

    public final void onBeforeResendEmail() {
    }

    public final void onBeforeSendEmail() {
    }

    public final void onInitialize() {
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null) {
            profileView.setWatchers(this.r, this.m);
            setStatusBarColor();
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((ProfileView) getView()).getContext() instanceof Activity)) {
            cab.snapp.snappuikit.c.a.setStatusBarColorRes((Activity) ((ProfileView) getView()).getContext(), R.color.colorPrimary);
        }
    }

    public final void onProfileReady(ProfileResponse profileResponse) {
        if (profileResponse != null) {
            ProfileView profileView = (ProfileView) getView();
            if (profileView != null) {
                profileView.hideLoadingDialog();
                if (profileResponse.getFullname() != null) {
                    this.q = profileResponse.getFullname();
                    profileView.setNameText(this.q);
                }
                if (profileResponse.getEmail() != null) {
                    this.f1035a = profileResponse.getEmail();
                    profileView.setEmailText(this.f1035a);
                }
                if (profileResponse.getCellphone() != null) {
                    this.d = profileResponse.getCellphone();
                    profileView.setPhoneText(this.d);
                }
                ProfileMeta profileMeta = profileResponse.getProfileMeta();
                if (profileMeta != null) {
                    if (profileMeta.getGender() != null) {
                        this.e = profileMeta.getGender().intValue();
                        profileView.setGenderText(profileView.getContext().getString(cab.snapp.passenger.f.c.getResourceIdFromCode(this.e)));
                    }
                    if (profileMeta.getAddress() != null) {
                        this.l = profileMeta.getAddress();
                        profileView.setAddressText(this.l);
                    }
                    if (profileMeta.getBirthDate() != null) {
                        this.i = b.getDatePickerJalaliDate(profileMeta.getBirthDate());
                        a(this.i);
                    }
                }
                int emailVerified = profileResponse.getEmailVerified();
                if (emailVerified == -1 || emailVerified == 0) {
                    profileView.showNormalEmailEditText();
                    profileView.showResendEmailActionButton();
                } else if (emailVerified == 1) {
                    profileView.showApprovedEmailEditText();
                    profileView.hideResendEmailActionButton();
                }
                profileView.setPhoneEditTextListener(this.n);
                profileView.setEmailEditTextListener(this.p);
                profileView.setGenderEditTextListener(this.h);
                profileView.setBirthdayEditTextListener(this.k);
            }
        }
    }

    public final void onProfileError() {
        if (getView() != null) {
            ((ProfileView) getView()).hideLoadingDialog();
            ((ProfileView) getView()).showMessage(((ProfileView) this.view).getContext().getString(R.string.error), R.color.cherry);
        }
    }

    public final void onBeforeUpdateProfile() {
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null) {
            profileView.showLoadingDialog();
            cab.snapp.c.c.tryHideKeyboard(profileView.getContext(), profileView);
        }
    }

    public final void onUpdateProfileSuccessful() {
        a();
        if (getView() != null && ((ProfileView) getView()).getContext() != null) {
            ((ProfileView) getView()).showMessage(((ProfileView) this.view).getContext().getString(R.string.profile_updated), R.color.colorPrimary);
        }
    }

    public final void onUpdateProfileError() {
        a();
        ProfileView profileView = (ProfileView) getView();
        if (!(profileView == null || profileView.getContext() == null)) {
            profileView.showMessage(profileView.getContext().getString(R.string.error), R.color.cherry);
        }
    }

    public final void onUpdateProfileError(int i2) {
        a();
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null) {
            if (profileView.getContext() != null) {
                profileView.showMessage(profileView.getContext().getString(i2), R.color.cherry);
            } else {
                profileView.showMessage(profileView.getContext().getString(R.string.error), R.color.cherry);
            }
        }
    }

    public final void onSendEmailSuccess() {
        if (getView() != null && ((ProfileView) getView()).getContext() != null) {
            ((ProfileView) getView()).showMessageDialog(String.format(((ProfileView) this.view).getContext().getString(R.string.send_verification_link), new Object[]{this.f1036b}));
        }
    }

    public final void onSendEmailError(String str) {
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null && profileView.getContext() != null) {
            if (str == null) {
                profileView.showMessage(profileView.getContext().getString(R.string.error), R.color.cherry);
            } else {
                profileView.showErrorDialog(str);
            }
        }
    }

    public final void onResendEmailError(String str) {
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null && profileView.getContext() != null) {
            if (str == null) {
                profileView.showMessage(profileView.getContext().getString(R.string.error), R.color.cherry);
            } else {
                profileView.showErrorDialog(str);
            }
        }
    }

    public final void onResendEmailSuccess() {
        ProfileView profileView = (ProfileView) getView();
        if (!(profileView == null || profileView.getContext() == null)) {
            profileView.showMessageDialog(String.format(profileView.getContext().getString(R.string.send_verification_link), new Object[]{profileView.getContext().getString(R.string.your_self)}));
        }
    }

    public final void presentPhoneVerificationUnit(PhoneVerificationController phoneVerificationController, FragmentManager fragmentManager) {
        if (getView() != null) {
            ((ProfileView) getView()).showPhoneVerificationUnitAsDialog(phoneVerificationController, fragmentManager);
        }
    }

    public final void onNewPhoneVerified(String str) {
        this.d = str;
        if (getView() != null) {
            ((ProfileView) getView()).setPhoneText(str);
        }
    }

    public final void finishPresentingPhoneVerificationUnit() {
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null) {
            profileView.dismissPhoneVerificationUnitDialog();
        }
    }

    private void a() {
        this.c = false;
        ((ProfileView) this.view).hideLoadingDialog();
    }

    private void a(String str) {
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null) {
            profileView.setBirthdayText(g.changeNumbersBasedOnCurrentLocale(str));
        }
    }

    public final void onTickClicked() {
        if (!this.c) {
            String str = this.q;
            if (str == null || str.isEmpty()) {
                if (getView() != null) {
                    ((ProfileView) getView()).showMessage(R.string.fill_name_fname);
                }
                return;
            }
            this.c = true;
            if (getInteractor() != null) {
                ((a) getInteractor()).a(this.q, this.f1035a, this.d, this.l, this.e, this.i);
            }
        }
    }

    public final void onBackClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).finish();
        }
    }

    public final void onGenderClicked() {
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null && profileView.getContext() != null) {
            this.f = this.e;
            ArrayList arrayList = new ArrayList();
            arrayList.add(profileView.getContext().getString(R.string.gender_other));
            arrayList.add(profileView.getContext().getString(R.string.gender_male));
            arrayList.add(profileView.getContext().getString(R.string.gender_female));
            profileView.showGenderDialog(arrayList, this.g, new View.OnClickListener() {
                public final void onClick(View view) {
                    c.this.c(view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        onGenderConfirmed();
    }

    public final void onGenderConfirmed() {
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null) {
            profileView.dismissGenderDialog();
            this.e = this.f;
            if (profileView.getContext() != null) {
                profileView.setGenderText(profileView.getContext().getString(cab.snapp.passenger.f.c.getResourceIdFromCode(this.e)));
            }
        }
    }

    public final void onBirthdayClicked() {
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null) {
            profileView.showBirthdayDialog(new b.C0027b() {
                public final void onDateSelected(cab.snapp.snappdialog.c.a aVar) {
                    c.this.a(aVar);
                }
            }, new View.OnClickListener() {
                public final void onClick(View view) {
                    c.this.b(view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(cab.snapp.snappdialog.c.a aVar) {
        this.j = aVar;
    }

    public final void onEmailClicked() {
        if (getView() != null) {
            this.f1036b = "";
            ((ProfileView) getView()).showEmailEditDialog(this.o, new View.OnClickListener() {
                public final void onClick(View view) {
                    c.this.a(view);
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public final void a(View view) {
        ProfileView profileView = (ProfileView) getView();
        if (!(profileView == null || profileView.getContext() == null || getInteractor() == null)) {
            String str = this.f1036b;
            if (str == null || str.isEmpty()) {
                profileView.showMessage(profileView.getContext().getString(R.string.email_cant_be_empty), R.color.cherry);
            } else if (!i.isEmailValid(this.f1036b)) {
                profileView.showMessage(profileView.getContext().getString(R.string.view_sign_up_email_not_valid), R.color.cherry);
            } else {
                ((a) getInteractor()).a(this.f1036b);
                profileView.dismissEmailEditDialog();
            }
        }
    }

    public final void onPhoneNumberClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).onPhoneNumberClicked();
        }
    }

    public final void onGettingProfile() {
        if (getView() != null) {
            ((ProfileView) getView()).showLoadingDialog();
        }
    }

    public final void onPause() {
        if (getView() != null) {
            ((ProfileView) getView()).hideKeyboard();
        }
    }

    public final void showApWalletUnlinkWarning() {
        if (getView() != null) {
            ((ProfileView) getView()).showApWalletUnlinkWarningDialog();
        }
    }

    public final void confirmApWalletUnlink() {
        if (getInteractor() != null) {
            ((a) getInteractor()).confirmApWalletUnlink();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        ProfileView profileView = (ProfileView) getView();
        if (profileView != null) {
            profileView.dismissBirthdayDialog();
            if (this.j != null) {
                this.i = this.j.getYear() + w.TOPIC_LEVEL_SEPARATOR + this.j.getMonth() + w.TOPIC_LEVEL_SEPARATOR + this.j.getDay();
                a(this.i);
            }
        }
    }
}
