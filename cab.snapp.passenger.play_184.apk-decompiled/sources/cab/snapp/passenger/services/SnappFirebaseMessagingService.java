package cab.snapp.passenger.services;

import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.b.d.d;
import cab.snapp.passenger.play.R;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.webengage.sdk.android.WebEngage;
import java.util.Map;

public class SnappFirebaseMessagingService extends FirebaseMessagingService {
    public void initRideNotificationPushIfNeeded() {
        if (BaseApplication.ridePushRenderer == null) {
            c cVar = new c();
            BaseApplication.ridePushRenderer = cVar;
            WebEngage.registerCustomPushRenderCallback(cVar);
            WebEngage.registerCustomPushRerenderCallback(BaseApplication.ridePushRenderer);
        }
    }

    public void onMessageReceived(RemoteMessage remoteMessage) {
        String str;
        boolean z = false;
        if (c.getInstance().isReportAllowedForProduction() && !c.getInstance().isReportAllowedForStaging()) {
            str = getApplication().getString(R.string.passenger_webengage_production_token);
        } else if (c.getInstance().isReportAllowedForProduction() || !c.getInstance().isReportAllowedForStaging()) {
            str = "";
        } else {
            str = getApplication().getString(R.string.passenger_webengage_staging_token);
            z = true;
        }
        new d().init(getApplication(), str, z);
        initRideNotificationPushIfNeeded();
        Map<String, String> data = remoteMessage.getData();
        if (data != null && data.containsKey("source") && "webengage".equals(data.get("source"))) {
            WebEngage.get().receive(data);
        }
    }
}
