package cab.snapp.passenger.units.footer.driver_assigned_footer;

import android.app.Activity;
import android.view.View;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.PlateNumber;
import cab.snapp.passenger.data.models.ShowCaseItemDao;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.play.R;
import javax.inject.Inject;

public final class c extends BasePresenter<DriverAssignedFooterView, a> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    o f763a;

    public final void onRideIsFree() {
        if (getView() != null) {
            ((DriverAssignedFooterView) getView()).displayRideIsFreeDialog();
            ((DriverAssignedFooterView) getView()).hidePayCostLoading();
        }
    }

    public final void onViewVisibilityUpdate(Boolean bool) {
        if (getView() != null) {
            if (bool.booleanValue()) {
                ((DriverAssignedFooterView) getView()).translateUpBaseView();
            } else {
                ((DriverAssignedFooterView) getView()).translateDownBaseView();
            }
        }
    }

    public final void onDataReady(boolean z, String str, String str2, String str3, PlateNumber plateNumber) {
        if (getView() != null) {
            ((DriverAssignedFooterView) getView()).setDriverName(str);
            if (!z) {
                ((DriverAssignedFooterView) getView()).setVehicleType(str2);
            }
            if (str3 == null || str3.isEmpty()) {
                ((DriverAssignedFooterView) getView()).loadDriverAvatar((int) R.drawable.ph_profile_picture);
            } else {
                ((DriverAssignedFooterView) getView()).loadDriverAvatar(str3);
            }
            if (plateNumber != null) {
                ((DriverAssignedFooterView) getView()).setPlateNumber(plateNumber.getType(), z, plateNumber.getPartA(), plateNumber.getPartB(), plateNumber.getIranId(), plateNumber.getCharacter());
            }
        }
    }

    public final View getPayCostTextView() {
        if (getView() == null) {
            return null;
        }
        return ((DriverAssignedFooterView) getView()).findViewById(R.id.driver_assigned_footer_view_pay_cost);
    }

    public final void onInitialize() {
        if (getView() != null && (((DriverAssignedFooterView) getView()).getContext() instanceof Activity)) {
            BaseApplication.get(((DriverAssignedFooterView) getView()).getContext()).getAppComponent().inject(this);
            ShowCaseItemDao showCaseItemDao = new ShowCaseItemDao();
            showCaseItemDao.setActivity((Activity) ((DriverAssignedFooterView) getView()).getContext());
            showCaseItemDao.setView(getPayCostTextView());
            showCaseItemDao.setTitle(((DriverAssignedFooterView) getView()).getContext().getString(R.string.pay_fare_in_ride));
            showCaseItemDao.setDescription(((DriverAssignedFooterView) getView()).getContext().getString(R.string.text_app_guide_in_ride_payment_desc));
            this.f763a.showTapTargetForPayment(showCaseItemDao);
        }
    }

    public final void onReallotment(boolean z, boolean z2) {
        if (getView() != null && z2) {
            ((DriverAssignedFooterView) getView()).showMessageOfDriverReallotment(true);
        }
    }

    public final void onBeforeGetReceipt() {
        if (getView() != null) {
            ((DriverAssignedFooterView) getView()).showPayCostLoading();
        }
    }

    public final void onNotAuthorizedForInRidePayment(String str) {
        if (getView() != null) {
            ((DriverAssignedFooterView) getView()).hidePayCostLoading();
            ((DriverAssignedFooterView) getView()).showToast(str);
        }
    }

    public final void onGetReceiptFailed() {
        if (getView() != null) {
            ((DriverAssignedFooterView) getView()).hidePayCostLoading();
            ((DriverAssignedFooterView) getView()).showReceiptFailedDialog();
        }
    }

    public final void onGetReceiptSuccess() {
        if (getView() != null) {
            ((DriverAssignedFooterView) getView()).hidePayCostLoading();
        }
    }

    public final void OnRideRatingUnitIsOnForeground() {
        if (getView() != null) {
            ((DriverAssignedFooterView) getView()).dismissDialog();
        }
    }

    public final void onPayCostClicked() {
        if (((a) super.getInteractor()) != null) {
            ((a) super.getInteractor()).payCost();
        }
    }

    public final void onCallDriverClicked() {
        if (((a) super.getInteractor()) != null) {
            ((a) super.getInteractor()).callDriver();
        }
    }

    public final /* bridge */ /* synthetic */ BaseInteractor getInteractor() {
        return (a) super.getInteractor();
    }
}
