package cab.snapp.passenger.units.payment;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.data_access_layer.network.responses.ApWalletRegistrationResponse;
import cab.snapp.passenger.data_access_layer.network.responses.InRidePaymentResponse;
import cab.snapp.passenger.data_access_layer.network.responses.PaymentType;
import cab.snapp.passenger.data_access_layer.network.responses.RideReceiptResponse;
import cab.snapp.passenger.data_access_layer.network.responses.TransferCreditResponse;
import cab.snapp.passenger.f.a.a;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import io.reactivex.e.h;
import io.reactivex.z;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> implements a.C0019a {
    public static final double MINIMUM_POSSIBLE_AMOUNT_TO_CHARGE = 10000.0d;
    public static final String RIDE_RECEIPT_ARGUMENT_KEY = "RIDE_RECEIPT_ARGUMENT_KEY";

    /* renamed from: a  reason: collision with root package name */
    io.reactivex.j.a<Integer> f1005a = io.reactivex.j.a.create();

    /* renamed from: b  reason: collision with root package name */
    protected RideReceiptResponse f1006b;
    @Inject
    f c;
    @Inject
    d d;
    @Inject
    c e;
    @Inject
    g f;
    @Inject
    b g;
    private List<PaymentType> h;
    private String i;
    public Double ridePrice;
    public boolean userHaveToDonate = false;
    public boolean userWantToDonate = false;

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getController() == null) {
                finish();
            }
            if (getArguments() == null || !getArguments().containsKey(RIDE_RECEIPT_ARGUMENT_KEY) || !(getArguments().getParcelable(RIDE_RECEIPT_ARGUMENT_KEY) instanceof RideReceiptResponse)) {
                finish();
                return;
            }
            this.f1006b = (RideReceiptResponse) getArguments().getParcelable(RIDE_RECEIPT_ARGUMENT_KEY);
            a(this.f1006b);
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.e.reportScreenName("Payment Page");
    }

    public void onDestroy() {
        super.onDestroy();
        if (getPresenter() != null) {
            ((c) getPresenter()).dispose();
        }
    }

    private void a(RideReceiptResponse rideReceiptResponse) {
        this.ridePrice = Double.valueOf(rideReceiptResponse.getRidePrice());
        this.userHaveToDonate = rideReceiptResponse.getDonation().isPaymentDonated();
        this.h = rideReceiptResponse.getPaymentTypes();
        boolean canPayInCash = rideReceiptResponse.getCanPayInCash();
        boolean isEnabled = this.g.getConfig().getSnappUssd().isEnabled();
        Iterator<PaymentType> it = this.h.iterator();
        while (it.hasNext()) {
            PaymentType next = it.next();
            if (next.getType() == 1 && !isEnabled) {
                it.remove();
            }
            if (next.getType() == 0 && !canPayInCash) {
                it.remove();
            }
        }
        this.f1005a.onNext(Integer.valueOf(rideReceiptResponse.getStatus()));
        if (rideReceiptResponse.getStatus() == -1) {
            this.f1005a.onNext(Integer.valueOf(getFallbackPaymentMethod()));
        }
        if (getPresenter() != null && getActivity() != null) {
            ((c) getPresenter()).setCurrentCredit(Double.valueOf(getCurrentCredit()));
            ((c) getPresenter()).onInitialize(rideReceiptResponse.getStatus(), this.h, this.g.getConfig().getSnappUssd(), rideReceiptResponse.getApReceipt(), rideReceiptResponse.isApWalletRegistered(), this.g.getConfig().getPaymentTexts().getAppWalletRegistrationContent(), this.g.getConfig().getPaymentTexts().getAppWalletRegistrationLink());
        }
    }

    public boolean isCurrentCreditSufficient() {
        return getCurrentCredit() >= this.ridePrice.doubleValue();
    }

    public double creditNeededToEqualizeCurrentRideCost() {
        if (getCurrentCredit() > this.ridePrice.doubleValue()) {
            return 0.0d;
        }
        return this.ridePrice.doubleValue() - getCurrentCredit();
    }

    public double getAmountToChargePlusDonation(double d2) {
        if (getSelectedPaymentMethod() == 0) {
            return d2;
        }
        if (this.userHaveToDonate || this.userWantToDonate) {
            return d2 + this.f1006b.getDonation().getDonationAmount();
        }
        return d2;
    }

    public Double getRidePrice() {
        return this.ridePrice;
    }

    public boolean isUserWantToDonate() {
        return this.userWantToDonate;
    }

    public void setUserWantToDonate(boolean z) {
        this.userWantToDonate = z;
    }

    public void pay() {
        pay(this.ridePrice);
    }

    public void pay(Double d2) {
        if (getActivity() != null) {
            if (isUserWantToDonate()) {
                this.e.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Donation is ON on in-ride payment");
            }
            if (getFallbackPaymentMethod() == 2) {
                if (isUserWantToDonate()) {
                    if (this.f.getCurrentState() == 4) {
                        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_ONLINE_CHARGE, "[donateOn]");
                    } else {
                        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PAYMENT_ONLINE_SECTION_ONLINE_CHARGE, "[donateOn]");
                    }
                } else if (this.f.getCurrentState() == 4) {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_PAYMENT_ONLINE_SECTION_ONLINE_CHARGE, "[donateOff]");
                } else {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PAYMENT_ONLINE_SECTION_ONLINE_CHARGE, "[donateOff]");
                }
                if (this.f.getCurrentState() == 4) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "online[onlineCharge]").addOuterKeyToCurrentAsValue("driverAssigned").build());
                } else if (this.f.getCurrentState() == 5) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "online[onlineCharge]").addOuterKeyToCurrentAsValue("driverArrived").build());
                } else if (this.f.getCurrentState() == 6) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "online[onlineCharge]").addOuterKeyToCurrentAsValue("Boarded").build());
                }
            } else if (getFallbackPaymentMethod() == 0) {
                if (this.f.getCurrentState() == 4) {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_PAYMENT_CASH_PAY_CASH, "confirm button clicked");
                } else {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PAYMENT_CASH_PAY_CASH, "confirm button clicked");
                }
                if (this.f.getCurrentState() == 4) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "offline[wantPayOffline]").addOuterKeyToCurrentAsValue("driverAssigned").build());
                } else if (this.f.getCurrentState() == 5) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "offline[wantPayOffline]").addOuterKeyToCurrentAsValue("driverArrived").build());
                } else if (this.f.getCurrentState() == 6) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "offline[wantPayOffline]").addOuterKeyToCurrentAsValue("Boarded").build());
                }
            } else if (getFallbackPaymentMethod() == 1) {
                if (isUserWantToDonate()) {
                    if (this.f.getCurrentState() == 4) {
                        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_PAYMENT_USSD_PAY, "[donateOn]");
                    } else {
                        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PAYMENT_USSD_PAY, "[donateOn]");
                    }
                } else if (this.f.getCurrentState() == 4) {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_PAYMENT_USSD_PAY, "[donateOff]");
                } else {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PAYMENT_USSD_PAY, "[donateOff]");
                }
                if (this.f.getCurrentState() == 4) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "ussd[onlineCharge]").addOuterKeyToCurrentAsValue("driverAssigned").build());
                } else if (this.f.getCurrentState() == 5) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "ussd[onlineCharge]").addOuterKeyToCurrentAsValue("driverArrived").build());
                } else if (this.f.getCurrentState() == 6) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "ussd[onlineCharge]").addOuterKeyToCurrentAsValue("Boarded").build());
                }
            }
            if (cab.snapp.c.f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
                if (getPresenter() != null) {
                    ((c) getPresenter()).onBeforeCashPaymentRequest();
                }
                if (getFallbackPaymentMethod() != 5 || this.f1006b.isApWalletRegistered()) {
                    if (this.userWantToDonate || this.userHaveToDonate) {
                        d2 = Double.valueOf(d2.doubleValue() + this.f1006b.getDonation().getDonationAmount());
                    }
                    if ((getFallbackPaymentMethod() == 2 || getFallbackPaymentMethod() == 5) && isCurrentCreditSufficient()) {
                        d2 = Double.valueOf(0.0d);
                    }
                    Integer num = null;
                    if (this.userWantToDonate) {
                        num = Integer.valueOf(this.f1006b.getDonation().getOrganizationId());
                    }
                    addDisposable(this.d.postInRidePayment(d2.doubleValue(), getFallbackPaymentMethod(), num).subscribe(new io.reactivex.e.g(d2) {
                        private final /* synthetic */ Double f$1;

                        {
                            this.f$1 = r2;
                        }

                        public final void accept(Object obj) {
                            a.this.a(this.f$1, (InRidePaymentResponse) obj);
                        }
                    }, new io.reactivex.e.g() {
                        public final void accept(Object obj) {
                            a.this.c((Throwable) obj);
                        }
                    }));
                    return;
                }
                apWalletActivationRequested();
                return;
            }
            ((c) getPresenter()).onNoInternetConnection();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Double d2, InRidePaymentResponse inRidePaymentResponse) throws Exception {
        double doubleValue = d2.doubleValue();
        this.f.updatePaymentStatus();
        if (getFallbackPaymentMethod() == 0 && getPresenter() != null) {
            ((c) getPresenter()).onCashPaymentSuccessful();
            a("cash");
        } else if (getFallbackPaymentMethod() == 2) {
            this.e.sendAnalyticsEvent(c.C0021c.RIDE, c.b.PAYMENT, "In-ride payment redirecting to BG");
            a("online");
            cab.snapp.passenger.f.a.b buildSnappPayment = cab.snapp.passenger.f.a.a.buildSnappPayment(getActivity(), 1001, this, this.d, this.e);
            if (!(buildSnappPayment == null || inRidePaymentResponse == null || inRidePaymentResponse.getRedirectUrl() == null)) {
                buildSnappPayment.openIPG(inRidePaymentResponse.getRedirectUrl());
            }
            finish();
        } else if (getFallbackPaymentMethod() == 5) {
            a("ap_wallet");
            cab.snapp.passenger.f.a.b buildSnappPayment2 = cab.snapp.passenger.f.a.a.buildSnappPayment(getActivity(), 1004, this, this.d, this.e);
            if (!(buildSnappPayment2 == null || inRidePaymentResponse == null || inRidePaymentResponse.getRedirectUrl() == null)) {
                buildSnappPayment2.openIPG(inRidePaymentResponse.getRedirectUrl());
            }
            finish();
        } else {
            if (getFallbackPaymentMethod() == 1) {
                a("ussd");
                cab.snapp.passenger.f.a.b buildSnappPayment3 = cab.snapp.passenger.f.a.a.buildSnappPayment(getActivity(), 1002, this, this.d, this.e);
                if (buildSnappPayment3 != null) {
                    buildSnappPayment3.performPayCall(String.valueOf((int) doubleValue));
                    finish();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(Throwable th) throws Exception {
        if (getPresenter() != null) {
            int errorCode = ((e) th).getErrorCode();
            if (errorCode == 1048 || errorCode == 1049 || errorCode == 1069) {
                ((c) getPresenter()).onPayError(th.getMessage());
            } else if (errorCode == 1044) {
                ((c) getPresenter()).onPayError((int) R.string.max_payment_limit);
            } else {
                ((c) getPresenter()).onPayError((int) R.string.error_on_online_payment);
            }
        }
    }

    public int getSelectedPaymentMethod() {
        return this.f1005a.getValue().intValue();
    }

    public int getFallbackPaymentMethod() {
        if (this.f1005a.getValue().intValue() == -1 && this.h.size() > 0) {
            return this.h.get(0).getType();
        }
        if (getSelectedPaymentMethod() == 5 && this.f1006b.getApReceipt().getStatus() == 2) {
            if (!this.f1006b.isApWalletRegistered()) {
                return 5;
            }
            if (a(2)) {
                return 2;
            }
            if (a(0)) {
                return 0;
            }
        }
        return getSelectedPaymentMethod();
    }

    private void a(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("currentPaymentType", str);
        this.e.reportEvent(c.e.METHOD_OF_PAYMENT, hashMap);
    }

    public void donateDescription() {
        if (getRouter() != null && getActivity() != null) {
            RideReceiptResponse rideReceiptResponse = this.f1006b;
            if (rideReceiptResponse != null && rideReceiptResponse.getDonation() != null && this.f1006b.getDonation().getDonationLink() != null && !this.f1006b.getDonation().getDonationLink().isEmpty()) {
                this.e.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Donate link clicked");
                if (this.f.getCurrentState() == 4) {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_PAYMENT_DONATE_DESCRIPTION, "[tap]");
                } else {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PAYMENT_DONATE_DESCRIPTION, "donate linked clicked");
                }
                ((e) getRouter()).routToDonateDescriptionUrl(getActivity(), this.f1006b.getDonation().getDonationLink());
            }
        }
    }

    public void finish() {
        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_PAYMENT, "[back]");
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public double getMinAmountOfAcceptableCharge() {
        return Math.max(creditNeededToEqualizeCurrentRideCost(), 10000.0d);
    }

    public RideReceiptResponse getRideReceiptResponse() {
        return this.f1006b;
    }

    public void onPaymentStart() {
        if (getPresenter() != null) {
            ((c) getPresenter()).onBeforePaymentRequest();
        }
    }

    public void onPaymentSucceed(long j) {
        if (getPresenter() != null) {
            this.f.updatePaymentStatus();
            ((c) getPresenter()).onPaymentSuccessful();
        }
    }

    public void onPaymentError(String str, int i2) {
        if (getPresenter() != null) {
            if (i2 == 1101) {
                ((c) getPresenter()).showNoInternet();
                return;
            }
            ((c) getPresenter()).onPaymentError(str);
        }
    }

    public double getCurrentCredit() {
        if (this.f1005a.getValue().intValue() == 5) {
            return this.f1006b.getApReceipt().getCredit();
        }
        return this.f1006b.getCurrentCredit();
    }

    /* access modifiers changed from: package-private */
    public final boolean a(int i2) {
        PaymentType paymentType = new PaymentType();
        paymentType.setType(i2);
        return this.h.contains(paymentType);
    }

    public void transferSnappCreditToAp() {
        addDisposable(this.d.getTransferCreditToAp().flatMap(new h() {
            public final Object apply(Object obj) {
                return a.this.a((TransferCreditResponse) obj);
            }
        }).subscribe(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                a.this.b((RideReceiptResponse) obj);
            }
        }, new io.reactivex.e.g() {
            public final void accept(Object obj) {
                a.this.b((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ z a(TransferCreditResponse transferCreditResponse) throws Exception {
        if (getPresenter() != null) {
            this.i = transferCreditResponse.getMessage();
        }
        return this.d.getRideReceipt(this.f.getRideId());
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(RideReceiptResponse rideReceiptResponse) throws Exception {
        this.f1006b = rideReceiptResponse;
        this.f.updatePaymentStatus();
        if (getPresenter() != null) {
            ((c) getPresenter()).dismissLoadingDialog();
            ((c) getPresenter()).onTransferCreditSuccessful(this.i);
            a(this.f1006b);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).dismissLoadingDialog();
            if (th.getMessage() != null) {
                ((c) getPresenter()).onPayError(th.getMessage());
            } else {
                ((c) getPresenter()).onPayError((int) R.string.error_on_transfer_credit);
            }
        }
    }

    private void b(String str) {
        if (getActivity() != null) {
            PackageManager packageManager = getActivity().getPackageManager();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            if (intent.resolveActivity(packageManager) != null) {
                getActivity().startActivity(intent);
                return;
            }
            c cVar = (c) getPresenter();
            if (cVar.getView() != null) {
                ((PaymentView) cVar.getView()).showToast((int) R.string.error_no_browser_available);
            }
        }
    }

    public void onApWalletDescriptionMoreInfoClicked(String str) {
        b(str);
    }

    public void apWalletActivationRequested() {
        addDisposable(this.d.sendApWalletRegistration(this.c.getProfile().getCellphone()).subscribe(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                a.this.a((ApWalletRegistrationResponse) obj);
            }
        }, new io.reactivex.e.g() {
            public final void accept(Object obj) {
                a.this.a((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ApWalletRegistrationResponse apWalletRegistrationResponse) throws Exception {
        b(apWalletRegistrationResponse.getRedirectUrl());
        finish();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null) {
            if (th.getMessage() != null) {
                ((c) getPresenter()).onPayError(th.getMessage());
            } else {
                ((c) getPresenter()).onPayError((int) R.string.ap_register_error);
            }
        }
    }
}
