package c.c.a.d.h.a;

import android.app.Activity;
import c.c.a.d.g.a.a;

/* compiled from: CustomTabsActivityLifecycleCallbacks.kt */
public final class a implements a.C0077a {

    /* renamed from: a  reason: collision with root package name */
    public c f4821a;

    public void a(Activity activity, boolean z) {
        if (activity != null) {
            c cVar = this.f4821a;
            if (cVar != null) {
                cVar.a(activity);
                throw null;
            }
        }
    }

    public void onActivityPaused(Activity activity) {
        if (activity != null) {
            c cVar = this.f4821a;
            if (cVar != null) {
                cVar.b(activity);
                throw null;
            }
        }
    }
}
