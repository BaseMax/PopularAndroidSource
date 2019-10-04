.class public interface abstract Lcom/pusher/java_websocket/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/java_websocket/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/java_websocket/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract createWebSocket(Lcom/pusher/java_websocket/b;Lcom/pusher/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/pusher/java_websocket/d;
.end method

.method public abstract createWebSocket(Lcom/pusher/java_websocket/b;Ljava/util/List;Ljava/net/Socket;)Lcom/pusher/java_websocket/d;
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
.end method

.method public abstract wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
