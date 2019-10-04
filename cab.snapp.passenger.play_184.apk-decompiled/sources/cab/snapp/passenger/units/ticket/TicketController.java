package cab.snapp.passenger.units.ticket;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class TicketController extends BaseController<a, c, TicketView, d> {
    public static final String KEY_TICKET_ITEM = "Key Ticket Item";

    public int getLayout() {
        return R.layout.view_ticket;
    }

    public Class<a> getInteractorClass() {
        return a.class;
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new c();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new d();
    }
}
