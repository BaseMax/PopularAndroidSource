.class final Lcom/mapbox/android/telemetry/x$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/android/telemetry/x;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mapbox/android/telemetry/x;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/x;Z)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/mapbox/android/telemetry/x$5;->b:Lcom/mapbox/android/telemetry/x;

    iput-boolean p2, p0, Lcom/mapbox/android/telemetry/x$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 393
    :try_start_0
    sget-object v0, Lcom/mapbox/android/telemetry/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/android/telemetry/ak;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 394
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mapboxTelemetryLocationState"

    .line 395
    iget-boolean v2, p0, Lcom/mapbox/android/telemetry/x$5;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
