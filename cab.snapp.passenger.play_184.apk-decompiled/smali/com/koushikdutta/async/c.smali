.class public Lcom/koushikdutta/async/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/j;


# static fields
.field static final synthetic k:Z


# instance fields
.field a:Ljava/net/InetSocketAddress;

.field b:Lcom/koushikdutta/async/m;

.field c:Lcom/koushikdutta/async/e/a;

.field d:Z

.field e:Lcom/koushikdutta/async/a/g;

.field f:Lcom/koushikdutta/async/a/d;

.field g:Lcom/koushikdutta/async/a/a;

.field h:Z

.field i:Ljava/lang/Exception;

.field j:Z

.field private l:Ljava/nio/channels/SelectionKey;

.field private m:Lcom/koushikdutta/async/h;

.field private n:Lcom/koushikdutta/async/l;

.field private o:Lcom/koushikdutta/async/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/koushikdutta/async/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/c;->k:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/c;->n:Lcom/koushikdutta/async/l;

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/koushikdutta/async/c;->j:Z

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/koushikdutta/async/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/koushikdutta/async/c;->d:Z

    .line 177
    iget-object v0, p0, Lcom/koushikdutta/async/c;->g:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_1

    .line 178
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/koushikdutta/async/c;->g:Lcom/koushikdutta/async/a/a;

    :cond_1
    return-void
.end method

