.class final Lcom/mapbox/android/telemetry/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/android/telemetry/a/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/mapbox/android/a/b/c;

.field private final c:Lcom/mapbox/android/telemetry/a/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mapbox/android/a/b/c;Lcom/mapbox/android/telemetry/a/e;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mapbox/android/telemetry/a/c;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/mapbox/android/telemetry/a/c;->b:Lcom/mapbox/android/a/b/c;

    .line 29
    iput-object p3, p0, Lcom/mapbox/android/telemetry/a/c;->c:Lcom/mapbox/android/telemetry/a/e;

    return-void
.end method

.method private a()Landroid/app/PendingIntent;
    .locals 4

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mapbox.android.telemetry.location.locationupdatespendingintent.action.LOCATION_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/mapbox/android/telemetry/a/c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 2080
    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/c;->b:Lcom/mapbox/android/a/b/c;

    invoke-direct {p0}, Lcom/mapbox/android/telemetry/a/c;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mapbox/android/a/b/c;->removeLocationUpdates(Landroid/app/PendingIntent;)V

    .line 3060
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/a/c;->c:Lcom/mapbox/android/telemetry/a/e;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1051
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/a/c;->c:Lcom/mapbox/android/telemetry/a/e;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.mapbox.android.telemetry.location.locationupdatespendingintent.action.LOCATION_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1090
    :goto_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/c;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 1073
    :try_start_1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/c;->b:Lcom/mapbox/android/a/b/c;

    .line 1095
    new-instance v1, Lcom/mapbox/android/a/b/h$a;

    const-wide/16 v2, 0x3e8

    invoke-direct {v1, v2, v3}, Lcom/mapbox/android/a/b/h$a;-><init>(J)V

    const/4 v2, 0x3

    .line 1096
    invoke-virtual {v1, v2}, Lcom/mapbox/android/a/b/h$a;->setPriority(I)Lcom/mapbox/android/a/b/h$a;

    move-result-object v1

    const-wide/16 v2, 0x1388

    .line 1097
    invoke-virtual {v1, v2, v3}, Lcom/mapbox/android/a/b/h$a;->setMaxWaitTime(J)Lcom/mapbox/android/a/b/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapbox/android/a/b/h$a;->build()Lcom/mapbox/android/a/b/h;

    move-result-object v1

    .line 1073
    invoke-direct {p0}, Lcom/mapbox/android/telemetry/a/c;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mapbox/android/a/b/c;->requestLocationUpdates(Lcom/mapbox/android/a/b/h;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method
