package com.farsitel.bazaar.app.notification;

import android.app.NotificationManager;
import c.c.a.b.f.h;
import h.f.a.a;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Lambda;

/* compiled from: NotificationManager.kt */
final class NotificationManager$manager$2 extends Lambda implements a<NotificationManager> {

    /* renamed from: a  reason: collision with root package name */
    public static final NotificationManager$manager$2 f12140a = new NotificationManager$manager$2();

    public NotificationManager$manager$2() {
        super(0);
    }

    public final NotificationManager invoke() {
        Object systemService = h.f4687h.b().getSystemService("notification");
        if (systemService != null) {
            return (NotificationManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
    }
}
