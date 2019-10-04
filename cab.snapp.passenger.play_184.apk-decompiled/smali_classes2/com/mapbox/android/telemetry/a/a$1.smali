.class final Lcom/mapbox/android/telemetry/a/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/android/telemetry/a/a;-><init>(Lcom/mapbox/android/telemetry/a/b;Landroid/os/HandlerThread;Lcom/mapbox/android/telemetry/a/f;Landroid/content/SharedPreferences;Lcom/mapbox/android/telemetry/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/android/telemetry/a/a;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/a/a;Landroid/os/Looper;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mapbox/android/telemetry/a/a$1;->a:Lcom/mapbox/android/telemetry/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/a$1;->a:Lcom/mapbox/android/telemetry/a/a;

    .line 1213
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2176
    :cond_0
    iget-object p1, v0, Lcom/mapbox/android/telemetry/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1216
    iget-object p1, v0, Lcom/mapbox/android/telemetry/a/a;->a:Lcom/mapbox/android/telemetry/a/b;

    invoke-interface {p1}, Lcom/mapbox/android/telemetry/a/b;->onResume()V

    .line 1217
    iget-object p1, v0, Lcom/mapbox/android/telemetry/a/a;->d:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/x;->enable()Z

    return-void

    .line 1219
    :cond_1
    iget-object p1, v0, Lcom/mapbox/android/telemetry/a/a;->a:Lcom/mapbox/android/telemetry/a/b;

    invoke-interface {p1}, Lcom/mapbox/android/telemetry/a/b;->onDestroy()V

    .line 1220
    iget-object p1, v0, Lcom/mapbox/android/telemetry/a/a;->d:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/x;->disable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
