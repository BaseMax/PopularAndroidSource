package cab.snapp.passenger.units.footer.mainfooter;

import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;

public final class c extends BasePresenter<MainFooterView, a> {
    public final void handleDestinationSelectedState() {
    }

    public final void handleDriverArrivedState() {
    }

    public final void handlePassengerBoardedState() {
    }

    public final void handleRequestAcceptedState() {
    }

    public final void handleRideFinishedState() {
    }

    public final void handleRideRequestedState() {
    }

    public final void showVehiclesLoading() {
        if (getView() != null) {
            ((MainFooterView) getView()).vehiclesProgressBar.setVisibility(0);
            ((MainFooterView) getView()).vehiclesTextView.setVisibility(8);
        }
    }

    public final void hideVehiclesLoading() {
        if (getView() != null) {
            ((MainFooterView) getView()).vehiclesProgressBar.setVisibility(8);
            ((MainFooterView) getView()).vehiclesTextView.setVisibility(0);
        }
    }

    public final void setAddress(String str) {
        if (getView() != null) {
            ((MainFooterView) getView()).addressTextView.setText(str);
        }
    }

    public final void setVehiclesCount(int i) {
        if (getView() != null) {
            if (i == 0) {
                ((MainFooterView) getView()).vehiclesTextView.setText(R.string.footer_select_origin);
            } else {
                ((MainFooterView) getView()).vehiclesTextView.setText(R.string.footer_available_snapps);
                ((MainFooterView) getView()).vehiclesTextView.setText(((MainFooterView) getView()).vehiclesTextView.getText().toString().replace("%s", g.changeNumbersBasedOnCurrentLocale(String.valueOf(i))));
            }
            hideVehiclesLoading();
        }
    }

    public final void setDestinationAddress(String str) {
        if (getView() != null) {
            ((MainFooterView) getView()).destAddressTextView.setText(str);
        }
    }

    public final void showSelectOriginLayout() {
        if (getView() != null) {
            ((MainFooterView) getView()).selectOriginLayout.setVisibility(0);
            ((MainFooterView) getView()).selectDestinationLayout.setVisibility(8);
        }
    }

    public final void showDestinationLayout() {
        if (getView() != null) {
            ((MainFooterView) getView()).selectOriginLayout.setVisibility(8);
            ((MainFooterView) getView()).originAddressTextView.setText(((MainFooterView) getView()).addressTextView.getText());
            ((MainFooterView) getView()).selectDestinationLayout.setVisibility(0);
        }
    }

    public final void handleIdleState() {
        showSelectOriginLayout();
    }

    public final void handleOriginSelectedState() {
        showDestinationLayout();
    }
}
