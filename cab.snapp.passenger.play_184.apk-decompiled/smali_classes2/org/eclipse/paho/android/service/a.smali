.class final Lorg/eclipse/paho/android/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/a$a;
    }
.end annotation


# instance fields
.field a:Lorg/eclipse/paho/a/a/a/a;

.field b:Lorg/eclipse/paho/android/service/MqttService;

.field c:Lorg/eclipse/paho/android/service/a;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/app/PendingIntent;

.field private volatile f:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/a;->f:Z

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    .line 60
    iput-object p0, p0, Lorg/eclipse/paho/android/service/a;->c:Lorg/eclipse/paho/android/service/a;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither service nor client can be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final init(Lorg/eclipse/paho/a/a/a/a;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/a/a/a/a;

    .line 66
    new-instance p1, Lorg/eclipse/paho/android/service/a$a;

    invoke-direct {p1, p0}, Lorg/eclipse/paho/android/service/a$a;-><init>(Lorg/eclipse/paho/android/service/a;)V

    iput-object p1, p0, Lorg/eclipse/paho/android/service/a;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public final schedule(J)V
    .locals 4

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 108
    iget-object p1, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "alarm"

    .line 109
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 111
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt p2, v3, :cond_0

    .line 115
    iget-object p2, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void

    .line 117
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt p2, v3, :cond_1

    .line 119
    iget-object p2, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    .line 122
    :cond_1
    iget-object p2, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final start()V
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttService.pingSender."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/a/a/a/a;

    .line 72
    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/a;->d:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    .line 79
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a;->getKeepAlive()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/android/service/a;->schedule(J)V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/a;->f:Z

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unregister alarmreceiver to MqttService"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/a;->f:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 91
    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/a;->f:Z

    .line 96
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a;->b:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/a;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
