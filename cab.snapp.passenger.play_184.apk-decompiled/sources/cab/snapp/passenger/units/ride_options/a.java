package cab.snapp.passenger.units.ride_options;

import android.view.View;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.Options;
import cab.snapp.passenger.data.models.RideWaiting;
import cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.footer.ride_request_footer.RideRequestFooterController;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;
import java.util.UUID;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    private static final String g = UUID.randomUUID().toString();
    private static final String h = UUID.randomUUID().toString();

    /* renamed from: a  reason: collision with root package name */
    List<RideWaiting> f1110a;

    /* renamed from: b  reason: collision with root package name */
    int f1111b = 1;
    Options c;
    @Inject
    g d;
    @Inject
    f e;
    @Inject
    c f;
    private boolean i = false;
    private boolean j = false;
    private String k = null;
    private LatLng l = null;
    /* access modifiers changed from: private */
    public LatLng m = null;
    /* access modifiers changed from: private */
    public boolean n = false;
    /* access modifiers changed from: private */
    public String o = null;

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(Throwable th) throws Exception {
    }

    public static String getPrivateChannelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(g);
    }

    public static String getConfirmationPrivateChannelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(h);
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize();
            }
            if (!(getRouter() == null || getActivity() == null || !(getActivity() instanceof RootActivity) || getRouter() == null)) {
                ((e) getRouter()).setNavigationController(((RootActivity) getActivity()).getOverTheMapNavController());
            }
            addDisposable(this.d.getUpdateSignalObservable().subscribe(new io.reactivex.e.g<Integer>() {
                public final void accept(Integer num) throws Exception {
                    if (num != null && (num.intValue() == 2000 || num.intValue() == 1005 || num.intValue() == 1008 || num.intValue() == 1007)) {
                        a aVar = a.this;
                        aVar.a(Integer.valueOf(aVar.d.getCurrentState()), true);
                        if (num.intValue() == 1005) {
                            a aVar2 = a.this;
                            LatLng unused = aVar2.m = aVar2.d.getSecondDestinationLatLng();
                        } else if (num.intValue() == 1008) {
                            a aVar3 = a.this;
                            String unused2 = aVar3.o = aVar3.d.getWaitingKey();
                        } else if (num.intValue() == 1007) {
                            a aVar4 = a.this;
                            boolean unused3 = aVar4.n = aVar4.d.isRoundTrip();
                        }
                    }
                }
            }));
            addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(getConfirmationPrivateChannelId(), new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((Boolean) obj);
                }
            }));
            a(Integer.valueOf(this.d.getCurrentState()), false);
            this.f.reportScreenName("");
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Boolean bool) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onChangeOptionsResponse();
        }
        a(Integer.valueOf(this.d.getCurrentState()), true);
    }

    public void onUnitResume() {
        super.onUnitResume();
        a(Integer.valueOf(this.d.getCurrentState()), true);
    }

    public View getMainView() {
        if (getController() == null || getController().getParentController() == null || !(getController().getParentController() instanceof RideRequestFooterController) || getController().getParentController().getControllerInteractor() == null || !(getController().getParentController().getControllerInteractor() instanceof cab.snapp.passenger.units.footer.ride_request_footer.a)) {
            return null;
        }
        return ((cab.snapp.passenger.units.footer.ride_request_footer.a) getController().getParentController().getControllerInteractor()).getMainView();
    }

    private static void a(boolean z) {
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getPrivateChannelId(), Boolean.valueOf(z));
    }

    /* access modifiers changed from: private */
    public void a(Integer num, boolean z) {
        boolean z2;
        LatLng latLng;
        String str;
        if (!(num == null || num.intValue() == 0 || num.intValue() == 1 || num.intValue() == 7 || num.intValue() == 3)) {
            this.c = this.d.getOptions();
            this.f1110a = this.d.getRideWaitingList();
            this.f1111b = this.d.getServiceType();
            int i2 = this.f1111b;
            boolean z3 = i2 == 6 || i2 == 5;
            String str2 = null;
            if (num.intValue() != 2) {
                Options options = this.c;
                if (options != null) {
                    if (options.getExtraDestination() != null) {
                        this.i = true;
                        str = this.c.getExtraDestination().getFormattedAddress();
                        latLng = new LatLng(this.c.getExtraDestination().getLat(), this.c.getExtraDestination().getLng());
                    } else if (!z || this.d.getSecondDestinationLatLng() == null) {
                        str = null;
                        latLng = null;
                    } else {
                        latLng = this.d.getSecondDestinationLatLng();
                        str = null;
                    }
                    if (this.c.getRoundTripPrice() > 0.0d) {
                        this.j = true;
                        z2 = true;
                    } else {
                        z2 = z ? this.d.isRoundTrip() : false;
                    }
                    if (this.c.getSnappWaiting() != null && this.c.getSnappWaiting().getKey() != null && !this.c.getSnappWaiting().getKey().isEmpty()) {
                        this.k = this.c.getSnappWaiting().getKey();
                        this.c.getSnappWaiting().getKey();
                        str2 = this.c.getSnappWaiting().getText();
                    } else if (z && this.d.getWaitingKey() != null) {
                        String waitingKey = this.d.getWaitingKey();
                        if (waitingKey != null) {
                            List<RideWaiting> list = this.f1110a;
                            if (list != null) {
                                for (RideWaiting next : list) {
                                    if (!(next == null || next.getKey() == null || !next.getKey().equals(waitingKey))) {
                                        str2 = next.getText();
                                    }
                                }
                            }
                        }
                    }
                } else {
                    this.i = false;
                    this.j = false;
                    this.k = null;
                    if (z) {
                        LatLng secondDestinationLatLng = this.d.getSecondDestinationLatLng() != null ? this.d.getSecondDestinationLatLng() : null;
                        boolean isRoundTrip = this.d.isRoundTrip();
                        if (this.d.getWaitingKey() != null) {
                            String waitingKey2 = this.d.getWaitingKey();
                            if (waitingKey2 != null) {
                                List<RideWaiting> list2 = this.f1110a;
                                if (list2 != null) {
                                    String str3 = null;
                                    for (RideWaiting next2 : list2) {
                                        if (!(next2 == null || next2.getKey() == null || !next2.getKey().equals(waitingKey2))) {
                                            str3 = next2.getText();
                                        }
                                    }
                                    z2 = isRoundTrip;
                                    latLng = secondDestinationLatLng;
                                    str = null;
                                    str2 = str3;
                                }
                            }
                        }
                        z2 = isRoundTrip;
                        latLng = secondDestinationLatLng;
                        str = null;
                    } else {
                        str = null;
                        latLng = null;
                        z2 = false;
                    }
                }
                if (getPresenter() != null) {
                    ProfileResponse profile = this.e.getProfile();
                    if (profile == null) {
                        addDisposable(this.e.fetchAndRefreshProfile().subscribe(new io.reactivex.e.g() {
                            public final void accept(Object obj) {
                                a.this.a((ProfileResponse) obj);
                            }
                        }, $$Lambda$a$q1CU5tdv2ptOnWxGJ6ZEFEsGY.INSTANCE));
                    } else if (profile.getProfileMeta() == null || profile.getProfileMeta().getGender() == null) {
                        ((c) getPresenter()).onInRideState(profile.getFullname(), 1);
                    } else {
                        ((c) getPresenter()).onInRideState(profile.getFullname(), profile.getProfileMeta().getGender());
                    }
                }
            } else {
                if (getPresenter() != null) {
                    ((c) getPresenter()).onBeforeRideState();
                }
                String waitingKey3 = this.d.getWaitingKey();
                if (waitingKey3 != null) {
                    List<RideWaiting> list3 = this.f1110a;
                    if (list3 != null) {
                        for (RideWaiting next3 : list3) {
                            if (!(next3 == null || next3.getKey() == null || !next3.getKey().equals(waitingKey3))) {
                                str2 = next3.getText();
                            }
                        }
                    }
                }
                str = this.d.getSecondDestinationFormattedAddress();
                latLng = this.d.getSecondDestinationLatLng();
                z2 = this.d.isRoundTrip();
            }
            String str4 = str;
            String str5 = str2;
            boolean z4 = z2;
            if (this.l == null && this.d.getSecondDestinationLatLng() != null) {
                this.l = this.d.getSecondDestinationLatLng();
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).onDataReady(z3, z3, this.f1110a, latLng != null, z4, str5 != null, str5, str4, this.k != null);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ProfileResponse profileResponse) throws Exception {
        if (profileResponse.getProfileMeta() == null || profileResponse.getProfileMeta().getGender() == null) {
            ((c) getPresenter()).onInRideState(profileResponse.getFullname(), 1);
        } else {
            ((c) getPresenter()).onInRideState(profileResponse.getFullname(), profileResponse.getProfileMeta().getGender());
        }
    }

    public void chooseSecondDestination() {
        if (getRouter() != null && (getActivity() instanceof RootActivity)) {
            ((e) getRouter()).navigateToChooseSecondDestinationUnit(null);
        }
    }

    public void disableSecondDestinationOption() {
        if (!this.i) {
            this.d.setSecondDestinationLatLng(null);
            this.l = null;
            if (getPresenter() != null) {
                ((c) getPresenter()).onSecondDestinationDisabled();
            }
            if (this.d.getCurrentState() == 2) {
                c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "secondDestination[disable]").addOuterKeyToCurrentAsValue("selectServiceType").build());
            } else if (this.d.getCurrentState() == 4) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[disable]").addOuterKeyToCurrentAsValue("driverAssigned").build());
            } else if (this.d.getCurrentState() == 5) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[disable]").addOuterKeyToCurrentAsValue("driverArrived").build());
            } else if (this.d.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[disable]").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        } else if (getPresenter() != null) {
            ((c) getPresenter()).onOptionsCanNotDisabledInRide(R.string.selected_options_are_disabled_in_ride);
            this.f.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_OFF, "can not change in ride options");
        }
    }

    public void disableRoundTripOption() {
        if (!this.j) {
            this.d.setRoundTrip(false);
            if (getPresenter() != null) {
                ((c) getPresenter()).onRoundTripDisabled();
            }
            if (this.d.getCurrentState() == 4) {
                this.f.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS_ROUND_OFF, "[disable]");
            } else {
                this.f.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_IN_RIDE_OPTIONS_ROUND_OFF, "in ride options - round - disabled");
            }
            if (this.d.getCurrentState() == 2) {
                c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "roundtrip[disable]").addOuterKeyToCurrentAsValue("selectServiceType").build());
            } else if (this.d.getCurrentState() == 4) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "roundtrip[disable]").addOuterKeyToCurrentAsValue("driverAssigned").build());
            } else if (this.d.getCurrentState() == 5) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "roundtrip[disable]").addOuterKeyToCurrentAsValue("driverArrived").build());
            } else if (this.d.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "roundtrip[disable]").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        } else if (getPresenter() != null) {
            ((c) getPresenter()).onOptionsCanNotDisabledInRide(R.string.selected_options_are_disabled_in_ride);
        }
    }

    public void enableRoundTripOption() {
        this.d.setRoundTrip(true);
        if (getPresenter() != null) {
            ((c) getPresenter()).onRoundTripEnabled();
        }
    }

    public void disableWaitingOption() {
        if (this.k == null) {
            this.d.setWaitingKey(null);
            if (getPresenter() != null) {
                ((c) getPresenter()).onWaitingDisabled();
            }
            a();
        } else if (getPresenter() != null) {
            ((c) getPresenter()).onOptionsCanNotDisabledInRide(R.string.selected_options_are_disabled_in_ride);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00a7, code lost:
        if (r0.equals(r5.k) == false) goto L_0x00a9;
     */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0123  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void addWaitingOption(cab.snapp.passenger.data.models.RideWaiting r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L_0x0003
            return
        L_0x0003:
            java.lang.String r0 = r5.k
            if (r0 == 0) goto L_0x0131
            java.util.List<cab.snapp.passenger.data.models.RideWaiting> r0 = r5.f1110a
            if (r0 == 0) goto L_0x0131
            java.util.Iterator r0 = r0.iterator()
        L_0x000f:
            boolean r1 = r0.hasNext()
            r2 = 4
            if (r1 == 0) goto L_0x0091
            java.lang.Object r1 = r0.next()
            cab.snapp.passenger.data.models.RideWaiting r1 = (cab.snapp.passenger.data.models.RideWaiting) r1
            if (r1 == 0) goto L_0x000f
            java.lang.String r3 = r1.getKey()
            if (r3 == 0) goto L_0x000f
            java.lang.String r3 = r1.getKey()
            java.lang.String r4 = r5.k
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x000f
            cab.snapp.arch.protocol.BasePresenter r3 = r5.getPresenter()
            if (r3 == 0) goto L_0x000f
            java.util.List<cab.snapp.passenger.data.models.RideWaiting> r3 = r5.f1110a
            int r3 = r3.indexOf(r1)
            java.util.List<cab.snapp.passenger.data.models.RideWaiting> r4 = r5.f1110a
            int r4 = r4.indexOf(r6)
            if (r3 <= r4) goto L_0x000f
            cab.snapp.arch.protocol.BasePresenter r3 = r5.getPresenter()
            if (r3 == 0) goto L_0x000f
            cab.snapp.passenger.c.g r6 = r5.d
            int r6 = r6.getCurrentState()
            if (r6 != r2) goto L_0x0069
            cab.snapp.passenger.f.b.b.c r6 = r5.f
            java.lang.String r0 = cab.snapp.passenger.f.b.b.c.C0021c.NEW_UX
            java.lang.String r2 = cab.snapp.passenger.f.b.b.c.b.MAIN_PAGE_ASSIGNED_OPTIONS_STOP_OFF
            java.lang.String r3 = "[disable]"
            r6.sendAnalyticsEvent(r0, r2, r3)
            cab.snapp.passenger.f.b.b.c r6 = r5.f
            java.lang.String r0 = cab.snapp.passenger.f.b.b.c.C0021c.NEW_UX
            java.lang.String r2 = cab.snapp.passenger.f.b.b.c.b.TOAST_ASSIGNED_CAN_NOT_REDUCE_STOP_TIME
            java.lang.String r3 = "[show]"
            r6.sendAnalyticsEvent(r0, r2, r3)
            goto L_0x0074
        L_0x0069:
            cab.snapp.passenger.f.b.b.c r6 = r5.f
            java.lang.String r0 = cab.snapp.passenger.f.b.b.c.C0021c.NEW_UX
            java.lang.String r2 = cab.snapp.passenger.f.b.b.c.b.MAIN_PAGE_IN_RIDE_OPTIONS_STOP_OFF
            java.lang.String r3 = "in ride options - stop - disabled"
            r6.sendAnalyticsEvent(r0, r2, r3)
        L_0x0074:
            r5.a()
            cab.snapp.arch.protocol.BasePresenter r6 = r5.getPresenter()
            cab.snapp.passenger.units.ride_options.c r6 = (cab.snapp.passenger.units.ride_options.c) r6
            r0 = 2131886755(0x7f1202a3, float:1.9408098E38)
            r6.onOptionsCanNotDisabledInRide(r0)
            cab.snapp.arch.protocol.BasePresenter r6 = r5.getPresenter()
            cab.snapp.passenger.units.ride_options.c r6 = (cab.snapp.passenger.units.ride_options.c) r6
            java.lang.String r0 = r1.getText()
            r6.onWaitingEnabled(r0)
            return
        L_0x0091:
            java.lang.String r0 = r5.k
            java.lang.String r1 = r6.getKey()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00a9
            java.lang.String r0 = r5.o
            if (r0 == 0) goto L_0x011d
            java.lang.String r1 = r5.k
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x011d
        L_0x00a9:
            cab.snapp.passenger.c.g r0 = r5.d
            java.lang.String r1 = r6.getKey()
            r0.setWaitingKey(r1)
            cab.snapp.passenger.c.g r0 = r5.d
            boolean r0 = r0.isInRide()
            java.lang.String r1 = "[lessThan_15]"
            java.lang.String r3 = "[moreThan_15]"
            r4 = 3
            if (r0 != 0) goto L_0x00db
            java.util.List<cab.snapp.passenger.data.models.RideWaiting> r0 = r5.f1110a
            int r0 = r0.indexOf(r6)
            if (r0 >= r4) goto L_0x00d1
            cab.snapp.passenger.f.b.b.c r0 = r5.f
            java.lang.String r2 = cab.snapp.passenger.f.b.b.c.C0021c.NEW_UX
            java.lang.String r3 = cab.snapp.passenger.f.b.b.c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_STOP_ON
            r0.sendAnalyticsEvent(r2, r3, r1)
            goto L_0x011a
        L_0x00d1:
            cab.snapp.passenger.f.b.b.c r0 = r5.f
            java.lang.String r1 = cab.snapp.passenger.f.b.b.c.C0021c.NEW_UX
            java.lang.String r2 = cab.snapp.passenger.f.b.b.c.b.MAIN_PAGE_PRE_RIDE_OPTIONS_STOP_ON
            r0.sendAnalyticsEvent(r1, r2, r3)
            goto L_0x011a
        L_0x00db:
            cab.snapp.passenger.c.g r0 = r5.d
            int r0 = r0.getCurrentState()
            if (r0 != r2) goto L_0x00ff
            java.util.List<cab.snapp.passenger.data.models.RideWaiting> r0 = r5.f1110a
            int r0 = r0.indexOf(r6)
            if (r0 >= r4) goto L_0x00f5
            cab.snapp.passenger.f.b.b.c r0 = r5.f
            java.lang.String r2 = cab.snapp.passenger.f.b.b.c.C0021c.NEW_UX
            java.lang.String r3 = cab.snapp.passenger.f.b.b.c.b.MAIN_PAGE_ASSIGNED_OPTIONS_STOP_ON
            r0.sendAnalyticsEvent(r2, r3, r1)
            goto L_0x011a
        L_0x00f5:
            cab.snapp.passenger.f.b.b.c r0 = r5.f
            java.lang.String r1 = cab.snapp.passenger.f.b.b.c.C0021c.NEW_UX
            java.lang.String r2 = cab.snapp.passenger.f.b.b.c.b.MAIN_PAGE_ASSIGNED_OPTIONS_STOP_ON
            r0.sendAnalyticsEvent(r1, r2, r3)
            goto L_0x011a
        L_0x00ff:
            java.util.List<cab.snapp.passenger.data.models.RideWaiting> r0 = r5.f1110a
            int r0 = r0.indexOf(r6)
            if (r0 >= r4) goto L_0x0111
            cab.snapp.passenger.f.b.b.c r0 = r5.f
            java.lang.String r2 = cab.snapp.passenger.f.b.b.c.C0021c.NEW_UX
            java.lang.String r3 = cab.snapp.passenger.f.b.b.c.b.MAIN_PAGE_IN_RIDE_OPTIONS_STOP_ON
            r0.sendAnalyticsEvent(r2, r3, r1)
            goto L_0x011a
        L_0x0111:
            cab.snapp.passenger.f.b.b.c r0 = r5.f
            java.lang.String r1 = cab.snapp.passenger.f.b.b.c.C0021c.NEW_UX
            java.lang.String r2 = cab.snapp.passenger.f.b.b.c.b.MAIN_PAGE_IN_RIDE_OPTIONS_STOP_ON
            r0.sendAnalyticsEvent(r1, r2, r3)
        L_0x011a:
            r5.b()
        L_0x011d:
            cab.snapp.arch.protocol.BasePresenter r0 = r5.getPresenter()
            if (r0 == 0) goto L_0x015e
            cab.snapp.arch.protocol.BasePresenter r0 = r5.getPresenter()
            cab.snapp.passenger.units.ride_options.c r0 = (cab.snapp.passenger.units.ride_options.c) r0
            java.lang.String r6 = r6.getText()
            r0.onWaitingEnabled(r6)
            return
        L_0x0131:
            java.lang.String r0 = r5.o
            if (r0 == 0) goto L_0x013f
            java.lang.String r1 = r6.getKey()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x014b
        L_0x013f:
            cab.snapp.passenger.c.g r0 = r5.d
            java.lang.String r1 = r6.getKey()
            r0.setWaitingKey(r1)
            r5.b()
        L_0x014b:
            cab.snapp.arch.protocol.BasePresenter r0 = r5.getPresenter()
            if (r0 == 0) goto L_0x015e
            cab.snapp.arch.protocol.BasePresenter r0 = r5.getPresenter()
            cab.snapp.passenger.units.ride_options.c r0 = (cab.snapp.passenger.units.ride_options.c) r0
            java.lang.String r6 = r6.getText()
            r0.onWaitingEnabled(r6)
        L_0x015e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.units.ride_options.a.addWaitingOption(cab.snapp.passenger.data.models.RideWaiting):void");
    }

    private void a() {
        if (this.d.getCurrentState() == 2) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "stopTime[disable]").addOuterKeyToCurrentAsValue("selectServiceType").build());
        } else if (this.d.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "stopTime[disable]").addOuterKeyToCurrentAsValue("driverAssigned").build());
        } else if (this.d.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "stopTime[disable]").addOuterKeyToCurrentAsValue("driverArrived").build());
        } else {
            if (this.d.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "stopTime[disable]").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        }
    }

    private void b() {
        if (this.d.getCurrentState() == 2) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "stopTime[tap]").addOuterKeyToCurrentAsValue("selectServiceType").build());
        } else if (this.d.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "stopTime[tap]").addOuterKeyToCurrentAsValue("driverAssigned").build());
        } else if (this.d.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "stopTime[tap]").addOuterKeyToCurrentAsValue("driverArrived").build());
        } else {
            if (this.d.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "stopTime[tap]").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x005d  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x012a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void applyEditOptions() {
        /*
            r7 = this;
            boolean r0 = r7.n
            r1 = 2
            r2 = 1
            if (r0 != 0) goto L_0x001c
            com.google.android.gms.maps.model.LatLng r0 = r7.m
            if (r0 != 0) goto L_0x001c
            java.lang.String r0 = r7.o
            if (r0 == 0) goto L_0x0017
            java.lang.String r3 = r7.k
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L_0x0017
            goto L_0x001c
        L_0x0017:
            a((boolean) r2)
            goto L_0x0126
        L_0x001c:
            android.app.Activity r0 = r7.getActivity()
            if (r0 == 0) goto L_0x0191
            android.app.Activity r0 = r7.getActivity()
            boolean r0 = r0.isFinishing()
            if (r0 == 0) goto L_0x002e
            goto L_0x0191
        L_0x002e:
            android.app.Activity r0 = r7.getActivity()
            android.content.res.Resources r0 = r0.getResources()
            r3 = 0
            if (r0 == 0) goto L_0x0114
            android.app.Activity r0 = r7.getActivity()
            if (r0 == 0) goto L_0x005a
            cab.snapp.b.a r0 = new cab.snapp.b.a
            android.app.Activity r4 = r7.getActivity()
            r0.<init>(r4)
            java.lang.String r4 = "First_Time_Confirm_Ride_Options"
            boolean r5 = r0.containsKey(r4)
            if (r5 == 0) goto L_0x005a
            java.lang.Object r0 = r0.get(r4)
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            if (r0 != r4) goto L_0x005a
            r0 = 0
            goto L_0x005b
        L_0x005a:
            r0 = 1
        L_0x005b:
            if (r0 == 0) goto L_0x0114
            cab.snapp.passenger.c.f r0 = r7.e
            cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse r0 = r0.getProfile()
            if (r0 == 0) goto L_0x00cc
            java.lang.String r4 = r0.getFullname()
            cab.snapp.passenger.data.models.ProfileMeta r5 = r0.getProfileMeta()
            r6 = 2131886218(0x7f12008a, float:1.9407009E38)
            if (r5 == 0) goto L_0x00b7
            cab.snapp.passenger.data.models.ProfileMeta r0 = r0.getProfileMeta()
            java.lang.Integer r0 = r0.getGender()
            if (r0 == 0) goto L_0x00a2
            int r0 = r0.intValue()
            if (r0 != r1) goto L_0x00a2
            int r0 = cab.snapp.passenger.f.g.getSavedLocale()
            r5 = 30
            if (r0 != r5) goto L_0x00a2
            android.app.Activity r0 = r7.getActivity()
            android.content.res.Resources r0 = r0.getResources()
            r5 = 2131886219(0x7f12008b, float:1.940701E38)
            java.lang.String r0 = r0.getString(r5)
            java.lang.Object[] r5 = new java.lang.Object[r2]
            r5[r3] = r4
            java.lang.String r0 = java.lang.String.format(r0, r5)
            goto L_0x00ce
        L_0x00a2:
            android.app.Activity r0 = r7.getActivity()
            android.content.res.Resources r0 = r0.getResources()
            java.lang.String r0 = r0.getString(r6)
            java.lang.Object[] r5 = new java.lang.Object[r2]
            r5[r3] = r4
            java.lang.String r0 = java.lang.String.format(r0, r5)
            goto L_0x00ce
        L_0x00b7:
            android.app.Activity r0 = r7.getActivity()
            android.content.res.Resources r0 = r0.getResources()
            java.lang.String r0 = r0.getString(r6)
            java.lang.Object[] r5 = new java.lang.Object[r2]
            r5[r3] = r4
            java.lang.String r0 = java.lang.String.format(r0, r5)
            goto L_0x00ce
        L_0x00cc:
            java.lang.String r0 = ""
        L_0x00ce:
            boolean r3 = r0.isEmpty()
            r4 = 2131886364(0x7f12011c, float:1.9407305E38)
            if (r3 != 0) goto L_0x00f8
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r0)
            java.lang.String r0 = " , "
            r3.append(r0)
            android.app.Activity r0 = r7.getActivity()
            android.content.res.Resources r0 = r0.getResources()
            java.lang.String r0 = r0.getString(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            goto L_0x0104
        L_0x00f8:
            android.app.Activity r0 = r7.getActivity()
            android.content.res.Resources r0 = r0.getResources()
            java.lang.String r0 = r0.getString(r4)
        L_0x0104:
            cab.snapp.arch.protocol.BasePresenter r3 = r7.getPresenter()
            if (r3 == 0) goto L_0x0126
            cab.snapp.arch.protocol.BasePresenter r3 = r7.getPresenter()
            cab.snapp.passenger.units.ride_options.c r3 = (cab.snapp.passenger.units.ride_options.c) r3
            r3.onConfirmationNeeded(r0)
            goto L_0x0126
        L_0x0114:
            a((boolean) r3)
            cab.snapp.arch.protocol.BasePresenter r0 = r7.getPresenter()
            if (r0 == 0) goto L_0x0126
            cab.snapp.arch.protocol.BasePresenter r0 = r7.getPresenter()
            cab.snapp.passenger.units.ride_options.c r0 = (cab.snapp.passenger.units.ride_options.c) r0
            r0.onApplyChangesRequest()
        L_0x0126:
            com.google.android.gms.maps.model.LatLng r0 = r7.m
            if (r0 == 0) goto L_0x0191
            cab.snapp.passenger.c.g r0 = r7.d
            int r0 = r0.getCurrentState()
            java.lang.String r3 = "In-ride"
            java.lang.String r4 = "pinFixed"
            java.lang.String r5 = "rideOption"
            if (r0 == 0) goto L_0x0177
            if (r0 == r2) goto L_0x0177
            if (r0 != r1) goto L_0x013d
            goto L_0x0177
        L_0x013d:
            r1 = 4
            java.lang.String r2 = "Boarded"
            if (r0 != r1) goto L_0x015b
            cab.snapp.passenger.f.b.b.b$a r0 = new cab.snapp.passenger.f.b.b.b$a
            r0.<init>()
            cab.snapp.passenger.f.b.b.b$a r0 = r0.addKeyValue(r5, r4)
            cab.snapp.passenger.f.b.b.b$a r0 = r0.addOuterKeyToCurrentAsValue(r2)
            org.a.c r0 = r0.build()
            cab.snapp.passenger.f.b.b.c r1 = cab.snapp.passenger.f.b.b.c.getInstance()
            r1.sendNestedEventViaAppmetrica(r3, r0)
            return
        L_0x015b:
            r1 = 6
            if (r0 != r1) goto L_0x0191
            cab.snapp.passenger.f.b.b.b$a r0 = new cab.snapp.passenger.f.b.b.b$a
            r0.<init>()
            cab.snapp.passenger.f.b.b.b$a r0 = r0.addKeyValue(r5, r4)
            cab.snapp.passenger.f.b.b.b$a r0 = r0.addOuterKeyToCurrentAsValue(r2)
            org.a.c r0 = r0.build()
            cab.snapp.passenger.f.b.b.c r1 = cab.snapp.passenger.f.b.b.c.getInstance()
            r1.sendNestedEventViaAppmetrica(r3, r0)
            goto L_0x0191
        L_0x0177:
            cab.snapp.passenger.f.b.b.b$a r0 = new cab.snapp.passenger.f.b.b.b$a
            r0.<init>()
            cab.snapp.passenger.f.b.b.b$a r0 = r0.addKeyValue(r5, r4)
            java.lang.String r1 = "Pre-ride"
            cab.snapp.passenger.f.b.b.b$a r0 = r0.addOuterKeyToCurrentAsValue(r1)
            org.a.c r0 = r0.build()
            cab.snapp.passenger.f.b.b.c r1 = cab.snapp.passenger.f.b.b.c.getInstance()
            r1.sendNestedEventViaAppmetrica(r3, r0)
        L_0x0191:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.units.ride_options.a.applyEditOptions():void");
    }

    public g getSnappRideDataManager() {
        return this.d;
    }

    public void confirmToInformDriver() {
        if (getActivity() != null) {
            new cab.snapp.b.a(getActivity()).put("First_Time_Confirm_Ride_Options", Boolean.FALSE);
        }
    }

    public void onSecondDestinationClicked() {
        if (this.d.getCurrentState() == 2) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "secondDestination[tap]").addOuterKeyToCurrentAsValue("selectServiceType").build());
        } else if (this.d.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[tap]").addOuterKeyToCurrentAsValue("driverAssigned").build());
        } else if (this.d.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[tap]").addOuterKeyToCurrentAsValue("driverArrived").build());
        } else {
            if (this.d.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[tap]").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        }
    }

    public void onRoundTripClicked() {
        if (this.d.getCurrentState() == 2) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "roundtrip[tap]").addOuterKeyToCurrentAsValue("selectServiceType").build());
        } else if (this.d.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "roundtrip[tap]").addOuterKeyToCurrentAsValue("driverAssigned").build());
        } else if (this.d.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "roundtrip[tap]").addOuterKeyToCurrentAsValue("driverArrived").build());
        } else {
            if (this.d.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "roundtrip[tap]").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        }
    }
}
