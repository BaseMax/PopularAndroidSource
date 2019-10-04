.class final Lcom/mapbox/android/telemetry/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/telemetry/z;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/AlarmManager;

.field private final c:Lcom/mapbox/android/telemetry/a;

.field private d:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/mapbox/android/telemetry/a;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mapbox/android/telemetry/b;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/mapbox/android/telemetry/b;->b:Landroid/app/AlarmManager;

    .line 24
    iput-object p3, p0, Lcom/mapbox/android/telemetry/b;->c:Lcom/mapbox/android/telemetry/a;

    return-void
.end method


# virtual methods
.method public final register()V
    .locals 4

    .line 29
    invoke-static {}, Lcom/mapbox/android/telemetry/a;->a()Landroid/content/Intent;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/mapbox/android/telemetry/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/b;->d:Landroid/app/PendingIntent;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mapbox.scheduler_flusher"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/mapbox/android/telemetry/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapbox/android/telemetry/b;->c:Lcom/mapbox/android/telemetry/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final schedule(J)V
    .locals 9

    .line 37
    sget-wide v0, Lcom/mapbox/android/telemetry/aa;->a:J

    add-long v4, p1, v0

    .line 38
    iget-object v2, p0, Lcom/mapbox/android/telemetry/b;->b:Landroid/app/AlarmManager;

    sget-wide v6, Lcom/mapbox/android/telemetry/aa;->a:J

    iget-object v8, p0, Lcom/mapbox/android/telemetry/b;->d:Landroid/app/PendingIntent;

    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final unregister()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/mapbox/android/telemetry/b;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/mapbox/android/telemetry/b;->b:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/b;->c:Lcom/mapbox/android/telemetry/a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
