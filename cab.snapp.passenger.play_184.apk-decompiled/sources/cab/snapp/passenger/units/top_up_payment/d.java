package cab.snapp.passenger.units.top_up_payment;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.data.models.PaymentTexts;

public final class d extends BasePresenter<TopUpPaymentView, b> {

    /* renamed from: a  reason: collision with root package name */
    boolean f1383a;

    public final void onApWalletRetryClicked() {
        if (getInteractor() != null) {
            ((b) getInteractor()).onApWalletRetryRequested();
        }
    }

    public final void setAmountTo200000RialRequested() {
        if (getInteractor() != null) {
            ((b) getInteractor()).chargeAmountSelected(200000);
        }
    }

    public final void setAmountTo100000RialRequested() {
        if (getInteractor() != null) {
            ((b) getInteractor()).chargeAmountSelected(100000);
        }
    }

    public final void updateUiAccordingToConsideringChargeAmount(String str) {
        if (getView() != null) {
            if (str == null || str.trim().toLowerCase().equals("0")) {
                ((TopUpPaymentView) getView()).updateAmount("0");
            } else {
                ((TopUpPaymentView) getView()).updateAmount(str);
            }
        }
    }

    public final void incrementByFixedAmountRequested() {
        if (getInteractor() != null) {
            ((b) getInteractor()).increaseChargeByFixedAmount();
        }
    }

    public final void decrementByFixedAmountRequested() {
        if (getInteractor() != null) {
            ((b) getInteractor()).decreaseChargeByFixedAmount();
        }
    }

    public final void payRequested() {
        if (getInteractor() != null) {
            ((b) getInteractor()).chargeUserForConsideringAmount();
        }
    }

    public final void apWalletActivationRequested() {
        if (getInteractor() != null) {
            ((b) getInteractor()).apWalletActivationRequested();
        }
    }

