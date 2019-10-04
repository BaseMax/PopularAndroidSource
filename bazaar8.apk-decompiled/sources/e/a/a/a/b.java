package e.a.a.a;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;

/* compiled from: ActivityLifecycleManager */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final Application f13865a;

    /* renamed from: b  reason: collision with root package name */
    public a f13866b;

    /* compiled from: ActivityLifecycleManager */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Set<Application.ActivityLifecycleCallbacks> f13867a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        public final Application f13868b;

        public a(Application application) {
            this.f13868b = application;
        }

        @TargetApi(14)
        public final void a() {
            for (Application.ActivityLifecycleCallbacks unregisterActivityLifecycleCallbacks : this.f13867a) {
                this.f13868b.unregisterActivityLifecycleCallbacks(unregisterActivityLifecycleCallbacks);
            }
        }

        @TargetApi(14)
        public final boolean a(C0139b bVar) {
            if (this.f13868b == null) {
                return false;
            }
            a aVar = new a(this, bVar);
            this.f13868b.registerActivityLifecycleCallbacks(aVar);
            this.f13867a.add(aVar);
            return true;
        }
    }

    /* renamed from: e.a.a.a.b$b  reason: collision with other inner class name */
    /* compiled from: ActivityLifecycleManager */
    public static abstract class C0139b {
        public abstract void onActivityCreated(Activity activity, Bundle bundle);

        public void onActivityDestroyed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public abstract void onActivityResumed(Activity activity);

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public abstract void onActivityStarted(Activity activity);

        public void onActivityStopped(Activity activity) {
        }
    }

    public b(Context context) {
        this.f13865a = (Application) context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 14) {
            this.f13866b = new a(this.f13865a);
        }
    }

    public boolean a(C0139b bVar) {
        a aVar = this.f13866b;
        return aVar != null && aVar.a(bVar);
    }

    public void a() {
        a aVar = this.f13866b;
        if (aVar != null) {
            aVar.a();
        }
    }
}
