.class public abstract Lcom/pusher/java_websocket/a/a;
.super Lcom/pusher/java_websocket/b;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/java_websocket/WebSocket;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/java_websocket/a/a$a;
    }
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field protected a:Ljava/net/URI;

.field private c:Lcom/pusher/java_websocket/d;

.field private d:Ljava/net/Socket;

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;

.field private g:Ljava/net/Proxy;

.field private h:Ljava/lang/Thread;

.field private i:Lcom/pusher/java_websocket/drafts/Draft;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/CountDownLatch;

.field private l:Ljava/util/concurrent/CountDownLatch;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/pusher/java_websocket/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/pusher/java_websocket/a/a;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/pusher/java_websocket/drafts/b;

    invoke-direct {v0}, Lcom/pusher/java_websocket/drafts/b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/pusher/java_websocket/a/a;-><init>(Ljava/net/URI;Lcom/pusher/java_websocket/drafts/Draft;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/pusher/java_websocket/drafts/Draft;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/pusher/java_websocket/a/a;-><init>(Ljava/net/URI;Lcom/pusher/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/pusher/java_websocket/drafts/Draft;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/pusher/java_websocket/b;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/pusher/java_websocket/a/a;->a:Ljava/net/URI;

    .line 38
    iput-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    .line 40
    iput-object v0, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    .line 46
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/pusher/java_websocket/a/a;->g:Ljava/net/Proxy;

    .line 54
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/pusher/java_websocket/a/a;->k:Ljava/util/concurrent/CountDownLatch;

    .line 56
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/pusher/java_websocket/a/a;->l:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/pusher/java_websocket/a/a;->m:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 80
    iput-object p1, p0, Lcom/pusher/java_websocket/a/a;->a:Ljava/net/URI;

    .line 81
    iput-object p2, p0, Lcom/pusher/java_websocket/a/a;->i:Lcom/pusher/java_websocket/drafts/Draft;

    .line 82
    iput-object p3, p0, Lcom/pusher/java_websocket/a/a;->j:Ljava/util/Map;

    .line 83
    iput p4, p0, Lcom/pusher/java_websocket/a/a;->m:I

    .line 84
    new-instance p1, Lcom/pusher/java_websocket/d;

    invoke-direct {p1, p0, p2}, Lcom/pusher/java_websocket/d;-><init>(Lcom/pusher/java_websocket/e;Lcom/pusher/java_websocket/drafts/Draft;)V

    iput-object p1, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a()I
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wss"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    :cond_0
    const-string v1, "ws"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    return v0

    .line 205
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "unkonow scheme"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v0
.end method

.method static synthetic a(Lcom/pusher/java_websocket/a/a;)Lcom/pusher/java_websocket/d;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    return-object p0
.end method

.method static synthetic b(Lcom/pusher/java_websocket/a/a;)Ljava/io/OutputStream;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/pusher/java_websocket/a/a;->f:Ljava/io/OutputStream;

    return-object p0
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/pusher/java_websocket/a/a;->a:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "/"

    :cond_1
    if-eqz v1, :cond_2

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/pusher/java_websocket/a/a;->a()I

    move-result v1

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pusher/java_websocket/a/a;->a:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    if-eq v1, v3, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v2, Lcom/pusher/java_websocket/c/d;

    invoke-direct {v2}, Lcom/pusher/java_websocket/c/d;-><init>()V

    .line 225
    invoke-virtual {v2, v0}, Lcom/pusher/java_websocket/c/d;->setResourceDescriptor(Ljava/lang/String;)V

    const-string v0, "Host"

    .line 226
    invoke-virtual {v2, v0, v1}, Lcom/pusher/java_websocket/c/d;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->j:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 228
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/pusher/java_websocket/c/d;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0, v2}, Lcom/pusher/java_websocket/d;->startHandshake(Lcom/pusher/java_websocket/c/b;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/pusher/java_websocket/d;->close(I)V

    :cond_0
    return-void
.end method

.method public close(I)V
    .locals 0

    .line 417
    iget-object p1, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {p1}, Lcom/pusher/java_websocket/d;->close()V

    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0, p1, p2}, Lcom/pusher/java_websocket/d;->close(ILjava/lang/String;)V

    return-void
.end method

.method public closeBlocking()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/pusher/java_websocket/a/a;->close()V

    .line 134
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0, p1, p2}, Lcom/pusher/java_websocket/d;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->h:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pusher/java_websocket/a/a;->h:Ljava/lang/Thread;

    .line 109
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/pusher/java_websocket/a/a;->connect()V

    .line 118
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 119
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->isOpen()Z

    move-result v0

    return v0
.end method

.method public getConnection()Lcom/pusher/java_websocket/WebSocket;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    return-object v0
.end method

.method public getDraft()Lcom/pusher/java_websocket/drafts/Draft;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->i:Lcom/pusher/java_websocket/drafts/Draft;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 322
    iget-object p1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReadyState()Lcom/pusher/java_websocket/WebSocket$READYSTATE;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->getReadyState()Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 329
    iget-object p1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->a:Ljava/net/URI;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->hasBufferedData()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->isFlushAndClose()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->isOpen()Z

    move-result v0

    return v0
