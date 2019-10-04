package com.adjust.sdk;

import java.text.DecimalFormat;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class TimerOnce {
    /* access modifiers changed from: private */
    public Runnable command;
    private CustomScheduledExecutor executor;
    /* access modifiers changed from: private */
    public ILogger logger = AdjustFactory.getLogger();
    /* access modifiers changed from: private */
    public String name;
    /* access modifiers changed from: private */
    public ScheduledFuture waitingTask;

    public TimerOnce(Runnable runnable, String str) {
        this.name = str;
        this.executor = new CustomScheduledExecutor(str, true);
        this.command = runnable;
    }

    public void startIn(long j) {
        cancel(false);
        DecimalFormat decimalFormat = Util.SecondsDisplayFormat;
        double d = (double) j;
        Double.isNaN(d);
        String format = decimalFormat.format(d / 1000.0d);
        this.logger.verbose("%s starting. Launching in %s seconds", this.name, format);
        this.waitingTask = this.executor.schedule(new Runnable() {
            public final void run() {
                TimerOnce.this.logger.verbose("%s fired", TimerOnce.this.name);
                TimerOnce.this.command.run();
                ScheduledFuture unused = TimerOnce.this.waitingTask = null;
            }
        }, j, TimeUnit.MILLISECONDS);
    }

    public long getFireIn() {
        ScheduledFuture scheduledFuture = this.waitingTask;
        if (scheduledFuture == null) {
            return 0;
        }
        return scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
    }

    private void cancel(boolean z) {
        ScheduledFuture scheduledFuture = this.waitingTask;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(z);
        }
        this.waitingTask = null;
        this.logger.verbose("%s canceled", this.name);
    }

    public void cancel() {
        cancel(false);
    }

    public void teardown() {
        cancel(true);
        this.executor = null;
    }
}
