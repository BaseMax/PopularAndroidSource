package com.crashlytics.android.answers;

import e.a.a.a.a.c.a.b;
import e.a.a.a.a.c.a.c;
import e.a.a.a.a.c.a.e;
import e.a.a.a.a.d.g;
import java.io.File;
import java.util.List;

public class AnswersRetryFilesSender implements g {
    public static final int BACKOFF_MS = 1000;
    public static final int BACKOFF_POWER = 8;
    public static final double JITTER_PERCENT = 0.1d;
    public static final int MAX_RETRIES = 5;
    public final SessionAnalyticsFilesSender filesSender;
    public final RetryManager retryManager;

    public AnswersRetryFilesSender(SessionAnalyticsFilesSender sessionAnalyticsFilesSender, RetryManager retryManager2) {
        this.filesSender = sessionAnalyticsFilesSender;
        this.retryManager = retryManager2;
    }

    public static AnswersRetryFilesSender build(SessionAnalyticsFilesSender sessionAnalyticsFilesSender) {
        return new AnswersRetryFilesSender(sessionAnalyticsFilesSender, new RetryManager(new e(new RandomBackoff(new c(1000, 8), 0.1d), new b(5))));
    }

    public boolean send(List<File> list) {
        long nanoTime = System.nanoTime();
        if (this.retryManager.canRetry(nanoTime)) {
            if (this.filesSender.send(list)) {
                this.retryManager.reset();
                return true;
            }
            this.retryManager.recordRetry(nanoTime);
        }
        return false;
    }
}
