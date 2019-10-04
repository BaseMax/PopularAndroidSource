.class final Lcom/mapbox/android/telemetry/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Lcom/mapbox/android/telemetry/y;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/y;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mapbox/android/telemetry/a;->a:Lcom/mapbox/android/telemetry/y;

    return-void
.end method

.method static a()Landroid/content/Intent;
    .locals 2

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mapbox.scheduler_flusher"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    :try_start_0
    const-string p1, "com.mapbox.scheduler_flusher"

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/mapbox/android/telemetry/a;->a:Lcom/mapbox/android/telemetry/y;

    invoke-interface {p1}, Lcom/mapbox/android/telemetry/y;->onPeriodRaised()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
