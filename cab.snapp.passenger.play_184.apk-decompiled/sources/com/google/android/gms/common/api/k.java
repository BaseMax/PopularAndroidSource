package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;

public final class k extends b {
    public k(Status status) {
        super(status);
    }

    public final PendingIntent getResolution() {
        return this.f2736a.getResolution();
    }

    public final void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        this.f2736a.startResolutionForResult(activity, i);
    }
}
