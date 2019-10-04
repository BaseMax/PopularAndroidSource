package cab.snapp.passenger.units.second_destination;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import com.google.android.gms.common.api.k;
import javax.inject.Inject;

public final class d extends BasePresenter<SecondDestinationView, b> {

    /* renamed from: a  reason: collision with root package name */
    View.OnClickListener f1174a = new View.OnClickListener() {
        public final void onClick(View view) {
            ((b) d.this.getInteractor()).reportPopUpLocationPositiveButtonToAppMetrica();
            view.getContext().startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
        }
    };

    /* renamed from: b  reason: collision with root package name */
    View.OnClickListener f1175b = new View.OnClickListener() {
        public final void onClick(View view) {
            ((b) d.this.getInteractor()).reportPopUpLocationNegativeButtonClickedToAppMetrica();
        }
    };
    View.OnClickListener c = new View.OnClickListener() {
        public final void onClick(View view) {
            ((b) d.this.getInteractor()).reportPopUpLocationPositiveButtonToAppMetrica();
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", view.getContext().getPackageName(), null));
            view.getContext().startActivity(intent);
        }
    };
    View.OnClickListener d = new View.OnClickListener() {
        public final void onClick(View view) {
            ((b) d.this.getInteractor()).reportPopUpLocationNegativeButtonClickedToAppMetrica();
        }
    };
    @Inject
    c e;
    private boolean f;

    public final void onPinClicked() {
        if (!(this.f || getInteractor() == null || ((b) getInteractor()).getSnappRideDataManager() == null)) {
            g snappRideDataManager = ((b) getInteractor()).getSnappRideDataManager();
            int currentState = snappRideDataManager.getCurrentState();
            if (!snappRideDataManager.isInRide()) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON, "[map]");
            } else if (currentState == 4) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_ON, "[map]");
            } else {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON, "[map]");
            }
        }
        if (getInteractor() != null) {
            ((b) getInteractor()).secondDestinationSelected();
        }
    }

    public final void onMyLocationClicked() {
        this.f = true;
        if (!(getInteractor() == null || ((b) getInteractor()).getSnappRideDataManager() == null)) {
            g snappRideDataManager = ((b) getInteractor()).getSnappRideDataManager();
            int currentState = snappRideDataManager.getCurrentState();
            if (!snappRideDataManager.isInRide()) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON, "[gps]");
            } else if (currentState == 4) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_ON, "[gps]");
            } else {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON, "[gps]");
            }
        }
        if (getInteractor() != null) {
            ((b) getInteractor()).showMyLocation();
            ((b) getInteractor()).reportOnMyLocationClickedToAppMetrica();
        }
    }

    public final void onBackPressed() {
        if (getInteractor() != null) {
            ((b) getInteractor()).handleBack();
        }
    }

    public final void onMapMoveStarted() {
        this.f = false;
        if (getView() != null) {
            ((SecondDestinationView) getView()).makePinSmall();
        }
    }

    public final void onMapMoveFinished() {
        if (getView() != null) {
            ((SecondDestinationView) getView()).makePinNormal();
        }
    }

    public final void onInitialize(boolean z) {
        if (getView() != null && ((SecondDestinationView) getView()).getContext() != null) {
            BaseApplication.get(((SecondDestinationView) getView()).getContext()).getAppComponent().inject(this);
            if (z) {
                ((SecondDestinationView) getView()).showMapBoxCopyright();
            } else {
                ((SecondDestinationView) getView()).hideMapBoxCopyright();
            }
            ((SecondDestinationView) getView()).setToolbarTitle(R.string.where_is_your_second_dest);
            ((SecondDestinationView) getView()).setToolbarBackButton();
            ((SecondDestinationView) getView()).setToolbarMenu();
        }
    }

    public final void onAddressUpdated(String str) {
        if (getView() != null) {
            ((SecondDestinationView) getView()).setFormattedAddress(str);
        }
    }

    public final void onLocationIsUnavailable(final k kVar) {
        if (getView() != null) {
            if (kVar != null) {
                ((SecondDestinationView) getView()).showNoLocationDialog(new View.OnClickListener() {
                    public final void onClick(View view) {
                        if (d.this.getView() != null) {
                            ((SecondDestinationView) d.this.getView()).cancelNoLocationDialog();
                        }
                        if (d.this.getInteractor() != null) {
                            ((b) d.this.getInteractor()).requestEditLocationSetting(kVar);
                            ((b) d.this.getInteractor()).reportPopUpLocationPositiveButtonToAppMetrica();
                        }
                    }
                }, this.f1175b);
            } else {
                ((SecondDestinationView) getView()).showNoLocationDialog(this.f1174a, this.f1175b);
            }
        }
    }

    public final void onPermissionRequestIsDenied() {
        if (getView() != null) {
            ((SecondDestinationView) getView()).showNoPermissionDialog(this.c, this.d);
        }
    }

    public final void onSearchClick() {
        if (!(getInteractor() == null || ((b) getInteractor()).getSnappRideDataManager() == null)) {
            g snappRideDataManager = ((b) getInteractor()).getSnappRideDataManager();
            if (snappRideDataManager.isInRide()) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_SEARCH, "[tap]");
            }
            if (snappRideDataManager.getCurrentState() == 4) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS_SEARCH, "[tap]");
            }
        }
        if (getInteractor() != null) {
            ((b) getInteractor()).navigateToSearch();
        }
    }
}
