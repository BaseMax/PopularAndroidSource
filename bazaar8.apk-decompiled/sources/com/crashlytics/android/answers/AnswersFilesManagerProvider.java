package com.crashlytics.android.answers;

import android.content.Context;
import android.os.Looper;
import e.a.a.a.a.b.B;
import e.a.a.a.a.d.h;
import e.a.a.a.a.f.a;

public class AnswersFilesManagerProvider {
    public static final String SESSION_ANALYTICS_FILE_NAME = "session_analytics.tap";
    public static final String SESSION_ANALYTICS_TO_SEND_DIR = "session_analytics_to_send";
    public final Context context;
    public final a fileStore;

    public AnswersFilesManagerProvider(Context context2, a aVar) {
        this.context = context2;
        this.fileStore = aVar;
    }

    public SessionAnalyticsFilesManager getAnalyticsFilesManager() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return new SessionAnalyticsFilesManager(this.context, new SessionEventTransform(), new B(), new h(this.context, this.fileStore.a(), SESSION_ANALYTICS_FILE_NAME, SESSION_ANALYTICS_TO_SEND_DIR));
        }
        throw new IllegalStateException("AnswersFilesManagerProvider cannot be called on the main thread");
    }
}
