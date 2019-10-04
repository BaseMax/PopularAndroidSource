package cab.snapp.passenger.units.support;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class SupportView_ViewBinding implements Unbinder {
    private SupportView target;

    public SupportView_ViewBinding(SupportView supportView) {
        this(supportView, supportView);
    }

    public SupportView_ViewBinding(SupportView supportView, View view) {
        this.target = supportView;
        supportView.ticketsRecycler = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.view_support_tickets_recycler, "field 'ticketsRecycler'", RecyclerView.class);
    }

    public void unbind() {
        SupportView supportView = this.target;
        if (supportView != null) {
            this.target = null;
            supportView.ticketsRecycler = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
