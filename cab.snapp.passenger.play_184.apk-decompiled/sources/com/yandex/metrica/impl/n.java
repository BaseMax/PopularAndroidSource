package com.yandex.metrica.impl;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

public class n implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private ad f5844a;

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }

    public n(ad adVar) {
        this.f5844a = adVar;
    }

    public void onActivityResumed(Activity activity) {
        this.f5844a.b(activity);
    }

    public void onActivityPaused(Activity activity) {
        this.f5844a.c(activity);
    }
}