.end method

.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public onFragment(Lcom/pusher/java_websocket/framing/Framedata;)V
    .locals 0

    return-void
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public abstract onOpen(Lcom/pusher/java_websocket/c/h;)V
.end method

.method public final onWebsocketClose(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 274
    iget-object p1, p0, Lcom/pusher/java_websocket/a/a;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 275
    iget-object p1, p0, Lcom/pusher/java_websocket/a/a;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 276
    iget-object p1, p0, Lcom/pusher/java_websocket/a/a;->h:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 279
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    if-eqz p1, :cond_1

    .line 280
    iget-object p1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p0, p0, p1}, Lcom/pusher/java_websocket/a/a;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 284
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/pusher/java_websocket/a/a;->onClose(ILjava/lang/String;Z)V

    return-void
.end method

.method public onWebsocketCloseInitiated(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 302
    invoke-virtual {p0, p2, p3}, Lcom/pusher/java_websocket/a/a;->onCloseInitiated(ILjava/lang/String;)V

    return-void
.end method

.method public onWebsocketClosing(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 307
    invoke-virtual {p0, p2, p3, p4}, Lcom/pusher/java_websocket/a/a;->onClosing(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 292
    invoke-virtual {p0, p2}, Lcom/pusher/java_websocket/a/a;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onWebsocketMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 247
    invoke-virtual {p0, p2}, Lcom/pusher/java_websocket/a/a;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onWebsocketMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 252
    invoke-virtual {p0, p2}, Lcom/pusher/java_websocket/a/a;->onMessage(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V
    .locals 0

    .line 257
    invoke-virtual {p0, p2}, Lcom/pusher/java_websocket/a/a;->onFragment(Lcom/pusher/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public final onWebsocketOpen(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/f;)V
    .locals 0

    .line 265
    iget-object p1, p0, Lcom/pusher/java_websocket/a/a;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 266
    check-cast p2, Lcom/pusher/java_websocket/c/h;

    invoke-virtual {p0, p2}, Lcom/pusher/java_websocket/a/a;->onOpen(Lcom/pusher/java_websocket/c/h;)V

    return-void
.end method

.method public final onWriteDemand(Lcom/pusher/java_websocket/WebSocket;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, -0x1

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lcom/pusher/java_websocket/a/a;->g:Ljava/net/Proxy;

    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    goto :goto_0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/pusher/java_websocket/a/a;->a:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/pusher/java_websocket/a/a;->a()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v3, p0, Lcom/pusher/java_websocket/a/a;->m:I

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/pusher/java_websocket/a/a;->e:Ljava/io/InputStream;

    .line 167
    iget-object v1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/pusher/java_websocket/a/a;->f:Ljava/io/OutputStream;

    .line 169
    invoke-direct {p0}, Lcom/pusher/java_websocket/a/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 176
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/pusher/java_websocket/a/a$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/pusher/java_websocket/a/a$a;-><init>(Lcom/pusher/java_websocket/a/a;B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/pusher/java_websocket/a/a;->h:Ljava/lang/Thread;

    .line 177
    iget-object v1, p0, Lcom/pusher/java_websocket/a/a;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 179
    sget v1, Lcom/pusher/java_websocket/d;->RCVBUF:I

    new-array v1, v1, [B

    .line 183
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/pusher/java_websocket/a/a;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/pusher/java_websocket/a/a;->e:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 184
    iget-object v4, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-static {v1, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/pusher/java_websocket/d;->decode(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->eot()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/a/a;->onError(Ljava/lang/Exception;)V

    .line 192
    iget-object v1, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/pusher/java_websocket/d;->closeConnection(ILjava/lang/String;)V

    goto :goto_2

    .line 188
    :catch_1
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/d;->eot()V

    .line 194
    :goto_2
    sget-boolean v0, Lcom/pusher/java_websocket/a/a;->b:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_3
    return-void

    .line 162
    :cond_5
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v1

    .line 171
    iget-object v2, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {p0, v2, v1}, Lcom/pusher/java_websocket/a/a;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 172
    iget-object v2, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/pusher/java_websocket/d;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0, p1}, Lcom/pusher/java_websocket/d;->send(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0, p1}, Lcom/pusher/java_websocket/d;->send(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0, p1}, Lcom/pusher/java_websocket/d;->send([B)V

    return-void
.end method

.method public sendFragmentedFrame(Lcom/pusher/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/java_websocket/d;->sendFragmentedFrame(Lcom/pusher/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public sendFrame(Lcom/pusher/java_websocket/framing/Framedata;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->c:Lcom/pusher/java_websocket/d;

    invoke-virtual {v0, p1}, Lcom/pusher/java_websocket/d;->sendFrame(Lcom/pusher/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 365
    iput-object p1, p0, Lcom/pusher/java_websocket/a/a;->g:Ljava/net/Proxy;

    return-void

    .line 364
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 377
    iput-object p1, p0, Lcom/pusher/java_websocket/a/a;->d:Ljava/net/Socket;

    return-void

    .line 375
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "socket has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
