package cab.snapp.passenger.units.support;

import android.app.Activity;
import androidx.recyclerview.widget.LinearLayoutManager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.a.n;
import cab.snapp.passenger.data_access_layer.network.responses.TicketItemResponse;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;
import java.util.List;

public final class c extends BasePresenter<SupportView, a> implements n.a {
    public final void onShowTickets(List<TicketItemResponse> list) {
        SupportView supportView = (SupportView) getView();
        if (supportView != null) {
            supportView.loadTickets(new LinearLayoutManager(supportView.getContext(), 1, false), new n(list, this));
        }
    }

    public final void onBackClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).pressBack();
        }
    }

    public final void onItemClicked(int i, TicketItemResponse ticketItemResponse) {
        if (getInteractor() != null) {
            ((a) getInteractor()).handleTicketItemClick(ticketItemResponse);
        }
    }

    public final void onSnappSupportClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).callSnappSupport();
        }
    }

    public final void onSnappBoxSupportClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).callSnappBoxSupport();
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((SupportView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((SupportView) getView()).getContext(), R.color.colorPrimary);
        }
    }
}
