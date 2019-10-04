.class final Lorg/eclipse/paho/a/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Lorg/eclipse/paho/a/a/i;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/a/a/i;Ljava/lang/String;)V
    .locals 0

    .line 1380
    iput-object p1, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    iput-object p2, p0, Lorg/eclipse/paho/a/a/i$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V
    .locals 6

    .line 1393
    iget-object p2, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {p2}, Lorg/eclipse/paho/a/a/i;->a(Lorg/eclipse/paho/a/a/i;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object p2

    invoke-static {}, Lorg/eclipse/paho/a/a/i;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/i$a;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/h;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "502"

    invoke-interface {p2, v0, v1, p1, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1394
    invoke-static {}, Lorg/eclipse/paho/a/a/i;->b()I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {p2}, Lorg/eclipse/paho/a/a/i;->f(Lorg/eclipse/paho/a/a/i;)Lorg/eclipse/paho/a/a/n;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/paho/a/a/n;->getMaxReconnectDelay()I

    move-result p2

    const/4 v0, 0x2

    if-ge p1, p2, :cond_0

    .line 1395
    invoke-static {}, Lorg/eclipse/paho/a/a/i;->b()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lorg/eclipse/paho/a/a/i;->a(I)V

    .line 1397
    :cond_0
    invoke-static {}, Lorg/eclipse/paho/a/a/i;->b()I

    move-result p1

    .line 2401
    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/i$a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":rescheduleReconnectCycle"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2404
    iget-object v1, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/i;->a(Lorg/eclipse/paho/a/a/i;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/paho/a/a/i;->a()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2405
    iget-object v5, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {v5}, Lorg/eclipse/paho/a/a/i;->g(Lorg/eclipse/paho/a/a/i;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {}, Lorg/eclipse/paho/a/a/i;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const-string v2, "505"

    .line 2404
    invoke-interface {v1, v3, p2, v2, v0}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2406
    invoke-static {}, Lorg/eclipse/paho/a/a/i;->c()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2407
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/i;->f(Lorg/eclipse/paho/a/a/i;)Lorg/eclipse/paho/a/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/n;->isAutomaticReconnect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2408
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/i;->h(Lorg/eclipse/paho/a/a/i;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2409
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/i;->h(Lorg/eclipse/paho/a/a/i;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lorg/eclipse/paho/a/a/i$c;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-direct {v1, v2, v4}, Lorg/eclipse/paho/a/a/i$c;-><init>(Lorg/eclipse/paho/a/a/i;B)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 2412
    :cond_1
    invoke-static {p1}, Lorg/eclipse/paho/a/a/i;->a(I)V

    .line 2413
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/i;->d(Lorg/eclipse/paho/a/a/i;)V

    .line 2406
    :cond_2
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Lorg/eclipse/paho/a/a/h;)V
    .locals 5

    .line 1386
    iget-object v0, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/i;->a(Lorg/eclipse/paho/a/a/i;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/a/a/i;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/a/a/i$a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/h;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "501"

    invoke-interface {v0, v1, v2, p1, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1387
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    iget-object p1, p1, Lorg/eclipse/paho/a/a/i;->a:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {p1, v4}, Lorg/eclipse/paho/a/a/a/a;->setRestingState(Z)V

    .line 1388
    iget-object p1, p0, Lorg/eclipse/paho/a/a/i$a;->b:Lorg/eclipse/paho/a/a/i;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/i;->e(Lorg/eclipse/paho/a/a/i;)V

    return-void
.end method
