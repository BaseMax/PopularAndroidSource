package cab.snapp.passenger.units.footer.driver_assigned_footer;

import android.os.Bundle;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;
import com.a.a.a;

public final class e extends BaseRouter<a> {
    public final void routeToPayment(NavController navController, Bundle bundle) {
        if (navController != null) {
            try {
                navController.navigate((int) R.id.action_overTheMapEmptyController_to_paymentController, bundle);
            } catch (Exception e) {
                e.printStackTrace();
                a.logException(e);
            }
        }
    }

    public final void routeBackToRequestFooter(NavController navController, Bundle bundle) {
        if (navController != null) {
            navController.navigateUp();
        }
    }

    public final void routeBackToIdleFooter(NavController navController, Bundle bundle) {
        if (navController != null) {
            try {
                navController.navigate((int) R.id.mainFooterController, bundle);
            } catch (Exception e) {
                e.printStackTrace();
                a.logException(e);
            }
        }
    }
}
