package io.fabric.sdk.android;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final Application f6544a;

    /* renamed from: b  reason: collision with root package name */
    private C0123a f6545b;

    /* renamed from: io.fabric.sdk.android.a$a  reason: collision with other inner class name */
    static class C0123a {

        /* renamed from: a  reason: collision with root package name */
        final Set<Application.ActivityLifecycleCallbacks> f6546a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        final Application f6547b;

        C0123a(Application application) {
            this.f6547b = application;
        }
    }

    public static abstract class b {
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    public a(Context context) {
        this.f6544a = (Application) context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 14) {
            this.f6545b = new C0123a(this.f6544a);
        }
    }

    public final boolean registerCallbacks(b bVar) {
        boolean z;
        C0123a aVar = this.f6545b;
        if (aVar != null) {
            if (aVar.f6547b != null) {
                C0123a.AnonymousClass1 r2 = new Application.ActivityLifecycleCallbacks(bVar) {

                    /* renamed from: a  reason: collision with root package name */
                    final /* synthetic */ b f6548a;

                    {
                        this.f6548a = r2;
                    }

                    public final void onActivityCreated(Activity activity, Bundle bundle) {
                        this.f6548a.onActivityCreated(activity, bundle);
                    }

                    public final void onActivityStarted(Activity activity) {
                        this.f6548a.onActivityStarted(activity);
                    }

                    public final void onActivityResumed(Activity activity) {
                        this.f6548a.onActivityResumed(activity);
                    }

                    public final void onActivityPaused(Activity activity) {
                        this.f6548a.onActivityPaused(activity);
                    }

                    public final void onActivityStopped(Activity activity) {
                        this.f6548a.onActivityStopped(activity);
                    }

                    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                        this.f6548a.onActivitySaveInstanceState(activity, bundle);
                    }

                    public final void onActivityDestroyed(Activity activity) {
                        this.f6548a.onActivityDestroyed(activity);
                    }
                };
                aVar.f6547b.registerActivityLifecycleCallbacks(r2);
                aVar.f6546a.add(r2);
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public final void resetCallbacks() {
        C0123a aVar = this.f6545b;
        if (aVar != null) {
            for (Application.ActivityLifecycleCallbacks unregisterActivityLifecycleCallbacks : aVar.f6546a) {
                aVar.f6547b.unregisterActivityLifecycleCallbacks(unregisterActivityLifecycleCallbacks);
            }
        }
    }
}
