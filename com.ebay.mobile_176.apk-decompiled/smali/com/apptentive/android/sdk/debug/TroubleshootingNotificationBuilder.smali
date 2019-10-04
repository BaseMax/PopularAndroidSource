.class final Lcom/apptentive/android/sdk/debug/TroubleshootingNotificationBuilder;
.super Ljava/lang/Object;
.source "TroubleshootingNotificationBuilder.java"


# direct methods
.method static buildNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;)Landroid/app/Notification;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "notification"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/apptentive/android/sdk/debug/LogBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.apptentive.debug.ACTION_ABORT"

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.apptentive.debug.NOTIFICATION_ID"

    const/4 v3, 0x1

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    const/4 v4, 0x0

    .line 54
    invoke-static {p0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 55
    new-instance v5, Landroidx/core/app/NotificationCompat$Action$Builder;

    const-string v6, "Discard"

    invoke-direct {v5, v4, v6, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    .line 57
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/apptentive/android/sdk/debug/LogBroadcastReceiver;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "com.apptentive.debug.ACTION_SEND_LOGS"

    .line 58
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.apptentive.debug.NOTIFICATION_ID"

    .line 59
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "EMAIL_RECIPIENTS"

    .line 60
    invoke-virtual {v5, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "SUBJECT"

    .line 61
    invoke-virtual {v5, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "INFO"

    .line 62
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ATTACHMENTS"

    .line 63
    invoke-virtual {v5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    invoke-static {p0, v4, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 66
    new-instance p2, Landroidx/core/app/NotificationCompat$Action$Builder;

    const-string p3, "Send Report"

    invoke-direct {p2, v4, p3, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p2

    .line 69
    new-instance p3, Landroidx/core/app/NotificationCompat$Builder;

    const-string p4, "com.apptentive.debug.NOTIFICATION_CHANNEL_TROUBLESHOOTING"

    invoke-direct {p3, p0, p4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 72
    invoke-virtual {p3, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 73
    invoke-virtual {p3, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 74
    invoke-virtual {p3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    sget p4, Lcom/apptentive/android/sdk/R$drawable;->apptentive_status_gear:I

    .line 75
    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const-string p4, "Apptentive SDK"

    .line 76
    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const-string p4, "Troubleshooting Mode"

    .line 77
    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const-string p4, "Reproduce your problem, then send report"

    .line 78
    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 79
    invoke-virtual {p3, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 80
    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/16 p3, 0x8

    new-array p4, p3, [J

    fill-array-data p4, :array_0

    .line 82
    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/high16 p4, -0x10000

    const/16 v1, 0xc8

    const/16 v2, 0x190

    .line 83
    invoke-virtual {p2, p4, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 87
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "Tap to send logs"

    .line 88
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 92
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/apptentive/android/sdk/R$color;->apptentive_brand_red:I

    const/4 v1, 0x0

    check-cast v1, Landroid/content/res/Resources$Theme;

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 97
    :cond_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1a

    if-lt p0, p1, :cond_2

    .line 98
    new-instance p0, Landroid/app/NotificationChannel;

    const-string p1, "com.apptentive.debug.NOTIFICATION_CHANNEL_TROUBLESHOOTING"

    const-string v1, "Apptentive Notifications"

    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string p1, "Used for SDK troubleshooting"

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 102
    invoke-virtual {p0, p4}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 103
    new-array p1, p3, [J

    fill-array-data p1, :array_1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 105
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 108
    :cond_2
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0x50
        0xf0
        0x1f4
        0x64
        0x50
        0xf0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x64
        0x50
        0xf0
        0x1f4
        0x64
        0x50
        0xf0
    .end array-data
.end method
