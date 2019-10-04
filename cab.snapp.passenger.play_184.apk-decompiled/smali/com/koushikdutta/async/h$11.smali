.class final Lcom/koushikdutta/async/h$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/a/e;)Lcom/koushikdutta/async/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/InetAddress;

.field final synthetic b:I

.field final synthetic c:Lcom/koushikdutta/async/a/e;

.field final synthetic d:Lcom/koushikdutta/async/h$d;

.field final synthetic e:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;Ljava/net/InetAddress;ILcom/koushikdutta/async/a/e;Lcom/koushikdutta/async/h$d;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/koushikdutta/async/h$11;->e:Lcom/koushikdutta/async/h;

    iput-object p2, p0, Lcom/koushikdutta/async/h$11;->a:Ljava/net/InetAddress;

    iput p3, p0, Lcom/koushikdutta/async/h$11;->b:I

    iput-object p4, p0, Lcom/koushikdutta/async/h$11;->c:Lcom/koushikdutta/async/a/e;

    iput-object p5, p0, Lcom/koushikdutta/async/h$11;->d:Lcom/koushikdutta/async/h$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    .line 306
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 307
    :try_start_1
    new-instance v2, Lcom/koushikdutta/async/ab;

    invoke-direct {v2, v1}, Lcom/koushikdutta/async/ab;-><init>(Ljava/nio/channels/ServerSocketChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :try_start_2
    iget-object v0, p0, Lcom/koushikdutta/async/h$11;->a:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v3, p0, Lcom/koushikdutta/async/h$11;->b:I

    invoke-direct {v0, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0

    .line 315
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/koushikdutta/async/h$11;->a:Ljava/net/InetAddress;

    iget v4, p0, Lcom/koushikdutta/async/h$11;->b:I

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 316
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 317
    iget-object v0, p0, Lcom/koushikdutta/async/h$11;->e:Lcom/koushikdutta/async/h;

    invoke-static {v0}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;)Lcom/koushikdutta/async/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/aa;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ab;->register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 318
    iget-object v3, p0, Lcom/koushikdutta/async/h$11;->c:Lcom/koushikdutta/async/a/e;

    invoke-virtual {v0, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v3, p0, Lcom/koushikdutta/async/h$11;->c:Lcom/koushikdutta/async/a/e;

    iget-object v4, p0, Lcom/koushikdutta/async/h$11;->d:Lcom/koushikdutta/async/h$d;

    new-instance v5, Lcom/koushikdutta/async/h$11$1;

    invoke-direct {v5, p0, v1, v2, v0}, Lcom/koushikdutta/async/h$11$1;-><init>(Lcom/koushikdutta/async/h$11;Ljava/nio/channels/ServerSocketChannel;Lcom/koushikdutta/async/ab;Ljava/nio/channels/SelectionKey;)V

    iput-object v5, v4, Lcom/koushikdutta/async/h$d;->a:Ljava/lang/Object;

    check-cast v5, Lcom/koushikdutta/async/i;

    invoke-interface {v3, v5}, Lcom/koushikdutta/async/a/e;->onListening(Lcom/koushikdutta/async/i;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    .line 338
    invoke-static {v3}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 339
    iget-object v1, p0, Lcom/koushikdutta/async/h$11;->c:Lcom/koushikdutta/async/a/e;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/a/e;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