    public final void showNoInternet() {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).showNoInternetDialog();
        }
    }

    public final void onPaymentError(String str, boolean z) {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).hideLoading();
            if (z) {
                ((TopUpPaymentView) getView()).showToast(str);
            } else {
                ((TopUpPaymentView) getView()).showErrorDialog(str);
            }
        }
    }

    public final void showLoading() {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).showLoading();
        }
    }

    public final void hideLoading() {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).hideLoading();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (getInteractor() != null) {
            ((b) getInteractor()).setActiveMethod(1004);
        }
    }

    public final void setActiveMethodToBankCard() {
        if (getInteractor() != null) {
            ((b) getInteractor()).setActiveMethod(1001);
        }
    }

    public final void setActiveMethodToUssd() {
        if (getInteractor() != null) {
            ((b) getInteractor()).setActiveMethod(1002);
        }
    }

    public final void setActiveMethodToSnappCard() {
        if (getInteractor() != null) {
            ((b) getInteractor()).setActiveMethod(1003);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(String str) {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).setSnappCardCode(str);
        }
    }

    public final void setCurrentCredit(long j, Long l, int i) {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).setCredit(j, l);
            if (i == 1004) {
                ((TopUpPaymentView) getView()).setCurrentCreditAmount(l);
                return;
            }
            ((TopUpPaymentView) getView()).setCurrentCreditAmount(Long.valueOf(j));
        }
    }

    /* access modifiers changed from: package-private */
    public final Number b() {
        if (getView() == null) {
            return -1;
        }
        return ((TopUpPaymentView) getView()).getViewCurrentAmount();
    }

    /* access modifiers changed from: package-private */
    public final String c() {
        if (getView() == null) {
            return "";
        }
        return ((TopUpPaymentView) getView()).getCurrentStringValue();
    }

    /* access modifiers changed from: package-private */
    public final void a(int i) {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).showToast(i);
        }
    }

    public final void onInitialize(PaymentTexts paymentTexts, boolean z, boolean z2, boolean z3) {
        if (getView() != null) {
            int i = 0;
            ((TopUpPaymentView) getView()).decreaseByFixedAmountButton.setClickable(false);
            ((TopUpPaymentView) getView()).initMainKeyboardStateListener(new View.OnFocusChangeListener() {
                public final void onFocusChange(View view, boolean z) {
                    d.this.b(view, z);
                }
            });
            ((TopUpPaymentView) getView()).initSnappCardKeyboardStateListener(new View.OnFocusChangeListener() {
                public final void onFocusChange(View view, boolean z) {
                    d.this.a(view, z);
                }
            });
            if (paymentTexts != null) {
                ((TopUpPaymentView) getView()).setSnappCardTitle(paymentTexts.getSnappCardTitle());
                ((TopUpPaymentView) getView()).setApWalletTitle(paymentTexts.getApWalletTitle());
                ((TopUpPaymentView) getView()).setOnlinePaymentTitle(paymentTexts.getOnlinePaymentTitle());
                ((TopUpPaymentView) getView()).setApWalletRegistrationContents(paymentTexts.getAppWalletRegistrationContent(), paymentTexts.getAppWalletRegistrationLink());
            }
            if (z) {
                ((TopUpPaymentView) getView()).showApWalletTab();
            } else {
                ((TopUpPaymentView) getView()).hideApWalletTab();
            }
            if (z2) {
                ((TopUpPaymentView) getView()).showOnlinePayTab();
            } else {
                ((TopUpPaymentView) getView()).hideOnlinePayTab();
            }
            if (z3) {
                ((TopUpPaymentView) getView()).showUssdMethodTab();
            } else {
                ((TopUpPaymentView) getView()).hideUssdMethodTab();
            }
            if (!z) {
                i = z2 ? 1 : z3 ? 2 : 3;
            }
            ((TopUpPaymentView) getView()).changeTab(i);
            if (i == 1) {
                setActiveMethodToBankCard();
            } else if (i == 2) {
                setActiveMethodToUssd();
            } else if (i != 3) {
                a();
            } else {
                setActiveMethodToSnappCard();
            }
            ((TopUpPaymentView) getView()).initTextWatcher(new TextWatcher() {
                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void afterTextChanged(Editable editable) {
                    if (editable == null || editable.toString().isEmpty()) {
                        if (d.this.getInteractor() != null) {
                            ((b) d.this.getInteractor()).resetChargeAmount();
                        }
                        if (d.this.getView() != null) {
                            ((TopUpPaymentView) d.this.getView()).setAmountToChargeEtSelection(0);
                            return;
                        }
                        return;
                    }
                    if (d.this.getInteractor() != null) {
                        ((b) d.this.getInteractor()).chargeAmountEnteredByUser(editable.toString());
                    }
                    if (d.this.getView() != null) {
                        ((TopUpPaymentView) d.this.getView()).setAmountToChargeEtSelection(Math.min(editable.toString().length(), ((TopUpPaymentView) d.this.getView()).getAmountToChargeEtMaxLength()));
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view, boolean z) {
        this.f1383a = z;
        if (getInteractor() != null) {
            ((b) getInteractor()).reportTopUpModalShowCloseToAppMetrica(z);
            ((b) getInteractor()).reportTabShetabCardsExtendToAppMetrica(z);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view, boolean z) {
        if (z && getInteractor() != null) {
            ((b) getInteractor()).reportTabSnappCardInput();
        }
    }

    public final void setKeyboardIsShowing(boolean z) {
        this.f1383a = z;
    }

    public final void onUssdAvailable() {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).showUssdMethodTab();
        }
    }

    public final void onUssdUnavailable() {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).hideUssdMethodTab();
        }
    }

    public final void clearAmount() {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).updateAmount("0");
        }
    }

    public final void onApWalletDescriptionMoreInfoClicked(String str) {
        if (getInteractor() != null) {
            ((b) getInteractor()).onApWalletDescriptionMoreInfoClicked(str);
        }
    }

    public final void setAppWalletRegistered(int i) {
        if (getView() != null) {
            ((TopUpPaymentView) getView()).setApWalletRegistered(i);
        }
    }

    public final void switchToTabBasedOnDefaultWallet(int i) {
        if (i == 1) {
            ((TopUpPaymentView) getView()).onBankCardTabClicked();
        } else if (i == 2) {
            ((TopUpPaymentView) getView()).onApWalletTabClicked();
        }
    }
}
