package cab.snapp.passenger.units.charge_confirm_payment;

import android.os.Bundle;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.deeplink.models.types.Host;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.passenger.data.models.charge.SIMChargeOperator;
import cab.snapp.passenger.data.models.charge.SubmitChargeResponse;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.SnappChargeRechargeRequest;
import cab.snapp.passenger.f.b;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    public static final String EXTRA_OPERATOR = "EXTRA_OPERATOR";
    public static final String EXTRA_PAYMENT_REQUEST = "EXTRA_PAYMENT_REQUEST";
    public static final String EXTRA_PAYMENT_RESPONSE = "EXTRA_PAYMENT_RESPONSE";
    public static final String EXTRA_SELECTED_PACKAGE = "EXTRA_SELECTED_PACKAGE";

    /* renamed from: a  reason: collision with root package name */
    SubmitChargeResponse f644a;

    /* renamed from: b  reason: collision with root package name */
    boolean f645b = false;
    @Inject
    d c;
    @Inject
    b d;
    private SnappChargeRechargeRequest e;
    private SIMChargeOperator f;
    private ChargePackage g;

    public void onUnitCreated() {
        super.onUnitCreated();
        BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
        if (!(getController() == null || getRouter() == null)) {
            NavController overtheMapNavigationController = getController().getOvertheMapNavigationController();
            if (overtheMapNavigationController != null) {
                ((d) getRouter()).setNavigationController(overtheMapNavigationController);
            }
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.e = (SnappChargeRechargeRequest) arguments.getParcelable(EXTRA_PAYMENT_REQUEST);
            this.f644a = (SubmitChargeResponse) arguments.getParcelable(EXTRA_PAYMENT_RESPONSE);
            this.f = (SIMChargeOperator) arguments.getParcelable(EXTRA_OPERATOR);
            this.g = (ChargePackage) arguments.getParcelable(EXTRA_SELECTED_PACKAGE);
        }
        if (getPresenter() != null) {
            ((c) getPresenter()).init(this.e, this.f644a, this.f, this.g);
        }
    }

    public void pressBack() {
        if (getActivity() != null && !getActivity().isFinishing()) {
            getActivity().onBackPressed();
        }
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("Invoice", "TapOnBack").build());
    }

    public void onUnitResume() {
        super.onUnitResume();
        boolean z = false;
        if (this.d.hasPendingDeepLink()) {
            cab.snapp.deeplink.models.a deepLink = this.d.getDeepLink();
            if (deepLink.getHost() != null && deepLink.getHost().equals(Host.Open) && deepLink.getPath1() != null && deepLink.getPath1().getValue().equals("charge")) {
                this.d.setHasPendingDeepLink(false);
                if (getRouter() != null) {
                    ((d) getRouter()).finish();
                    z = true;
                }
            }
        }
        if (!z && this.f645b && getRouter() != null) {
            ((d) getRouter()).navigateUp();
        }
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("Invoice", "Show").build());
    }
}
