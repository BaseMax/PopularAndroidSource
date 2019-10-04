.class final Lcom/koushikdutta/async/h$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/h$b;

.field final synthetic b:Lcom/koushikdutta/async/a/b;

.field final synthetic c:Ljava/net/InetSocketAddress;

.field final synthetic d:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/h$b;Lcom/koushikdutta/async/a/b;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/koushikdutta/async/h$12;->d:Lcom/koushikdutta/async/h;

    iput-object p2, p0, Lcom/koushikdutta/async/h$12;->a:Lcom/koushikdutta/async/h$b;

    iput-object p3, p0, Lcom/koushikdutta/async/h$12;->b:Lcom/koushikdutta/async/a/b;

    iput-object p4, p0, Lcom/koushikdutta/async/h$12;->c:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/koushikdutta/async/h$12;->a:Lcom/koushikdutta/async/h$b;

    invoke-virtual {v0}, Lcom/koushikdutta/async/h$b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/h$12;->a:Lcom/koushikdutta/async/h$b;

    iget-object v1, p0, Lcom/koushikdutta/async/h$12;->b:Lcom/koushikdutta/async/a/b;

    iput-object v1, v0, Lcom/koushikdutta/async/h$b;->b:Lcom/koushikdutta/async/a/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 376
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    iput-object v3, v0, Lcom/koushikdutta/async/h$b;->a:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 377
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 378
    iget-object v0, p0, Lcom/koushikdutta/async/h$12;->d:Lcom/koushikdutta/async/h;

    invoke-static {v0}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;)Lcom/koushikdutta/async/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/aa;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v3, v0, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 379
    iget-object v0, p0, Lcom/koushikdutta/async/h$12;->a:Lcom/koushikdutta/async/h$b;

    invoke-virtual {v2, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/koushikdutta/async/h$12;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_0
    if-eqz v2, :cond_1

    .line 384
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    .line 385
    invoke-static {v2}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 386
    iget-object v1, p0, Lcom/koushikdutta/async/h$12;->a:Lcom/koushikdutta/async/h$b;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/h$b;->setComplete(Ljava/lang/Exception;)Z

    return-void
.end method
