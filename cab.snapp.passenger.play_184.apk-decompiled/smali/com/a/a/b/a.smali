.class abstract Lcom/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/b/j;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/content/Context;

.field private d:Lcom/a/a/b/c;

.field private e:Lio/fabric/sdk/android/services/common/IdManager;

.field private f:Lio/fabric/sdk/android/services/settings/f;

.field private g:Lcom/a/a/b/d;

.field private h:Lio/fabric/sdk/android/services/c/c;

.field private i:Lio/fabric/sdk/android/services/common/k;

.field private j:Lio/fabric/sdk/android/services/network/d;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/a/a/b/a;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/a/a/b/a;->k:J

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private b()V
    .locals 9

    .line 149
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Performing update check"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lio/fabric/sdk/android/services/common/g;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/g;-><init>()V

    iget-object v1, p0, Lcom/a/a/b/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/common/g;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/a/a/b/a;->e:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/IdManager;->getDeviceIdentifiers()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->FONT_TOKEN:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    .line 153
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    new-instance v8, Lcom/a/a/b/e;

    iget-object v3, p0, Lcom/a/a/b/a;->d:Lcom/a/a/b/c;

    .line 157
    invoke-virtual {v3}, Lcom/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/a/a/b/a;->f:Lio/fabric/sdk/android/services/settings/f;

    iget-object v5, v2, Lio/fabric/sdk/android/services/settings/f;->updateUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/a/a/b/a;->j:Lio/fabric/sdk/android/services/network/d;

    new-instance v7, Lcom/a/a/b/g;

    invoke-direct {v7}, Lcom/a/a/b/g;-><init>()V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/a/a/b/e;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;Lcom/a/a/b/g;)V

    .line 166
    iget-object v2, p0, Lcom/a/a/b/a;->g:Lcom/a/a/b/d;

    invoke-virtual {v8, v0, v1, v2}, Lcom/a/a/b/e;->invoke(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)Lcom/a/a/b/f;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/a/a/b/a;->h:Lio/fabric/sdk/android/services/c/c;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/a/a/b/a;->h:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/c/c;->get()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_update_check"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/a/a/b/a;->h:Lio/fabric/sdk/android/services/c/c;

    iget-object v2, p0, Lcom/a/a/b/a;->h:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/c/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_update_check"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/fabric/sdk/android/services/c/c;->save(Landroid/content/SharedPreferences$Editor;)Z

    .line 122
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    iget-object v0, p0, Lcom/a/a/b/a;->i:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/k;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 125
    iget-object v2, p0, Lcom/a/a/b/a;->f:Lio/fabric/sdk/android/services/settings/f;

    iget v2, v2, Lio/fabric/sdk/android/services/settings/f;->updateSuspendDurationSeconds:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 128
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Check for updates delay: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Beta"

    invoke-interface {v4, v6, v5}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Check for updates last check time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1180
    iget-wide v6, p0, Lcom/a/a/b/a;->k:J

    .line 130
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Beta"

    .line 129
    invoke-interface {v4, v6, v5}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    iget-wide v4, p0, Lcom/a/a/b/a;->k:J

    add-long/2addr v4, v2

    .line 134
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Check for updates current time: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", next check time: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Beta"

    invoke-interface {v2, v6, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    .line 139
    :try_start_1
    invoke-direct {p0}, Lcom/a/a/b/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3173
    iput-wide v0, p0, Lcom/a/a/b/a;->k:J

    return-void

    :catchall_0
    move-exception v2

    .line 4173
    iput-wide v0, p0, Lcom/a/a/b/a;->k:J

    .line 141
    throw v2

    .line 144
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Check for updates next check time was not passed"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v1

    .line 122
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public initialize(Landroid/content/Context;Lcom/a/a/b/c;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/settings/f;Lcom/a/a/b/d;Lio/fabric/sdk/android/services/c/c;Lio/fabric/sdk/android/services/common/k;Lio/fabric/sdk/android/services/network/d;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/a/a/b/a;->c:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/a/a/b/a;->d:Lcom/a/a/b/c;

    .line 83
    iput-object p3, p0, Lcom/a/a/b/a;->e:Lio/fabric/sdk/android/services/common/IdManager;

    .line 84
    iput-object p4, p0, Lcom/a/a/b/a;->f:Lio/fabric/sdk/android/services/settings/f;

    .line 85
    iput-object p5, p0, Lcom/a/a/b/a;->g:Lcom/a/a/b/d;

    .line 86
    iput-object p6, p0, Lcom/a/a/b/a;->h:Lio/fabric/sdk/android/services/c/c;

    .line 87
    iput-object p7, p0, Lcom/a/a/b/a;->i:Lio/fabric/sdk/android/services/common/k;

    .line 88
    iput-object p8, p0, Lcom/a/a/b/a;->j:Lio/fabric/sdk/android/services/network/d;

    .line 1110
    iget-object p1, p0, Lcom/a/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1111
    iget-object p1, p0, Lcom/a/a/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/a/a/b/a;->a()V

    :cond_0
    return-void
.end method
