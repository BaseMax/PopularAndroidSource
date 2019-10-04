package cab.snapp.passenger.units.ride_history;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.RideHistoryInfo;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.RideHistoryResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.units.ride_history_details.RideHistoryDetailsController;
import io.reactivex.e.g;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {

    /* renamed from: a  reason: collision with root package name */
    protected static Map<String, RideHistoryInfo> f1078a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    protected int f1079b = 0;
    protected RideHistoryResponse c = null;
    @Inject
    d d;
    @Inject
    c e;

    public static RideHistoryInfo getRideHistoryInfo(String str) {
        try {
            return f1078a.get(str);
        } catch (Exception e2) {
            com.a.a.a.logException(e2);
            return null;
        }
    }

    public static void updateRatingForRide(String str, int i) {
        Map<String, RideHistoryInfo> map = f1078a;
        if (map != null && !map.isEmpty()) {
            RideHistoryInfo rideHistoryInfo = f1078a.get(str);
            if (rideHistoryInfo != null) {
                rideHistoryInfo.setHasRated(true);
                rideHistoryInfo.setRate(i);
            }
        }
    }

    public int getRideHistoryCurrentPage() {
        return this.f1079b;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i, c cVar, RideHistoryResponse rideHistoryResponse) throws Exception {
        if (!(rideHistoryResponse == null || rideHistoryResponse.getRidesList() == null || rideHistoryResponse.getRidesList().isEmpty())) {
            this.f1079b = i;
        }
        this.c = rideHistoryResponse;
        if (!(rideHistoryResponse == null || rideHistoryResponse.getRidesList() == null)) {
            for (RideHistoryInfo next : rideHistoryResponse.getRidesList()) {
                f1078a.put(next.getHumanReadableID(), next);
            }
        }
        cVar.onRequestSuccess(rideHistoryResponse);
    }

    public void requestNextPage() {
        int i = this.f1079b + 1;
        c cVar = (c) getPresenter();
        if (cVar != null) {
            cVar.onBeforeRequest();
            addDisposable(this.d.getRideHistory(i).subscribe(new g(i, cVar) {
                private final /* synthetic */ int f$1;
                private final /* synthetic */ c f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void accept(Object obj) {
                    a.this.a(this.f$1, this.f$2, (RideHistoryResponse) obj);
                }
            }, new g() {
                public final void accept(Object obj) {
                    c.this.onRequestError();
                }
            }));
        }
    }

    public void navigateToRideHistoryDetails(RideHistoryInfo rideHistoryInfo) {
        if (rideHistoryInfo != null && getRouter() != null) {
            Bundle bundle = new Bundle();
            bundle.putString(RideHistoryDetailsController.KEY_RIDE_HISTORY_DETAILS_INFO, rideHistoryInfo.getHumanReadableID());
            ((d) getRouter()).routeToRideHistoryDetailsController(bundle);
        }
    }

    public void finish() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize(this.c);
            }
            if (!(getController() == null || getRouter() == null)) {
                ((d) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.e.reportScreenName("Ride History Page");
    }
}
