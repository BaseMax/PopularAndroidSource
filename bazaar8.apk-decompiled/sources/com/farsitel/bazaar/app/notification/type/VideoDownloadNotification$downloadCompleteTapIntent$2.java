package com.farsitel.bazaar.app.notification.type;

import android.app.PendingIntent;
import android.content.Intent;
import c.c.a.b.f.a.f;
import com.farsitel.bazaar.app.notification.NotificationActionReceiver;
import com.farsitel.bazaar.app.notification.NotificationType;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDownloadNotification.kt */
final class VideoDownloadNotification$downloadCompleteTapIntent$2 extends Lambda implements a<PendingIntent> {
    public final /* synthetic */ f this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadNotification$downloadCompleteTapIntent$2(f fVar) {
        super(0);
        this.this$0 = fVar;
    }

    public final PendingIntent invoke() {
        Intent intent = new Intent(this.this$0.f4669e, NotificationActionReceiver.class);
        intent.setAction("notificationClicked");
        intent.putExtra("entityId", this.this$0.f4670f.getVideoId());
        intent.putExtra("shareLink", this.this$0.f4670f.getShareLink());
        intent.putExtra("notificationType", NotificationType.VIDEO_DOWNLOAD_COMPLETE.ordinal());
        return PendingIntent.getBroadcast(this.this$0.f4669e, NotificationType.VIDEO_DOWNLOAD_PROGRESS.f(), intent, 134217728);
    }
}
