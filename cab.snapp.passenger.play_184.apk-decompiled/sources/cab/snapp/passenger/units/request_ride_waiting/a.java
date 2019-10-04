package cab.snapp.passenger.units.request_ride_waiting;

import android.app.Activity;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.ProfileMeta;
import cab.snapp.passenger.data.models.WaitingTips;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.data_access_layer.network.responses.CancelRideRequestResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RideResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import java.util.Calendar;
import java.util.List;
import java.util.Random;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    public static final String SHOULD_REQUEST_KEY = "SHOULD_REQUEST_KEY";
    @Inject

    /* renamed from: a  reason: collision with root package name */
    b f1063a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    g f1064b;
    @Inject
    c c;
    private Random d;
    /* access modifiers changed from: private */
    public boolean e = false;
    private boolean f = false;
    private boolean g = false;
    private boolean h = true;

    private void b() {
        if (getPresenter() != null && getActivity() != null) {
            int i = Calendar.getInstance().get(11);
            boolean z = false;
            Boolean valueOf = Boolean.valueOf(i < 6 || i > 18);
            if (this.f1064b.getServiceType() == 5 || this.f1064b.getServiceType() == 7) {
                z = true;
            }
            String str = "waiting_motorcycle.gif";
            if (valueOf.booleanValue()) {
                if (!z) {
                    str = "waiting_car_night.gif";
                }
                ((c) getPresenter()).onNightMode();
            } else {
                if (!z) {
                    str = "waiting_car_day.gif";
                }
                ((c) getPresenter()).onDayMode();
            }
            ((c) getPresenter()).onWaitingGifReady("file:///android_asset/gifs/" + str);
        }
    }

    /* access modifiers changed from: private */
    public void c() {
        if (getActivity() instanceof RootActivity) {
            if (this.f1064b.getCurrentState() == 4 || this.f1064b.getCurrentState() == 5 || this.f1064b.getCurrentState() == 6) {
                if (getRouter() != null && this.e) {
                    ((RootActivity) getActivity()).setShouldHandleBack(true);
                    if (getPresenter() != null) {
                        ((c) getPresenter()).onReleaseResources();
                    }
                    this.e = false;
                    ((e) getRouter()).navigateUp();
                }
            } else if (!this.f1064b.isRideRequested() && !this.f && getRouter() != null && this.e) {
                ((RootActivity) getActivity()).setShouldHandleBack(true);
                if (getPresenter() != null) {
                    ((c) getPresenter()).onReleaseResources();
                }
                this.e = false;
                ((e) getRouter()).navigateUp();
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(CancelRideRequestResponse cancelRideRequestResponse) throws Exception {
        this.g = false;
        this.c.reportEvent(c.e.PASSENGER_CANCELED_BEFORE_ACCEPT);
        this.c.sendAnalyticsEvent(c.C0021c.RIDE, c.b.CANCEL, "Cancel on waiting dialog");
        this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_CANCEL_RIDE_REQUEST, "waiting screen- cancel ride request");
        if (cancelRideRequestResponse.getRideInformation() == null && getPresenter() != null) {
            ((c) getPresenter()).onCancelRideSuccessful(R.string.ride_request_canceled_successfuly);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        this.g = false;
        if (getPresenter() != null) {
            if (!(th instanceof e) || ((e) th).getErrorCode() != 1020) {
                ((c) getPresenter()).onCancelRideError(R.string.ride_cancel_failed);
            } else if (getPresenter() != null) {
                ((c) getPresenter()).onCancelRideSuccessful(R.string.ride_request_canceled_successfuly);
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void a() {
        this.f = false;
        if (getRouter() != null) {
            ((RootActivity) getActivity()).setShouldHandleBack(true);
            this.e = false;
            ((e) getRouter()).navigateUp();
        }
    }

    public void onUnitCreated() {
        String str;
        super.onUnitCreated();
        if (getPresenter() != null && getActivity() != null && (getActivity() instanceof RootActivity)) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (!(getController() == null || getRouter() == null)) {
                ((e) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
            }
            ((RootActivity) getActivity()).setShouldHandleBack(false);
            if (getArguments() != null && getArguments().containsKey(SHOULD_REQUEST_KEY)) {
                this.h = getArguments().getBoolean(SHOULD_REQUEST_KEY);
            }
            if (!this.f && this.h) {
                this.f = true;
                if (this.f1064b.getCurrentState() == 2) {
                    addDisposable(this.f1064b.requestRide().subscribe(new io.reactivex.e.g() {
                        public final void accept(Object obj) {
                            a.this.a((RideResponse) obj);
                        }
                    }, new io.reactivex.e.g() {
                        public final void accept(Object obj) {
                            a.this.a((Throwable) obj);
                        }
                    }));
                }
            }
            String string = getActivity().getString(R.string.snapp);
            if (this.f1064b.getServiceTypeModel() != null) {
                string = this.f1064b.getServiceTypeModel().getStName();
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize(this.f1064b.getServiceType() == 5 || this.f1064b.getServiceType() == 7, this.f1064b.isRideReallotted(), string);
            }
            Activity activity = getActivity();
            if (activity != null && !activity.isFinishing()) {
                ConfigResponse config = this.f1063a.getConfig();
                if (config != null) {
                    String str2 = null;
                    if (config.getListWaitingTips() == null || config.getListWaitingTips().isEmpty()) {
                        ProfileResponse profileResponse = config.getProfileResponse();
                        if (profileResponse != null) {
                            String fullname = profileResponse.getFullname();
                            ProfileMeta profileMeta = profileResponse.getProfileMeta();
                            if (profileMeta != null) {
                                int intValue = profileMeta.getGender().intValue();
                                if (cab.snapp.passenger.f.g.getSavedLocale() != 30 || intValue == 1) {
                                    str2 = String.format(activity.getResources().getString(R.string.dear_user), new Object[]{fullname});
                                } else {
                                    str2 = String.format(activity.getResources().getString(R.string.dear_user_female), new Object[]{fullname});
                                }
                            } else {
                                str2 = String.format(activity.getResources().getString(R.string.dear_user), new Object[]{fullname});
                            }
                            str = String.format(activity.getResources().getString(R.string.ride_request_waiting_default_message), new Object[]{profileResponse.getReferralCode()});
                        } else {
                            str = null;
                        }
                    } else {
                        if (this.d == null) {
                            this.d = new Random();
                        }
                        List<WaitingTips> listWaitingTips = config.getListWaitingTips();
                        WaitingTips waitingTips = listWaitingTips.get(this.d.nextInt(listWaitingTips.size()));
                        str2 = waitingTips.getTitle();
                        str = waitingTips.getDesc();
                    }
                    ((c) getPresenter()).onWaitingMessageReady(str2, str);
                    if (this.f1064b.getServiceType() == 5 || this.f1064b.getServiceType() == 7) {
                        if (config.getWaitingPackageGif() == null || config.getWaitingPackageGif().isEmpty()) {
                            b();
                        } else {
                            ((c) getPresenter()).onWaitingGifReady(config.getWaitingPackageGif());
                        }
                    } else if (config.getWaitingGif() == null || config.getWaitingGif().isEmpty()) {
                        b();
                    } else {
                        ((c) getPresenter()).onWaitingGifReady(config.getWaitingGif());
                    }
                }
            }
            addDisposable(this.f1064b.getUpdateSignalObservable().subscribe(new io.reactivex.e.g<Integer>() {
                public final void accept(Integer num) throws Exception {
                    if (num == null || num.intValue() != 2000) {
                        if (!(num == null || num.intValue() != 1015 || a.this.getPresenter() == null || a.this.f1064b.getServiceTypeModel() == null)) {
                            ((c) a.this.getPresenter()).onReallotment(a.this.f1064b.isRideReallotted(), a.this.f1064b.getServiceTypeModel().getStName());
                        }
                    } else if (a.this.getActivity() instanceof RootActivity) {
                        if (a.this.f1064b.getCurrentState() != 2) {
                            a.this.c();
                        } else if (a.this.getRouter() != null && a.this.e) {
                            ((RootActivity) a.this.getActivity()).setShouldHandleBack(true);
                            if (a.this.getPresenter() != null) {
                                ((c) a.this.getPresenter()).onReleaseResources();
                            }
                            boolean unused = a.this.e = false;
                            ((e) a.this.getRouter()).navigateUp();
                        }
                    }
                }
            }));
            this.c.reportScreenName("");
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(RideResponse rideResponse) throws Exception {
        this.f = false;
        this.c.sendAnalyticsEvent(c.C0021c.RIDE, c.b.REQUEST, "Successful request");
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() == null || !(th instanceof e)) {
            a();
            return;
        }
        int errorCode = ((e) th).getErrorCode();
        if (errorCode == 1050) {
            ((c) getPresenter()).onUnderMaintenance();
            return;
        }
        if (errorCode == 1037 || errorCode == 1035 || errorCode == 1063) {
            ((c) getPresenter()).onRideRequestError(th.getMessage());
            if (errorCode == 1037) {
                this.f1064b.reportVoucherIsNotValidToMarketing();
            }
            a();
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.e = true;
        c();
    }

    public void cancelRideRequest() {
        c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("request", "cancel").addOuterKeyToCurrentAsValue("selectServiceType").build());
        if (this.e && !this.g) {
            this.g = true;
            addDisposable(this.f1064b.cancelRideRequest().subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((CancelRideRequestResponse) obj);
                }
            }, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.b((Throwable) obj);
                }
            }));
        }
    }
}
