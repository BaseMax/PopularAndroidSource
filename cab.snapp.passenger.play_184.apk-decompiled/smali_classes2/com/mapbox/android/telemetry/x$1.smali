.class final Lcom/mapbox/android/telemetry/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/android/telemetry/x;->updateSessionIdRotationInterval(Lcom/mapbox/android/telemetry/ac;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/mapbox/android/telemetry/x;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/x;J)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mapbox/android/telemetry/x$1;->b:Lcom/mapbox/android/telemetry/x;

    iput-wide p2, p0, Lcom/mapbox/android/telemetry/x$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 133
    :try_start_0
    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/android/telemetry/ak;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mapboxSessionRotationInterval"

    .line 135
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/mapbox/android/telemetry/x$1;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
