.class public Lorg/eclipse/paho/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/a/a/a/c$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/Thread;

.field private final c:Lorg/eclipse/paho/a/a/b/b;

.field private d:Lorg/eclipse/paho/a/a/j;

.field private e:Lorg/eclipse/paho/a/a/k;

.field private f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/eclipse/paho/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lorg/eclipse/paho/a/a/a/a;

.field private h:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/eclipse/paho/a/a/a/a/u;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/eclipse/paho/a/a/v;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/eclipse/paho/a/a/a/c$a;

.field private k:Lorg/eclipse/paho/a/a/a/c$a;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Object;

.field private q:Lorg/eclipse/paho/a/a/a/b;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/a/a/a/a;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    .line 61
    sget-object v0, Lorg/eclipse/paho/a/a/a/c$a;->STOPPED:Lorg/eclipse/paho/a/a/a/c$a;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->j:Lorg/eclipse/paho/a/a/a/c$a;

    .line 62
    sget-object v0, Lorg/eclipse/paho/a/a/a/c$a;->STOPPED:Lorg/eclipse/paho/a/a/a/c$a;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->k:Lorg/eclipse/paho/a/a/a/c$a;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->l:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->o:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/a/c;->r:Z

    .line 74
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    .line 75
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->h:Ljava/util/Vector;

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->i:Ljava/util/Vector;

    .line 77
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->f:Ljava/util/Hashtable;

    .line 78
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/paho/a/a/b/b;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/eclipse/paho/a/a/v;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 249
    monitor-enter p1

    .line 251
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v2, "handleActionComplete"

    const-string v3, "705"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v7}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v1, v2, v3, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/v;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->q:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/v;)V

    .line 260
    :cond_0
    iget-object v0, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->a()V

    .line 262
    iget-object v0, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/q;->isNotified()Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->d:Lorg/eclipse/paho/a/a/j;

    if-eqz v0, :cond_1

    .line 266
    instance-of v0, p1, Lorg/eclipse/paho/a/a/o;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/v;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->d:Lorg/eclipse/paho/a/a/j;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/a/a/o;

    invoke-interface {v0, v1}, Lorg/eclipse/paho/a/a/j;->deliveryComplete(Lorg/eclipse/paho/a/a/f;)V

    .line 271
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/a/a/a/c;->fireActionEvent(Lorg/eclipse/paho/a/a/v;)V

    .line 275
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/v;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    instance-of v0, p1, Lorg/eclipse/paho/a/a/o;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v0, v4}, Lorg/eclipse/paho/a/a/a/q;->setNotified(Z)V

    .line 249
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public asyncOperationComplete(Lorg/eclipse/paho/a/a/v;)V
    .locals 7

    .line 448
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v3, "asyncOperationComplete"

    const-string v4, "715"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object p1, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/c;->o:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 451
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 459
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/c;->a(Lorg/eclipse/paho/a/a/v;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 464
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "asyncOperationComplete"

    const-string v4, "719"

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 467
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    const/4 v1, 0x0

    new-instance v2, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v2, p1}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V

    return-void
.end method

