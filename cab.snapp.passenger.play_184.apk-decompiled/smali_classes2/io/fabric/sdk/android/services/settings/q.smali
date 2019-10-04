.class public final Lio/fabric/sdk/android/services/settings/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/settings/q$b;,
        Lio/fabric/sdk/android/services/settings/q$a;
    }
.end annotation


# static fields
.field public static final SETTINGS_CACHE_FILENAME:Ljava/lang/String; = "com.crashlytics.settings.json"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/fabric/sdk/android/services/settings/s;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private c:Lio/fabric/sdk/android/services/settings/r;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/settings/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/settings/q;->b:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lio/fabric/sdk/android/services/settings/q;->d:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/fabric/sdk/android/services/settings/q;-><init>()V

    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/settings/s;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lio/fabric/sdk/android/services/settings/q;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static getInstance()Lio/fabric/sdk/android/services/settings/q;
    .locals 1

    .line 55
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q$a;->a()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final awaitSettingsData()Lio/fabric/sdk/android/services/settings/s;
    .locals 3

    .line 141
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/q;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 142
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/settings/s;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 144
    :catch_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Interrupted while waiting for settings data."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final clearSettings()V
    .locals 2

    .line 116
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized initialize(Lio/fabric/sdk/android/i;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/network/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/q;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-boolean v2, v1, Lio/fabric/sdk/android/services/settings/q;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 72
    monitor-exit p0

    return-object v1

    .line 75
    :cond_0
    :try_start_1
    iget-object v2, v1, Lio/fabric/sdk/android/services/settings/q;->c:Lio/fabric/sdk/android/services/settings/r;

    const/4 v9, 0x1

    if-nez v2, :cond_1

    .line 76
    invoke-virtual/range {p1 .. p1}, Lio/fabric/sdk/android/i;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 77
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v4, Lio/fabric/sdk/android/services/common/g;

    invoke-direct {v4}, Lio/fabric/sdk/android/services/common/g;-><init>()V

    invoke-virtual {v4, v2}, Lio/fabric/sdk/android/services/common/g;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 79
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    .line 80
    new-instance v5, Lio/fabric/sdk/android/services/common/q;

    invoke-direct {v5}, Lio/fabric/sdk/android/services/common/q;-><init>()V

    .line 81
    new-instance v6, Lio/fabric/sdk/android/services/settings/k;

    invoke-direct {v6}, Lio/fabric/sdk/android/services/settings/k;-><init>()V

    .line 82
    new-instance v7, Lio/fabric/sdk/android/services/settings/i;

    invoke-direct {v7, v0}, Lio/fabric/sdk/android/services/settings/i;-><init>(Lio/fabric/sdk/android/i;)V

    .line 83
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->getAppIconHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 84
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v8, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v8, Lio/fabric/sdk/android/services/settings/l;

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    invoke-direct {v8, v0, v12, v3, v10}, Lio/fabric/sdk/android/services/settings/l;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getModelName()Ljava/lang/String;

    move-result-object v12

    .line 90
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getOsBuildVersionString()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getOsDisplayVersionString()Ljava/lang/String;

    move-result-object v14

    .line 92
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getAdvertisingId()Ljava/lang/String;

    move-result-object v15

    .line 93
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getAppInstallIdentifier()Ljava/lang/String;

    move-result-object v16

    .line 94
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getAndroidId()Ljava/lang/String;

    move-result-object v17

    new-array v10, v9, [Ljava/lang/String;

    .line 96
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v13

    .line 95
    invoke-static {v10}, Lio/fabric/sdk/android/services/common/i;->createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 97
    invoke-static {v4}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->getId()I

    move-result v21

    .line 100
    new-instance v4, Lio/fabric/sdk/android/services/settings/v;

    move-object v10, v4

    move-object v13, v3

    move-object/from16 v19, p5

    move-object/from16 v20, p4

    invoke-direct/range {v10 .. v22}, Lio/fabric/sdk/android/services/settings/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    new-instance v10, Lio/fabric/sdk/android/services/settings/j;

    move-object v2, v10

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lio/fabric/sdk/android/services/settings/j;-><init>(Lio/fabric/sdk/android/i;Lio/fabric/sdk/android/services/settings/v;Lio/fabric/sdk/android/services/common/k;Lio/fabric/sdk/android/services/settings/u;Lio/fabric/sdk/android/services/settings/g;Lio/fabric/sdk/android/services/settings/w;)V

    iput-object v10, v1, Lio/fabric/sdk/android/services/settings/q;->c:Lio/fabric/sdk/android/services/settings/r;

    .line 108
    :cond_1
    iput-boolean v9, v1, Lio/fabric/sdk/android/services/settings/q;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadSettingsData()Z
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/q;->c:Lio/fabric/sdk/android/services/settings/r;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/settings/r;->loadSettingsData()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/q;->a(Lio/fabric/sdk/android/services/settings/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 157
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized loadSettingsSkippingCache()Z
    .locals 5

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/q;->c:Lio/fabric/sdk/android/services/settings/r;

    sget-object v1, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/settings/r;->loadSettingsData(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    .line 167
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/q;->a(Lio/fabric/sdk/android/services/settings/s;)V

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to force reload of settings from Crashlytics."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 174
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final setSettingsController(Lio/fabric/sdk/android/services/settings/r;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/q;->c:Lio/fabric/sdk/android/services/settings/r;

    return-void
.end method

.method public final withSettings(Lio/fabric/sdk/android/services/settings/q$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/fabric/sdk/android/services/settings/q$b<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/q;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/settings/s;

    if-nez v0, :cond_0

    return-object p2

    .line 130
    :cond_0
    invoke-interface {p1, v0}, Lio/fabric/sdk/android/services/settings/q$b;->usingSettings(Lio/fabric/sdk/android/services/settings/s;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
