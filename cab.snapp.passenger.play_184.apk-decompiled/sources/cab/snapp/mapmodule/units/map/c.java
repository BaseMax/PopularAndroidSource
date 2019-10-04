package cab.snapp.mapmodule.units.map;

import android.view.ViewGroup;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.mapmodule.b;

public final class c extends BaseRouter<a> {
    public final void loadMapBoxController(ViewGroup viewGroup) {
        NavController findNavController = Navigation.findNavController(viewGroup);
        findNavController.setGraph(b.c.mapbox_navigation);
        findNavController.popBackStack();
    }

    public final void loadGoogleMapController(ViewGroup viewGroup) {
        NavController findNavController = Navigation.findNavController(viewGroup);
        findNavController.setGraph(b.c.googlemap_navigation);
        findNavController.popBackStack();
    }
}
