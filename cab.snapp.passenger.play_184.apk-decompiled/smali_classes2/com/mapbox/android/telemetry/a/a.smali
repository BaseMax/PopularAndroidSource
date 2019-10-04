.class public final Lcom/mapbox/android/telemetry/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final DEFAULT_SESSION_ROTATION_INTERVAL_HOURS:I = 0x18

.field private static final e:Ljava/lang/Object;

.field private static f:Lcom/mapbox/android/telemetry/a/a;


# instance fields
.field final a:Lcom/mapbox/android/telemetry/a/b;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/mapbox/android/telemetry/a/f;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/mapbox/android/telemetry/x;

.field private final g:Landroid/os/HandlerThread;

.field private final h:Landroid/content/SharedPreferences;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/a/a;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/mapbox/android/telemetry/a/b;Landroid/os/HandlerThread;Lcom/mapbox/android/telemetry/a/f;Landroid/content/SharedPreferences;Lcom/mapbox/android/telemetry/x;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/a/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    iput-object p1, p0, Lcom/mapbox/android/telemetry/a/a;->a:Lcom/mapbox/android/telemetry/a/b;

    .line 57
    iput-object p2, p0, Lcom/mapbox/android/telemetry/a/a;->g:Landroid/os/HandlerThread;

    .line 58
    iget-object p1, p0, Lcom/mapbox/android/telemetry/a/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 59
    iput-object p5, p0, Lcom/mapbox/android/telemetry/a/a;->d:Lcom/mapbox/android/telemetry/x;

    .line 60
    iget-object p1, p0, Lcom/mapbox/android/telemetry/a/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance p1, Lcom/mapbox/android/telemetry/a/a$1;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/mapbox/android/telemetry/a/a$1;-><init>(Lcom/mapbox/android/telemetry/a/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mapbox/android/telemetry/a/a;->i:Landroid/os/Handler;

    .line 72
    iput-object p4, p0, Lcom/mapbox/android/telemetry/a/a;->h:Landroid/content/SharedPreferences;

    .line 1247
    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1248
    iget-object p2, p0, Lcom/mapbox/android/telemetry/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const-string p3, "mapboxTelemetryLocationState"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1249
    iget-object p2, p0, Lcom/mapbox/android/telemetry/a/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mapbox/android/telemetry/a/f;

    invoke-virtual {p2}, Lcom/mapbox/android/telemetry/a/f;->getInterval()J

    move-result-wide p2

    const-string p5, "mapboxSessionRotationInterval"

    invoke-interface {p1, p5, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1250
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1251
    invoke-interface {p4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static a()Lcom/mapbox/android/telemetry/a/a;
    .locals 3

    .line 134
    sget-object v0, Lcom/mapbox/android/telemetry/a/a;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lcom/mapbox/android/telemetry/a/a;->f:Lcom/mapbox/android/telemetry/a/a;

    if-eqz v1, :cond_0

    .line 136
    sget-object v1, Lcom/mapbox/android/telemetry/a/a;->f:Lcom/mapbox/android/telemetry/a/a;

    monitor-exit v0

    return-object v1

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LocationCollectionClient is not installed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static install(Landroid/content/Context;J)Lcom/mapbox/android/telemetry/a/a;
    .locals 10

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 92
    :cond_0
    sget-object v0, Lcom/mapbox/android/telemetry/a/a;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/mapbox/android/telemetry/a/a;->f:Lcom/mapbox/android/telemetry/a/a;

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Lcom/mapbox/android/telemetry/a/a;

    new-instance v3, Lcom/mapbox/android/telemetry/a/c;

    .line 95
    invoke-static {p0}, Lcom/mapbox/android/a/b/f;->getBestLocationEngine(Landroid/content/Context;)Lcom/mapbox/android/a/b/c;

    move-result-object v2

    new-instance v4, Lcom/mapbox/android/telemetry/a/e;

    invoke-direct {v4}, Lcom/mapbox/android/telemetry/a/e;-><init>()V

    invoke-direct {v3, p0, v2, v4}, Lcom/mapbox/android/telemetry/a/c;-><init>(Landroid/content/Context;Lcom/mapbox/android/a/b/c;Lcom/mapbox/android/telemetry/a/e;)V

    new-instance v4, Landroid/os/HandlerThread;

    const-string v2, "LocationSettingsChangeThread"

    invoke-direct {v4, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/mapbox/android/telemetry/a/f;

    invoke-direct {v5, p1, p2}, Lcom/mapbox/android/telemetry/a/f;-><init>(J)V

    const-string p1, "MapboxSharedPreferences"

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Lcom/mapbox/android/telemetry/x;

    const-string p1, ""

    const-string v2, "%s/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "mapbox-android-location"

    aput-object v9, v8, p2

    const/4 p2, 0x1

    const-string v9, "4.5.1"

    aput-object v9, v8, p2

    .line 101
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v7, p0, p1, p2}, Lcom/mapbox/android/telemetry/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/mapbox/android/telemetry/a/a;-><init>(Lcom/mapbox/android/telemetry/a/b;Landroid/os/HandlerThread;Lcom/mapbox/android/telemetry/a/f;Landroid/content/SharedPreferences;Lcom/mapbox/android/telemetry/x;)V

    sput-object v1, Lcom/mapbox/android/telemetry/a/a;->f:Lcom/mapbox/android/telemetry/a/a;

    .line 103
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    sget-object p0, Lcom/mapbox/android/telemetry/a/a;->f:Lcom/mapbox/android/telemetry/a/a;

    return-object p0

    :catchall_0
    move-exception p0

    .line 103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "mapboxSessionRotationInterval"

    const-string v1, "mapboxTelemetryLocationState"

    .line 231
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p2, 0x0

    .line 232
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 2187
    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2188
    iget-object p1, p0, Lcom/mapbox/android/telemetry/a/a;->i:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    .line 233
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 234
    sget-object p2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    .line 235
    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 234
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 3149
    iget-object v0, p0, Lcom/mapbox/android/telemetry/a/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/mapbox/android/telemetry/a/f;

    invoke-direct {v1, p1, p2}, Lcom/mapbox/android/telemetry/a/f;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
