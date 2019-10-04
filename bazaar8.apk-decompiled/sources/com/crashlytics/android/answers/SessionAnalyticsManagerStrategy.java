package com.crashlytics.android.answers;

import com.crashlytics.android.answers.SessionEvent;
import e.a.a.a.a.d.f;
import e.a.a.a.a.g.b;

public interface SessionAnalyticsManagerStrategy extends f {
    void deleteAllEvents();

    void processEvent(SessionEvent.Builder builder);

    void sendEvents();

    void setAnalyticsSettingsData(b bVar, String str);
}
