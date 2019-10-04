.class public final Lorg/eclipse/paho/a/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lorg/eclipse/paho/a/a/b/b;

.field private c:Lorg/eclipse/paho/a/a/b;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/paho/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;

.field private f:Lorg/eclipse/paho/a/a/a/k;

.field private g:I


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/a/a/b;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DisconnectedMessageBuffer"

    .line 30
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/h;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 31
    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/h;->b:Lorg/eclipse/paho/a/a/b/b;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/h;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lorg/eclipse/paho/a/a/a/h;->g:I

    .line 38
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/h;->c:Lorg/eclipse/paho/a/a/b;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/h;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final deleteMessage(I)V
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/h;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getMessage(I)Lorg/eclipse/paho/a/a/a;
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/h;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/a/a/a;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getMessageCount()I
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/h;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isPersistBuffer()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/h;->c:Lorg/eclipse/paho/a/a/b;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/b;->isPersistBuffer()Z

    move-result v0

    return v0
.end method

.method public final putMessage(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/eclipse/paho/a/a/a;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/paho/a/a/a;-><init>(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 57
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/h;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 58
    :try_start_0
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/h;->c:Lorg/eclipse/paho/a/a/b;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/b;->getBufferSize()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 59
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/h;->c:Lorg/eclipse/paho/a/a/b;

    invoke-virtual {p2}, Lorg/eclipse/paho/a/a/b;->isDeleteOldestMessages()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 61
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/h;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_0
    monitor-exit p1

    return-void

    .line 64
    :cond_1
    new-instance p2, Lorg/eclipse/paho/a/a/p;

    const/16 v0, 0x7dcb

    invoke-direct {p2, v0}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw p2

    :catchall_0
    move-exception p2

    .line 57
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final run()V
    .locals 7

    .line 112
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/h;->b:Lorg/eclipse/paho/a/a/b/b;

    const-string v1, "run"

    const-string v2, "DisconnectedMessageBuffer"

    const-string v3, "516"

    invoke-interface {v0, v2, v1, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/h;->getMessageCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/a/a/a/h;->getMessage(I)Lorg/eclipse/paho/a/a/a;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/h;->f:Lorg/eclipse/paho/a/a/a/k;

    invoke-interface {v4, v3}, Lorg/eclipse/paho/a/a/a/k;->publishBufferedMessage(Lorg/eclipse/paho/a/a/a;)V

    .line 118
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/a/a/a/h;->deleteMessage(I)V
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 120
    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/p;->getReasonCode()I

    move-result v4

    const/16 v5, 0x7dca

    if-ne v4, v5, :cond_1

    const-wide/16 v3, 0x64

    .line 123
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    goto :goto_0

    .line 128
    :cond_1
    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/h;->b:Lorg/eclipse/paho/a/a/b/b;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/p;->getReasonCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/p;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    const-string v0, "519"

    invoke-interface {v4, v2, v1, v0, v5}, Lorg/eclipse/paho/a/a/b/b;->severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setPublishCallback(Lorg/eclipse/paho/a/a/a/k;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/h;->f:Lorg/eclipse/paho/a/a/a/k;

    return-void
.end method
