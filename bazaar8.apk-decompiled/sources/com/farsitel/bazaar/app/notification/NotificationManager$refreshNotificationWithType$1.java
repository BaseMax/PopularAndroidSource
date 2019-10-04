package com.farsitel.bazaar.app.notification;

import c.c.a.b.f.d;
import h.f.a.a;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: NotificationManager.kt */
final class NotificationManager$refreshNotificationWithType$1 extends Lambda implements a<h> {
    public final /* synthetic */ d $data;
    public final /* synthetic */ NotificationType $notificationType;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public NotificationManager$refreshNotificationWithType$1(d dVar, NotificationType notificationType) {
        super(0);
        this.$data = dVar;
        this.$notificationType = notificationType;
    }

    public final void invoke() {
        c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
        aVar.a((Throwable) new IllegalStateException("invalid refreshing data " + this.$data + ' ' + this.$notificationType));
    }
}
