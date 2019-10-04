package cab.snapp.c;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import cab.snapp.c.g;
import java.util.ArrayList;

public final class h {
    public static void callNumber(final Activity activity, final String str) {
        if (activity != null && str != null && !str.isEmpty()) {
            g.getPermission(activity, new String[]{"android.permission.CALL_PHONE"}, new g.a() {
                public final void onPermissionGranted() {
                    try {
                        Activity activity = activity;
                        activity.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + str)));
                    } catch (Exception unused) {
                        Activity activity2 = activity;
                        activity2.startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + str)));
                    }
                }

                public final void onPermissionDenied(ArrayList<String> arrayList) {
                    Activity activity = activity;
                    activity.startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + str)));
                }
            }, new String[0]);
        }
    }
}
