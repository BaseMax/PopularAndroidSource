.class public final Lcom/pusher/java_websocket/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/java_websocket/d/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createWebSocket(Lcom/pusher/java_websocket/b;Lcom/pusher/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/pusher/java_websocket/WebSocket;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/pusher/java_websocket/d/a;->createWebSocket(Lcom/pusher/java_websocket/b;Lcom/pusher/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/pusher/java_websocket/d;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic createWebSocket(Lcom/pusher/java_websocket/b;Ljava/util/List;Ljava/net/Socket;)Lcom/pusher/java_websocket/WebSocket;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/pusher/java_websocket/d/a;->createWebSocket(Lcom/pusher/java_websocket/b;Ljava/util/List;Ljava/net/Socket;)Lcom/pusher/java_websocket/d;

    move-result-object p1

    return-object p1
.end method

.method public final createWebSocket(Lcom/pusher/java_websocket/b;Lcom/pusher/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/pusher/java_websocket/d;
    .locals 0

    .line 15
    new-instance p3, Lcom/pusher/java_websocket/d;

    invoke-direct {p3, p1, p2}, Lcom/pusher/java_websocket/d;-><init>(Lcom/pusher/java_websocket/e;Lcom/pusher/java_websocket/drafts/Draft;)V

    return-object p3
.end method

.method public final createWebSocket(Lcom/pusher/java_websocket/b;Ljava/util/List;Ljava/net/Socket;)Lcom/pusher/java_websocket/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pusher/java_websocket/b;",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/net/Socket;",
            ")",
            "Lcom/pusher/java_websocket/d;"
        }
    .end annotation

    .line 19
    new-instance p3, Lcom/pusher/java_websocket/d;

    invoke-direct {p3, p1, p2}, Lcom/pusher/java_websocket/d;-><init>(Lcom/pusher/java_websocket/e;Ljava/util/List;)V

    return-object p3
.end method

.method public final bridge synthetic wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/pusher/java_websocket/d/a;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public final wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;
    .locals 0

    return-object p1
.end method
