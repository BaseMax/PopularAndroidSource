package cab.snapp.passenger.units.ticket;

import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseRouter;

public final class d extends BaseRouter<a> {
    public final void popTicketController(NavController navController) {
        if (navController != null) {
            navController.navigateUp();
        }
    }
}
