package com.crashlytics.android.answers;

import com.crashlytics.android.answers.SessionEvent;
import java.util.HashSet;
import java.util.Set;

public class SamplingEventFilter implements EventFilter {
    public static final Set<SessionEvent.Type> EVENTS_TYPE_TO_SAMPLE = new HashSet<SessionEvent.Type>() {
        {
            add(SessionEvent.Type.START);
            add(SessionEvent.Type.RESUME);
            add(SessionEvent.Type.PAUSE);
            add(SessionEvent.Type.STOP);
        }
    };
    public final int samplingRate;

    public SamplingEventFilter(int i2) {
        this.samplingRate = i2;
    }

    public boolean skipEvent(SessionEvent sessionEvent) {
        boolean z = EVENTS_TYPE_TO_SAMPLE.contains(sessionEvent.type) && sessionEvent.sessionEventMetadata.betaDeviceToken == null;
        boolean z2 = Math.abs(sessionEvent.sessionEventMetadata.installationId.hashCode() % this.samplingRate) != 0;
        if (!z || !z2) {
            return false;
        }
        return true;
    }
}
