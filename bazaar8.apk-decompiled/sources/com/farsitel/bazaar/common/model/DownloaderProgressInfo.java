package com.farsitel.bazaar.common.model;

import com.crashlytics.android.answers.AnswersRetryFilesSender;
import java.io.Serializable;

/* compiled from: DownloadProgressInfo.kt */
public final class DownloaderProgressInfo implements Serializable {
    public long _remainTimeInMilli = -1;
    public long downloadSize = -1;
    public float downloadSpeed = -1.0f;
    public long downloadedSize = -1;
    public int progress;

    public final long getDownloadSize() {
        return this.downloadSize;
    }

    public final float getDownloadSpeed() {
        return this.downloadSpeed;
    }

    public final long getDownloadedSize() {
        return this.downloadedSize;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final long getRemainTimeInMillis() {
        return Math.max(this._remainTimeInMilli, (long) -1);
    }

    public final void setDownloadSize(long j2) {
        this.downloadSize = j2;
    }

    public final void setDownloadSpeed(float f2) {
        this.downloadSpeed = f2;
        this._remainTimeInMilli = (long) ((((float) (this.downloadSize - this.downloadedSize)) / f2) * ((float) AnswersRetryFilesSender.BACKOFF_MS));
    }

    public final void setDownloadedSize(long j2) {
        this.downloadedSize = j2;
    }

    public final void setProgress(int i2) {
        this.progress = i2;
    }
}
