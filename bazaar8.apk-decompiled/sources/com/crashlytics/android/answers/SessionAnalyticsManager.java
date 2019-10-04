package com.crashlytics.android.answers;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.crashlytics.android.answers.BackgroundManager;
import com.crashlytics.android.answers.SessionEvent;
import e.a.a.a.a.b.s;
import e.a.a.a.a.e.c;
import e.a.a.a.b;
import e.a.a.a.f;
import e.a.a.a.l;
import e.a.a.a.o;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.concurrent.ScheduledExecutorService;

public class SessionAnalyticsManager implements BackgroundManager.Listener {
    public static final String EXECUTOR_SERVICE = "Answers Events Handler";
    public static final String ON_CRASH_ERROR_MSG = "onCrash called from main thread!!!";
    public final BackgroundManager backgroundManager;
    public final AnswersEventsHandler eventsHandler;
    public final long installedAt;
    public final b lifecycleManager;
    public final AnswersPreferenceManager preferenceManager;

    public SessionAnalyticsManager(AnswersEventsHandler answersEventsHandler, b bVar, BackgroundManager backgroundManager2, AnswersPreferenceManager answersPreferenceManager, long j2) {
        this.eventsHandler = answersEventsHandler;
        this.lifecycleManager = bVar;
        this.backgroundManager = backgroundManager2;
        this.preferenceManager = answersPreferenceManager;
        this.installedAt = j2;
    }

    public static SessionAnalyticsManager build(l lVar, Context context, IdManager idManager, String str, String str2, long j2) {
        Context context2 = context;
        IdManager idManager2 = idManager;
        SessionMetadataCollector sessionMetadataCollector = new SessionMetadataCollector(context, idManager, str, str2);
        AnswersFilesManagerProvider answersFilesManagerProvider = new AnswersFilesManagerProvider(context, new e.a.a.a.a.f.b(lVar));
        c cVar = new c(f.e());
        b bVar = new b(context);
        ScheduledExecutorService b2 = s.b(EXECUTOR_SERVICE);
        BackgroundManager backgroundManager2 = new BackgroundManager(b2);
        AnswersEventsHandler answersEventsHandler = new AnswersEventsHandler(lVar, context, answersFilesManagerProvider, sessionMetadataCollector, cVar, b2, new FirebaseAnalyticsApiAdapter(context));
        SessionAnalyticsManager sessionAnalyticsManager = new SessionAnalyticsManager(answersEventsHandler, bVar, backgroundManager2, AnswersPreferenceManager.build(context), j2);
        return sessionAnalyticsManager;
    }

    public void disable() {
        this.lifecycleManager.a();
        this.eventsHandler.disable();
    }

    public void enable() {
        this.eventsHandler.enable();
        this.lifecycleManager.a(new AnswersLifecycleCallbacks(this, this.backgroundManager));
        this.backgroundManager.registerListener(this);
        if (isFirstLaunch()) {
            onInstall(this.installedAt);
            this.preferenceManager.setAnalyticsLaunched();
        }
    }

    public boolean isFirstLaunch() {
        return !this.preferenceManager.hasAnalyticsLaunched();
    }

    public void onBackground() {
        f.e().d(Answers.TAG, "Flush events when app is backgrounded");
        this.eventsHandler.flushEvents();
    }

    public void onCrash(String str, String str2) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            f.e().d(Answers.TAG, "Logged crash");
            this.eventsHandler.processEventSync(SessionEvent.crashEventBuilder(str, str2));
            return;
        }
        throw new IllegalStateException(ON_CRASH_ERROR_MSG);
    }

    public void onCustom(CustomEvent customEvent) {
        o e2 = f.e();
        e2.d(Answers.TAG, "Logged custom event: " + customEvent);
        this.eventsHandler.processEventAsync(SessionEvent.customEventBuilder(customEvent));
    }

    public void onError(String str) {
    }

    public void onInstall(long j2) {
        f.e().d(Answers.TAG, "Logged install");
        this.eventsHandler.processEventAsyncAndFlush(SessionEvent.installEventBuilder(j2));
    }

    public void onLifecycle(Activity activity, SessionEvent.Type type) {
        o e2 = f.e();
        e2.d(Answers.TAG, "Logged lifecycle event: " + type.name());
        this.eventsHandler.processEventAsync(SessionEvent.lifecycleEventBuilder(type, activity));
    }

    public void onPredefined(PredefinedEvent predefinedEvent) {
        o e2 = f.e();
        e2.d(Answers.TAG, "Logged predefined event: " + predefinedEvent);
        this.eventsHandler.processEventAsync(SessionEvent.predefinedEventBuilder(predefinedEvent));
    }

    public void setAnalyticsSettingsData(e.a.a.a.a.g.b bVar, String str) {
        this.backgroundManager.setFlushOnBackground(bVar.f13783j);
        this.eventsHandler.setAnalyticsSettingsData(bVar, str);
    }
}
