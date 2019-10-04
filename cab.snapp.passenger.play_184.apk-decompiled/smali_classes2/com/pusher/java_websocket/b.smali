.class public abstract Lcom/pusher/java_websocket/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/java_websocket/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashPolicy(Lcom/pusher/java_websocket/WebSocket;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Lcom/pusher/java_websocket/WebSocket;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "\" /></cross-domain-policy>\u0000"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Lcom/pusher/java_websocket/b/d;

    const-string v0, "socket not bound"

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onWebsocketHandshakeReceivedAsClient(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/drafts/Draft;Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/c/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 27
    new-instance p1, Lcom/pusher/java_websocket/c/e;

    invoke-direct {p1}, Lcom/pusher/java_websocket/c/e;-><init>()V

    return-object p1
.end method

.method public onWebsocketHandshakeSentAsClient(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V
    .locals 0

    return-void
.end method

.method public onWebsocketPing(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/pusher/java_websocket/framing/d;

    invoke-direct {v0, p2}, Lcom/pusher/java_websocket/framing/d;-><init>(Lcom/pusher/java_websocket/framing/Framedata;)V

    .line 61
    sget-object p2, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    invoke-virtual {v0, p2}, Lcom/pusher/java_websocket/framing/d;->setOptcode(Lcom/pusher/java_websocket/framing/Framedata$Opcode;)V

    .line 62
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/WebSocket;->sendFrame(Lcom/pusher/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public onWebsocketPong(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V
    .locals 0

    return-void
.end method
