package com.farsitel.bazaar.app.notification;

import android.content.Context;
import com.farsitel.bazaar.app.BazaarApp;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: NotificationManager.kt */
final class NotificationManager$context$2 extends Lambda implements a<Context> {

    /* renamed from: a  reason: collision with root package name */
    public static final NotificationManager$context$2 f12139a = new NotificationManager$context$2();

    public NotificationManager$context$2() {
        super(0);
    }

    public final Context invoke() {
        return BazaarApp.f12104i.a().getBaseContext();
    }
}
