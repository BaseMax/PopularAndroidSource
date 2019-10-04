package com.crashlytics.android.answers;

import com.crashlytics.android.answers.SessionEvent;
import e.a.a.a.a.g.b;

public class DisabledSessionAnalyticsManagerStrategy implements SessionAnalyticsManagerStrategy {
    public void cancelTimeBasedFileRollOver() {
    }

    public void deleteAllEvents() {
    }

    public void processEvent(SessionEvent.Builder builder) {
    }

    public boolean rollFileOver() {
        return false;
    }

    public void scheduleTimeBasedRollOverIfNeeded() {
    }

    public void sendEvents() {
    }

    public void setAnalyticsSettingsData(b bVar, String str) {
    }
}
