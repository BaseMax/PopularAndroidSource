.class final Lcom/koushikdutta/async/s;
.super Lcom/koushikdutta/async/m;
.source "SourceFile"


# instance fields
.field a:Ljava/nio/channels/DatagramChannel;

.field b:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Ljava/nio/channels/DatagramChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/m;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    return-void
.end method

.method public final getLocalPort()I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public final getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/s;->b:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final getSocket()Ljava/lang/Object;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/koushikdutta/async/s;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    iput-object v1, p0, Lcom/koushikdutta/async/s;->b:Ljava/net/InetSocketAddress;

    .line 37
    iget-object v1, p0, Lcom/koushikdutta/async/s;->b:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr p1, v0

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/koushikdutta/async/s;->b:Ljava/net/InetSocketAddress;

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final read([Ljava/nio/ByteBuffer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->read([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final read([Ljava/nio/ByteBuffer;II)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/DatagramChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide p1

    return-wide p1
.end method

.method public final register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/s;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    return-object p1
.end method

.method public final register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    return-object p1
.end method

.method public final shutdownInput()V
    .locals 0

    return-void
.end method

.method public final shutdownOutput()V
    .locals 0

    return-void
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final write([Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method
