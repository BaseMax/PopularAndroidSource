package com.farsitel.bazaar.app.notification.type;

import android.app.PendingIntent;
import android.content.Intent;
import com.farsitel.bazaar.app.notification.NotificationActionReceiver;
import com.farsitel.bazaar.app.notification.NotificationType;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: AppDownloadNotification.kt */
final class AppDownloadNotification$downloadingTapIntent$2 extends Lambda implements a<PendingIntent> {
    public final /* synthetic */ c.c.a.b.f.a.a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDownloadNotification$downloadingTapIntent$2(c.c.a.b.f.a.a aVar) {
        super(0);
        this.this$0 = aVar;
    }

    public final PendingIntent invoke() {
        Intent intent = new Intent(this.this$0.f4644e, NotificationActionReceiver.class);
        intent.setAction("notificationClicked");
        intent.putExtra("entityId", this.this$0.f4645f.getPackageName());
        intent.putExtra("notificationType", NotificationType.APP_DOWNLOAD_PROGRESS.ordinal());
        return PendingIntent.getBroadcast(this.this$0.f4644e, NotificationType.APP_DOWNLOAD_COMPLETE.f(), intent, 134217728);
    }
}
