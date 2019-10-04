.class public final Lcom/koushikdutta/async/b;
.super Lcom/koushikdutta/async/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final connect(Ljava/net/InetSocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/b;->a:Ljava/net/InetSocketAddress;

    .line 3046
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    .line 22
    check-cast v0, Lcom/koushikdutta/async/s;

    iget-object v0, v0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    return-void
.end method

.method public final disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/koushikdutta/async/b;->a:Ljava/net/InetSocketAddress;

    .line 1046
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    .line 10
    check-cast v0, Lcom/koushikdutta/async/s;

    invoke-virtual {v0}, Lcom/koushikdutta/async/s;->disconnect()V

    return-void
.end method

.method public final getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/koushikdutta/async/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-super {p0}, Lcom/koushikdutta/async/c;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0

    .line 2046
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    .line 17
    check-cast v0, Lcom/koushikdutta/async/s;

    invoke-virtual {v0}, Lcom/koushikdutta/async/s;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final send(Ljava/lang/String;ILjava/nio/ByteBuffer;)V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/koushikdutta/async/b;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/h;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/koushikdutta/async/b;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/b$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/koushikdutta/async/b$1;-><init>(Lcom/koushikdutta/async/b;Ljava/lang/String;ILjava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    return-void

    .line 4046
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    .line 37
    check-cast v0, Lcom/koushikdutta/async/s;

    iget-object v0, v0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p3, v1}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final send(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/koushikdutta/async/b;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/h;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/koushikdutta/async/b;->getServer()Lcom/koushikdutta/async/h;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/b$2;-><init>(Lcom/koushikdutta/async/b;Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    return-void

    .line 5046
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    .line 58
    check-cast v0, Lcom/koushikdutta/async/s;

    iget-object v0, v0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-direct {v1, v2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
