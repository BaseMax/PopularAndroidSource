package cab.snapp.passenger.f.b.d;

import android.app.Activity;
import android.content.Context;
import cab.snapp.passenger.f.b.a.d;
import cab.snapp.passenger.f.b.c.a;
import com.google.firebase.analytics.FirebaseAnalytics;

public final class c implements a<d> {

    /* renamed from: a  reason: collision with root package name */
    FirebaseAnalytics f563a;

    /* renamed from: b  reason: collision with root package name */
    private Context f564b;

    public final c init(Context context) {
        this.f564b = context;
        this.f563a = FirebaseAnalytics.getInstance(context);
        return this;
    }

    public final boolean setScreen(Activity activity, String str) {
        if (activity == null) {
            return false;
        }
        FirebaseAnalytics.getInstance(activity).setCurrentScreen(activity, str, null);
        return true;
    }

    public final cab.snapp.passenger.f.b.c.c getHandlerForEvent(final d dVar) {
        if (this.f564b == null) {
            return null;
        }
        return new cab.snapp.passenger.f.b.c.c() {
            public final void sendEvent() {
                c.this.f563a.logEvent(dVar.getName(), dVar.getParams());
            }
        };
    }
}
