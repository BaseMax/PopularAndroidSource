package com.farsitel.bazaar.app.notification.type;

import android.app.PendingIntent;
import h.f.a.a;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: PardakhtNotificationManager.kt */
final class PardakhtNotificationManager$showLoginNotification$1 extends Lambda implements a<PendingIntent> {
    public final /* synthetic */ PendingIntent $pendingIntent;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PardakhtNotificationManager$showLoginNotification$1(PendingIntent pendingIntent) {
        super(0);
        this.$pendingIntent = pendingIntent;
    }

    public final PendingIntent invoke() {
        PendingIntent pendingIntent = this.$pendingIntent;
        j.a((Object) pendingIntent, "pendingIntent");
        return pendingIntent;
    }
}
