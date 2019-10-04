.class public Lcab/snapp/notificationmanager/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/notificationmanager/a$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcab/snapp/notificationmanager/a;->a:Landroid/content/Context;

    const-string v0, "notification"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcab/snapp/notificationmanager/a;->b:Landroid/app/NotificationManager;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/notificationmanager/models/Importance;)Landroid/app/NotificationChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 57
    sget-object p2, Lcab/snapp/notificationmanager/models/Importance;->DEFAULT:Lcab/snapp/notificationmanager/models/Importance;

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p2}, Lcab/snapp/notificationmanager/models/Importance;->getValue()I

    move-result p2

    .line 1045
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "The given id or name or both was/were null while no default value has been set"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createNotificationChannelWithOptions(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/notificationmanager/models/Importance;Lcab/snapp/notificationmanager/models/NotificationChannelOptions;)Landroid/app/NotificationChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 77
    invoke-static {p0, p1, p2}, Lcab/snapp/notificationmanager/a;->a(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/notificationmanager/models/Importance;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    invoke-static {p0, p1, p2}, Lcab/snapp/notificationmanager/a;->a(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/notificationmanager/models/Importance;)Landroid/app/NotificationChannel;

    move-result-object p0

    .line 83
    invoke-virtual {p3}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p3}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 88
    :cond_1
    invoke-virtual {p3}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->getLockScreenVisibility()Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p3}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->getLockScreenVisibility()Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions$LockScreenVisibility;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 93
    :cond_2
    invoke-virtual {p3}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->getLightColor()I

    move-result p1

    if-eqz p1, :cond_3

    .line 95
    invoke-virtual {p3}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->getLightColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    goto :goto_0

    :cond_3
    const p1, -0xffff01

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 102
    :goto_0
    invoke-virtual {p3}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->isShowBadge()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 103
    invoke-virtual {p3}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->isEnableLights()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 104
    invoke-virtual {p3}, Lcab/snapp/notificationmanager/models/NotificationChannelOptions;->isEnableVibration()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    return-object p0
.end method


# virtual methods
.method public cancelAllNotifications()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcab/snapp/notificationmanager/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public cancelNotification(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcab/snapp/notificationmanager/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancelNotification(Ljava/lang/String;I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcab/snapp/notificationmanager/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcab/snapp/notificationmanager/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    return-void
.end method

.method public showNotification(ILandroid/app/Notification;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcab/snapp/notificationmanager/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showNotification(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcab/snapp/notificationmanager/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
