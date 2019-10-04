package cab.snapp.passenger.units.support;

import android.os.Bundle;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class d extends BaseRouter<a> {
    public final void popSupportController(NavController navController) {
        if (navController != null) {
            navController.navigateUp();
        }
    }

    public final void routeToTicketController(Bundle bundle) {
        navigateTo(R.id.ticketController, bundle);
    }
}
