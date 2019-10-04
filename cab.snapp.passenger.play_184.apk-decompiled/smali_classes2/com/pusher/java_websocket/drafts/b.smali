.class public final Lcom/pusher/java_websocket/drafts/b;
.super Lcom/pusher/java_websocket/drafts/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/pusher/java_websocket/drafts/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptHandshakeAsServer(Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/pusher/java_websocket/drafts/b;->readVersion(Lcom/pusher/java_websocket/c/f;)I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 12
    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1

    .line 13
    :cond_0
    sget-object p1, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    return-object p1
.end method

.method public final copyInstance()Lcom/pusher/java_websocket/drafts/Draft;
    .locals 1

    .line 25
    new-instance v0, Lcom/pusher/java_websocket/drafts/b;

    invoke-direct {v0}, Lcom/pusher/java_websocket/drafts/b;-><init>()V

    return-object v0
.end method

.method public final postProcessHandshakeRequestAsClient(Lcom/pusher/java_websocket/c/b;)Lcom/pusher/java_websocket/c/b;
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lcom/pusher/java_websocket/drafts/a;->postProcessHandshakeRequestAsClient(Lcom/pusher/java_websocket/c/b;)Lcom/pusher/java_websocket/c/b;

    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    .line 19
    invoke-interface {p1, v0, v1}, Lcom/pusher/java_websocket/c/b;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