.method private b()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/koushikdutta/async/c;->n:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/koushikdutta/async/c;->n:Lcom/koushikdutta/async/l;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/koushikdutta/async/c;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/koushikdutta/async/c;->h:Z

    .line 235
    iget-object v0, p0, Lcom/koushikdutta/async/c;->o:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/koushikdutta/async/c;->n:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iput-object p1, p0, Lcom/koushikdutta/async/c;->i:Ljava/lang/Exception;

    return-void

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/c;->b(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 8

    .line 119
    invoke-direct {p0}, Lcom/koushikdutta/async/c;->b()V

    .line 123
    iget-boolean v0, p0, Lcom/koushikdutta/async/c;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 130
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/c;->c:Lcom/koushikdutta/async/e/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/e/a;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    iget-object v2, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/m;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/koushikdutta/async/c;->closeInternal()V

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    add-long v6, v2, v4

    long-to-int v7, v6

    move v1, v7

    const/4 v6, 0x0

    :goto_0
    cmp-long v7, v2, v4

    if-lez v7, :cond_2

    .line 143
    iget-object v4, p0, Lcom/koushikdutta/async/c;->c:Lcom/koushikdutta/async/e/a;

    invoke-virtual {v4, v2, v3}, Lcom/koushikdutta/async/e/a;->track(J)V

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 151
    iget-object v2, p0, Lcom/koushikdutta/async/c;->n:Lcom/koushikdutta/async/l;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 152
    iget-object v0, p0, Lcom/koushikdutta/async/c;->n:Lcom/koushikdutta/async/l;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    goto :goto_1

    .line 155
    :cond_2
    invoke-static {v0}, Lcom/koushikdutta/async/l;->reclaim(Ljava/nio/ByteBuffer;)V

    :goto_1
    if-eqz v6, :cond_3

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/c;->c(Ljava/lang/Exception;)V

    .line 160
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/c;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {p0}, Lcom/koushikdutta/async/c;->closeInternal()V

    .line 165
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/c;->c(Ljava/lang/Exception;)V

    .line 166
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/c;->a(Ljava/lang/Exception;)V

    :cond_3
    :goto_2
    return v1
.end method

.method final a(Lcom/koushikdutta/async/h;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/koushikdutta/async/c;->m:Lcom/koushikdutta/async/h;

    .line 65
    iput-object p2, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method final a(Ljava/nio/channels/DatagramChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/koushikdutta/async/s;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/s;-><init>(Ljava/nio/channels/DatagramChannel;)V

    iput-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    .line 42
    new-instance p1, Lcom/koushikdutta/async/e/a;

    const/16 v0, 0x2000

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/e/a;-><init>(I)V

    iput-object p1, p0, Lcom/koushikdutta/async/c;->c:Lcom/koushikdutta/async/e/a;

    return-void
.end method

.method final a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iput-object p2, p0, Lcom/koushikdutta/async/c;->a:Ljava/net/InetSocketAddress;

    .line 34
    new-instance p2, Lcom/koushikdutta/async/e/a;

    invoke-direct {p2}, Lcom/koushikdutta/async/e/a;-><init>()V

    iput-object p2, p0, Lcom/koushikdutta/async/c;->c:Lcom/koushikdutta/async/e/a;

    .line 35
    new-instance p2, Lcom/koushikdutta/async/ac;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/ac;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object p2, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    return-void
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/koushikdutta/async/c;->closeInternal()V

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/c;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public closeInternal()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public end()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->shutdownOutput()V

    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/koushikdutta/async/c;->g:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/a/d;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/koushikdutta/async/c;->f:Lcom/koushikdutta/async/a/d;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/koushikdutta/async/c;->o:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/koushikdutta/async/c;->a:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/h;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/koushikdutta/async/c;->m:Lcom/koushikdutta/async/h;

    return-object v0
.end method

.method public getSocket()Ljava/lang/Object;
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    .line 342
    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->getSocket()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/a/g;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/koushikdutta/async/c;->e:Lcom/koushikdutta/async/a/g;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/koushikdutta/async/c;->j:Z

    return v0
.end method

.method public onDataWritable()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->isChunked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/c;->e:Lcom/koushikdutta/async/a/g;

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Lcom/koushikdutta/async/a/g;->onWriteable()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/koushikdutta/async/c;->m:Lcom/koushikdutta/async/h;

    invoke-virtual {v0}, Lcom/koushikdutta/async/h;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/c;->m:Lcom/koushikdutta/async/h;

    new-instance v1, Lcom/koushikdutta/async/c$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/c$2;-><init>(Lcom/koushikdutta/async/c;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    return-void

    .line 280
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/c;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/koushikdutta/async/c;->j:Z

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/koushikdutta/async/c;->m:Lcom/koushikdutta/async/h;

    invoke-virtual {v0}, Lcom/koushikdutta/async/h;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/koushikdutta/async/c;->m:Lcom/koushikdutta/async/h;

    new-instance v1, Lcom/koushikdutta/async/c$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/c$3;-><init>(Lcom/koushikdutta/async/c;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    return-void

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/c;->j:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcom/koushikdutta/async/c;->j:Z

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 317
    :goto_0
    invoke-direct {p0}, Lcom/koushikdutta/async/c;->b()V

    .line 318
    invoke-virtual {p0}, Lcom/koushikdutta/async/c;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/c;->i:Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/c;->c(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/koushikdutta/async/c;->g:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/a/d;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/koushikdutta/async/c;->f:Lcom/koushikdutta/async/a/d;

    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/koushikdutta/async/c;->o:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/a/g;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/koushikdutta/async/c;->e:Lcom/koushikdutta/async/a/g;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/l;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/c;->m:Lcom/koushikdutta/async/h;

    invoke-virtual {v0}, Lcom/koushikdutta/async/h;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/c;->m:Lcom/koushikdutta/async/h;

    new-instance v1, Lcom/koushikdutta/async/c$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/c$1;-><init>(Lcom/koushikdutta/async/c;Lcom/koushikdutta/async/l;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    sget-boolean p1, Lcom/koushikdutta/async/c;->k:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {p1}, Lcom/koushikdutta/async/m;->isChunked()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 85
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    .line 86
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->getAllArray()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/m;->write([Ljava/nio/ByteBuffer;)I

    .line 88
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/l;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 89
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    .line 1100
    iget-object v1, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    if-lez v0, :cond_6

    .line 1104
    sget-boolean v0, Lcom/koushikdutta/async/c;->k:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/m;->isChunked()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1107
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_2

    .line 1111
    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/c;->l:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 90
    :goto_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    return-void

    .line 1101
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p0}, Lcom/koushikdutta/async/c;->closeInternal()V

    .line 94
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/c;->c(Ljava/lang/Exception;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/c;->a(Ljava/lang/Exception;)V

    return-void
.end method
