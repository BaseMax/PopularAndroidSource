.class public final Lcab/snapp/notificationmanager/a/a;
.super Lcab/snapp/notificationmanager/a;
.source "SourceFile"


# instance fields
.field public GENERAL_CHANNEL_ID:Ljava/lang/String;

.field public GENERAL_CHANNEL_NAME:Ljava/lang/String;

.field public RIDE_CHANNEL_ID:Ljava/lang/String;

.field public RIDE_CHANNEL_NAME:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:Landroid/net/Uri;

.field public generalChannel:Landroid/app/NotificationChannel;

.field public rideChannel:Landroid/app/NotificationChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3

    .line 39
    invoke-direct {p0, p1}, Lcab/snapp/notificationmanager/a;-><init>(Landroid/content/Context;)V

    const-string p1, "Ride related Notifications"

    .line 24
    iput-object p1, p0, Lcab/snapp/notificationmanager/a/a;->RIDE_CHANNEL_NAME:Ljava/lang/String;

    const-string p1, "ride_notification_channel"

    .line 25
    iput-object p1, p0, Lcab/snapp/notificationmanager/a/a;->RIDE_CHANNEL_ID:Ljava/lang/String;

    const-string p1, "General Notifications"

    .line 26
    iput-object p1, p0, Lcab/snapp/notificationmanager/a/a;->GENERAL_CHANNEL_NAME:Ljava/lang/String;

    const-string p1, "general_notification_channel"

    .line 27
    iput-object p1, p0, Lcab/snapp/notificationmanager/a/a;->GENERAL_CHANNEL_ID:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcab/snapp/notificationmanager/a/a;->c:Landroid/net/Uri;

    .line 42
    iput-object p3, p0, Lcab/snapp/notificationmanager/a/a;->d:Landroid/net/Uri;

    .line 44
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    .line 47
    new-instance p1, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;

    invoke-direct {p1}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;-><init>()V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->setEnableLights(Z)V

    .line 49
    invoke-virtual {p1, v0}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->setEnableVibration(Z)V

    const v1, -0xffff01

    .line 50
    invoke-virtual {p1, v1}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->setLightColor(I)V

    .line 51
    sget-object v1, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->SHOWING_COMPLETELY:Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    invoke-virtual {p1, v1}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->setLockScreenVisibility(Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;)V

    .line 52
    invoke-virtual {p1, v0}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->setShowBadge(Z)V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcab/snapp/notificationmanager/a/a;->GENERAL_CHANNEL_ID:Ljava/lang/String;

    iget-object v1, p0, Lcab/snapp/notificationmanager/a/a;->GENERAL_CHANNEL_NAME:Ljava/lang/String;

    sget-object v2, Lcab/snapp/notificationmanager/models/Importance;->DEFAULT:Lcab/snapp/notificationmanager/models/Importance;

    invoke-static {v0, v1, v2, p1}, Lcab/snapp/notificationmanager/a/a;->createNotificationChannelWithOptions(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/notificationmanager/models/Importance;Lcab/snapp/notificationmanager/models/NotificationChannelOptions;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/notificationmanager/a/a;->generalChannel:Landroid/app/NotificationChannel;

    .line 57
    iget-object v0, p0, Lcab/snapp/notificationmanager/a/a;->RIDE_CHANNEL_ID:Ljava/lang/String;

    iget-object v1, p0, Lcab/snapp/notificationmanager/a/a;->RIDE_CHANNEL_NAME:Ljava/lang/String;

    sget-object v2, Lcab/snapp/notificationmanager/models/Importance;->DEFAULT:Lcab/snapp/notificationmanager/models/Importance;

    invoke-static {v0, v1, v2, p1}, Lcab/snapp/notificationmanager/a/a;->createNotificationChannelWithOptions(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/notificationmanager/models/Importance;Lcab/snapp/notificationmanager/models/NotificationChannelOptions;)Landroid/app/NotificationChannel;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/notificationmanager/a/a;->rideChannel:Landroid/app/NotificationChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :goto_0
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x5

    .line 65
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 67
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 69
    iget-object v0, p0, Lcab/snapp/notificationmanager/a/a;->rideChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p3, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 73
    iget-object p3, p0, Lcab/snapp/notificationmanager/a/a;->generalChannel:Landroid/app/NotificationChannel;

    if-eqz p3, :cond_1

    .line 74
    invoke-virtual {p3, p2, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 77
    :cond_1
    iget-object p1, p0, Lcab/snapp/notificationmanager/a/a;->b:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcab/snapp/notificationmanager/a/a;->rideChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 78
    iget-object p1, p0, Lcab/snapp/notificationmanager/a/a;->b:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcab/snapp/notificationmanager/a/a;->generalChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final showNotificationOnGeneralChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;[J)V
    .locals 3

    .line 150
    new-instance v0, Lcab/snapp/notificationmanager/a$a;

    iget-object v1, p0, Lcab/snapp/notificationmanager/a/a;->GENERAL_CHANNEL_ID:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/notificationmanager/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p6, v2}, Lcab/snapp/notificationmanager/a$a;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Context;)V

    .line 151
    invoke-virtual {v0, p5}, Lcab/snapp/notificationmanager/a$a;->setSmallIconResource(I)Lcab/snapp/notificationmanager/a$a;

    move-result-object p5

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p5, v0}, Lcab/snapp/notificationmanager/a$a;->setAutoCancelable(Z)Lcab/snapp/notificationmanager/a$a;

    move-result-object p5

    .line 153
    invoke-virtual {p5, p4}, Lcab/snapp/notificationmanager/a$a;->setContent(Ljava/lang/String;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p5

    .line 154
    invoke-virtual {p5, p3}, Lcab/snapp/notificationmanager/a$a;->setTitle(Ljava/lang/String;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    const p5, -0xffff01

    .line 155
    invoke-virtual {p3, p5}, Lcab/snapp/notificationmanager/a$a;->setLight(I)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    .line 156
    invoke-virtual {p3, p7}, Lcab/snapp/notificationmanager/a$a;->setVibrate([J)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    new-instance p5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 157
    invoke-virtual {p5, p4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcab/snapp/notificationmanager/a$a;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    .line 159
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x1a

    if-ge p4, p5, :cond_0

    .line 161
    iget-object p4, p0, Lcab/snapp/notificationmanager/a/a;->c:Landroid/net/Uri;

    invoke-virtual {p3, p4}, Lcab/snapp/notificationmanager/a$a;->setSound(Landroid/net/Uri;)Lcab/snapp/notificationmanager/a$a;

    :cond_0
    if-eqz p6, :cond_1

    .line 165
    invoke-virtual {p3, p6}, Lcab/snapp/notificationmanager/a$a;->setPendingIntent(Landroid/app/PendingIntent;)Lcab/snapp/notificationmanager/a$a;

    :cond_1
    if-eqz p1, :cond_2

    .line 169
    iget-object p4, p0, Lcab/snapp/notificationmanager/a/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcab/snapp/notificationmanager/a$a;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p4, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    .line 171
    :cond_2
    iget-object p1, p0, Lcab/snapp/notificationmanager/a/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcab/snapp/notificationmanager/a$a;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final showNotificationOnRideChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;[J)V
    .locals 3

    .line 88
    new-instance v0, Lcab/snapp/notificationmanager/a$a;

    iget-object v1, p0, Lcab/snapp/notificationmanager/a/a;->RIDE_CHANNEL_ID:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/notificationmanager/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p6, v2}, Lcab/snapp/notificationmanager/a$a;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Context;)V

    .line 89
    invoke-virtual {v0, p5}, Lcab/snapp/notificationmanager/a$a;->setSmallIconResource(I)Lcab/snapp/notificationmanager/a$a;

    move-result-object p5

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p5, v0}, Lcab/snapp/notificationmanager/a$a;->setAutoCancelable(Z)Lcab/snapp/notificationmanager/a$a;

    move-result-object p5

    .line 91
    invoke-virtual {p5, p4}, Lcab/snapp/notificationmanager/a$a;->setContent(Ljava/lang/String;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p5

    .line 92
    invoke-virtual {p5, p3}, Lcab/snapp/notificationmanager/a$a;->setTitle(Ljava/lang/String;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    const p5, -0xffff01

    .line 93
    invoke-virtual {p3, p5}, Lcab/snapp/notificationmanager/a$a;->setLight(I)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    .line 94
    invoke-virtual {p3, p7}, Lcab/snapp/notificationmanager/a$a;->setVibrate([J)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    new-instance p5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 95
    invoke-virtual {p5, p4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcab/snapp/notificationmanager/a$a;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    .line 97
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x1a

    if-ge p4, p5, :cond_0

    .line 99
    iget-object p4, p0, Lcab/snapp/notificationmanager/a/a;->d:Landroid/net/Uri;

    invoke-virtual {p3, p4}, Lcab/snapp/notificationmanager/a$a;->setSound(Landroid/net/Uri;)Lcab/snapp/notificationmanager/a$a;

    :cond_0
    if-eqz p6, :cond_1

    .line 103
    invoke-virtual {p3, p6}, Lcab/snapp/notificationmanager/a$a;->setPendingIntent(Landroid/app/PendingIntent;)Lcab/snapp/notificationmanager/a$a;

    :cond_1
    if-eqz p1, :cond_2

    .line 107
    iget-object p4, p0, Lcab/snapp/notificationmanager/a/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcab/snapp/notificationmanager/a$a;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p4, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    .line 109
    :cond_2
    iget-object p1, p0, Lcab/snapp/notificationmanager/a/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcab/snapp/notificationmanager/a$a;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final showNotificationWithCustomLayoutOnGeneralChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;[JLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3

    .line 177
    new-instance v0, Lcab/snapp/notificationmanager/a$a;

    iget-object v1, p0, Lcab/snapp/notificationmanager/a/a;->GENERAL_CHANNEL_ID:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/notificationmanager/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p6, v2}, Lcab/snapp/notificationmanager/a$a;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Context;)V

    .line 178
    invoke-virtual {v0, p5}, Lcab/snapp/notificationmanager/a$a;->setSmallIconResource(I)Lcab/snapp/notificationmanager/a$a;

    move-result-object p5

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p5, v0}, Lcab/snapp/notificationmanager/a$a;->setAutoCancelable(Z)Lcab/snapp/notificationmanager/a$a;

    move-result-object p5

    .line 180
    invoke-virtual {p5, p4}, Lcab/snapp/notificationmanager/a$a;->setContent(Ljava/lang/String;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p4

    .line 181
    invoke-virtual {p4, p3}, Lcab/snapp/notificationmanager/a$a;->setTitle(Ljava/lang/String;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    const p4, -0xffff01

    .line 182
    invoke-virtual {p3, p4}, Lcab/snapp/notificationmanager/a$a;->setLight(I)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    .line 183
    invoke-virtual {p3, p7}, Lcab/snapp/notificationmanager/a$a;->setVibrate([J)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    new-instance p4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {p4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 184
    invoke-virtual {p3, p4}, Lcab/snapp/notificationmanager/a$a;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    .line 186
    invoke-virtual {p3, p8}, Lcab/snapp/notificationmanager/a$a;->setLayout(Landroid/widget/RemoteViews;)Lcab/snapp/notificationmanager/a$a;

    if-eqz p9, :cond_0

    .line 190
    invoke-virtual {p3, p9}, Lcab/snapp/notificationmanager/a$a;->setExpandedLayout(Landroid/widget/RemoteViews;)Lcab/snapp/notificationmanager/a$a;

    .line 193
    :cond_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x1a

    if-ge p4, p5, :cond_1

    .line 195
    iget-object p4, p0, Lcab/snapp/notificationmanager/a/a;->c:Landroid/net/Uri;

    invoke-virtual {p3, p4}, Lcab/snapp/notificationmanager/a$a;->setSound(Landroid/net/Uri;)Lcab/snapp/notificationmanager/a$a;

    :cond_1
    if-eqz p6, :cond_2

    .line 199
    invoke-virtual {p3, p6}, Lcab/snapp/notificationmanager/a$a;->setPendingIntent(Landroid/app/PendingIntent;)Lcab/snapp/notificationmanager/a$a;

    :cond_2
    if-eqz p1, :cond_3

    .line 203
    iget-object p4, p0, Lcab/snapp/notificationmanager/a/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcab/snapp/notificationmanager/a$a;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p4, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    .line 205
    :cond_3
    iget-object p1, p0, Lcab/snapp/notificationmanager/a/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcab/snapp/notificationmanager/a$a;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final showNotificationWithCustomLayoutOnRideChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;[JLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3

    .line 117
    new-instance v0, Lcab/snapp/notificationmanager/a$a;

    iget-object v1, p0, Lcab/snapp/notificationmanager/a/a;->RIDE_CHANNEL_ID:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/notificationmanager/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p6, v2}, Lcab/snapp/notificationmanager/a$a;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0, p5}, Lcab/snapp/notificationmanager/a$a;->setSmallIconResource(I)Lcab/snapp/notificationmanager/a$a;

    move-result-object p5

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p5, v0}, Lcab/snapp/notificationmanager/a$a;->setAutoCancelable(Z)Lcab/snapp/notificationmanager/a$a;

    move-result-object p5

    .line 120
    invoke-virtual {p5, p4}, Lcab/snapp/notificationmanager/a$a;->setContent(Ljava/lang/String;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p4

    .line 121
    invoke-virtual {p4, p3}, Lcab/snapp/notificationmanager/a$a;->setTitle(Ljava/lang/String;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    const p4, -0xffff01

    .line 122
    invoke-virtual {p3, p4}, Lcab/snapp/notificationmanager/a$a;->setLight(I)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    .line 123
    invoke-virtual {p3, p7}, Lcab/snapp/notificationmanager/a$a;->setVibrate([J)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    new-instance p4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {p4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 124
    invoke-virtual {p3, p4}, Lcab/snapp/notificationmanager/a$a;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Lcab/snapp/notificationmanager/a$a;

    move-result-object p3

    .line 126
    invoke-virtual {p3, p8}, Lcab/snapp/notificationmanager/a$a;->setLayout(Landroid/widget/RemoteViews;)Lcab/snapp/notificationmanager/a$a;

    if-eqz p9, :cond_0

    .line 130
    invoke-virtual {p3, p9}, Lcab/snapp/notificationmanager/a$a;->setExpandedLayout(Landroid/widget/RemoteViews;)Lcab/snapp/notificationmanager/a$a;

    .line 133
    :cond_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x1a

    if-ge p4, p5, :cond_1

    .line 135
    iget-object p4, p0, Lcab/snapp/notificationmanager/a/a;->d:Landroid/net/Uri;

    invoke-virtual {p3, p4}, Lcab/snapp/notificationmanager/a$a;->setSound(Landroid/net/Uri;)Lcab/snapp/notificationmanager/a$a;

    :cond_1
    if-eqz p6, :cond_2

    .line 139
    invoke-virtual {p3, p6}, Lcab/snapp/notificationmanager/a$a;->setPendingIntent(Landroid/app/PendingIntent;)Lcab/snapp/notificationmanager/a$a;

    :cond_2
    if-eqz p1, :cond_3

    .line 143
    iget-object p4, p0, Lcab/snapp/notificationmanager/a/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcab/snapp/notificationmanager/a$a;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p4, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    .line 145
    :cond_3
    iget-object p1, p0, Lcab/snapp/notificationmanager/a/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcab/snapp/notificationmanager/a$a;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
