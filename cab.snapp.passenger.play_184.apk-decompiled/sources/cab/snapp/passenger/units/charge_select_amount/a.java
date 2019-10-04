package cab.snapp.passenger.units.charge_select_amount;

import android.os.Bundle;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.f;
import cab.snapp.c.i;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.passenger.data.models.charge.SIMChargeOperator;
import cab.snapp.passenger.data.models.charge.SIMChargeType;
import cab.snapp.passenger.data.models.charge.SubmitChargeResponse;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.SnappChargeRechargeRequest;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.OperatorConfigResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.r;
import io.reactivex.e.g;
import java.util.ArrayList;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    public static final String EXTRA_MOBILE_NUMBER = "EXTRA_MOBILE_NUMBER";
    public static final String EXTRA_SIM_CHARGE_OPERATOR = "EXTRA_SIM_CHARGE_OPERATOR";

    /* renamed from: a  reason: collision with root package name */
    static long f671a = 10000;

    /* renamed from: b  reason: collision with root package name */
    OperatorConfigResponse f672b;
    @Inject
    d c;
    @Inject
    b d;
    private ChargePackage e;
    private String f;
    private long g;
    private SIMChargeOperator h;

    /* access modifiers changed from: package-private */
    public final void a(ChargePackage chargePackage) {
        this.e = chargePackage;
        if (getPresenter() != null) {
            c cVar = (c) getPresenter();
            if (chargePackage != null) {
                String persianType = chargePackage.getPersianType();
                if (cVar.getView() != null) {
                    ((ChargeSelectAmountView) cVar.getView()).setChargePackageTypeText(persianType);
                }
                ArrayList<Long> amounts = chargePackage.getAmounts();
                if (amounts != null && amounts.size() > 0) {
                    cVar.f675a.setItems(amounts);
                }
            }
            if (cVar.getView() != null) {
                if (!chargePackage.isCustomAmountEnable()) {
                    ((ChargeSelectAmountView) cVar.getView()).hideCustomAmount();
                }
                ((ChargeSelectAmountView) cVar.getView()).setSimChargePackage(chargePackage);
            }
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (!(getController() == null || getRouter() == null)) {
                NavController overtheMapNavigationController = getController().getOvertheMapNavigationController();
                if (overtheMapNavigationController != null) {
                    ((d) getRouter()).setNavigationController(overtheMapNavigationController);
                }
            }
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.f = arguments.getString(EXTRA_MOBILE_NUMBER);
                this.h = (SIMChargeOperator) arguments.getParcelable(EXTRA_SIM_CHARGE_OPERATOR);
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).init(0);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(OperatorConfigResponse operatorConfigResponse) throws Exception {
        this.f672b = operatorConfigResponse;
        c();
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void b(c cVar, Throwable th) throws Exception {
        String message = th.getMessage();
        if (cVar.getView() != null) {
            ((ChargeSelectAmountView) cVar.getView()).hideLoading();
            ((ChargeSelectAmountView) cVar.getView()).showErrorMessage(message);
        }
    }

    private void c() {
        c cVar = (c) getPresenter();
        if (cVar != null) {
            OperatorConfigResponse operatorConfigResponse = this.f672b;
            if (operatorConfigResponse != null) {
                if (!(operatorConfigResponse.getPackages() == null || cVar.getView() == null)) {
                    ((ChargeSelectAmountView) cVar.getView()).setSelectPackageStatus(true);
                }
                ChargePackage chargePackage = this.e;
                if (chargePackage == null) {
                    chargePackage = this.f672b.getDefaultPackage();
                }
                a(chargePackage);
            }
            if (cVar.getView() != null) {
                ((ChargeSelectAmountView) cVar.getView()).hideLoading();
            }
        }
    }

    public void pressBack() {
        if (getActivity() != null && !getActivity().isFinishing()) {
            getActivity().onBackPressed();
        }
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterAmount", "TapOnBack").build());
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        String str;
        c cVar = (c) getPresenter();
        if (cVar != null) {
            if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
                if (cVar.getView() != null) {
                    ((ChargeSelectAmountView) cVar.getView()).showSubmitLoading();
                }
                long j = this.g;
                String str2 = this.f;
                String name = this.h.getName();
                SIMChargeType type = this.e.getType();
                ConfigResponse config = this.d.getConfig();
                if (!(config == null || config.getProfileResponse() == null)) {
                    String cellphone = config.getProfileResponse().getCellphone();
                    if (i.isPhoneNumberValid(cellphone)) {
                        str = cellphone;
                        SnappChargeRechargeRequest snappChargeRechargeRequest = new SnappChargeRechargeRequest(j, str2, name, SnappChargeRechargeRequest.DEEP_LINK_AFTER_CHARGE, type, str);
                        addDisposable(this.c.rechargeSimCard(snappChargeRechargeRequest).subscribe(new g(snappChargeRechargeRequest, cVar) {
                            private final /* synthetic */ SnappChargeRechargeRequest f$1;
                            private final /* synthetic */ c f$2;

                            {
                                this.f$1 = r2;
                                this.f$2 = r3;
                            }

                            public final void accept(Object obj) {
                                a.this.a(this.f$1, this.f$2, (SubmitChargeResponse) obj);
                            }
                        }, new g() {
                            public final void accept(Object obj) {
                                a.a(c.this, (Throwable) obj);
                            }
                        }));
                        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterAmount", "TapOnContinue").build());
                        return;
                    }
                }
                str = null;
                SnappChargeRechargeRequest snappChargeRechargeRequest2 = new SnappChargeRechargeRequest(j, str2, name, SnappChargeRechargeRequest.DEEP_LINK_AFTER_CHARGE, type, str);
                addDisposable(this.c.rechargeSimCard(snappChargeRechargeRequest2).subscribe(new g(snappChargeRechargeRequest2, cVar) {
                    private final /* synthetic */ SnappChargeRechargeRequest f$1;
                    private final /* synthetic */ c f$2;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                    }

                    public final void accept(Object obj) {
                        a.this.a(this.f$1, this.f$2, (SubmitChargeResponse) obj);
                    }
                }, new g() {
                    public final void accept(Object obj) {
                        a.a(c.this, (Throwable) obj);
                    }
                }));
                c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterAmount", "TapOnContinue").build());
                return;
            }
            c cVar2 = (c) getPresenter();
            if (!(cVar2.getView() == null || ((ChargeSelectAmountView) cVar2.getView()).getContext() == null)) {
                new r(((ChargeSelectAmountView) cVar2.getView()).getContext()).showNoInternetDialog();
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(SnappChargeRechargeRequest snappChargeRechargeRequest, c cVar, SubmitChargeResponse submitChargeResponse) throws Exception {
        if (!(submitChargeResponse == null || getRouter() == null)) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(cab.snapp.passenger.units.charge_confirm_payment.a.EXTRA_PAYMENT_REQUEST, snappChargeRechargeRequest);
            bundle.putParcelable(cab.snapp.passenger.units.charge_confirm_payment.a.EXTRA_PAYMENT_RESPONSE, submitChargeResponse);
            bundle.putParcelable(cab.snapp.passenger.units.charge_confirm_payment.a.EXTRA_OPERATOR, this.h);
            bundle.putParcelable(cab.snapp.passenger.units.charge_confirm_payment.a.EXTRA_SELECTED_PACKAGE, this.e);
            ((d) getRouter()).navigateToChargeConfirmPayment(bundle);
        }
        if (cVar.getView() != null) {
            ((ChargeSelectAmountView) cVar.getView()).hideSubmitLoading();
        }
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(c cVar, Throwable th) throws Exception {
        String message = th.getMessage();
        if (cVar.getView() != null) {
            ((ChargeSelectAmountView) cVar.getView()).showErrorMessage(message);
            ((ChargeSelectAmountView) cVar.getView()).hideSubmitLoading();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(long j) {
        this.g = j;
        if (getPresenter() != null) {
            ((c) getPresenter()).a(this.g > 0);
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterAmount", "Show").build());
        if (this.g > 0 && getPresenter() != null) {
            ((c) getPresenter()).a(true);
            ((c) getPresenter()).init(this.g);
        }
        c cVar = (c) getPresenter();
        if (cVar != null) {
            if (this.f672b == null) {
                cVar.onBeforeRequest();
                addDisposable(this.c.getOperatorChargeConfig(this.h.getId()).subscribe(new g() {
                    public final void accept(Object obj) {
                        a.this.a((OperatorConfigResponse) obj);
                    }
                }, new g() {
                    public final void accept(Object obj) {
                        a.b(c.this, (Throwable) obj);
                    }
                }));
                return;
            }
            c();
        }
    }

    static void b() {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterAmount", "FocusOnOtherAmount").build());
    }
}
