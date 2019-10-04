.class public Lorg/eclipse/paho/a/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Lorg/eclipse/paho/a/a/b/b;

.field volatile c:Z

.field d:Z

.field e:Z

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field protected h:Lorg/eclipse/paho/a/a/q;

.field i:Lorg/eclipse/paho/a/a/a/a/u;

.field j:Lorg/eclipse/paho/a/a/d;

.field private k:Lorg/eclipse/paho/a/a/p;

.field private l:[Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lorg/eclipse/paho/a/a/c;

.field private o:Ljava/lang/Object;

.field private p:I

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/q;->c:Z

    .line 35
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/q;->d:Z

    .line 36
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/q;->e:Z

    .line 38
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->f:Ljava/lang/Object;

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->h:Lorg/eclipse/paho/a/a/q;

    .line 42
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    .line 43
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    .line 44
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->l:[Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->j:Lorg/eclipse/paho/a/a/d;

    .line 49
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->n:Lorg/eclipse/paho/a/a/c;

    .line 51
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->o:Ljava/lang/Object;

    .line 53
    iput v0, p0, Lorg/eclipse/paho/a/a/a/q;->p:I

    .line 54
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/q;->q:Z

    .line 57
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/a/a/b/b;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method private a(J)Lorg/eclipse/paho/a/a/a/a/u;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    const-string v3, "waitForResponse"

    const-string v4, "400"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    iget-boolean v6, p0, Lorg/eclipse/paho/a/a/a/q;->e:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const/4 v6, 0x3

    iget-boolean v10, p0, Lorg/eclipse/paho/a/a/a/q;->c:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v5, v6

    const/4 v6, 0x4

    iget-object v10, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    if-nez v10, :cond_0

    const-string v10, "false"

    goto :goto_0

    :cond_0
    const-string v10, "true"

    :goto_0
    aput-object v10, v5, v6

    const/4 v6, 0x5

    iget-object v10, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    aput-object v10, v5, v6

    const/4 v6, 0x6

    aput-object p0, v5, v6

    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 136
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/q;->c:Z

    if-eqz v1, :cond_2

    goto :goto_3

    .line 137
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    if-nez v1, :cond_4

    .line 140
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    const-string v5, "waitForResponse"

    const-string v6, "408"

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v11, v10, v8

    invoke-interface {v1, v4, v5, v6, v10}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    .line 143
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 145
    :cond_3
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->f:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 148
    :try_start_2
    new-instance v4, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v4, v1}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    iput-object v4, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    .line 151
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/q;->c:Z

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    if-nez v1, :cond_6

    cmp-long v1, p1, v2

    if-gtz v1, :cond_5

    goto :goto_1

    .line 132
    :cond_5
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object p2, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    aput-object v1, v0, v8

    const-string v1, "waitForResponse"

    const-string v2, "402"

    invoke-interface {p1, p2, v1, v2, v0}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    return-object p1

    .line 154
    :cond_6
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    const-string v3, "waitForResponse"

    const-string v4, "401"

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 155
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    throw p1

    :catchall_0
    move-exception p1

    .line 132
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .line 197
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "notifyComplete"

    const-string v6, "404"

    invoke-interface {v0, v1, v3, v6, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/q;->d:Z

    if-eqz v1, :cond_0

    .line 205
    iput-boolean v5, p0, Lorg/eclipse/paho/a/a/a/q;->c:Z

    .line 208
    :cond_0
    iput-boolean v4, p0, Lorg/eclipse/paho/a/a/a/q;->d:Z

    .line 211
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_1
    iput-boolean v5, p0, Lorg/eclipse/paho/a/a/a/q;->e:Z

    .line 215
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 213
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 199
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected final a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/p;)V
    .locals 6

    .line 178
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v4, 0x2

    aput-object p2, v2, v4

    const-string v4, "markComplete"

    const-string v5, "404"

    invoke-interface {v0, v1, v4, v5, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    instance-of v1, p1, Lorg/eclipse/paho/a/a/a/a/b;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->h:Lorg/eclipse/paho/a/a/q;

    .line 185
    :cond_0
    iput-boolean v3, p0, Lorg/eclipse/paho/a/a/a/q;->d:Z

    .line 186
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    .line 187
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkResult()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getException()Lorg/eclipse/paho/a/a/p;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getException()Lorg/eclipse/paho/a/a/p;

    move-result-object v0

    throw v0
.end method

.method public getActionCallback()Lorg/eclipse/paho/a/a/c;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->n:Lorg/eclipse/paho/a/a/c;

    return-object v0
.end method

.method public getClient()Lorg/eclipse/paho/a/a/d;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->j:Lorg/eclipse/paho/a/a/d;

    return-object v0
.end method

.method public getException()Lorg/eclipse/paho/a/a/p;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    return-object v0
.end method

.method public getGrantedQos()[I
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 376
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    instance-of v2, v1, Lorg/eclipse/paho/a/a/a/a/q;

    if-eqz v2, :cond_0

    .line 377
    check-cast v1, Lorg/eclipse/paho/a/a/a/a/q;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/q;->getGrantedQos()[I

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lorg/eclipse/paho/a/a/q;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->h:Lorg/eclipse/paho/a/a/q;

    return-object v0
.end method

.method public getMessageID()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/eclipse/paho/a/a/a/q;->p:I

    return v0
.end method

.method public getResponse()Lorg/eclipse/paho/a/a/a/a/u;
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    return-object v0
.end method

.method public getSessionPresent()Z
    .locals 2

    .line 384
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    instance-of v1, v0, Lorg/eclipse/paho/a/a/a/a/c;

    if-eqz v1, :cond_0

    .line 385
    check-cast v0, Lorg/eclipse/paho/a/a/a/a/c;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/a/c;->getSessionPresent()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTopics()[Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserContext()Ljava/lang/Object;
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public getWireMessage()Lorg/eclipse/paho/a/a/a/a/u;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/a/q;->c:Z

    return v0
.end method

.method public isNotified()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/a/q;->q:Z

    return v0
.end method

.method public reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 1088
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v4, "reset"

    const-string v5, "410"

    invoke-interface {v0, v3, v4, v5, v1}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->j:Lorg/eclipse/paho/a/a/d;

    .line 298
    iput-boolean v2, p0, Lorg/eclipse/paho/a/a/a/q;->c:Z

    .line 299
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->i:Lorg/eclipse/paho/a/a/a/a/u;

    .line 300
    iput-boolean v2, p0, Lorg/eclipse/paho/a/a/a/q;->e:Z

    .line 301
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    .line 302
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->o:Ljava/lang/Object;

    return-void

    .line 292
    :cond_1
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    const/16 v1, 0x7dc9

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw v0
.end method

.method public setActionCallback(Lorg/eclipse/paho/a/a/c;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->n:Lorg/eclipse/paho/a/a/c;

    return-void
.end method

.method public setException(Lorg/eclipse/paho/a/a/p;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    .line 343
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->m:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Lorg/eclipse/paho/a/a/q;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->h:Lorg/eclipse/paho/a/a/q;

    return-void
.end method

.method public setMessageID(I)V
    .locals 0

    .line 65
    iput p1, p0, Lorg/eclipse/paho/a/a/a/q;->p:I

    return-void
.end method

.method public setNotified(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/a/q;->q:Z

    return-void
.end method

.method public setTopics([Ljava/lang/String;)V
    .locals 0

    .line 323
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->l:[Ljava/lang/String;

    return-void
.end method

.method public setUserContext(Ljava/lang/Object;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->o:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "key="

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ,topics="

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getTopics()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 361
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getTopics()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getTopics()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, " ,usercontext="

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getUserContext()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " ,isComplete="

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->isComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " ,isNotified="

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->isNotified()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " ,exception="

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getException()Lorg/eclipse/paho/a/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " ,actioncallback="

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getActionCallback()Lorg/eclipse/paho/a/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 100
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/a/a/a/q;->waitForCompletion(J)V

    return-void
.end method

.method public waitForCompletion(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const-string v6, "waitForCompletion"

    const-string v7, "407"

    invoke-interface {v0, v1, v6, v7, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/a/a/a/q;->a(J)Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object p1

    if-nez p1, :cond_1

    .line 109
    iget-boolean p1, p0, Lorg/eclipse/paho/a/a/a/q;->c:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object p2, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p0, v0, v5

    const-string v1, "406"

    invoke-interface {p1, p2, v6, v1, v0}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance p1, Lorg/eclipse/paho/a/a/p;

    const/16 p2, 0x7d00

    invoke-direct {p1, p2}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    .line 113
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    throw p1

    .line 115
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->checkResult()Z

    return-void
.end method

.method public waitUntilSent()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/q;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    if-nez v2, :cond_3

    .line 238
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :catch_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/q;->e:Z

    if-eqz v1, :cond_2

    .line 253
    iget-boolean v1, p0, Lorg/eclipse/paho/a/a/a/q;->e:Z

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    if-nez v1, :cond_0

    const/4 v1, 0x6

    .line 255
    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(I)Lorg/eclipse/paho/a/a/p;

    move-result-object v1

    throw v1

    .line 257
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    throw v1

    .line 237
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 246
    :cond_2
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/q;->a:Ljava/lang/String;

    const-string v3, "waitUntilSent"

    const-string v4, "409"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/q;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 240
    :cond_3
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/q;->k:Lorg/eclipse/paho/a/a/p;

    throw v2

    :catchall_0
    move-exception v2

    .line 238
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v1

    .line 237
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
