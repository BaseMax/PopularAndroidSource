package b.r;

import android.app.Activity;
import android.os.Bundle;

/* compiled from: ProcessLifecycleOwner */
class y extends C0297c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ z f3187a;

    public y(z zVar) {
        this.f3187a = zVar;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        A.a(activity).d(this.f3187a.f3196i);
    }

    public void onActivityPaused(Activity activity) {
        this.f3187a.a();
    }

    public void onActivityStopped(Activity activity) {
        this.f3187a.g();
    }
}
