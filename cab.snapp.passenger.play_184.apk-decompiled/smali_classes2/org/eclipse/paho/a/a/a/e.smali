.class public Lorg/eclipse/paho/a/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/a/a/a/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lorg/eclipse/paho/a/a/b/b;

.field private c:Lorg/eclipse/paho/a/a/a/e$a;

.field private d:Lorg/eclipse/paho/a/a/a/e$a;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Thread;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private i:Lorg/eclipse/paho/a/a/a/b;

.field private j:Lorg/eclipse/paho/a/a/a/a/g;

.field private k:Lorg/eclipse/paho/a/a/a/a;

.field private l:Lorg/eclipse/paho/a/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/eclipse/paho/a/a/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/b;Lorg/eclipse/paho/a/a/a/f;Ljava/io/OutputStream;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lorg/eclipse/paho/a/a/a/e;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->b:Lorg/eclipse/paho/a/a/b/b;

    .line 39
    sget-object v0, Lorg/eclipse/paho/a/a/a/e$a;->STOPPED:Lorg/eclipse/paho/a/a/a/e$a;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->c:Lorg/eclipse/paho/a/a/a/e$a;

    .line 40
    sget-object v0, Lorg/eclipse/paho/a/a/a/e$a;->STOPPED:Lorg/eclipse/paho/a/a/a/e$a;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->d:Lorg/eclipse/paho/a/a/a/e$a;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->f:Ljava/lang/Thread;

    .line 46
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->i:Lorg/eclipse/paho/a/a/a/b;

    .line 48
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->k:Lorg/eclipse/paho/a/a/a/a;

    .line 49
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->l:Lorg/eclipse/paho/a/a/a/f;

    .line 53
    new-instance v0, Lorg/eclipse/paho/a/a/a/a/g;

    invoke-direct {v0, p2, p4}, Lorg/eclipse/paho/a/a/a/a/g;-><init>(Lorg/eclipse/paho/a/a/a/b;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->j:Lorg/eclipse/paho/a/a/a/a/g;

    .line 54
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/e;->k:Lorg/eclipse/paho/a/a/a/a;

    .line 55
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/e;->i:Lorg/eclipse/paho/a/a/a/b;

    .line 56
    iput-object p3, p0, Lorg/eclipse/paho/a/a/a/e;->l:Lorg/eclipse/paho/a/a/a/f;

    .line 57
    iget-object p2, p0, Lorg/eclipse/paho/a/a/a/e;->b:Lorg/eclipse/paho/a/a/b/b;

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/eclipse/paho/a/a/b/b;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 6

    .line 190
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/e;->a:Ljava/lang/String;

    const-string v2, "handleRunException"

    const-string v3, "804"

    const/4 v4, 0x0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 192
    instance-of v0, p1, Lorg/eclipse/paho/a/a/p;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lorg/eclipse/paho/a/a/p;

    const/16 v1, 0x7d6d

    invoke-direct {v0, v1, p1}, Lorg/eclipse/paho/a/a/p;-><init>(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 195
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/a/a/p;

    .line 197
    :goto_0
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 198
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/a/a/a/e$a;->STOPPED:Lorg/eclipse/paho/a/a/a/e$a;

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->d:Lorg/eclipse/paho/a/a/a/e$a;

    .line 197
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/e;->k:Lorg/eclipse/paho/a/a/a/a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V

    return-void

    :catchall_0
    move-exception v0

    .line 197
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->c:Lorg/eclipse/paho/a/a/a/e$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/e$a;->RUNNING:Lorg/eclipse/paho/a/a/a/e$a;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->d:Lorg/eclipse/paho/a/a/a/e$a;

    sget-object v2, Lorg/eclipse/paho/a/a/a/e$a;->RUNNING:Lorg/eclipse/paho/a/a/a/e$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 205
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
    .locals 9

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->f:Ljava/lang/Thread;

    .line 113
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->f:Ljava/lang/Thread;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/a/a/a/e$a;->RUNNING:Lorg/eclipse/paho/a/a/a/e$a;

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->c:Lorg/eclipse/paho/a/a/a/e$a;

    .line 117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v0, 0x0

    .line 123
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 124
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/e;->d:Lorg/eclipse/paho/a/a/a/e$a;

    .line 123
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 126
    :goto_0
    :try_start_3
    sget-object v1, Lorg/eclipse/paho/a/a/a/e$a;->RUNNING:Lorg/eclipse/paho/a/a/a/e$a;

    if-ne v2, v1, :cond_6

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->j:Lorg/eclipse/paho/a/a/a/a/g;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 128
    :cond_0
    :try_start_4
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->i:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/b;->b()Lorg/eclipse/paho/a/a/a/a/u;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 131
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/e;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v3, Lorg/eclipse/paho/a/a/a/e;->a:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "802"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/u;->getKey()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    instance-of v2, v1, Lorg/eclipse/paho/a/a/a/a/b;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/e;->j:Lorg/eclipse/paho/a/a/a/a/g;

    invoke-virtual {v2, v1}, Lorg/eclipse/paho/a/a/a/a/g;->write(Lorg/eclipse/paho/a/a/a/a/u;)V

    .line 135
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->j:Lorg/eclipse/paho/a/a/a/a/g;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/g;->flush()V

    goto :goto_2

    .line 137
    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/a/u;->getToken()Lorg/eclipse/paho/a/a/v;

    move-result-object v2

    if-nez v2, :cond_2

    .line 139
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/e;->l:Lorg/eclipse/paho/a/a/a/f;

    invoke-virtual {v2, v1}, Lorg/eclipse/paho/a/a/a/f;->getToken(Lorg/eclipse/paho/a/a/a/a/u;)Lorg/eclipse/paho/a/a/v;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_5

    .line 145
    monitor-enter v2
    :try_end_4
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 146
    :try_start_5
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/e;->j:Lorg/eclipse/paho/a/a/a/a/g;

    invoke-virtual {v3, v1}, Lorg/eclipse/paho/a/a/a/a/g;->write(Lorg/eclipse/paho/a/a/a/a/u;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    :try_start_6
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/e;->j:Lorg/eclipse/paho/a/a/a/a/g;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/a/a/g;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 152
    :try_start_7
    instance-of v4, v1, Lorg/eclipse/paho/a/a/a/a/e;

    if-eqz v4, :cond_3

    .line 156
    :goto_1
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/e;->i:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v3, v1}, Lorg/eclipse/paho/a/a/a/b;->b(Lorg/eclipse/paho/a/a/a/a/u;)V

    .line 145
    monitor-exit v2

    goto :goto_2

    .line 153
    :cond_3
    throw v3

    :catchall_0
    move-exception v1

    .line 145
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1

    .line 162
    :cond_4
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/e;->a:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "803"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 164
    :try_start_9
    sget-object v2, Lorg/eclipse/paho/a/a/a/e$a;->STOPPED:Lorg/eclipse/paho/a/a/a/e$a;

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/e;->d:Lorg/eclipse/paho/a/a/a/e$a;

    .line 163
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v2
    :try_end_a
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catch_1
    move-exception v1

    .line 170
    :try_start_b
    invoke-direct {p0, v1}, Lorg/eclipse/paho/a/a/a/e;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 168
    invoke-direct {p0, v1}, Lorg/eclipse/paho/a/a/a/e;->a(Ljava/lang/Exception;)V

    .line 172
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 173
    :try_start_c
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/e;->d:Lorg/eclipse/paho/a/a/a/e$a;

    .line 172
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 177
    :cond_6
    :goto_3
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_e
    sget-object v2, Lorg/eclipse/paho/a/a/a/e$a;->STOPPED:Lorg/eclipse/paho/a/a/a/e$a;

    iput-object v2, p0, Lorg/eclipse/paho/a/a/a/e;->c:Lorg/eclipse/paho/a/a/a/e$a;

    .line 179
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->f:Ljava/lang/Thread;

    .line 177
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 184
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/e;->a:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "805"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception v0

    .line 177
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0

    :catchall_4
    move-exception v2

    .line 123
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_5
    move-exception v1

    .line 177
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 178
    :try_start_12
    sget-object v3, Lorg/eclipse/paho/a/a/a/e$a;->STOPPED:Lorg/eclipse/paho/a/a/a/e$a;

    iput-object v3, p0, Lorg/eclipse/paho/a/a/a/e;->c:Lorg/eclipse/paho/a/a/a/e$a;

    .line 179
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->f:Ljava/lang/Thread;

    .line 177
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 181
    throw v1

    :catchall_6
    move-exception v0

    .line 177
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v0

    :catchall_7
    move-exception v1

    .line 117
    :try_start_14
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public start(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 66
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/e;->g:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->c:Lorg/eclipse/paho/a/a/a/e$a;

    sget-object v1, Lorg/eclipse/paho/a/a/a/e$a;->STOPPED:Lorg/eclipse/paho/a/a/a/e$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->d:Lorg/eclipse/paho/a/a/a/e$a;

    sget-object v1, Lorg/eclipse/paho/a/a/a/e$a;->STOPPED:Lorg/eclipse/paho/a/a/a/e$a;

    if-ne v0, v1, :cond_1

    .line 69
    sget-object v0, Lorg/eclipse/paho/a/a/a/e$a;->RUNNING:Lorg/eclipse/paho/a/a/a/e$a;

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->d:Lorg/eclipse/paho/a/a/a/e$a;

    if-nez p2, :cond_0

    .line 71
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/e;->h:Ljava/util/concurrent/Future;

    .line 67
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/e;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-wide/16 p1, 0x64

    .line 78
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

    .line 67
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

    .line 88
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/e;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->h:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->h:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 97
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v2, Lorg/eclipse/paho/a/a/a/e;->a:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "800"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/e;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    sget-object v1, Lorg/eclipse/paho/a/a/a/e$a;->STOPPED:Lorg/eclipse/paho/a/a/a/e$a;

    iput-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->d:Lorg/eclipse/paho/a/a/a/e$a;

    .line 100
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/e;->i:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/b;->notifyQueueLock()V

    .line 92
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/a/a/a/e;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/e;->a:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "801"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-wide/16 v0, 0x64

    .line 104
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :catch_0
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/e;->i:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v0}, Lorg/eclipse/paho/a/a/a/b;->notifyQueueLock()V

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
