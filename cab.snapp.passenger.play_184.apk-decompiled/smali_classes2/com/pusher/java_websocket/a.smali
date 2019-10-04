.class public final Lcom/pusher/java_websocket/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static batch(Lcom/pusher/java_websocket/d;Ljava/nio/channels/ByteChannel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    instance-of v0, p1, Lcom/pusher/java_websocket/f;

    if-eqz v0, :cond_2

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/pusher/java_websocket/f;

    .line 47
    invoke-interface {v0}, Lcom/pusher/java_websocket/f;->isNeedWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    invoke-interface {v0}, Lcom/pusher/java_websocket/f;->writeMore()V

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    return v1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 63
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/pusher/java_websocket/d;->isFlushAndClose()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/pusher/java_websocket/d;->getDraft()Lcom/pusher/java_websocket/drafts/Draft;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/pusher/java_websocket/d;->getDraft()Lcom/pusher/java_websocket/drafts/Draft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pusher/java_websocket/drafts/Draft;->getRole()Lcom/pusher/java_websocket/WebSocket$Role;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/pusher/java_websocket/d;->getDraft()Lcom/pusher/java_websocket/drafts/Draft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pusher/java_websocket/drafts/Draft;->getRole()Lcom/pusher/java_websocket/WebSocket$Role;

    move-result-object v2

    sget-object v3, Lcom/pusher/java_websocket/WebSocket$Role;->SERVER:Lcom/pusher/java_websocket/WebSocket$Role;

    if-ne v2, v3, :cond_4

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/pusher/java_websocket/d;->closeConnection()V

    .line 66
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 68
    check-cast p1, Lcom/pusher/java_websocket/f;

    invoke-interface {p1}, Lcom/pusher/java_websocket/f;->isNeedWrite()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static read(Ljava/nio/ByteBuffer;Lcom/pusher/java_websocket/d;Ljava/nio/channels/ByteChannel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 13
    invoke-interface {p2, p0}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/pusher/java_websocket/d;->eot()V

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public static readMore(Ljava/nio/ByteBuffer;Lcom/pusher/java_websocket/d;Lcom/pusher/java_websocket/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 29
    invoke-interface {p2, p0}, Lcom/pusher/java_websocket/f;->readMore(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p0, -0x1

    if-ne v0, p0, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/pusher/java_websocket/d;->eot()V

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_0
    invoke-interface {p2}, Lcom/pusher/java_websocket/f;->isNeedRead()Z

    move-result p0

    return p0
.end method
