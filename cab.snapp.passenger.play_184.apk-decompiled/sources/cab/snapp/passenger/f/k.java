package cab.snapp.passenger.f;

import android.content.Context;
import cab.snapp.mapmodule.a;
import cab.snapp.passenger.play.R;

public final class k {
    public static void initMap(Context context, int i, String str, String str2) {
        if (context != null) {
            if (str2 == null) {
                str2 = context.getResources().getString(R.string.mapbox_default_style_url);
            }
            if (i == 2) {
                a.getInstance().initMapBox(context, str, str2);
            } else {
                a.getInstance().initGoogleMap(R.raw.style_map);
            }
        }
    }
}
