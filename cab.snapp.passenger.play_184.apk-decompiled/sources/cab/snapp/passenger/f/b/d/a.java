package cab.snapp.passenger.f.b.d;

import android.app.Application;
import cab.snapp.passenger.f.b.c.c;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustConfig;
import com.adjust.sdk.AdjustEvent;

public final class a implements cab.snapp.passenger.f.b.c.a<cab.snapp.passenger.f.b.a.a> {
    public final a init(Application application, AdjustConfig adjustConfig) {
        application.registerActivityLifecycleCallbacks(new cab.snapp.passenger.f.b.b.a());
        Adjust.onCreate(adjustConfig);
        return this;
    }

    public final c getHandlerForEvent(final cab.snapp.passenger.f.b.a.a aVar) {
        return new c() {
            public final void sendEvent() {
                AdjustEvent adjustEvent = new AdjustEvent(aVar.getName());
                if (aVar.getProperties() != null) {
                    for (String next : aVar.getProperties().keySet()) {
                        adjustEvent.addCallbackParameter(next, aVar.getProperties().get(next));
                    }
                }
                Adjust.trackEvent(adjustEvent);
            }
        };
    }
}
