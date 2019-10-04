package cab.snapp.passenger.units.payment;

import android.content.Context;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.j;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.SnappUssd;
import cab.snapp.passenger.data_access_layer.network.responses.ApReceipt;
import cab.snapp.passenger.data_access_layer.network.responses.PaymentType;
import cab.snapp.passenger.data_access_layer.network.responses.RideReceiptResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import io.reactivex.b.b;
import io.reactivex.j.a;
import java.util.List;
import javax.inject.Inject;

public final class c extends BasePresenter<PaymentView, a> {
    public final int STEP = 100000;

    /* renamed from: a  reason: collision with root package name */
    String f1009a;
    public double amountToChargeOnline = 0.0d;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    cab.snapp.passenger.f.b.b.c f1010b;
    b c = new b();
    private double d;
    private SnappUssd e;
    private ApReceipt f;

    public final int getPaymentTypeText(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 5 ? R.string.pay : R.string.ap_wallet_payment : R.string.online_payment : R.string.ussd_payment : R.string.will_pay__in_cash;
    }

    public final void onPayError(int i) {
        if (getView() != null) {
            ((PaymentView) getView()).showErrorToast(i);
            ((PaymentView) getView()).hidePayLoading();
        }
    }

    public final void onPayError(String str) {
        if (getView() != null) {
            ((PaymentView) getView()).showErrorToast(str);
            ((PaymentView) getView()).hidePayLoading();
        }
    }

