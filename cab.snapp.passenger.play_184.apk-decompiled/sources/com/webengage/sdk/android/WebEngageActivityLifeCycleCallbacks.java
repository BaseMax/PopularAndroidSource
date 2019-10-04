package com.webengage.sdk.android;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

public class WebEngageActivityLifeCycleCallbacks implements Application.ActivityLifecycleCallbacks {
    public WebEngageActivityLifeCycleCallbacks(Context context) {
        this(context, null);
    }

    public WebEngageActivityLifeCycleCallbacks(Context context, WebEngageConfig webEngageConfig) {
        WebEngage.engage(context, webEngageConfig);
    }

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
        WebEngage.get().analytics().start(activity);
    }

    public void onActivityStopped(Activity activity) {
        WebEngage.get().analytics().stop(activity);
    }
}
