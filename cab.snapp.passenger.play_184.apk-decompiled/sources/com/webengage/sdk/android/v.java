package com.webengage.sdk.android;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import org.eclipse.paho.a.a.w;

public class v {
    public static synchronized void a(PushChannelConfiguration pushChannelConfiguration, Context context) {
        Uri uri;
        synchronized (v.class) {
            if (context == null || pushChannelConfiguration == null) {
                throw new IllegalArgumentException("Invalid Arguments");
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel(pushChannelConfiguration.getNotificationChannelId(), pushChannelConfiguration.getNotificationChannelName(), pushChannelConfiguration.getNotificationChannelImportance());
                if (pushChannelConfiguration.getNotificationChannelDescription() != null) {
                    notificationChannel.setDescription(pushChannelConfiguration.getNotificationChannelDescription());
                }
                if (pushChannelConfiguration.getNotificationChannelGroup() != null) {
                    notificationChannel.setGroup(pushChannelConfiguration.getNotificationChannelGroup());
                }
                if (pushChannelConfiguration.getNotificationChannelLightColor() != -1) {
                    notificationChannel.enableLights(true);
                    notificationChannel.setLightColor(pushChannelConfiguration.getNotificationChannelLightColor());
                }
                notificationChannel.setLockscreenVisibility(pushChannelConfiguration.getNotificationChannelLockScreenVisibility());
                notificationChannel.setShowBadge(pushChannelConfiguration.isNotificationChannelShowBadge());
                if (pushChannelConfiguration.getNotificationChannelSound() != null) {
                    int identifier = context.getResources().getIdentifier(pushChannelConfiguration.getNotificationChannelSound(), "raw", context.getPackageName());
                    if (identifier != 0) {
                        uri = Uri.parse("android.resource://" + context.getPackageName() + w.TOPIC_LEVEL_SEPARATOR + identifier);
                    } else {
                        uri = RingtoneManager.getDefaultUri(2);
                        Logger.e("WebEngage", "No sound resources found in raw folder for name: " + pushChannelConfiguration.getNotificationChannelSound() + ", using default tone.");
                    }
                    notificationChannel.setSound(uri, null);
                }
                notificationChannel.enableVibration(pushChannelConfiguration.isNotificationChannelVibration());
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001d, code lost:
        if (r4 == null) goto L_0x0020;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001f, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0020, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0022, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized boolean a(java.lang.String r4, android.content.Context r5) {
        /*
            java.lang.Class<com.webengage.sdk.android.v> r0 = com.webengage.sdk.android.v.class
            monitor-enter(r0)
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x0025 }
            r2 = 26
            r3 = 1
            if (r1 < r2) goto L_0x0023
            r1 = 0
            if (r4 == 0) goto L_0x0021
            if (r5 != 0) goto L_0x0010
            goto L_0x0021
        L_0x0010:
            java.lang.String r2 = "notification"
            java.lang.Object r5 = r5.getSystemService(r2)     // Catch:{ all -> 0x0025 }
            android.app.NotificationManager r5 = (android.app.NotificationManager) r5     // Catch:{ all -> 0x0025 }
            android.app.NotificationChannel r4 = r5.getNotificationChannel(r4)     // Catch:{ all -> 0x0025 }
            monitor-exit(r0)
            if (r4 == 0) goto L_0x0020
            return r3
        L_0x0020:
            return r1
        L_0x0021:
            monitor-exit(r0)
            return r1
        L_0x0023:
            monitor-exit(r0)
            return r3
        L_0x0025:
            r4 = move-exception
            monitor-exit(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.v.a(java.lang.String, android.content.Context):boolean");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x003b, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x003d, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized boolean b(java.lang.String r4, android.content.Context r5) {
        /*
            java.lang.Class<com.webengage.sdk.android.v> r0 = com.webengage.sdk.android.v.class
            monitor-enter(r0)
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x003e }
            r2 = 26
            r3 = 0
            if (r1 < r2) goto L_0x003c
            if (r4 == 0) goto L_0x003a
            if (r5 != 0) goto L_0x000f
            goto L_0x003a
        L_0x000f:
            java.lang.String r1 = "notification"
            java.lang.Object r5 = r5.getSystemService(r1)     // Catch:{ all -> 0x003e }
            android.app.NotificationManager r5 = (android.app.NotificationManager) r5     // Catch:{ all -> 0x003e }
            java.util.List r5 = r5.getNotificationChannelGroups()     // Catch:{ all -> 0x003e }
            if (r5 == 0) goto L_0x003c
            java.util.Iterator r5 = r5.iterator()     // Catch:{ all -> 0x003e }
        L_0x0021:
            boolean r1 = r5.hasNext()     // Catch:{ all -> 0x003e }
            if (r1 == 0) goto L_0x003c
            java.lang.Object r1 = r5.next()     // Catch:{ all -> 0x003e }
            android.app.NotificationChannelGroup r1 = (android.app.NotificationChannelGroup) r1     // Catch:{ all -> 0x003e }
            java.lang.String r1 = r1.getId()     // Catch:{ all -> 0x003e }
            boolean r1 = r4.equals(r1)     // Catch:{ all -> 0x003e }
            if (r1 == 0) goto L_0x0021
            r4 = 1
            monitor-exit(r0)
            return r4
        L_0x003a:
            monitor-exit(r0)
            return r3
        L_0x003c:
            monitor-exit(r0)
            return r3
        L_0x003e:
            r4 = move-exception
            monitor-exit(r0)
            goto L_0x0042
        L_0x0041:
            throw r4
        L_0x0042:
            goto L_0x0041
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.v.b(java.lang.String, android.content.Context):boolean");
    }
}
