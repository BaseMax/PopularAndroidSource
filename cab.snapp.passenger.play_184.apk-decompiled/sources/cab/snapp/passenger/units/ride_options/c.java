package cab.snapp.passenger.units.ride_options;

import android.view.View;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.f;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.RideWaiting;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.dialogViews.a.e;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

public final class c extends BasePresenter<RideOptionsView, a> {

    /* renamed from: a  reason: collision with root package name */
    boolean f1115a;

    /* renamed from: b  reason: collision with root package name */
    boolean f1116b;
    boolean c;
    boolean d;
    boolean e;
    boolean f = false;
    List<RideWaiting> g;
    RideWaiting h;
    String i;
    View.OnClickListener j;
    e.b k;
    String l;
    @Inject
    cab.snapp.passenger.f.b.b.c m;

    public final void onInitialize() {
        if (getView() != null && ((RideOptionsView) getView()).getContext() != null) {
            BaseApplication.get(((RideOptionsView) getView()).getContext()).getAppComponent().inject(this);
            this.j = new View.OnClickListener() {
                public final void onClick(View view) {
                    if (c.this.getInteractor() != null) {
                        ((a) c.this.getInteractor()).addWaitingOption(c.this.h);
                    }
                    if (c.this.getView() != null) {
                        ((RideOptionsView) c.this.getView()).dismissAndCancelChooseWaitingDialog();
                    }
                }
            };
            this.k = new e.b() {
                public final void onItemSelected(int i, String str) {
                    c.this.a(i, str);
                }
            };
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i2, String str) {
        List<RideWaiting> list = this.g;
        if (list != null && !list.isEmpty() && this.g.size() > i2 && this.g.get(i2) != null && this.g.get(i2).getText() != null && this.g.get(i2).getText().equalsIgnoreCase(str)) {
            this.h = this.g.get(i2);
        }
    }

    public final void onNoInternetConnection() {
        if (getView() != null && ((RideOptionsView) getView()).getContext() != null) {
            new r(((RideOptionsView) getView()).getContext()).showNoInternetDialog();
        }
    }

    private void a() {
        if (getView() != null) {
            RideOptionsView rideOptionsView = (RideOptionsView) getView();
            if (this.d) {
                rideOptionsView.setSecondDestinationDisabled();
                rideOptionsView.setSecondDestinationTextDisabled();
                rideOptionsView.setSecondDestinationIconDisabled();
            } else if (this.f1115a) {
                onSecondDestinationEnabled(this.i);
            } else {
                onSecondDestinationDisabled();
            }
            if (this.f1116b) {
                onRoundTripEnabled();
            } else {
                onRoundTripDisabled();
            }
            if (this.e) {
                rideOptionsView.setWaitingDisabled();
                rideOptionsView.setWaitingTextDisabled();
                rideOptionsView.setWaitingIconDisabled();
                rideOptionsView.setStopIconDisabled();
                rideOptionsView.setStopTextDisabled();
            } else if (this.c) {
                onWaitingEnabled(this.l);
            } else {
                onWaitingDisabled();
            }
        }
    }

    public final void onDataReady(boolean z, boolean z2, List<RideWaiting> list, boolean z3, boolean z4, boolean z5, String str, String str2, boolean z6) {
        this.f1115a = z3;
        this.f1116b = z4;
        this.c = z5;
        this.l = str;
        this.i = str2;
        this.g = list;
        this.d = z;
        this.e = z2;
        this.f = z6;
        a();
    }

    public final void onSecondDestinationDisabled() {
        RideOptionsView rideOptionsView = (RideOptionsView) getView();
        if (rideOptionsView != null) {
            rideOptionsView.setSecondDestinationUnselected();
            if (rideOptionsView.getContext() != null) {
                rideOptionsView.setSecondDestinationIcon(R.drawable.ic_pin_plus_gray);
                rideOptionsView.setSecondDestinationTextColor(rideOptionsView.getContext().getResources().getColor(R.color.grayish_2));
                rideOptionsView.setSecondDestinationText(rideOptionsView.getContext().getString(R.string.choose_second_dest));
            }
            this.f1115a = false;
        }
    }

    public final void onSecondDestinationEnabled(String str) {
        RideOptionsView rideOptionsView = (RideOptionsView) getView();
        if (rideOptionsView != null) {
            rideOptionsView.setSecondDestinationSelected();
            rideOptionsView.setSecondDestinationIcon(R.drawable.ic_pin_second_destination_green_blue);
            if (rideOptionsView.getContext() != null) {
                rideOptionsView.setSecondDestinationTextColor(rideOptionsView.getContext().getResources().getColor(R.color.colorPrimary));
                if (str == null) {
                    rideOptionsView.setSecondDestinationText(rideOptionsView.getContext().getString(R.string.second_dest));
                } else {
                    rideOptionsView.setSecondDestinationText(rideOptionsView.getContext().getString(R.string.second_dest) + str);
                }
            }
            this.f1115a = true;
        }
    }

    public final void onOptionsCanNotDisabledInRide(int i2) {
        if (getView() != null) {
            ((RideOptionsView) getView()).showToast(i2);
        }
    }

    public final void onRoundTripDisabled() {
        RideOptionsView rideOptionsView = (RideOptionsView) getView();
        if (rideOptionsView != null) {
            rideOptionsView.setRoundTripUnselected();
            if (rideOptionsView.getContext() != null) {
                rideOptionsView.setRoundTripIcon(R.drawable.ic_two_way_arrows_gray);
                rideOptionsView.setRoundTripTextColor(rideOptionsView.getContext().getResources().getColor(R.color.grayish_2));
            }
            this.f1116b = false;
        }
    }

    public final void onRoundTripEnabled() {
        RideOptionsView rideOptionsView = (RideOptionsView) getView();
        if (rideOptionsView != null) {
            rideOptionsView.setRoundTripSelected();
            if (rideOptionsView.getContext() != null) {
                rideOptionsView.setRoundTripIcon(R.drawable.ic_two_way_arrows_green_blue);
                rideOptionsView.setRoundTripTextColor(rideOptionsView.getContext().getResources().getColor(R.color.colorPrimary));
            }
            this.f1116b = true;
        }
    }

    public final void onWaitingDisabled() {
        ((RideOptionsView) this.view).setWaitingUnselected();
        if (((RideOptionsView) this.view).getContext() != null) {
            ((RideOptionsView) this.view).setWaitingTextColor(((RideOptionsView) this.view).getContext().getResources().getColor(R.color.grayish_2));
            ((RideOptionsView) this.view).setStopTimeTextColor(((RideOptionsView) this.view).getContext().getResources().getColor(R.color.grayish_2));
            ((RideOptionsView) this.view).setStopTime(((RideOptionsView) this.view).getContext().getString(R.string.total_stop_time));
        }
        ((RideOptionsView) this.view).setWaitingIcon(R.drawable.ic_clock_gray);
        ((RideOptionsView) this.view).setStopTimeIcon(R.drawable.ic_arrow_gray);
        ((RideOptionsView) getView()).setStopTimeIconTintColor(R.color.grey_waiting_time_disabled_tint);
        this.c = false;
    }

    public final void onWaitingEnabled(String str) {
        if (getView() != null && str != null) {
            ((RideOptionsView) getView()).setStopTime(str);
            ((RideOptionsView) getView()).setWaitingSelected();
            if (((RideOptionsView) getView()).getContext() != null) {
                ((RideOptionsView) getView()).setWaitingTextColor(((RideOptionsView) getView()).getContext().getResources().getColor(R.color.colorPrimary));
                ((RideOptionsView) getView()).setStopTimeTextColor(((RideOptionsView) getView()).getContext().getResources().getColor(R.color.colorPrimary));
            }
            ((RideOptionsView) getView()).setWaitingIcon(R.drawable.ic_clock_green_blue);
            ((RideOptionsView) getView()).setStopTimeIcon(R.drawable.ic_arrow_green_blue);
            ((RideOptionsView) getView()).setStopTimeIconTintColor(R.color.colorAccent);
            this.c = true;
        }
    }

    public final void onBeforeRideState() {
        if (getView() != null) {
            ((RideOptionsView) getView()).hideConfirmOptionsView();
        }
    }

    public final void onInRideState(String str, Integer num) {
        String str2;
        if (!(getView() == null || ((RideOptionsView) getView()).getContext() == null)) {
            if (str == null) {
                str2 = null;
            } else {
                String str3 = (g.getSavedLocale() == 10 || g.getSavedLocale() == 50 || g.getSavedLocale() == 40) ? "‫" : "‪";
                if (num == null) {
                    str2 = str3 + String.format(((RideOptionsView) getView()).getContext().getString(R.string.dear_user_female), new Object[]{str});
                } else if (num.intValue() == 2 && g.getSavedLocale() == 30) {
                    str2 = str3 + String.format(((RideOptionsView) getView()).getContext().getString(R.string.dear_user_female), new Object[]{str});
                } else {
                    str2 = str3 + String.format(((RideOptionsView) getView()).getContext().getString(R.string.dear_user_female), new Object[]{str});
                }
            }
            ((RideOptionsView) getView()).setUserName(str2);
        }
    }

    public final void onConfirmationNeeded(String str) {
        String str2;
        if (getView() != null) {
            if (g.isCurrentLocalRtl()) {
                str2 = "‫".concat(String.valueOf(str));
            } else {
                str2 = "‪".concat(String.valueOf(str));
            }
            ((RideOptionsView) getView()).showConfirmationDialog(R.string.options_during_ride, str2, R.string.i_inform_driver, new View.OnClickListener() {
                public final void onClick(View view) {
                    if (c.this.getInteractor() != null) {
                        ((a) c.this.getInteractor()).confirmToInformDriver();
                    }
                    if (c.this.getView() != null) {
                        ((RideOptionsView) c.this.getView()).hideLoading();
                        ((RideOptionsView) c.this.getView()).dismissConfirmationDialog();
                    }
                }
            }, 5);
        }
    }

    public final void onApplyChangesRequest() {
        if (getView() != null) {
            ((RideOptionsView) getView()).showLoading();
            ((RideOptionsView) getView()).setConfirmOptionsButtonText(null);
        }
    }

    public final void onChangeOptionsResponse() {
        a();
        if (getView() != null) {
            ((RideOptionsView) getView()).hideLoading();
            if (((RideOptionsView) getView()).getContext() != null) {
                ((RideOptionsView) getView()).setConfirmOptionsButtonText(((RideOptionsView) getView()).getContext().getString(R.string.confirm_options));
            }
        }
    }

    private void b() {
        if (!(getInteractor() == null || ((a) getInteractor()).getSnappRideDataManager() == null)) {
            if (((a) getInteractor()).getSnappRideDataManager().isInRide()) {
                this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Waiting In Ride Enable");
                return;
            }
            this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Waiting Before Ride Enable");
        }
    }

    public final void onSecondDestinationClicked() {
        if (getView() == null || ((RideOptionsView) getView()).getContext() == null || f.isUserConnectedToNetwork(((RideOptionsView) getView()).getContext())) {
            if (this.f1115a) {
                if (!(getInteractor() == null || ((a) getInteractor()).getSnappRideDataManager() == null)) {
                    cab.snapp.passenger.c.g snappRideDataManager = ((a) getInteractor()).getSnappRideDataManager();
                    if (snappRideDataManager.isInRide()) {
                        this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Second Destination Before Ride Disable");
                    } else {
                        this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Second Destination In Ride Disable");
                        this.m.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_OFF, "[disable]");
                    }
                    if (snappRideDataManager.getCurrentState() == 4) {
                        this.m.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_OFF, "[disable]");
                    }
                }
                if (getInteractor() != null) {
                    ((a) getInteractor()).disableSecondDestinationOption();
                }
            } else {
                if (!(getInteractor() == null || ((a) getInteractor()).getSnappRideDataManager() == null)) {
                    if (((a) getInteractor()).getSnappRideDataManager().isInRide()) {
                        this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Second Destination In Ride Enable");
                    } else {
                        this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Second Destination Before Ride Enable");
                    }
                }
                if (getInteractor() != null) {
                    ((a) getInteractor()).chooseSecondDestination();
                }
            }
            if (getInteractor() != null) {
                ((a) getInteractor()).onSecondDestinationClicked();
            }
            return;
        }
        onNoInternetConnection();
    }

    public final void onRoundTripClicked() {
        if (getView() == null || ((RideOptionsView) getView()).getContext() == null || f.isUserConnectedToNetwork(((RideOptionsView) getView()).getContext())) {
            if (this.f1116b) {
                if (!(getInteractor() == null || ((a) getInteractor()).getSnappRideDataManager() == null)) {
                    if (((a) getInteractor()).getSnappRideDataManager().isInRide()) {
                        this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Round Trip In Ride Disable");
                        this.m.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_IN_RIDE_OPTIONS_ROUND_OFF, "[disable]");
                    } else {
                        this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Round Trip Before Ride Disable");
                    }
                }
                if (getInteractor() != null) {
                    ((a) getInteractor()).disableRoundTripOption();
                }
            } else {
                if (!(getInteractor() == null || ((a) getInteractor()).getSnappRideDataManager() == null)) {
                    cab.snapp.passenger.c.g snappRideDataManager = ((a) getInteractor()).getSnappRideDataManager();
                    if (snappRideDataManager.isInRide()) {
                        this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Round Trip In Ride Enable");
                        if (snappRideDataManager.getCurrentState() == 4) {
                            this.m.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS_ROUND_ON, "[enable]");
                        } else {
                            this.m.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_IN_RIDE_OPTIONS_ROUND_ON, "in ride options - round - enabled");
                        }
                    } else {
                        this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Round Trip Before Ride Enable");
                        this.m.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_ROUND_ON, "[enable]");
                    }
                }
                if (getInteractor() != null) {
                    ((a) getInteractor()).enableRoundTripOption();
                }
            }
            if (this.interactor != null) {
                ((a) getInteractor()).onRoundTripClicked();
            }
            return;
        }
        onNoInternetConnection();
    }

    public final void onWaitingClicked() {
        if (getView() == null || ((RideOptionsView) getView()).getContext() == null || f.isUserConnectedToNetwork(((RideOptionsView) getView()).getContext())) {
            if (!this.c || this.f) {
                b();
                if (getView() != null) {
                    RideOptionsView rideOptionsView = (RideOptionsView) getView();
                    if (!(rideOptionsView.getContext() == null || this.g == null)) {
                        ArrayList arrayList = new ArrayList();
                        for (RideWaiting next : this.g) {
                            if (next != null) {
                                arrayList.add(next.getText());
                            }
                        }
                        rideOptionsView.showChooseWaitingDialog(arrayList, this.k, rideOptionsView.getContext().getString(R.string.footer_discount_save), this.j);
                    }
                } else {
                    return;
                }
            } else {
                if (!(getInteractor() == null || ((a) getInteractor()).getSnappRideDataManager() == null)) {
                    if (((a) getInteractor()).getSnappRideDataManager().isInRide()) {
                        this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Waiting In Ride Disable");
                    } else {
                        this.m.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Waiting Before Ride Disable");
                        this.m.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_STOP_OFF, "[disable]");
                    }
                }
                if (getInteractor() != null) {
                    ((a) getInteractor()).disableWaitingOption();
                    return;
                }
            }
            return;
        }
        onNoInternetConnection();
    }

    public final void onStopTimeClicked() {
        b();
        if (getView() == null || ((RideOptionsView) getView()).getContext() == null || f.isUserConnectedToNetwork(((RideOptionsView) getView()).getContext())) {
            if (!(getView() == null || ((RideOptionsView) getView()).getContext() == null || this.g == null)) {
                ArrayList arrayList = new ArrayList();
                for (RideWaiting next : this.g) {
                    if (next != null) {
                        arrayList.add(next.getText());
                    }
                }
                ((RideOptionsView) getView()).showChooseWaitingDialog(arrayList, this.k, ((RideOptionsView) getView()).getContext().getString(R.string.footer_discount_save), this.j);
            }
            return;
        }
        onNoInternetConnection();
    }

    public final void onConfirmOptionsClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).applyEditOptions();
        }
    }
}
