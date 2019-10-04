package com.a.a.a;

import android.app.Activity;
import android.os.Bundle;
import com.a.a.a.ag;
import io.fabric.sdk.android.a;

final class h extends a.b {

    /* renamed from: a  reason: collision with root package name */
    private final ae f1685a;

    /* renamed from: b  reason: collision with root package name */
    private final k f1686b;

    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public final void onActivityDestroyed(Activity activity) {
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public h(ae aeVar, k kVar) {
        this.f1685a = aeVar;
        this.f1686b = kVar;
    }

    public final void onActivityStarted(Activity activity) {
        this.f1685a.onLifecycle(activity, ag.b.START);
    }

    public final void onActivityResumed(Activity activity) {
        this.f1685a.onLifecycle(activity, ag.b.RESUME);
        this.f1686b.onActivityResumed();
    }

    public final void onActivityPaused(Activity activity) {
        this.f1685a.onLifecycle(activity, ag.b.PAUSE);
        this.f1686b.onActivityPaused();
    }

    public final void onActivityStopped(Activity activity) {
        this.f1685a.onLifecycle(activity, ag.b.STOP);
    }
}
