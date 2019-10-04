package cab.snapp.passenger.units.ride_rating;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.f;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.DriverInfo;
import cab.snapp.passenger.data.models.RideInformation;
import cab.snapp.passenger.data.models.RideRatingModel;
import cab.snapp.passenger.data.models.ride_rating.RideRatingReason;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.data_access_layer.network.responses.RideRatingReasonsResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import java.util.HashMap;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {

    /* renamed from: a  reason: collision with root package name */
    protected RideRatingModel f1132a = new RideRatingModel();

    /* renamed from: b  reason: collision with root package name */
    protected boolean f1133b = false;
    protected boolean c = true;
    @Inject
    o d;
    @Inject
    g e;
    @Inject
    d f;
    @Inject
    c g;

    /* access modifiers changed from: protected */
    public void a(Throwable th) {
        d();
    }

    private cab.snapp.b.a c() {
        return new cab.snapp.b.a(getActivity());
    }

    /* access modifiers changed from: protected */
    public void a(RideRatingReasonsResponse rideRatingReasonsResponse) {
        if (getActivity() != null) {
            c().put("ride_rating_reasons_shared_pref_key", rideRatingReasonsResponse);
            this.f1132a.setRatingReasonsResponse(rideRatingReasonsResponse);
        }
    }

    private void d() {
        if (getActivity() != null) {
            cab.snapp.b.a c2 = c();
            if (c2.containsKey("ride_rating_reasons_shared_pref_key")) {
                this.f1132a.setRatingReasonsResponse((RideRatingReasonsResponse) c2.get("ride_rating_reasons_shared_pref_key"));
            }
        }
    }

    public void requestRate(boolean z) {
        if (!this.f1133b) {
            if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null || z) {
                this.f1133b = true;
                if (getPresenter() != null && !z) {
                    ((c) getPresenter()).onBeforeRate();
                }
                addDisposable(this.f.rateRide(this.f1132a).subscribe(new io.reactivex.e.g(z) {
                    private final /* synthetic */ boolean f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void accept(Object obj) {
                        a.this.a(this.f$1, (cab.snapp.snappnetwork.model.f) obj);
                    }
                }, new io.reactivex.e.g(z) {
                    private final /* synthetic */ boolean f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void accept(Object obj) {
                        a.this.a(this.f$1, (Throwable) obj);
                    }
                }));
                if (z) {
                    finish();
                    return;
                }
                c.getInstance().sendNestedEventViaAppmetrica("Finished", new b.a().addKeyValue("rating", "send").build());
                return;
            }
            ((c) getPresenter()).onNoInternetConnection();
        }
    }

    public void updateStarRate(int i) {
        this.f1132a.setStarRate(i);
        c.getInstance().sendNestedEventViaAppmetrica("Finished", new b.a().addKeyValue("rating", "clickOnStar").build());
    }

    public void updateComment(String str) {
        this.f1132a.setComment(str);
    }

    public void toggleReason(RideRatingReason rideRatingReason, Boolean bool) {
        this.f1132a.toggleSelectedReason(rideRatingReason.getCode(), bool.booleanValue());
    }

    public void finish() {
        if (this.c) {
            this.e.setRatingPassed(true);
            this.e.reset();
        }
        if (getRouter() != null) {
            if (this.arguments == null || !this.arguments.containsKey("ride_rating_driver_info_argument_key") || !this.arguments.containsKey("ride_rating_ride_info_argument_key")) {
                ((d) getRouter()).routeBackToEmpty();
            } else {
                ((d) getRouter()).navigateUp();
            }
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (this.arguments == null || !this.arguments.containsKey("ride_rating_driver_info_argument_key") || !this.arguments.containsKey("ride_rating_ride_info_argument_key")) {
                this.c = true;
                if ((this.e.getCurrentState() != 7 || !this.e.isRideFinished()) && this.e.getFinishedRide() == null) {
                    finish();
                } else if (this.e.getFinishedRide() != null) {
                    this.f1132a.setFinishRideModels(this.e.getFinishedRide().getDriverInfo(), this.e.getFinishedRide().getRideInformation());
                } else {
                    this.f1132a.setFinishRideModels(this.e.getDriverInfo(), this.e.getRideInformation());
                }
            } else {
                this.c = false;
                this.f1132a.setFinishRideModels((DriverInfo) this.arguments.getParcelable("ride_rating_driver_info_argument_key"), (RideInformation) this.arguments.getParcelable("ride_rating_ride_info_argument_key"));
            }
            if (!(getController() == null || getRouter() == null)) {
                ((d) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
            }
            d();
            addDisposable(this.f.getRideRatingReasons().subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((RideRatingReasonsResponse) obj);
                }
            }, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((Throwable) obj);
                }
            }));
            if (!(getPresenter() == null || this.f1132a.getDriverInfo() == null || this.f1132a.getRideInformation() == null)) {
                ((c) getPresenter()).onInitialize(this.f1132a);
            }
            c.getInstance().sendNestedEventViaAppmetrica("Finished", new b.a().addKeyValue("rating", "show").build());
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.g.reportScreenName("Ride Finished");
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(cab.snapp.passenger.units.footer.driver_assigned_footer.a.getPrivateChannelId(), Boolean.TRUE);
        this.d.cancelAll();
    }

    static void a() {
        c.getInstance().sendNestedEventViaAppmetrica("Finished", new b.a().addKeyValue("rating", "comment").build());
    }

    static void b() {
        c.getInstance().sendNestedEventViaAppmetrica("Finished", new b.a().addKeyValue("rating", "clickOnReason").build());
    }

    public void onDestroy() {
        if (this.c && getPresenter() != null) {
            ((c) getPresenter()).onBackPressed();
        }
        super.onDestroy();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, Throwable th) throws Exception {
        if (!z) {
            this.f1133b = false;
            if (getPresenter() != null && (th instanceof e)) {
                if (((e) th).getErrorCode() == 1015) {
                    ((c) getPresenter()).onHasRatedBefore();
                } else {
                    ((c) getPresenter()).onRateError();
                }
            }
            finish();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, cab.snapp.snappnetwork.model.f fVar) throws Exception {
        if (!z) {
            HashMap hashMap = new HashMap();
            hashMap.put("rate", String.valueOf(this.f1132a.getStarRate()));
            this.g.reportEvent(c.e.RATING, hashMap);
            cab.snapp.passenger.units.ride_history.a.updateRatingForRide(this.f1132a.getRideId(), this.f1132a.getStarRate());
            this.f1133b = false;
            if (getPresenter() != null) {
                ((c) getPresenter()).onRateSuccess();
            }
            finish();
        }
    }
}
