.class public final Lcom/mapbox/android/telemetry/crash/CrashReporterJobIntentService;
.super Landroidx/core/app/JobIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    .line 25
    const-class v0, Lcom/mapbox/android/telemetry/crash/CrashReporterJobIntentService;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x29a

    invoke-static {p0, v0, v2, v1}, Lcom/mapbox/android/telemetry/crash/CrashReporterJobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final onHandleWork(Landroid/content/Intent;)V
    .locals 10

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/mapbox/android/telemetry/crash/CrashReporterJobIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.mapbox.android.telemetry"

    invoke-static {p1, v0}, Lcom/mapbox/android/a/a;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/android/telemetry/crash/CrashReporterJobIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MapboxCrashReporterPrefs"

    const/4 v2, 0x0

    .line 1053
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1054
    new-instance v3, Lcom/mapbox/android/telemetry/crash/a;

    new-instance v4, Lcom/mapbox/android/telemetry/x;

    const-string v5, ""

    const-string v6, "%s/%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "mapbox-android-crash"

    aput-object v8, v7, v2

    const-string v8, "4.5.1"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 1056
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcom/mapbox/android/telemetry/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/io/File;

    invoke-direct {v3, v1, v4, v0}, Lcom/mapbox/android/telemetry/crash/a;-><init>(Landroid/content/SharedPreferences;Lcom/mapbox/android/telemetry/x;[Ljava/io/File;)V

    .line 1060
    iput v2, v3, Lcom/mapbox/android/telemetry/crash/a;->d:I

    .line 1061
    invoke-static {p1}, Lcom/mapbox/android/a/a;->listAllFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    iput-object p1, v3, Lcom/mapbox/android/telemetry/crash/a;->c:[Ljava/io/File;

    .line 1062
    iget-object p1, v3, Lcom/mapbox/android/telemetry/crash/a;->c:[Ljava/io/File;

    new-instance v0, Lcom/mapbox/android/a/a$a;

    invoke-direct {v0}, Lcom/mapbox/android/a/a$a;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2051
    invoke-virtual {v3}, Lcom/mapbox/android/telemetry/crash/a;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2056
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/mapbox/android/telemetry/crash/a;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2057
    invoke-virtual {v3}, Lcom/mapbox/android/telemetry/crash/a;->c()Lcom/mapbox/android/telemetry/CrashEvent;

    move-result-object p1

    .line 2086
    iget-object v0, v3, Lcom/mapbox/android/telemetry/crash/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/CrashEvent;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skip duplicate crash in this batch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/CrashEvent;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    invoke-virtual {v3, p1}, Lcom/mapbox/android/telemetry/crash/a;->a(Lcom/mapbox/android/telemetry/CrashEvent;)Z

    goto :goto_0

    .line 2110
    :cond_2
    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/CrashEvent;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 2113
    :cond_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, v3, Lcom/mapbox/android/telemetry/crash/a;->e:Z

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2114
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2115
    invoke-virtual {v3, p1, v0, v1}, Lcom/mapbox/android/telemetry/crash/a;->a(Lcom/mapbox/android/telemetry/CrashEvent;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_1

    .line 2065
    invoke-virtual {v3, p1}, Lcom/mapbox/android/telemetry/crash/a;->a(Lcom/mapbox/android/telemetry/CrashEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_4
    return-void
.end method
