package com.crashlytics.android.answers;

import android.os.Bundle;

public class FirebaseAnalyticsEvent {
    public final String eventName;
    public final Bundle eventParams;

    public FirebaseAnalyticsEvent(String str, Bundle bundle) {
        this.eventName = str;
        this.eventParams = bundle;
    }

    public String getEventName() {
        return this.eventName;
    }

    public Bundle getEventParams() {
        return this.eventParams;
    }
}
