package cab.snapp.passenger.services;

import com.a.a.a;
import com.adjust.sdk.Adjust;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;
import com.webengage.sdk.android.WebEngage;

public class SnappFirebaseInstanceIDService extends FirebaseInstanceIdService {
    public void onTokenRefresh() {
        try {
            String token = FirebaseInstanceId.getInstance().getToken();
            if (token != null) {
                WebEngage.get().setRegistrationID(token);
                Adjust.setPushToken(token, getApplication());
            }
        } catch (Exception e) {
            a.logException(e);
        }
    }
}
