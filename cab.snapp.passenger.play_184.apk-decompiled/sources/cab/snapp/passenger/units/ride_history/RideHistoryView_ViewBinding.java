package cab.snapp.passenger.units.ride_history;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;

public class RideHistoryView_ViewBinding implements Unbinder {
    private RideHistoryView target;

    public RideHistoryView_ViewBinding(RideHistoryView rideHistoryView) {
        this(rideHistoryView, rideHistoryView);
    }

    public RideHistoryView_ViewBinding(RideHistoryView rideHistoryView, View view) {
        this.target = rideHistoryView;
        rideHistoryView.rideHistoryRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.ride_history_recycler_view, "field 'rideHistoryRecyclerView'", RecyclerView.class);
        rideHistoryView.rideHistoryEmptyLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.ride_history_empty_layout, "field 'rideHistoryEmptyLayout'", ViewGroup.class);
        rideHistoryView.loading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.ride_history_loading, "field 'loading'", SnappLoading.class);
    }

    public void unbind() {
        RideHistoryView rideHistoryView = this.target;
        if (rideHistoryView != null) {
            this.target = null;
            rideHistoryView.rideHistoryRecyclerView = null;
            rideHistoryView.rideHistoryEmptyLayout = null;
            rideHistoryView.loading = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
