package cab.snapp.passenger.f.b.b;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.adjust.sdk.Adjust;

public final class a implements Application.ActivityLifecycleCallbacks {
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public final void onActivityDestroyed(Activity activity) {
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
    }

    public final void onActivityResumed(Activity activity) {
        Adjust.onResume();
    }

    public final void onActivityPaused(Activity activity) {
        Adjust.onPause();
    }
}
