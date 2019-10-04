package cab.snapp.passenger.units.ride_history;

import android.app.Activity;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.a.h;
import cab.snapp.passenger.data.models.RideHistoryInfo;
import cab.snapp.passenger.data_access_layer.network.responses.RideHistoryResponse;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;
import io.reactivex.e.g;
import io.reactivex.z;
import java.util.ArrayList;

public final class c extends BasePresenter<RideHistoryView, a> {

    /* renamed from: a  reason: collision with root package name */
    h f1082a;

    /* renamed from: b  reason: collision with root package name */
    boolean f1083b = false;

    public final void onReachedToTheEndOfList() {
        if (!this.f1083b && getInteractor() != null) {
            ((a) getInteractor()).requestNextPage();
        }
    }

    public final void onBackButtonClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).finish();
        }
    }

    public final void onInitialize(RideHistoryResponse rideHistoryResponse) {
        if (getView() != null) {
            if (this.f1082a != null) {
                ((RideHistoryView) getView()).setAdapter(this.f1082a);
                return;
            } else {
                this.f1082a = new h(new ArrayList());
                ((RideHistoryView) getView()).setAdapter(this.f1082a);
            }
        }
        z<h.a> itemClicks = this.f1082a.getItemClicks();
        if (getInteractor() != null) {
            itemClicks.filter($$Lambda$c$oO4E1DiOorV9r6EGYNNHufsSg.INSTANCE).filter($$Lambda$c$QoZMTX8VQfLxiYsEJKu4oWgAxM.INSTANCE).subscribe(new g() {
                public final void accept(Object obj) {
                    c.this.a((h.a) obj);
                }
            });
        }
        if (rideHistoryResponse != null) {
            onRequestSuccess(rideHistoryResponse);
            return;
        }
        if (getInteractor() != null) {
            ((a) getInteractor()).requestNextPage();
        }
        setStatusBarColor();
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((RideHistoryView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((RideHistoryView) getView()).getContext(), R.color.colorPrimary);
        }
    }

    public final void onBeforeRequest() {
        this.f1083b = true;
        if (getInteractor() != null && ((a) getInteractor()).getRideHistoryCurrentPage() == 0 && getView() != null) {
            ((RideHistoryView) getView()).showLoading();
        }
    }

    public final void onRequestError() {
        a();
        if (getView() != null) {
            ((RideHistoryView) getView()).showRequestError(R.string.error);
        }
    }

    public final void onRequestSuccess(RideHistoryResponse rideHistoryResponse) {
        if (getView() != null) {
            boolean z = this.f1082a.getItems().size() == 0;
            a();
            if (!(rideHistoryResponse == null || getInteractor() == null || getView() == null)) {
                if (!(getInteractor() == null || getView() == null)) {
                    if (((a) getInteractor()).getRideHistoryCurrentPage() <= 1 && this.f1082a.getItems().size() == 0 && (rideHistoryResponse.getRidesList() == null || rideHistoryResponse.getRidesList().size() == 0)) {
                        ((RideHistoryView) getView()).showEmptyList();
                    } else {
                        ((RideHistoryView) getView()).hideEmptyList();
                    }
                }
                ArrayList<h.a> items = this.f1082a.getItems();
                if (items.size() > 0 && items.get(items.size() - 1).isLoadingItem()) {
                    items.remove(items.size() - 1);
                    try {
                        this.f1082a.notifyItemRemoved(items.size() + 1);
                    } catch (Exception unused) {
                    }
                }
                if (((a) getInteractor()).getRideHistoryCurrentPage() == 1 && this.f1082a.getItems().size() == 0) {
                    this.f1082a.getItems().add(h.a.createHeaderItem(rideHistoryResponse));
                }
                if (rideHistoryResponse.getRidesList() != null && rideHistoryResponse.getRidesList().size() > 0) {
                    ArrayList<h.a> items2 = this.f1082a.getItems();
                    int size = items2.size();
                    for (RideHistoryInfo createNormalItem : rideHistoryResponse.getRidesList()) {
                        items2.add(h.a.createNormalItem(createNormalItem));
                    }
                    try {
                        this.f1082a.notifyItemRangeInserted(size, rideHistoryResponse.getRidesList().size());
                    } catch (Exception unused2) {
                    }
                    ArrayList<h.a> items3 = this.f1082a.getItems();
                    items3.add(h.a.createLoadingItem());
                    try {
                        this.f1082a.notifyItemInserted(items3.size());
                    } catch (Exception unused3) {
                    }
                    ((RideHistoryView) getView()).smoothScrollList(this.f1082a.getItems().size() - rideHistoryResponse.getRidesList().size());
                }
                if (z) {
                    ((RideHistoryView) getView()).fullScrollUp();
                }
            }
        }
    }

    private void a() {
        this.f1083b = false;
        if (getView() != null) {
            ((RideHistoryView) getView()).hideLoading();
        }
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ boolean c(h.a aVar) throws Exception {
        return aVar.getType() == 1;
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ boolean b(h.a aVar) throws Exception {
        return aVar.getRideHistoryInfo() != null;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(h.a aVar) throws Exception {
        ((a) getInteractor()).navigateToRideHistoryDetails(aVar.getRideHistoryInfo());
    }
}