    public final void setCurrentRideCost(Double d2) {
        if (getView() != null && ((PaymentView) getView()).getContext() != null && d2 != null) {
            String string = ((PaymentView) getView()).getContext().getResources().getString(R.string.rial);
            ((PaymentView) getView()).setRideCostText(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(d2) + " " + string));
        }
    }

    public final void setCurrentCredit(Double d2) {
        if (getView() != null && ((PaymentView) getView()).getContext() != null && d2 != null) {
            String string = ((PaymentView) getView()).getContext().getResources().getString(R.string.rial);
            ((PaymentView) getView()).setCurrentCreditText(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(d2) + " " + string));
        }
    }

    public final void onCashPaymentSuccessful() {
        if (getView() != null) {
            ((PaymentView) getView()).hidePayLoading();
        }
        a(0, false);
    }

    public final void onBeforeCashPaymentRequest() {
        if (getView() != null) {
            ((PaymentView) getView()).showPayLoading();
            ((PaymentView) getView()).hideIncreaseAndDecreaseLayout();
        }
    }

    public final void increaseAmountOfRequestingChargeClicked() {
        this.f1010b.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Increase online charge click");
        this.f1010b.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_PLUS_SIGN, "[tap]");
        if (getView() != null && getInteractor() != null) {
            this.amountToChargeOnline += 100000.0d;
            a();
            decideToShowDecreaseButton();
        }
    }

    public final void decreaseAmountOfRequestingChargeClicked() {
        this.f1010b.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Decrease online charge click");
        this.f1010b.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_MINUS_SIGN, "[tap]");
        if (getView() != null && getInteractor() != null) {
            if (this.amountToChargeOnline - 100000.0d >= ((a) getInteractor()).getMinAmountOfAcceptableCharge()) {
                this.amountToChargeOnline -= 100000.0d;
                a();
            }
            decideToShowDecreaseButton();
        }
    }

    public final void decideToShowDecreaseButton() {
        if (this.amountToChargeOnline - 100000.0d >= ((a) getInteractor()).getMinAmountOfAcceptableCharge() || getView() == null) {
            ((PaymentView) getView()).showDecreaseButton();
        } else {
            ((PaymentView) getView()).hideDecreaseButton();
        }
    }

    private void a(int i, boolean z) {
        if (!(getInteractor() == null || ((a) getInteractor()).getRideReceiptResponse() == null || getView() == null || ((PaymentView) getView()).getContext() == null)) {
            if (i == 5) {
                if (!z) {
                    ((PaymentView) getView()).showApWalletActivationLayout();
                    return;
                }
                int status = this.f.getStatus();
                if (status == 0) {
                    ((PaymentView) getView()).showRideCostLayout();
                    ((PaymentView) getView()).showCurrentCreditLayout();
                    ((PaymentView) getView()).showAmountNeededForChargeLayout();
                    a(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.amountToChargeOnline))) + " " + this.f1009a));
                    ((PaymentView) getView()).setPayButtonText(g.changeNumbersBasedOnCurrentLocale(String.format(((PaymentView) getView()).getContext().getString(R.string.pay_n_rials_online), new Object[]{String.valueOf(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.amountToChargeOnline))))})));
                    ((PaymentView) getView()).showIncreaseDecreaseAmountAndPayButton();
                    decideToShowDecreaseButton();
                } else if (status != 1) {
                    if (status == 2) {
                        ((PaymentView) getView()).showRetryPanel(this.f.getMessage(), this.f.isShowRetryButton());
                        ((PaymentView) getView()).showOnlyPayButton();
                        ((PaymentView) getView()).setPayButtonText(((PaymentView) getView()).getContext().getString(getPaymentTypeText(((a) getInteractor()).getFallbackPaymentMethod())));
                    }
                } else {
                    ((PaymentView) getView()).showRideCostLayout();
                    ((PaymentView) getView()).setBottomMessageText(this.f.getMessage());
                    ((PaymentView) getView()).showCurrentCreditLayout();
                    ((PaymentView) getView()).setBottomMessageTextColor(R.color.green_light);
                    ((PaymentView) getView()).showBottomMessageLayout();
                    ((PaymentView) getView()).hidePayableCostInCashOrUssdLayout();
                    ((PaymentView) getView()).hideAmountNeededForChargeLayout();
                    ((PaymentView) getView()).hideIncreaseAndDecreaseLayout();
                    ((PaymentView) getView()).setVisibilityOfIncreaseDecreaseAmountAndPayButton(4);
                    String string = ((PaymentView) getView()).getContext().getResources().getString(R.string.sufficient_credit_for_ride);
                    String string2 = ((PaymentView) getView()).getContext().getString(R.string.internet_connection_is_not_needed);
                    ((PaymentView) getView()).setBottomMessageText(string + "\n" + string2);
                    ((PaymentView) getView()).setBottomMessageTextColor(R.color.green_light);
                    ((PaymentView) getView()).showBottomMessageLayout();
                }
            } else if (i == 2 || (i == -1 && !((a) getInteractor()).a(5))) {
                ((PaymentView) getView()).showCurrentCreditLayout();
                ((PaymentView) getView()).hidePayableCostInCashOrUssdLayout();
                if (((a) getInteractor()).isCurrentCreditSufficient()) {
                    ((PaymentView) getView()).hideAmountNeededForChargeLayout();
                    String string3 = ((PaymentView) getView()).getContext().getResources().getString(R.string.sufficient_credit_for_ride);
                    String string4 = ((PaymentView) getView()).getContext().getString(R.string.internet_connection_is_not_needed);
                    ((PaymentView) getView()).setBottomMessageText(string3 + "\n" + string4);
                    ((PaymentView) getView()).setBottomMessageTextColor(R.color.green_light);
                    ((PaymentView) getView()).showBottomMessageLayout();
                    ((PaymentView) getView()).setVisibilityOfIncreaseDecreaseAmountAndPayButton(4);
                    return;
                }
                ((PaymentView) getView()).showAmountNeededForChargeLayout();
                a(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.amountToChargeOnline))) + " " + this.f1009a));
                ((PaymentView) getView()).setPayButtonText(g.changeNumbersBasedOnCurrentLocale(String.format(((PaymentView) getView()).getContext().getString(R.string.pay_n_rials_online), new Object[]{String.valueOf(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.amountToChargeOnline))))})));
                ((PaymentView) getView()).showIncreaseDecreaseAmountAndPayButton();
                decideToShowDecreaseButton();
            } else {
                if (i == 1) {
                    SnappUssd snappUssd = this.e;
                    if (snappUssd != null) {
                        String ussdText = snappUssd.getUssdText();
                        ((PaymentView) getView()).setBottomMessageText(String.format(((PaymentView) getView()).getContext().getString(R.string.ride_fare_paid_by_ussd), new Object[]{ussdText}));
                        ((PaymentView) getView()).setBottomMessageTextColor(R.color.green_light);
                        ((PaymentView) getView()).hideCurrentCreditLayout();
                        ((PaymentView) getView()).hideAmountNeededForChargeLayout();
                        ((PaymentView) getView()).hideIncreaseAndDecreaseLayout();
                        ((PaymentView) getView()).showBottomMessageLayout();
                        ((PaymentView) getView()).hidePaymentButton();
                        ((PaymentView) getView()).hidePaymentMethodTitle();
                        ((PaymentView) getView()).showPaymentDoneLayout();
                        ((PaymentView) getView()).setTypeOfDonePaymentText(ussdText);
                        ((PaymentView) getView()).hidePayButton();
                    }
                } else if (i == 0) {
                    ((PaymentView) getView()).setBottomMessageText((int) R.string.pay_all_ride_fare_in_cash);
                    ((PaymentView) getView()).setBottomMessageTextColor(R.color.green_light);
                    ((PaymentView) getView()).hideCurrentCreditLayout();
                    ((PaymentView) getView()).hideAmountNeededForChargeLayout();
                    ((PaymentView) getView()).hideIncreaseAndDecreaseLayout();
                    ((PaymentView) getView()).showBottomMessageLayout();
                    ((PaymentView) getView()).hidePaymentButton();
                    ((PaymentView) getView()).hidePaymentMethodTitle();
                    ((PaymentView) getView()).showPaymentDoneLayout();
                    ((PaymentView) getView()).setTypeOfDonePaymentText((int) R.string.cash);
                    ((PaymentView) getView()).hidePayButton();
                    b();
                }
            }
        }
    }

    @Deprecated
    private void a() {
        String str;
        if (getView() != null && ((PaymentView) getView()).getContext() != null && getInteractor() != null) {
            Context context = ((PaymentView) getView()).getContext();
            int selectedPaymentMethod = ((a) getInteractor()).getSelectedPaymentMethod();
            if (selectedPaymentMethod == 2 || selectedPaymentMethod == 5) {
                str = String.format(context.getString(R.string.pay_n_rials_online), new Object[]{String.valueOf(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.amountToChargeOnline))))});
            } else if (selectedPaymentMethod == 1) {
                str = String.format(context.getString(R.string.pay_n_rials), new Object[]{String.valueOf(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.d))))});
            } else if (selectedPaymentMethod == 0) {
                str = context.getString(R.string.will_pay__in_cash);
            } else {
                str = "";
            }
            ((PaymentView) getView()).setPayButtonText(g.changeNumbersBasedOnCurrentLocale(str));
        }
    }

    public final void donateSwitched(boolean z) {
        if (getInteractor() != null && ((a) getInteractor()).getRideReceiptResponse() != null && ((a) getInteractor()).getRideReceiptResponse().getDonation() != null) {
            ((a) getInteractor()).setUserWantToDonate(z);
            a();
            if (getView() != null && ((PaymentView) getView()).getContext() != null && getInteractor() != null) {
                ((PaymentView) getView()).setAmountNeededForChargeTextView(g.changeNumbersBasedOnCurrentLocale(String.format(((PaymentView) getView()).getContext().getString(R.string.side_menu_title_credit_amount), new Object[]{String.valueOf(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.amountToChargeOnline))))})));
                String string = ((PaymentView) getView()).getContext().getResources().getString(R.string.rial);
                ((PaymentView) getView()).setPayableCostInCashOrUssdValueText(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(((a) getInteractor()).getRidePrice().doubleValue())))) + " " + string);
            }
        }
    }

    private void a(String str) {
        if (getView() != null) {
            ((PaymentView) getView()).setAmountNeededForChargeTextView(str);
        }
    }

    public final void onNoInternetConnection() {
        if (getView() != null && ((PaymentView) getView()).getContext() != null) {
            new r(((PaymentView) getView()).getContext()).showNoInternetDialog();
        }
    }

    public final void onBackPressed() {
        if (getInteractor() != null) {
            ((a) getInteractor()).finish();
        }
    }

    @Deprecated
    private void b() {
        if (getView() != null) {
            String string = ((PaymentView) getView()).getContext().getResources().getString(R.string.rial);
            ((PaymentView) getView()).setPayableCostInCashOrUssdValueText(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(((a) getInteractor()).getRidePrice().doubleValue())))) + " " + string);
        }
    }

    public final void onInitialize(int i, List<PaymentType> list, SnappUssd snappUssd, ApReceipt apReceipt, boolean z, String str, String str2) {
        if (getInteractor() != null && ((a) getInteractor()).getRideReceiptResponse() != null && getView() != null && ((PaymentView) getView()).getContext() != null) {
            this.f1009a = ((PaymentView) getView()).getContext().getResources().getString(R.string.rial);
            BaseApplication.get(((PaymentView) getView()).getContext()).getAppComponent().inject(this);
            ((PaymentView) getView()).setPaymentTypes(list);
            this.e = snappUssd;
            this.f = apReceipt;
            RideReceiptResponse rideReceiptResponse = ((a) getInteractor()).getRideReceiptResponse();
            this.d = rideReceiptResponse.getRidePrice();
            setCurrentRideCost(Double.valueOf(this.d));
            ((PaymentView) getView()).setApWalletRegistrationContents(str, str2);
            b bVar = this.c;
            a<Integer> aVar = ((a) getInteractor()).f1005a;
            $$Lambda$c$G7mfwi5DpqpqtUQfIo7bdXHDKss r0 = new io.reactivex.e.g(rideReceiptResponse, i, z, apReceipt, snappUssd) {
                private final /* synthetic */ RideReceiptResponse f$1;
                private final /* synthetic */ int f$2;
                private final /* synthetic */ boolean f$3;
                private final /* synthetic */ ApReceipt f$4;
                private final /* synthetic */ SnappUssd f$5;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                    this.f$3 = r4;
                    this.f$4 = r5;
                    this.f$5 = r6;
                }

                public final void accept(Object obj) {
                    c.this.a(this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, (Integer) obj);
                }
            };
            bVar.add(aVar.subscribe((io.reactivex.e.g<? super Integer>) r0));
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(RideReceiptResponse rideReceiptResponse, int i, boolean z, ApReceipt apReceipt, SnappUssd snappUssd, Integer num) throws Exception {
        String str;
        int i2 = i;
        boolean z2 = z;
        setCurrentCredit(Double.valueOf(((a) getInteractor()).getCurrentCredit()));
        this.amountToChargeOnline = ((a) getInteractor()).getMinAmountOfAcceptableCharge();
        ((PaymentView) getView()).hidePayableCostInCashOrUssdLayout();
        ((PaymentView) getView()).hideAmountNeededForChargeLayout();
        ((PaymentView) getView()).hideBottomMessageLayout();
        ((PaymentView) getView()).hideCurrentCreditLayout();
        ((PaymentView) getView()).hideAmountNeededForChargeLayout();
        ((PaymentView) getView()).hideIncreaseAndDecreaseLayout();
        ((PaymentView) getView()).hideRetryPanel();
        ((PaymentView) getView()).selectPaymentTypeButton(num.intValue());
        ((PaymentView) getView()).showRideCostLayout();
        ((PaymentView) getView()).hideApWalletActivationLayout();
        String str2 = g.changeNumbersBasedOnCurrentLocale(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(((a) getInteractor()).getRidePrice().doubleValue())))) + " " + this.f1009a;
        Context context = ((PaymentView) getView()).getContext();
        if (rideReceiptResponse.getApReceipt() == null || !rideReceiptResponse.getApReceipt().canTransferCredit()) {
            ((PaymentView) getView()).hideTransferSnappCreditLayout();
        } else {
            ((PaymentView) getView()).showTransferSnappCreditLayout();
        }
        int intValue = num.intValue();
        if (intValue == 0) {
            this.f1010b.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Cash payment clicked in-ride");
            ((PaymentView) getView()).showOnlyPayButton();
            ((PaymentView) getView()).showPayableCostInCashOrUssdLayout();
            ((PaymentView) getView()).setPayableCostInCashOrUssdTitleText(((PaymentView) getView()).getResources().getString(R.string.payable_cost_in_cash));
            ((PaymentView) getView()).setPayableCostInCashOrUssdValueText(str2);
            str = context.getString(R.string.will_pay__in_cash);
        } else if (intValue == 1) {
            this.f1010b.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "724 payment clicked in-ride");
            ((PaymentView) getView()).showOnlyPayButton();
            ((PaymentView) getView()).showPayableCostInCashOrUssdLayout();
            String string = ((PaymentView) getView()).getContext().getString(R.string.payable_cost_in_ussd);
            if (snappUssd.getUssdText() != null && !snappUssd.getUssdText().isEmpty()) {
                string = string.replace("USSD", snappUssd.getUssdText());
            }
            ((PaymentView) getView()).setPayableCostInCashOrUssdTitleText(string);
            ((PaymentView) getView()).showPayableCostInCashOrUssdLayout();
            ((PaymentView) getView()).setPayableCostInCashOrUssdValueText(str2);
            str = String.format(context.getString(R.string.pay_n_rials), new Object[]{String.valueOf(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.d))))});
        } else if (intValue != 2) {
            if (intValue == 5 && i2 != 5) {
                if (!z2) {
                    ((PaymentView) getView()).showApWalletActivationLayout();
                    return;
                } else if (apReceipt.getStatus() != 2) {
                    ((PaymentView) getView()).showCurrentCreditLayout();
                    if (((a) getInteractor()).isCurrentCreditSufficient()) {
                        str = context.getString(R.string.ap_wallet_payment);
                        ((PaymentView) getView()).showOnlyPayButton();
                    } else {
                        ((PaymentView) getView()).showAmountNeededForChargeLayout();
                        a(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.amountToChargeOnline))) + " " + this.f1009a));
                        str = String.format(context.getString(R.string.pay_n_rials_online), new Object[]{String.valueOf(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.amountToChargeOnline))))});
                        ((PaymentView) getView()).showIncreaseDecreaseAmountAndPayButton();
                    }
                } else {
                    ((PaymentView) getView()).showRetryPanel(apReceipt.getMessage(), apReceipt.isShowRetryButton());
                }
            }
            str = "";
        } else {
            this.f1010b.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Online payment clicked in-ride");
            ((PaymentView) getView()).showCurrentCreditLayout();
            if (((a) getInteractor()).isCurrentCreditSufficient()) {
                ((PaymentView) getView()).showCurrentCreditLayout();
                str = context.getString(R.string.online_wallet_payment);
                ((PaymentView) getView()).showOnlyPayButton();
            } else {
                ((PaymentView) getView()).showAmountNeededForChargeLayout();
                ((PaymentView) getView()).showIncreaseDecreaseAmountAndPayButton();
                a(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.amountToChargeOnline))) + " " + this.f1009a));
                str = String.format(context.getString(R.string.pay_n_rials_online), new Object[]{String.valueOf(j.formatDouble(Double.valueOf(((a) getInteractor()).getAmountToChargePlusDonation(this.amountToChargeOnline))))});
                decideToShowDecreaseButton();
            }
        }
        int intValue2 = num.intValue();
        if (!(getView() == null || getInteractor() == null || ((a) getInteractor()).getRideReceiptResponse() == null)) {
            RideReceiptResponse rideReceiptResponse2 = ((a) getInteractor()).getRideReceiptResponse();
            int status = rideReceiptResponse2.getStatus();
            boolean isDonationEnabledGenerally = rideReceiptResponse2.getDonation().getDonationStatus().isDonationEnabledGenerally();
            boolean isDonationEnabledOnOnline = rideReceiptResponse2.getDonation().getDonationStatus().isDonationEnabledOnOnline();
            boolean isDonationEnabledOnUssd = rideReceiptResponse2.getDonation().getDonationStatus().isDonationEnabledOnUssd();
            ((PaymentView) getView()).setDonateTitleText(rideReceiptResponse2.getDonation().getCampaignText());
            ((PaymentView) getView()).setDonateDescText(rideReceiptResponse2.getDonation().getDonationDesc());
            if (rideReceiptResponse2.getDonation().isPaymentDonated() || !isDonationEnabledGenerally || intValue2 == 0 || intValue2 == 5 || status == 0 || status == 1 || status == 2 || ((a) getInteractor()).isCurrentCreditSufficient()) {
                ((PaymentView) getView()).hideDonateLayout();
            } else {
                if (intValue2 == 2) {
                    if (isDonationEnabledOnOnline) {
                        ((PaymentView) getView()).showDonateLayout();
                    } else {
                        ((PaymentView) getView()).hideDonateLayout();
                    }
                }
                if (intValue2 == 1) {
                    if (isDonationEnabledOnUssd) {
                        ((PaymentView) getView()).showDonateLayout();
                    } else {
                        ((PaymentView) getView()).hideDonateLayout();
                    }
                }
            }
        }
        if (!(getInteractor() == null || getView() == null || ((a) getInteractor()).getRideReceiptResponse() == null)) {
            RideReceiptResponse rideReceiptResponse3 = ((a) getInteractor()).getRideReceiptResponse();
            if (((a) getInteractor()).getSelectedPaymentMethod() == 0 || ((a) getInteractor()).getSelectedPaymentMethod() == 5) {
                ((PaymentView) getView()).hideDonateDoneLayout();
            } else if (rideReceiptResponse3.getDonation().isPaymentDonated()) {
                ((PaymentView) getView()).showDonateDoneLayout();
                ((PaymentView) getView()).setDonateDoneTitleText(g.changeNumbersBasedOnCurrentLocale(rideReceiptResponse3.getDonation().getCampaignText()));
                ((PaymentView) getView()).setDonateDoneAmountText(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(Double.valueOf(rideReceiptResponse3.getDonation().getDonationAmount())) + " " + ((PaymentView) getView()).getContext().getString(R.string.rial)));
            } else {
                ((PaymentView) getView()).hideDonateDoneLayout();
            }
        }
        ((PaymentView) getView()).setPayButtonText(g.changeNumbersBasedOnCurrentLocale(str));
        if (i2 == num.intValue() || (i2 == -1 && num.intValue() == 2)) {
            a(i2, z2);
        }
    }

    public final void onBeforePaymentRequest() {
        if (getView() != null) {
            ((PaymentView) getView()).showLoadingDialog();
        }
    }

    public final void onPaymentSuccessful() {
        if (getView() != null) {
            ((PaymentView) getView()).hideLoadingDialog();
        }
    }

    public final void onPaymentError(String str) {
        if (getView() != null) {
            ((PaymentView) getView()).hideLoadingDialog();
            ((PaymentView) getView()).showErrorDialog(str);
            if (getInteractor() != null && ((a) getInteractor()).getSelectedPaymentMethod() == 2) {
                ((PaymentView) getView()).showIncreaseAndDecreaseLayout();
            }
        }
    }

    public final void showNoInternet() {
        if (getView() != null) {
            ((PaymentView) getView()).showNoInternetError();
        }
    }

    public final void dispose() {
        if (!this.c.isDisposed()) {
            this.c.dispose();
        }
    }

    public final void paymentTypeSelected(int i) {
        if (getInteractor() != null) {
            ((a) getInteractor()).f1005a.onNext(Integer.valueOf(i));
        }
    }

    public final void onApWalletDescriptionMoreInfoClicked(String str) {
        if (getInteractor() != null) {
            ((a) getInteractor()).onApWalletDescriptionMoreInfoClicked(str);
        }
    }

    public final void transferSnappCreditToAp() {
        if (getInteractor() != null) {
            ((a) getInteractor()).transferSnappCreditToAp();
        }
    }

    public final void onTransferCreditSuccessful(String str) {
        if (getView() != null && str != null) {
            ((PaymentView) getView()).showToast(str);
        }
    }

    public final void dismissLoadingDialog() {
        if (getView() != null) {
            ((PaymentView) getView()).dismissLoadingDialog();
        }
    }

    public final void hideTransferSnappCreditLayout() {
        if (getView() != null) {
            ((PaymentView) getView()).hideTransferSnappCreditLayout();
        }
    }

    public final void payClicked() {
        this.f1010b.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Payment confirm button click");
        if (getInteractor() != null) {
            if (((a) getInteractor()).getSelectedPaymentMethod() != ((a) getInteractor()).getFallbackPaymentMethod()) {
                ((a) getInteractor()).f1005a.onNext(Integer.valueOf(((a) getInteractor()).getFallbackPaymentMethod()));
            } else if (((a) getInteractor()).getFallbackPaymentMethod() == 2 || ((a) getInteractor()).getFallbackPaymentMethod() == 5) {
                ((a) getInteractor()).pay(Double.valueOf(this.amountToChargeOnline));
            } else {
                ((a) getInteractor()).pay();
            }
        }
    }
}
