package c.c.a.b.f;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import h.a.l;
import h.f.b.j;

/* compiled from: NotificationChannels.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f4671a = new c();

    public final void a(NotificationManager notificationManager) {
        j.b(notificationManager, "notificationManager");
        NotificationChannel notificationChannel = new NotificationChannel("downloads", "Downloads", 3);
        notificationChannel.setSound(null, null);
        NotificationChannel notificationChannel2 = new NotificationChannel("updates", "Updates", 3);
        notificationChannel2.setSound(null, null);
        notificationManager.createNotificationChannels(l.d(notificationChannel, notificationChannel2, new NotificationChannel("promotions", "Promotions", 3), new NotificationChannel("developer_reply", "Developer Reply", 3), new NotificationChannel("iab", "In App Billing", 3)));
    }
}
