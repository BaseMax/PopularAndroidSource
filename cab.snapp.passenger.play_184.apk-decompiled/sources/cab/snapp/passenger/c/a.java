package cab.snapp.passenger.c;

import android.content.Context;
import android.content.pm.PackageManager;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.FollowedAppsRequest;
import io.reactivex.b.c;
import java.util.HashMap;
import java.util.Map;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static c f450a;

    public static void checkDualAppsAndSendToServer(Context context, HashMap<String, String> hashMap, d dVar) {
        if (context != null && hashMap != null && hashMap.size() > 0) {
            PackageManager packageManager = context.getPackageManager();
            HashMap hashMap2 = new HashMap();
            for (Map.Entry next : hashMap.entrySet()) {
                try {
                    packageManager.getPackageInfo((String) next.getValue(), 0);
                    hashMap2.put(next.getKey(), 1);
                } catch (PackageManager.NameNotFoundException e) {
                    hashMap2.put(next.getKey(), 0);
                    com.a.a.a.logException(e);
                }
            }
            FollowedAppsRequest followedAppsRequest = new FollowedAppsRequest();
            followedAppsRequest.setStatuses(hashMap2);
            f450a = dVar.sendAppStatus(followedAppsRequest).subscribe($$Lambda$a$GAWyKOb1iDshc023BLAtaEeEIk.INSTANCE, $$Lambda$a$EOFx0EeQy3V4pnpJopgsTkdbwK4.INSTANCE);
        }
    }
}
