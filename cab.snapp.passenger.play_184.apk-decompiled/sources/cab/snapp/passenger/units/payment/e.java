package cab.snapp.passenger.units.payment;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import cab.snapp.arch.protocol.BaseRouter;

public final class e extends BaseRouter<a> {
    public final void routToDonateDescriptionUrl(Activity activity, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        activity.startActivity(intent);
    }
}
