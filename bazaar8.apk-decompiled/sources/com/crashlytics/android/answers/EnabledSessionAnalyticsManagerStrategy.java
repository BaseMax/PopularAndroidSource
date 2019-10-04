package com.crashlytics.android.answers;

import android.content.Context;
import com.crashlytics.android.answers.SessionEvent;
import e.a.a.a.a.b.i;
import e.a.a.a.a.d.g;
import e.a.a.a.a.d.j;
import e.a.a.a.a.e.f;
import e.a.a.a.a.g.b;
import e.a.a.a.l;
import e.a.a.a.o;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class EnabledSessionAnalyticsManagerStrategy implements SessionAnalyticsManagerStrategy {
    public static final int UNDEFINED_ROLLOVER_INTERVAL_SECONDS = -1;
    public i apiKey = new i();
    public final Context context;
    public boolean customEventsEnabled = true;
    public EventFilter eventFilter = new KeepAllEventFilter();
    public final ScheduledExecutorService executorService;
    public final SessionAnalyticsFilesManager filesManager;
    public g filesSender;
    public final FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter;
    public boolean forwardToFirebaseAnalyticsEnabled = false;
    public final f httpRequestFactory;
    public boolean includePurchaseEventsInForwardedEvents = false;
    public final l kit;
    public final SessionEventMetadata metadata;
    public boolean predefinedEventsEnabled = true;
    public final AtomicReference<ScheduledFuture<?>> rolloverFutureRef = new AtomicReference<>();
    public volatile int rolloverIntervalSeconds = -1;

    public EnabledSessionAnalyticsManagerStrategy(l lVar, Context context2, ScheduledExecutorService scheduledExecutorService, SessionAnalyticsFilesManager sessionAnalyticsFilesManager, f fVar, SessionEventMetadata sessionEventMetadata, FirebaseAnalyticsApiAdapter firebaseAnalyticsApiAdapter2) {
        this.kit = lVar;
        this.context = context2;
        this.executorService = scheduledExecutorService;
        this.filesManager = sessionAnalyticsFilesManager;
        this.httpRequestFactory = fVar;
        this.metadata = sessionEventMetadata;
        this.firebaseAnalyticsApiAdapter = firebaseAnalyticsApiAdapter2;
    }

    public void cancelTimeBasedFileRollOver() {
        if (this.rolloverFutureRef.get() != null) {
            CommonUtils.c(this.context, "Cancelling time-based rollover because no events are currently being generated.");
            this.rolloverFutureRef.get().cancel(false);
            this.rolloverFutureRef.set(null);
        }
    }

    public void deleteAllEvents() {
        this.filesManager.deleteAllEventsFiles();
    }

    public void processEvent(SessionEvent.Builder builder) {
        SessionEvent build = builder.build(this.metadata);
        if (!this.customEventsEnabled && SessionEvent.Type.CUSTOM.equals(build.type)) {
            o e2 = e.a.a.a.f.e();
            e2.d(Answers.TAG, "Custom events tracking disabled - skipping event: " + build);
        } else if (!this.predefinedEventsEnabled && SessionEvent.Type.PREDEFINED.equals(build.type)) {
            o e3 = e.a.a.a.f.e();
            e3.d(Answers.TAG, "Predefined events tracking disabled - skipping event: " + build);
        } else if (this.eventFilter.skipEvent(build)) {
            o e4 = e.a.a.a.f.e();
            e4.d(Answers.TAG, "Skipping filtered event: " + build);
        } else {
            try {
                this.filesManager.writeEvent(build);
            } catch (IOException e5) {
                o e6 = e.a.a.a.f.e();
                e6.b(Answers.TAG, "Failed to write event: " + build, e5);
            }
            scheduleTimeBasedRollOverIfNeeded();
            boolean z = SessionEvent.Type.CUSTOM.equals(build.type) || SessionEvent.Type.PREDEFINED.equals(build.type);
            boolean equals = PurchaseEvent.TYPE.equals(build.predefinedType);
            if (this.forwardToFirebaseAnalyticsEnabled && z && (!equals || this.includePurchaseEventsInForwardedEvents)) {
                try {
                    this.firebaseAnalyticsApiAdapter.processEvent(build);
                } catch (Exception e7) {
                    o e8 = e.a.a.a.f.e();
                    e8.b(Answers.TAG, "Failed to map event to Firebase: " + build, e7);
                }
            }
        }
    }

    public boolean rollFileOver() {
        try {
            return this.filesManager.rollFileOver();
        } catch (IOException e2) {
            CommonUtils.a(this.context, "Failed to roll file over.", (Throwable) e2);
            return false;
        }
    }

    public void scheduleTimeBasedFileRollOver(long j2, long j3) {
        if (this.rolloverFutureRef.get() == null) {
            j jVar = new j(this.context, this);
            Context context2 = this.context;
            CommonUtils.c(context2, "Scheduling time based file roll over every " + j3 + " seconds");
            try {
                this.rolloverFutureRef.set(this.executorService.scheduleAtFixedRate(jVar, j2, j3, TimeUnit.SECONDS));
            } catch (RejectedExecutionException e2) {
                CommonUtils.a(this.context, "Failed to schedule time based file roll over", (Throwable) e2);
            }
        }
    }

    public void scheduleTimeBasedRollOverIfNeeded() {
        if (this.rolloverIntervalSeconds != -1) {
            scheduleTimeBasedFileRollOver((long) this.rolloverIntervalSeconds, (long) this.rolloverIntervalSeconds);
        }
    }

    public void sendEvents() {
        if (this.filesSender == null) {
            CommonUtils.c(this.context, "skipping files send because we don't yet know the target endpoint");
            return;
        }
        CommonUtils.c(this.context, "Sending all files");
        List<File> batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
        int i2 = 0;
        while (true) {
            try {
                if (batchOfFilesToSend.size() <= 0) {
                    break;
                }
                CommonUtils.c(this.context, String.format(Locale.US, "attempt to send batch of %d files", new Object[]{Integer.valueOf(batchOfFilesToSend.size())}));
                boolean send = this.filesSender.send(batchOfFilesToSend);
                if (send) {
                    i2 += batchOfFilesToSend.size();
                    this.filesManager.deleteSentFiles(batchOfFilesToSend);
                }
                if (!send) {
                    break;
                }
                batchOfFilesToSend = this.filesManager.getBatchOfFilesToSend();
            } catch (Exception e2) {
                Context context2 = this.context;
                CommonUtils.a(context2, "Failed to send batch of analytics files to server: " + e2.getMessage(), (Throwable) e2);
            }
        }
        if (i2 == 0) {
            this.filesManager.deleteOldestInRollOverIfOverMax();
        }
    }

    public void setAnalyticsSettingsData(b bVar, String str) {
        String str2;
        String str3;
        SessionAnalyticsFilesSender sessionAnalyticsFilesSender = new SessionAnalyticsFilesSender(this.kit, str, bVar.f13774a, this.httpRequestFactory, this.apiKey.d(this.context));
        this.filesSender = AnswersRetryFilesSender.build(sessionAnalyticsFilesSender);
        this.filesManager.setAnalyticsSettingsData(bVar);
        this.forwardToFirebaseAnalyticsEnabled = bVar.f13779f;
        this.includePurchaseEventsInForwardedEvents = bVar.f13780g;
        o e2 = e.a.a.a.f.e();
        StringBuilder sb = new StringBuilder();
        sb.append("Firebase analytics forwarding ");
        String str4 = "enabled";
        sb.append(this.forwardToFirebaseAnalyticsEnabled ? str4 : "disabled");
        e2.d(Answers.TAG, sb.toString());
        o e3 = e.a.a.a.f.e();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Firebase analytics including purchase events ");
        if (this.includePurchaseEventsInForwardedEvents) {
            str2 = str4;
        } else {
            str2 = "disabled";
        }
        sb2.append(str2);
        e3.d(Answers.TAG, sb2.toString());
        this.customEventsEnabled = bVar.f13781h;
        o e4 = e.a.a.a.f.e();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Custom event tracking ");
        if (this.customEventsEnabled) {
            str3 = str4;
        } else {
            str3 = "disabled";
        }
        sb3.append(str3);
        e4.d(Answers.TAG, sb3.toString());
        this.predefinedEventsEnabled = bVar.f13782i;
        o e5 = e.a.a.a.f.e();
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Predefined event tracking ");
        if (!this.predefinedEventsEnabled) {
            str4 = "disabled";
        }
        sb4.append(str4);
        e5.d(Answers.TAG, sb4.toString());
        if (bVar.f13784k > 1) {
            e.a.a.a.f.e().d(Answers.TAG, "Event sampling enabled");
            this.eventFilter = new SamplingEventFilter(bVar.f13784k);
        }
        this.rolloverIntervalSeconds = bVar.f13775b;
        scheduleTimeBasedFileRollOver(0, (long) this.rolloverIntervalSeconds);
    }
}
