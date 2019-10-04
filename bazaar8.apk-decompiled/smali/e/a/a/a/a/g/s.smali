.class public Le/a/a/a/a/g/s;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/a/a/g/s$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/a/a/a/g/u;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public c:Le/a/a/a/a/g/t;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Le/a/a/a/a/g/s;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Le/a/a/a/a/g/s;->b:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le/a/a/a/a/g/s;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Le/a/a/a/a/g/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/a/a/a/g/s;-><init>()V

    return-void
.end method

.method public static b()Le/a/a/a/a/g/s;
    .locals 1

    .line 1
    invoke-static {}, Le/a/a/a/a/g/s$a;->a()Le/a/a/a/a/g/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Le/a/a/a/l;Lio/fabric/sdk/android/services/common/IdManager;Le/a/a/a/a/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/a/a/a/b/n;)Le/a/a/a/a/g/s;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v2, v1, Le/a/a/a/a/g/s;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v2, v1, Le/a/a/a/a/g/s;->c:Le/a/a/a/a/g/t;

    const/4 v10, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-virtual/range {p1 .. p1}, Le/a/a/a/l;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->d()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Le/a/a/a/a/b/i;

    invoke-direct {v4}, Le/a/a/a/a/b/i;-><init>()V

    invoke-virtual {v4, v2}, Le/a/a/a/a/b/i;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 7
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->g()Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v5, Le/a/a/a/a/b/B;

    invoke-direct {v5}, Le/a/a/a/a/b/B;-><init>()V

    .line 9
    new-instance v6, Le/a/a/a/a/g/l;

    invoke-direct {v6}, Le/a/a/a/a/g/l;-><init>()V

    .line 10
    new-instance v7, Le/a/a/a/a/g/j;

    invoke-direct {v7, v0}, Le/a/a/a/a/g/j;-><init>(Le/a/a/a/l;)V

    .line 11
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 12
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v11, v13

    invoke-static {v8, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v8, Le/a/a/a/a/g/m;

    move-object/from16 v9, p3

    move-object/from16 v11, p6

    invoke-direct {v8, v0, v11, v3, v9}, Le/a/a/a/a/g/m;-><init>(Le/a/a/a/l;Ljava/lang/String;Ljava/lang/String;Le/a/a/a/a/e/f;)V

    .line 14
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->h()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->i()Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->j()Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->e()Ljava/lang/String;

    move-result-object v16

    .line 18
    new-array v9, v10, [Ljava/lang/String;

    .line 19
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v13

    .line 20
    invoke-static {v9}, Lio/fabric/sdk/android/services/common/CommonUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 21
    invoke-static {v4}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->getId()I

    move-result v20

    .line 23
    new-instance v4, Le/a/a/a/a/g/x;

    move-object v11, v4

    move-object v13, v3

    move-object/from16 v18, p5

    move-object/from16 v19, p4

    invoke-direct/range {v11 .. v21}, Le/a/a/a/a/g/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    new-instance v11, Le/a/a/a/a/g/k;

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Le/a/a/a/a/g/k;-><init>(Le/a/a/a/l;Le/a/a/a/a/g/x;Le/a/a/a/a/b/m;Le/a/a/a/a/g/w;Le/a/a/a/a/g/h;Le/a/a/a/a/g/y;Le/a/a/a/a/b/n;)V

    iput-object v11, v1, Le/a/a/a/a/g/s;->c:Le/a/a/a/a/g/t;

    .line 25
    :cond_1
    iput-boolean v10, v1, Le/a/a/a/a/g/s;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Le/a/a/a/a/g/u;
    .locals 3

    .line 27
    :try_start_0
    iget-object v0, p0, Le/a/a/a/a/g/s;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 28
    iget-object v0, p0, Le/a/a/a/a/g/s;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/a/a/g/u;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 29
    :catch_0
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Interrupted while waiting for settings data."

    invoke-interface {v0, v1, v2}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Le/a/a/a/a/g/u;)V
    .locals 1

    .line 30
    iget-object v0, p0, Le/a/a/a/a/g/s;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Le/a/a/a/a/g/s;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/a/a/a/g/s;->c:Le/a/a/a/a/g/t;

    invoke-interface {v0}, Le/a/a/a/a/g/t;->a()Le/a/a/a/a/g/u;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/a/a/g/s;->a(Le/a/a/a/a/g/u;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/a/a/a/g/s;->c:Le/a/a/a/a/g/t;

    sget-object v1, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-interface {v0, v1}, Le/a/a/a/a/g/t;->a(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Le/a/a/a/a/g/u;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/a/a/g/s;->a(Le/a/a/a/a/g/u;)V

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Le/a/a/a/f;->e()Le/a/a/a/o;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to force reload of settings from Crashlytics."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Le/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
