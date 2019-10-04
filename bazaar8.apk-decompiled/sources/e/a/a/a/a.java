package e.a.a.a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import e.a.a.a.b;

/* compiled from: ActivityLifecycleManager */
class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b.C0139b f13663a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ b.a f13664b;

    public a(b.a aVar, b.C0139b bVar) {
        this.f13664b = aVar;
        this.f13663a = bVar;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.f13663a.onActivityCreated(activity, bundle);
    }

    public void onActivityDestroyed(Activity activity) {
        this.f13663a.onActivityDestroyed(activity);
    }

    public void onActivityPaused(Activity activity) {
        this.f13663a.onActivityPaused(activity);
    }

    public void onActivityResumed(Activity activity) {
        this.f13663a.onActivityResumed(activity);
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f13663a.onActivitySaveInstanceState(activity, bundle);
    }

    public void onActivityStarted(Activity activity) {
        this.f13663a.onActivityStarted(activity);
    }

    public void onActivityStopped(Activity activity) {
        this.f13663a.onActivityStopped(activity);
    }
}
