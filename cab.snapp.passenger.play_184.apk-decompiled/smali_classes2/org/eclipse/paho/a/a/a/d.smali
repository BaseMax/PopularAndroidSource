.class public Lorg/eclipse/paho/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/a/a/a/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lorg/eclipse/paho/a/a/b/b;

.field private c:Lorg/eclipse/paho/a/a/a/d$a;

.field private d:Lorg/eclipse/paho/a/a/a/d$a;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private h:Lorg/eclipse/paho/a/a/a/b;

.field private i:Lorg/eclipse/paho/a/a/a/a;

.field private j:Lorg/eclipse/paho/a/a/a/a/f;

.field private k:Lorg/eclipse/paho/a/a/a/f;

.field private l:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/eclipse/paho/a/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/b;Lorg/eclipse/paho/a/a/a/f;Ljava/io/InputStream;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lorg/eclipse/paho/a/a/a/d;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->b:Lorg/eclipse/paho/a/a/b/b;

    .line 42
    sget-object v0, Lorg/eclipse/paho/a/a/a/d$a;->STOPPED:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    .line 43
    sget-object v0, Lorg/eclipse/paho/a/a/a/d$a;->STOPPED:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->d:Lorg/eclipse/paho/a/a/a/d$a;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->h:Lorg/eclipse/paho/a/a/a/b;

    .line 49
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->i:Lorg/eclipse/paho/a/a/a/a;

    .line 51
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->k:Lorg/eclipse/paho/a/a/a/f;

    .line 52
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->l:Ljava/lang/Thread;

    .line 55
    new-instance v0, Lorg/eclipse/paho/a/a/a/a/f;

    invoke-direct {v0, p2, p4}, Lorg/eclipse/paho/a/a/a/a/f;-><init>(Lorg/eclipse/paho/a/a/a/b;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->j:Lorg/eclipse/paho/a/a/a/a/f;

    .line 56
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/d;->i:Lorg/eclipse/paho/a/a/a/a;

    .line 57
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/d;->h:Lorg/eclipse/paho/a/a/a/b;

    .line 58
    iput-object p3, p0, Lorg/eclipse/paho/a/a/a/d;->k:Lorg/eclipse/paho/a/a/a/f;

    .line 59
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/d;->b:Lorg/eclipse/paho/a/a/b/b;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/eclipse/paho/a/a/b/b;->setResourceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isReceiving()Z
    .locals 3

    .line 228
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/d$a;->RECEIVING:Lorg/eclipse/paho/a/a/a/d$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 228
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

    .line 214
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/d$a;->RUNNING:Lorg/eclipse/paho/a/a/a/d$a;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/d$a;->RECEIVING:Lorg/eclipse/paho/a/a/a/d$a;

    if-ne v1, v2, :cond_1

    .line 216
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->d:Lorg/eclipse/paho/a/a/a/d$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/d$a;->RUNNING:Lorg/eclipse/paho/a/a/a/d$a;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 214
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

.method public run()V
    .locals 12

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->l:Ljava/lang/Thread;

    .line 114
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->l:Ljava/lang/Thread;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/a/a/a/d$a;->RUNNING:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 124
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 125
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->d:Lorg/eclipse/paho/a/a/a/d$a;

    .line 124
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    const/4 v0, 0x0

    move-object v2, v0

    .line 127
    :goto_0
    :try_start_3
    sget-object v3, Lorg/eclipse/paho/a/a/a/d$a;->RUNNING:Lorg/eclipse/paho/a/a/a/d$a;

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->j:Lorg/eclipse/paho/a/a/a/a/f;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 130
    :cond_0
    :try_start_4
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/d;->a:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "852"

    invoke-interface {v1, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->j:Lorg/eclipse/paho/a/a/a/a/f;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/f;->available()I

    move-result v1

    if-lez v1, :cond_1

    .line 132
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 133
    :try_start_5
    sget-object v3, Lorg/eclipse/paho/a/a/a/d$a;->RECEIVING:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    .line 132
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 136
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->j:Lorg/eclipse/paho/a/a/a/a/f;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/f;->readMqttWireMessage()Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object v1

    .line 137
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 138
    :try_start_7
    sget-object v4, Lorg/eclipse/paho/a/a/a/d$a;->RUNNING:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v4, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    .line 137
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 142
    :try_start_8
    instance-of v3, v1, Lorg/eclipse/paho/a/a/a/a/b;

    if-eqz v3, :cond_5

    .line 143
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->k:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v3, v1}, Lorg/eclipse/paho/a/a/a/f;->getToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 145
    monitor-enter v2
    :try_end_8
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 150
    :try_start_9
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->h:Lorg/eclipse/paho/a/a/a/b;

    check-cast v1, Lorg/eclipse/paho/a/a/a/a/b;

    invoke-virtual {v3, v1}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/a/a/b;)V

    .line 145
    monitor-exit v2

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1

    .line 152
    :cond_2
    instance-of v3, v1, Lorg/eclipse/paho/a/a/a/a/m;

    if-nez v3, :cond_4

    instance-of v3, v1, Lorg/eclipse/paho/a/a/a/a/l;

    if-nez v3, :cond_4

    instance-of v1, v1, Lorg/eclipse/paho/a/a/a/a/k;

    if-eqz v1, :cond_3

    goto :goto_2

    .line 161
    :cond_3
    new-instance v1, Lorg/eclipse/paho/a/a/p;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Lorg/eclipse/paho/a/a/p;-><init>(I)V

    throw v1

    .line 157
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/d;->a:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "857"

    invoke-interface {v1, v3, v4, v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    if-eqz v1, :cond_a

    .line 166
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->h:Lorg/eclipse/paho/a/a/a/b;

    .line 2070
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/eclipse/paho/a/a/a/b;->n:J

    .line 2073
    iget-object v4, v3, Lorg/eclipse/paho/a/a/a/b;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v5, Lorg/eclipse/paho/a/a/a/b;->a:Ljava/lang/String;

    const-string v6, "notifyReceivedMsg"

    const-string v7, "651"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 2074
    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    .line 2073
    invoke-interface {v4, v5, v6, v7, v9}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2076
    iget-boolean v4, v3, Lorg/eclipse/paho/a/a/a/b;->m:Z

    if-nez v4, :cond_a

    .line 2077
    instance-of v4, v1, Lorg/eclipse/paho/a/a/a/a/o;

    if-eqz v4, :cond_8

    .line 2078
    move-object v4, v1

    check-cast v4, Lorg/eclipse/paho/a/a/a/a/o;

    .line 2079
    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/a/a/o;->getMessage()Lorg/eclipse/paho/a/a/q;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/paho/a/a/q;->getQos()I

    move-result v5

    if-eqz v5, :cond_7

    if-eq v5, v10, :cond_7

    if-eq v5, v8, :cond_6

    goto :goto_3

    .line 2087
    :cond_6
    iget-object v5, v3, Lorg/eclipse/paho/a/a/a/b;->k:Lorg/eclipse/paho/a/a/m;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/b;->a(Lorg/eclipse/paho/a/a/a/a/u;)Ljava/lang/String;

    move-result-object v6

    .line 2088
    check-cast v1, Lorg/eclipse/paho/a/a/a/a/o;

    .line 2087
    invoke-interface {v5, v6, v1}, Lorg/eclipse/paho/a/a/m;->put(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)V

    .line 2089
    iget-object v1, v3, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/a/a/o;->getMessageId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    new-instance v1, Lorg/eclipse/paho/a/a/a/a/m;

    invoke-direct {v1, v4}, Lorg/eclipse/paho/a/a/a/a/m;-><init>(Lorg/eclipse/paho/a/a/a/a/o;)V

    invoke-virtual {v3, v1, v0}, Lorg/eclipse/paho/a/a/a/b;->send(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    goto :goto_3

    .line 2082
    :cond_7
    iget-object v1, v3, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    if-eqz v1, :cond_a

    .line 2083
    iget-object v1, v3, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v1, v4}, Lorg/eclipse/paho/a/a/a/c;->messageArrived(Lorg/eclipse/paho/a/a/a/a/o;)V

    goto :goto_3

    .line 2096
    :cond_8
    instance-of v4, v1, Lorg/eclipse/paho/a/a/a/a/n;

    if-eqz v4, :cond_a

    .line 2097
    iget-object v4, v3, Lorg/eclipse/paho/a/a/a/b;->s:Ljava/util/Hashtable;

    .line 2098
    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/paho/a/a/a/a/o;

    if-eqz v4, :cond_9

    .line 2100
    iget-object v1, v3, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    if-eqz v1, :cond_a

    .line 2101
    iget-object v1, v3, Lorg/eclipse/paho/a/a/a/b;->h:Lorg/eclipse/paho/a/a/a/c;

    invoke-virtual {v1, v4}, Lorg/eclipse/paho/a/a/a/c;->messageArrived(Lorg/eclipse/paho/a/a/a/a/o;)V

    goto :goto_3

    .line 2105
    :cond_9
    new-instance v4, Lorg/eclipse/paho/a/a/a/a/l;

    .line 2106
    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/u;->getMessageId()I

    move-result v1

    .line 2105
    invoke-direct {v4, v1}, Lorg/eclipse/paho/a/a/a/a/l;-><init>(I)V

    .line 2107
    invoke-virtual {v3, v4, v0}, Lorg/eclipse/paho/a/a/a/b;->send(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V
    :try_end_a
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 193
    :cond_a
    :goto_3
    :try_start_b
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    .line 194
    :try_start_c
    sget-object v3, Lorg/eclipse/paho/a/a/a/d$a;->RUNNING:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    .line 193
    monitor-exit v1

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    :catchall_3
    move-exception v1

    .line 137
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v1
    :try_end_f
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v1

    .line 181
    :try_start_10
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/d;->a:Ljava/lang/String;

    const-string v5, "run"

    const-string v6, "853"

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 183
    :try_start_11
    sget-object v4, Lorg/eclipse/paho/a/a/a/d$a;->STOPPED:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v4, p0, Lorg/eclipse/paho/a/a/a/d;->d:Lorg/eclipse/paho/a/a/a/d$a;

    .line 182
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 188
    :try_start_12
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->i:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/a/a;->isDisconnecting()Z

    move-result v3

    if-nez v3, :cond_b

    .line 189
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->i:Lorg/eclipse/paho/a/a/a/a;

    new-instance v4, Lorg/eclipse/paho/a/a/p;

    const/16 v5, 0x7d6d

    invoke-direct {v4, v5, v1}, Lorg/eclipse/paho/a/a/p;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v3, v2, v4}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 193
    :cond_b
    :try_start_13
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    .line 194
    :try_start_14
    sget-object v3, Lorg/eclipse/paho/a/a/a/d$a;->RUNNING:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    .line 193
    monitor-exit v1

    goto :goto_4

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :catchall_6
    move-exception v0

    .line 182
    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :try_start_17
    throw v0

    :catch_1
    move-exception v1

    .line 172
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v4, Lorg/eclipse/paho/a/a/a/d;->a:Ljava/lang/String;

    const-string v5, "run"

    const-string v6, "856"

    const/4 v7, 0x0

    move-object v8, v1

    invoke-interface/range {v3 .. v8}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 173
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 174
    :try_start_18
    sget-object v4, Lorg/eclipse/paho/a/a/a/d$a;->STOPPED:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v4, p0, Lorg/eclipse/paho/a/a/a/d;->d:Lorg/eclipse/paho/a/a/a/d$a;

    .line 173
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 177
    :try_start_19
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->i:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v3, v2, v1}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 193
    :try_start_1a
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 194
    :try_start_1b
    sget-object v3, Lorg/eclipse/paho/a/a/a/d$a;->RUNNING:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    .line 193
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 197
    :goto_4
    :try_start_1c
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    .line 198
    :try_start_1d
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/d;->d:Lorg/eclipse/paho/a/a/a/d$a;

    .line 197
    monitor-exit v1

    move-object v1, v3

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    :catchall_8
    move-exception v0

    .line 193
    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    :try_start_20
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    :catchall_9
    move-exception v0

    .line 173
    :try_start_21
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    :try_start_22
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    .line 193
    :goto_5
    :try_start_23
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 194
    :try_start_24
    sget-object v2, Lorg/eclipse/paho/a/a/a/d$a;->RUNNING:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    .line 193
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .line 196
    :try_start_25
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    :catchall_a
    move-exception v0

    .line 193
    :try_start_26
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    :try_start_27
    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    .line 202
    :cond_c
    :goto_6
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_28
    sget-object v2, Lorg/eclipse/paho/a/a/a/d$a;->STOPPED:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    .line 202
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    .line 207
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->l:Ljava/lang/Thread;

    .line 209
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/d;->a:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "854"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_b
    move-exception v0

    .line 202
    :try_start_29
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    throw v0

    :catchall_c
    move-exception v1

    .line 124
    :try_start_2a
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    :try_start_2b
    throw v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    :catchall_d
    move-exception v0

    .line 202
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_2c
    sget-object v2, Lorg/eclipse/paho/a/a/a/d$a;->STOPPED:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    .line 202
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    .line 205
    throw v0

    :catchall_e
    move-exception v0

    .line 202
    :try_start_2d
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_e

    throw v0

    :catchall_f
    move-exception v1

    .line 118
    :try_start_2e
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_f

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public start(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 68
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/d;->f:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/d;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v0, Lorg/eclipse/paho/a/a/a/d;->a:Ljava/lang/String;

    const-string v1, "start"

    const-string v2, "855"

    invoke-interface {p1, v0, v1, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->c:Lorg/eclipse/paho/a/a/a/d$a;

    sget-object v1, Lorg/eclipse/paho/a/a/a/d$a;->STOPPED:Lorg/eclipse/paho/a/a/a/d$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->d:Lorg/eclipse/paho/a/a/a/d$a;

    sget-object v1, Lorg/eclipse/paho/a/a/a/d$a;->STOPPED:Lorg/eclipse/paho/a/a/a/d$a;

    if-ne v0, v1, :cond_1

    .line 74
    sget-object v0, Lorg/eclipse/paho/a/a/a/d$a;->RUNNING:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->d:Lorg/eclipse/paho/a/a/a/d$a;

    if-nez p2, :cond_0

    .line 76
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/d;->g:Ljava/util/concurrent/Future;

    .line 72
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/d;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-wide/16 p1, 0x64

    .line 83
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

    .line 72
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

    .line 92
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->g:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->g:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/d;->a:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "850"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/d;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lorg/eclipse/paho/a/a/a/d$a;->STOPPED:Lorg/eclipse/paho/a/a/a/d$a;

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/d;->d:Lorg/eclipse/paho/a/a/a/d$a;

    .line 92
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/d;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/d;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/d;->a:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "851"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-wide/16 v0, 0x64

    .line 103
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 92
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
