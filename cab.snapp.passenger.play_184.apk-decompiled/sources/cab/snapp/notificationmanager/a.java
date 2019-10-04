package cab.snapp.notificationmanager;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import cab.snapp.notificationmanager.models.Importance;
import cab.snapp.notificationmanager.models.NotificationChannelOptions;

public class a {

    /* renamed from: a  reason: collision with root package name */
    protected Context f335a;

    /* renamed from: b  reason: collision with root package name */
    protected NotificationManager f336b;

    /* renamed from: cab.snapp.notificationmanager.a$a  reason: collision with other inner class name */
    public static class C0014a {

        /* renamed from: a  reason: collision with root package name */
        private String f337a;

        /* renamed from: b  reason: collision with root package name */
        private int f338b;
        private Bitmap c;
        private NotificationCompat.Style d;
        private String e;
        private String f;
        private boolean g = true;
        private int h;
        private Uri i;
        private PendingIntent j;
        private RemoteViews k;
        private RemoteViews l;
        private long[] m = {0, 0, 0, 0, 0};
        private Context n;

        public C0014a(String str, PendingIntent pendingIntent, Context context) {
            this.f337a = str;
            this.j = pendingIntent;
            this.n = context;
        }

        public final C0014a setSmallIconResource(int i2) {
            this.f338b = i2;
            return this;
        }

        public final C0014a setLargeIcon(Bitmap bitmap) {
            this.c = bitmap;
            return this;
        }

        public final C0014a setStyle(NotificationCompat.Style style) {
            this.d = style;
            return this;
        }

        public final C0014a setTitle(String str) {
            this.e = str;
            return this;
        }

        public final C0014a setContent(String str) {
            this.f = str;
            return this;
        }

        public final C0014a setAutoCancelable(boolean z) {
            this.g = z;
            return this;
        }

        public final C0014a setLight(int i2) {
            this.h = i2;
            return this;
        }

        public final C0014a setSound(Uri uri) {
            this.i = uri;
            return this;
        }

        public final C0014a setPendingIntent(PendingIntent pendingIntent) {
            this.j = pendingIntent;
            return this;
        }

        public final C0014a setLayout(RemoteViews remoteViews) {
            this.k = remoteViews;
            return this;
        }

        public final C0014a setExpandedLayout(RemoteViews remoteViews) {
            this.l = remoteViews;
            return this;
        }

        public final C0014a setVibrate(long[] jArr) {
            this.m = jArr;
            return this;
        }

        public final Notification build() {
            if (Build.VERSION.SDK_INT >= 26) {
                Notification.Builder autoCancel = new Notification.Builder(this.n, this.f337a).setSmallIcon(this.f338b).setContentTitle(this.e).setContentText(this.f).setAutoCancel(this.g);
                Uri uri = this.i;
                if (uri != null) {
                    autoCancel.setSound(uri);
                }
                Bitmap bitmap = this.c;
                if (bitmap != null) {
                    autoCancel.setLargeIcon(bitmap);
                }
                PendingIntent pendingIntent = this.j;
                if (pendingIntent != null) {
                    autoCancel.setContentIntent(pendingIntent);
                }
                if (this.k != null) {
                    autoCancel.setStyle(new Notification.DecoratedCustomViewStyle());
                    autoCancel.setCustomContentView(this.k);
                    RemoteViews remoteViews = this.l;
                    if (remoteViews != null) {
                        autoCancel.setCustomBigContentView(remoteViews);
                    }
                }
                return autoCancel.build();
            }
            NotificationCompat.Builder autoCancel2 = new NotificationCompat.Builder(this.n, this.f337a).setSmallIcon(this.f338b).setContentTitle(this.e).setContentText(this.f).setVibrate(this.m).setAutoCancel(this.g);
            if (this.h == 0) {
                this.h = -16776961;
            }
            autoCancel2.setLights(this.h, PathInterpolatorCompat.MAX_NUM_POINTS, PathInterpolatorCompat.MAX_NUM_POINTS);
            Uri uri2 = this.i;
            if (uri2 != null) {
                autoCancel2.setSound(uri2);
            }
            Bitmap bitmap2 = this.c;
            if (bitmap2 != null) {
                autoCancel2.setLargeIcon(bitmap2);
            }
            PendingIntent pendingIntent2 = this.j;
            if (pendingIntent2 != null) {
                autoCancel2.setContentIntent(pendingIntent2);
            }
            NotificationCompat.Style style = this.d;
            if (style != null) {
                autoCancel2.setStyle(style);
            }
            RemoteViews remoteViews2 = this.k;
            if (remoteViews2 != null) {
                autoCancel2.setCustomContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = this.l;
            if (remoteViews3 != null) {
                autoCancel2.setCustomBigContentView(remoteViews3);
            }
            return autoCancel2.build();
        }
    }

    public a(Context context) {
        this.f335a = context;
        this.f336b = (NotificationManager) context.getSystemService("notification");
    }

    private static NotificationChannel a(String str, String str2, Importance importance) throws Exception {
        if (importance == null) {
            importance = Importance.DEFAULT;
        }
        if (str != null && str2 != null) {
            return new NotificationChannel(str, str2, importance.getValue());
        }
        throw new Exception("The given id or name or both was/were null while no default value has been set");
    }

    public static NotificationChannel createNotificationChannelWithOptions(String str, String str2, Importance importance, NotificationChannelOptions notificationChannelOptions) throws Exception {
        if (notificationChannelOptions == null) {
            return a(str, str2, importance);
        }
        NotificationChannel a2 = a(str, str2, importance);
        if (notificationChannelOptions.getDescription() != null) {
            a2.setDescription(notificationChannelOptions.getDescription());
        }
        if (notificationChannelOptions.getLockScreenVisibility() != null) {
            a2.setLockscreenVisibility(notificationChannelOptions.getLockScreenVisibility().getValue());
        }
        if (notificationChannelOptions.getLightColor() != 0) {
            a2.setLightColor(notificationChannelOptions.getLightColor());
        } else {
            a2.setLightColor(-16776961);
        }
        a2.setShowBadge(notificationChannelOptions.isShowBadge());
        a2.enableLights(notificationChannelOptions.isEnableLights());
        a2.enableVibration(notificationChannelOptions.isEnableVibration());
        return a2;
    }

    public void showNotification(int i, Notification notification) {
        this.f336b.notify(i, notification);
    }

    public void showNotification(String str, int i, Notification notification) {
        this.f336b.notify(str, i, notification);
    }

    public void deleteNotificationChannel(String str) {
        this.f336b.deleteNotificationChannel(str);
    }

    public void cancelNotification(int i) {
        this.f336b.cancel(i);
    }

    public void cancelNotification(String str, int i) {
        this.f336b.cancel(str, i);
    }

    public void cancelAllNotifications() {
        this.f336b.cancelAll();
    }
}
