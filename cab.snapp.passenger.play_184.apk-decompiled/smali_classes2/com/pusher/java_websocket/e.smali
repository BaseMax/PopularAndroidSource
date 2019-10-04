.class public interface abstract Lcom/pusher/java_websocket/e;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getFlashPolicy(Lcom/pusher/java_websocket/WebSocket;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation
.end method

.method public abstract getLocalSocketAddress(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
.end method

.method public abstract getRemoteSocketAddress(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
.end method

.method public abstract onWebsocketClose(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketCloseInitiated(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;)V
.end method

.method public abstract onWebsocketClosing(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V
.end method

.method public abstract onWebsocketHandshakeReceivedAsClient(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/h;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation
.end method

.method public abstract onWebsocketHandshakeReceivedAsServer(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/drafts/Draft;Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/c/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation
.end method

.method public abstract onWebsocketHandshakeSentAsClient(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation
.end method

.method public abstract onWebsocketMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/String;)V
.end method

.method public abstract onWebsocketMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onWebsocketMessageFragment(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V
.end method

.method public abstract onWebsocketOpen(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/f;)V
.end method

.method public abstract onWebsocketPing(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V
.end method

.method public abstract onWebsocketPong(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V
.end method

.method public abstract onWriteDemand(Lcom/pusher/java_websocket/WebSocket;)V
.end method