.method public connectionLost(Lorg/eclipse/paho/a/a/p;)V
    .locals 7

    const-string v0, "connectionLost"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 300
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/c;->d:Lorg/eclipse/paho/a/a/j;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 302
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v5, "708"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-interface {v3, v4, v0, v5, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/c;->d:Lorg/eclipse/paho/a/a/j;

    invoke-interface {v3, p1}, Lorg/eclipse/paho/a/a/j;->connectionLost(Ljava/lang/Throwable;)V

    .line 305
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/c;->e:Lorg/eclipse/paho/a/a/k;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 306
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/c;->e:Lorg/eclipse/paho/a/a/k;

    invoke-interface {v3, p1}, Lorg/eclipse/paho/a/a/k;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 312
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "720"

    invoke-interface {v3, v4, v0, p1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public fireActionEvent(Lorg/eclipse/paho/a/a/v;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 326
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/v;->getActionCallback()Lorg/eclipse/paho/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/v;->getException()Lorg/eclipse/paho/a/a/p;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "716"

    const-string v5, "fireActionEvent"

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v6, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    .line 331
    iget-object v7, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v7}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 330
    invoke-interface {v1, v6, v5, v4, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-interface {v0, p1}, Lorg/eclipse/paho/a/a/c;->onSuccess(Lorg/eclipse/paho/a/a/h;)V

    return-void

    .line 335
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v6, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    .line 336
    iget-object v7, p1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v7}, Lorg/eclipse/paho/a/a/a/q;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 335
    invoke-interface {v1, v6, v5, v4, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/v;->getException()Lorg/eclipse/paho/a/a/p;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/eclipse/paho/a/a/c;->onFailure(Lorg/eclipse/paho/a/a/h;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public isQuiesced()Z
    .locals 1

    .line 400
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isQuiescing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isQuiescing()Z
    .locals 3

    .line 531
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->j:Lorg/eclipse/paho/a/a/a/c$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c$a;->QUIESCING:Lorg/eclipse/paho/a/a/a/c$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 531
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 3

    .line 522
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->j:Lorg/eclipse/paho/a/a/a/c$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c$a;->RUNNING:Lorg/eclipse/paho/a/a/a/c$a;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->j:Lorg/eclipse/paho/a/a/a/c$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c$a;->QUIESCING:Lorg/eclipse/paho/a/a/a/c$a;

    if-ne v1, v2, :cond_1

    .line 524
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->k:Lorg/eclipse/paho/a/a/a/c$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c$a;->RUNNING:Lorg/eclipse/paho/a/a/a/c$a;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 522
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public messageArrived(Lorg/eclipse/paho/a/a/a/a/o;)V
    .locals 5

    .line 353
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->d:Lorg/eclipse/paho/a/a/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :catch_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isQuiescing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 362
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v3, "messageArrived"

    const-string v4, "709"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 358
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 368
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isQuiescing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 369
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 371
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/c;->o:Ljava/lang/Object;

    monitor-enter p1

    .line 373
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v2, "messageArrived"

    const-string v3, "710"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 371
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 358
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public messageArrivedComplete(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 435
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    new-instance v0, Lorg/eclipse/paho/a/a/a/a/k;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/a/a/a/a/k;-><init>(I)V

    .line 436
    new-instance p1, Lorg/eclipse/paho/a/a/v;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2, v0, p1}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 438
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    .line 2646
    iget-object p2, p2, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    .line 3389
    iget-object v1, p2, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "deliveryComplete"

    const-string v4, "641"

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3391
    iget-object v0, p2, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {p1}, Lorg/eclipse/paho/a/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 3392
    iget-object p2, p2, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    new-instance p2, Lorg/eclipse/paho/a/a/a/a/l;

    invoke-direct {p2, p1}, Lorg/eclipse/paho/a/a/a/a/l;-><init>(I)V

    .line 440
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    new-instance v0, Lorg/eclipse/paho/a/a/v;

    .line 441
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    :cond_1
    return-void
.end method

.method public quiesce()V
    .locals 5

    .line 387
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->j:Lorg/eclipse/paho/a/a/a/c$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c$a;->RUNNING:Lorg/eclipse/paho/a/a/a/c$a;

    if-ne v1, v2, :cond_0

    .line 389
    sget-object v1, Lorg/eclipse/paho/a/a/a/c$a;->QUIESCING:Lorg/eclipse/paho/a/a/a/c$a;

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->j:Lorg/eclipse/paho/a/a/a/c$a;

    .line 387
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 391
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v3, "quiesce"

    const-string v4, "711"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 391
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

    .line 387
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public removeMessageListener(Ljava/lang/String;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeMessageListeners()V
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public run()V
    .locals 12

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->a:Ljava/lang/Thread;

    .line 165
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->a:Ljava/lang/Thread;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/a/a/a/c$a;->RUNNING:Lorg/eclipse/paho/a/a/a/c$a;

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->j:Lorg/eclipse/paho/a/a/a/c$a;

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 171
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_1
    sget-object v2, Lorg/eclipse/paho/a/a/a/c$a;->STOPPED:Lorg/eclipse/paho/a/a/a/c$a;

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->j:Lorg/eclipse/paho/a/a/a/c$a;

    .line 240
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->a:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    .line 240
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 175
    :cond_0
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->o:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 176
    :try_start_4
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->i:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "704"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->o:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 175
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    .line 186
    :catch_0
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->i:Ljava/util/Vector;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 190
    :try_start_7
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->i:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 192
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->i:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/a/a/v;

    .line 193
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/c;->i:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 189
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v2, :cond_3

    .line 197
    :try_start_8
    invoke-direct {p0, v2}, Lorg/eclipse/paho/a/a/a/c;->a(Lorg/eclipse/paho/a/a/v;)V

    .line 202
    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->h:Ljava/util/Vector;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 203
    :try_start_9
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 207
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->h:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/a/a/a/a/o;

    .line 209
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/c;->h:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_3

    :cond_4
    move-object v2, v1

    .line 202
    :goto_3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v2, :cond_9

    .line 1411
    :try_start_a
    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a/o;->getTopicName()Ljava/lang/String;

    move-result-object v0

    .line 1414
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v5, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v6, "handleMessage"

    const-string v7, "713"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    .line 1415
    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    const/4 v10, 0x1

    aput-object v0, v9, v10

    .line 1414
    invoke-interface {v4, v5, v6, v7, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v4

    .line 1417
    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v5

    .line 1500
    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/c;->f:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    const/4 v7, 0x0

    .line 1501
    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1511
    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/c;->d:Lorg/eclipse/paho/a/a/j;

    if-eqz v6, :cond_6

    if-nez v7, :cond_6

    .line 1512
    invoke-virtual {v5, v4}, Lorg/eclipse/paho/a/a/q;->setId(I)V

    .line 1513
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/c;->d:Lorg/eclipse/paho/a/a/j;

    invoke-interface {v4, v0, v5}, Lorg/eclipse/paho/a/a/j;->messageArrived(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)V

    .line 1419
    :cond_6
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/a/c;->r:Z

    if-nez v0, :cond_9

    .line 1420
    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v0

    if-ne v0, v10, :cond_7

    .line 1421
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    new-instance v3, Lorg/eclipse/paho/a/a/a/a/k;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/a/a/a/a/k;-><init>(Lorg/eclipse/paho/a/a/a/a/o;)V

    .line 1422
    new-instance v2, Lorg/eclipse/paho/a/a/v;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v0, v3, v2}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    goto/16 :goto_5

    .line 1423
    :cond_7
    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 1424
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    .line 1642
    iget-object v0, v0, Lorg/eclipse/paho/a/a/a/a;->a:Lorg/eclipse/paho/a/a/a/b;

    .line 2379
    iget-object v4, v0, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v5, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v6, "deliveryComplete"

    const-string v7, "641"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2381
    iget-object v3, v0, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/paho/a/a/m;->remove(Ljava/lang/String;)V

    .line 2382
    iget-object v0, v0, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    new-instance v0, Lorg/eclipse/paho/a/a/a/a/l;

    invoke-direct {v0, v2}, Lorg/eclipse/paho/a/a/a/a/l;-><init>(Lorg/eclipse/paho/a/a/a/a/o;)V

    .line 1426
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    new-instance v3, Lorg/eclipse/paho/a/a/v;

    .line 1427
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/paho/a/a/v;-><init>(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v2, v0, v3}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    goto :goto_5

    .line 1502
    :cond_8
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1503
    invoke-static {v9, v0}, Lorg/eclipse/paho/a/a/w;->isMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1504
    invoke-virtual {v5, v4}, Lorg/eclipse/paho/a/a/q;->setId(I)V

    .line 1505
    iget-object v7, p0, Lorg/eclipse/paho/a/a/a/c;->f:Ljava/util/Hashtable;

    invoke-virtual {v7, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/paho/a/a/g;

    invoke-interface {v7, v0, v5}, Lorg/eclipse/paho/a/a/g;->messageArrived(Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v7, 0x1

    goto/16 :goto_4

    :catchall_3
    move-exception v2

    .line 202
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_4
    move-exception v2

    .line 189
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v2

    .line 217
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isQuiescing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->q:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/b;->c()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 230
    :cond_a
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_f
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "706"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 230
    monitor-exit v0

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v1

    .line 225
    :goto_6
    :try_start_10
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "714"

    const/4 v6, 0x0

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 227
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->g:Lorg/eclipse/paho/a/a/a/a;

    new-instance v3, Lorg/eclipse/paho/a/a/p;

    invoke-direct {v3, v0}, Lorg/eclipse/paho/a/a/p;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 230
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_11
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "706"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 230
    monitor-exit v0

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v1

    :catchall_7
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_12
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "706"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/c;->p:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 230
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 238
    throw v0

    :catchall_8
    move-exception v0

    .line 230
    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v0

    :catchall_9
    move-exception v1

    .line 167
    :try_start_14
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public setCallback(Lorg/eclipse/paho/a/a/j;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/c;->d:Lorg/eclipse/paho/a/a/j;

    return-void
.end method

.method public setClientState(Lorg/eclipse/paho/a/a/a/b;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/c;->q:Lorg/eclipse/paho/a/a/a/b;

    return-void
.end method

.method public setManualAcks(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/a/c;->r:Z

    return-void
.end method

.method public setMessageListener(Ljava/lang/String;Lorg/eclipse/paho/a/a/g;)V
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReconnectCallback(Lorg/eclipse/paho/a/a/k;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/c;->e:Lorg/eclipse/paho/a/a/k;

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 91
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/c;->m:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/c;->l:Ljava/lang/Object;

    monitor-enter p1

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->j:Lorg/eclipse/paho/a/a/a/c$a;

    sget-object v1, Lorg/eclipse/paho/a/a/a/c$a;->STOPPED:Lorg/eclipse/paho/a/a/a/c$a;

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 98
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 100
    sget-object v0, Lorg/eclipse/paho/a/a/a/c$a;->RUNNING:Lorg/eclipse/paho/a/a/a/c$a;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->k:Lorg/eclipse/paho/a/a/a/c$a;

    if-nez p2, :cond_0

    .line 102
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/c;->n:Ljava/util/concurrent/Future;

    .line 93
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-wide/16 p1, 0x64

    .line 109
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 93
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public stop()V
    .locals 5

    .line 121
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->n:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->n:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 121
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 126
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "700"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_1
    sget-object v1, Lorg/eclipse/paho/a/a/a/c$a;->STOPPED:Lorg/eclipse/paho/a/a/a/c$a;

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->k:Lorg/eclipse/paho/a/a/a/c$a;

    .line 129
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->a:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "701"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/c;->o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x64

    .line 141
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 142
    :catch_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->q:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/b;->notifyQueueLock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 133
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 146
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/c;->c:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/c;->b:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "703"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 129
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :cond_3
    :goto_2
    return-void

    :catchall_2
    move-exception v1

    .line 121
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
