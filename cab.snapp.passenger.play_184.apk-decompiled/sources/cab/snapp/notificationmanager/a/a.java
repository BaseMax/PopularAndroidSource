package cab.snapp.notificationmanager.a;

import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import cab.snapp.notificationmanager.a;
import cab.snapp.notificationmanager.models.Importance;
import cab.snapp.notificationmanager.models.NotificationChannelOptions;

public final class a extends cab.snapp.notificationmanager.a {
    public String GENERAL_CHANNEL_ID = "general_notification_channel";
    public String GENERAL_CHANNEL_NAME = "General Notifications";
    public String RIDE_CHANNEL_ID = "ride_notification_channel";
    public String RIDE_CHANNEL_NAME = "Ride related Notifications";
    private Uri c;
    private Uri d;
    public NotificationChannel generalChannel;
    public NotificationChannel rideChannel;

    public a(Context context, Uri uri, Uri uri2) {
        super(context);
        this.c = uri;
        this.d = uri2;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannelOptions notificationChannelOptions = new NotificationChannelOptions();
            notificationChannelOptions.setEnableLights(true);
            notificationChannelOptions.setEnableVibration(true);
            notificationChannelOptions.setLightColor(-16776961);
            notificationChannelOptions.setLockScreenVisibility(NotificationChannelOptions.LockScreenVisibility.SHOWING_COMPLETELY);
            notificationChannelOptions.setShowBadge(true);
            try {
                this.generalChannel = createNotificationChannelWithOptions(this.GENERAL_CHANNEL_ID, this.GENERAL_CHANNEL_NAME, Importance.DEFAULT, notificationChannelOptions);
                this.rideChannel = createNotificationChannelWithOptions(this.RIDE_CHANNEL_ID, this.RIDE_CHANNEL_NAME, Importance.DEFAULT, notificationChannelOptions);
            } catch (Exception e) {
                e.printStackTrace();
            }
            AudioAttributes.Builder builder = new AudioAttributes.Builder();
            builder.setUsage(5);
            builder.setContentType(0);
            AudioAttributes build = builder.build();
            if (uri2 != null) {
                NotificationChannel notificationChannel = this.rideChannel;
                if (notificationChannel != null) {
                    notificationChannel.setSound(uri2, build);
                }
            }
            if (uri != null) {
                NotificationChannel notificationChannel2 = this.generalChannel;
                if (notificationChannel2 != null) {
                    notificationChannel2.setSound(uri, build);
                }
            }
            this.f336b.createNotificationChannel(this.rideChannel);
            this.f336b.createNotificationChannel(this.generalChannel);
        }
    }

    public final void showNotificationOnRideChannel(String str, int i, String str2, String str3, int i2, PendingIntent pendingIntent, long[] jArr) {
        a.C0014a style = new a.C0014a(this.RIDE_CHANNEL_ID, pendingIntent, this.f335a).setSmallIconResource(i2).setAutoCancelable(true).setContent(str3).setTitle(str2).setLight(-16776961).setVibrate(jArr).setStyle(new NotificationCompat.BigTextStyle().bigText(str3));
        if (Build.VERSION.SDK_INT < 26) {
            style.setSound(this.d);
        }
        if (pendingIntent != null) {
            style.setPendingIntent(pendingIntent);
        }
        if (str != null) {
            this.f336b.notify(str, i, style.build());
        } else {
            this.f336b.notify(i, style.build());
        }
    }

    public final void showNotificationWithCustomLayoutOnRideChannel(String str, int i, String str2, String str3, int i2, PendingIntent pendingIntent, long[] jArr, RemoteViews remoteViews, RemoteViews remoteViews2) {
        a.C0014a style = new a.C0014a(this.RIDE_CHANNEL_ID, pendingIntent, this.f335a).setSmallIconResource(i2).setAutoCancelable(true).setContent(str3).setTitle(str2).setLight(-16776961).setVibrate(jArr).setStyle(new NotificationCompat.DecoratedCustomViewStyle());
        style.setLayout(remoteViews);
        if (remoteViews2 != null) {
            style.setExpandedLayout(remoteViews2);
        }
        if (Build.VERSION.SDK_INT < 26) {
            style.setSound(this.d);
        }
        if (pendingIntent != null) {
            style.setPendingIntent(pendingIntent);
        }
        if (str != null) {
            this.f336b.notify(str, i, style.build());
        } else {
            this.f336b.notify(i, style.build());
        }
    }

    public final void showNotificationOnGeneralChannel(String str, int i, String str2, String str3, int i2, PendingIntent pendingIntent, long[] jArr) {
        a.C0014a style = new a.C0014a(this.GENERAL_CHANNEL_ID, pendingIntent, this.f335a).setSmallIconResource(i2).setAutoCancelable(true).setContent(str3).setTitle(str2).setLight(-16776961).setVibrate(jArr).setStyle(new NotificationCompat.BigTextStyle().bigText(str3));
        if (Build.VERSION.SDK_INT < 26) {
            style.setSound(this.c);
        }
        if (pendingIntent != null) {
            style.setPendingIntent(pendingIntent);
        }
        if (str != null) {
            this.f336b.notify(str, i, style.build());
        } else {
            this.f336b.notify(i, style.build());
        }
    }

    public final void showNotificationWithCustomLayoutOnGeneralChannel(String str, int i, String str2, String str3, int i2, PendingIntent pendingIntent, long[] jArr, RemoteViews remoteViews, RemoteViews remoteViews2) {
        a.C0014a style = new a.C0014a(this.GENERAL_CHANNEL_ID, pendingIntent, this.f335a).setSmallIconResource(i2).setAutoCancelable(true).setContent(str3).setTitle(str2).setLight(-16776961).setVibrate(jArr).setStyle(new NotificationCompat.DecoratedCustomViewStyle());
        style.setLayout(remoteViews);
        if (remoteViews2 != null) {
            style.setExpandedLayout(remoteViews2);
        }
        if (Build.VERSION.SDK_INT < 26) {
            style.setSound(this.c);
        }
        if (pendingIntent != null) {
            style.setPendingIntent(pendingIntent);
        }
        if (str != null) {
            this.f336b.notify(str, i, style.build());
        } else {
            this.f336b.notify(i, style.build());
        }
    }
}
