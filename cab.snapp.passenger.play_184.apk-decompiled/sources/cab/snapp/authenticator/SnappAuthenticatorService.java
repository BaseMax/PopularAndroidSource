package cab.snapp.authenticator;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class SnappAuthenticatorService extends Service {
    public IBinder onBind(Intent intent) {
        if (getPackageName() == null || b.f178a == null) {
            return null;
        }
        return new a(this, b.f178a).getIBinder();
    }
}
