package cab.snapp.passenger;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

final class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private Activity f345a = null;

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

    a() {
    }

    public final void onActivityResumed(Activity activity) {
        this.f345a = activity;
    }

    public final void onActivityPaused(Activity activity) {
        this.f345a = null;
    }

    public final Activity getActivity() {
        return this.f345a;
    }
}
