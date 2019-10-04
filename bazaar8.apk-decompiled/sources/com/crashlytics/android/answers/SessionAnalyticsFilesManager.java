package com.crashlytics.android.answers;

import android.content.Context;
import e.a.a.a.a.b.m;
import e.a.a.a.a.d.c;
import e.a.a.a.a.d.d;
import e.a.a.a.a.g.b;
import java.util.UUID;

public class SessionAnalyticsFilesManager extends c<SessionEvent> {
    public static final String SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION = ".tap";
    public static final String SESSION_ANALYTICS_TO_SEND_FILE_PREFIX = "sa";
    public b analyticsSettingsData;

    public SessionAnalyticsFilesManager(Context context, SessionEventTransform sessionEventTransform, m mVar, d dVar) {
        super(context, sessionEventTransform, mVar, dVar, 100);
    }

    public String generateUniqueRollOverFileName() {
        UUID randomUUID = UUID.randomUUID();
        return SESSION_ANALYTICS_TO_SEND_FILE_PREFIX + c.ROLL_OVER_FILE_NAME_SEPARATOR + randomUUID.toString() + c.ROLL_OVER_FILE_NAME_SEPARATOR + this.currentTimeProvider.a() + SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION;
    }

    public int getMaxByteSizePerFile() {
        b bVar = this.analyticsSettingsData;
        return bVar == null ? super.getMaxByteSizePerFile() : bVar.f13776c;
    }

    public int getMaxFilesToKeep() {
        b bVar = this.analyticsSettingsData;
        return bVar == null ? super.getMaxFilesToKeep() : bVar.f13778e;
    }

    public void setAnalyticsSettingsData(b bVar) {
        this.analyticsSettingsData = bVar;
    }
}
