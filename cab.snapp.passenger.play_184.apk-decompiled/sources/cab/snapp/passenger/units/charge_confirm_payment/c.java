package cab.snapp.passenger.units.charge_confirm_payment;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.passenger.data.models.charge.SIMChargeOperator;
import cab.snapp.passenger.data.models.charge.SubmitChargeResponse;
import cab.snapp.passenger.data_access_layer.network.requests.SnappChargeRechargeRequest;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.b;
import com.a.a.a;

public final class c extends BasePresenter<ChargeConfirmPaymentView, a> {
    public final void init(SnappChargeRechargeRequest snappChargeRechargeRequest, SubmitChargeResponse submitChargeResponse, SIMChargeOperator sIMChargeOperator, ChargePackage chargePackage) {
        if (getView() != null) {
            ((ChargeConfirmPaymentView) getView()).fillOperator(sIMChargeOperator);
            ((ChargeConfirmPaymentView) getView()).fillChargeAmount(snappChargeRechargeRequest.getAmount());
            ((ChargeConfirmPaymentView) getView()).fillPayableAmount(submitChargeResponse.getAmount());
            ((ChargeConfirmPaymentView) getView()).handleTax(submitChargeResponse.getDescription());
            ((ChargeConfirmPaymentView) getView()).fillChargeTypeAndMobile(snappChargeRechargeRequest, chargePackage);
        }
    }

    public final void onBackClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).pressBack();
        }
    }

    public final void paymentButtonClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            try {
                aVar.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(aVar.f644a.getUrl())));
                aVar.f645b = true;
            } catch (Exception e) {
                b.makeText((Context) aVar.getActivity(), aVar.getActivity().getString(R.string.error_no_browser_available)).textColor(aVar.getActivity().getResources().getColor(R.color.cherry)).show();
                a.logException(e);
            }
        }
    }
}
