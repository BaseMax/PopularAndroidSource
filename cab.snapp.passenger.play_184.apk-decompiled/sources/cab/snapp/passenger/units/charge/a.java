package cab.snapp.passenger.units.charge;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.f;
import cab.snapp.c.i;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.passenger.data.models.charge.QuickCharge;
import cab.snapp.passenger.data.models.charge.SIMChargeOperator;
import cab.snapp.passenger.data.models.charge.SIMChargeType;
import cab.snapp.passenger.data.models.charge.SubmitChargeResponse;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.SnappChargeRechargeRequest;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeOperatorsResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeRecentlyMobileNumbersResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import io.reactivex.e.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {

    /* renamed from: a  reason: collision with root package name */
    ChargeOperatorsResponse f631a = null;

    /* renamed from: b  reason: collision with root package name */
    ChargeRecentlyMobileNumbersResponse f632b = null;
    Handler c = new Handler();
    SIMChargeOperator d;
    @Inject
    b e;
    @Inject
    d f;
    @Inject
    c g;

    public ChargeOperatorsResponse getChargeOperatorsResponse() {
        return this.f631a;
    }

    public void setChargeOperatorsResponse(ChargeOperatorsResponse chargeOperatorsResponse) {
        this.f631a = chargeOperatorsResponse;
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            ConfigResponse config = this.e.getConfig();
            if (!(config == null || config.getProfileResponse() == null || getPresenter() == null)) {
                ((c) getPresenter()).onInitialize(config.getProfileResponse().getCellphone());
            }
            this.g.reportScreenName("");
            if (!(getActivity() == null || !(getActivity() instanceof RootActivity) || ((RootActivity) getActivity()).getOverTheMapNavController() == null || getRouter() == null)) {
                ((d) getRouter()).setNavigationController(((RootActivity) getActivity()).getOverTheMapNavController());
            }
            requestLoadOperators();
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterPhoneNumber", "Show").build());
        if (this.d != null && getPresenter() != null) {
            ((c) getPresenter()).selectOperator(this.d);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1000 && i2 == -1) {
            String a2 = a(intent);
            if (i.isPhoneNumberValid(a2)) {
                if (a2.matches("(\\+98|0)9[0-9]{9}")) {
                    if (!a2.matches("\\+989[0-9]{9}")) {
                        a2 = a2.replaceFirst("0", "+98");
                    }
                    if (getPresenter() != null) {
                        c cVar = (c) getPresenter();
                        String replace = a2.replace("+98", "0");
                        if (cVar.getView() != null) {
                            ((ChargeView) cVar.getView()).setMobileNumberEtText(replace);
                        }
                    }
                }
            } else if (getPresenter() != null) {
                ((c) getPresenter()).showError((int) R.string.incorrect_phone_number);
            }
        }
    }

    private String a(Intent intent) {
        try {
            Uri data = intent.getData();
            String[] strArr = {"data1"};
            Cursor cursor = null;
            if (data != null) {
                cursor = getActivity().getContentResolver().query(data, strArr, null, null, null);
            }
            if (cursor != null && cursor.moveToFirst()) {
                return cursor.getString(cursor.getColumnIndex("data1")).replaceAll("\\s+", "");
            }
            if (cursor != null) {
                cursor.close();
            }
            return "";
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void requestLoadOperators() {
        c cVar = (c) getPresenter();
        if (cVar != null) {
            cVar.onBeforeRequest();
            ChargeOperatorsResponse chargeOperatorsResponse = this.f631a;
            if (chargeOperatorsResponse == null) {
                addDisposable(this.f.getChargeOperators().subscribe(new g(cVar) {
                    private final /* synthetic */ c f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void accept(Object obj) {
                        a.this.a(this.f$1, (ChargeOperatorsResponse) obj);
                    }
                }, new g(cVar) {
                    private final /* synthetic */ c f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void accept(Object obj) {
                        a.this.c(this.f$1, (Throwable) obj);
                    }
                }));
            } else {
                cVar.a(chargeOperatorsResponse);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(c cVar, ChargeOperatorsResponse chargeOperatorsResponse) throws Exception {
        if (!(chargeOperatorsResponse == null || chargeOperatorsResponse.getOperators() == null || chargeOperatorsResponse.getOperators().isEmpty())) {
            this.f631a = chargeOperatorsResponse;
        }
        cVar.a(chargeOperatorsResponse);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(c cVar, Throwable th) throws Exception {
        this.c.postDelayed(new Runnable() {
            public final void run() {
                a.this.pressBack();
            }
        }, 2000);
        String message = th.getMessage();
        if (cVar.getView() != null) {
            ((ChargeView) cVar.getView()).showErrorMessage(message);
        }
    }

    public void onUnitPause() {
        super.onUnitPause();
        this.c.removeCallbacksAndMessages(null);
    }

    public void onDestroy() {
        super.onDestroy();
        this.c.removeCallbacksAndMessages(null);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(SnappChargeRechargeRequest snappChargeRechargeRequest, QuickCharge quickCharge, c cVar, SubmitChargeResponse submitChargeResponse) throws Exception {
        if (!(submitChargeResponse == null || getRouter() == null)) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(cab.snapp.passenger.units.charge_confirm_payment.a.EXTRA_PAYMENT_REQUEST, snappChargeRechargeRequest);
            bundle.putParcelable(cab.snapp.passenger.units.charge_confirm_payment.a.EXTRA_PAYMENT_RESPONSE, submitChargeResponse);
            bundle.putParcelable(cab.snapp.passenger.units.charge_confirm_payment.a.EXTRA_OPERATOR, quickCharge.getOperator());
            bundle.putParcelable(cab.snapp.passenger.units.charge_confirm_payment.a.EXTRA_SELECTED_PACKAGE, new ChargePackage(quickCharge.getPersianType(), quickCharge.getType()));
            ((d) getRouter()).navigateToChargeConfirmPayment(bundle);
        }
        cVar.b();
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void b(c cVar, Throwable th) throws Exception {
        cVar.showError(th.getMessage());
        cVar.b();
    }

    public void loadRecentlyMobileNumbers() {
        c cVar = (c) getPresenter();
        if (cVar != null) {
            ChargeRecentlyMobileNumbersResponse chargeRecentlyMobileNumbersResponse = this.f632b;
            if (chargeRecentlyMobileNumbersResponse == null) {
                addDisposable(this.f.getRecentlyMobileNumbers().subscribe(new g(cVar) {
                    private final /* synthetic */ c f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void accept(Object obj) {
                        a.this.a(this.f$1, (ChargeRecentlyMobileNumbersResponse) obj);
                    }
                }, new g() {
                    public final void accept(Object obj) {
                        c.this.a((ChargeRecentlyMobileNumbersResponse) null);
                    }
                }));
            } else {
                cVar.a(chargeRecentlyMobileNumbersResponse);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(c cVar, ChargeRecentlyMobileNumbersResponse chargeRecentlyMobileNumbersResponse) throws Exception {
        this.f632b = chargeRecentlyMobileNumbersResponse;
        cVar.a(this.f632b);
    }

    static void b() {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterPhoneNumber", "TapOnContinue").build());
    }

    static void c() {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterPhoneNumber", "TapOnHistory").build());
    }

    static void a(int i) {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("Operator", "ChoiceOperator".concat(String.valueOf(i))).addOuterKeyToCurrentAsValue("EnterPhoneNumber").build());
    }

    static void d() {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterPhoneNumber", "ClearPhoneNumber").build());
    }

    static void e() {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterPhoneNumber", "FocusPhoneNumbere").build());
    }

    public void pressBack() {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterPhoneNumber", "TapOnBack").build());
        if (getActivity() != null && !getActivity().isFinishing()) {
            getActivity().onBackPressed();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterPhoneNumber", "TapOnImmediatePurchase").build());
        c cVar = (c) getPresenter();
        QuickCharge quickCharge = this.f631a.getQuickCharge();
        if (cVar != null) {
            if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
                if (cVar.getView() != null) {
                    ChargeView chargeView = (ChargeView) cVar.getView();
                    chargeView.quickChargeBtn.setVisibility(4);
                    chargeView.chevronView.setVisibility(4);
                    chargeView.quickChargeLoading.setVisibility(0);
                }
                long chargeAmount = quickCharge.getChargeAmount();
                String mobileNumber = quickCharge.getMobileNumber();
                String name = quickCharge.getOperator().getName();
                SIMChargeType type = quickCharge.getType();
                ConfigResponse config = this.e.getConfig();
                SnappChargeRechargeRequest snappChargeRechargeRequest = new SnappChargeRechargeRequest(chargeAmount, mobileNumber, name, SnappChargeRechargeRequest.DEEP_LINK_AFTER_CHARGE, type, (config == null || config.getProfileResponse() == null) ? null : config.getProfileResponse().getCellphone());
                addDisposable(this.f.rechargeSimCard(snappChargeRechargeRequest).subscribe(new g(snappChargeRechargeRequest, quickCharge, cVar) {
                    private final /* synthetic */ SnappChargeRechargeRequest f$1;
                    private final /* synthetic */ QuickCharge f$2;
                    private final /* synthetic */ c f$3;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                        this.f$3 = r4;
                    }

                    public final void accept(Object obj) {
                        a.this.a(this.f$1, this.f$2, this.f$3, (SubmitChargeResponse) obj);
                    }
                }, new g() {
                    public final void accept(Object obj) {
                        a.b(c.this, (Throwable) obj);
                    }
                }));
                return;
            }
            cVar.c();
        }
    }
}
