package c.c.a.a.b.a.b;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.os.Build;
import h.a.k;
import h.f.b.j;

/* compiled from: ActionLogNotificationChannel.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4543a = new a();

    public final void a(NotificationManager notificationManager) {
        j.b(notificationManager, "notificationManager");
        if (Build.VERSION.SDK_INT >= 26) {
            b(notificationManager);
        }
    }

    public final void b(NotificationManager notificationManager) {
        NotificationChannel notificationChannel = new NotificationChannel("action_logs", "Action Logs", 3);
        notificationChannel.setSound(null, null);
        notificationManager.createNotificationChannels(k.a(notificationChannel));
    }
}
