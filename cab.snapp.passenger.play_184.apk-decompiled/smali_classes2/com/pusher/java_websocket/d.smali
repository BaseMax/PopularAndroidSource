.class public Lcom/pusher/java_websocket/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/java_websocket/WebSocket;


# static fields
.field public static DEBUG:Z

.field public static RCVBUF:I

.field static final synthetic a:Z

.field public static final defaultdraftlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile b:Z

.field private c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

.field public channel:Ljava/nio/channels/ByteChannel;

.field private final d:Lcom/pusher/java_websocket/e;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/pusher/java_websocket/drafts/Draft;

.field private g:Lcom/pusher/java_websocket/WebSocket$Role;

.field private h:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

.field private i:Ljava/nio/ByteBuffer;

.field public final inQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/pusher/java_websocket/c/a;

.field private k:Ljava/lang/String;

.field public key:Ljava/nio/channels/SelectionKey;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/String;

.field public final outQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile workerThread:Lcom/pusher/java_websocket/d/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-class v0, Lcom/pusher/java_websocket/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/pusher/java_websocket/d;->a:Z

    const/16 v0, 0x4000

    .line 46
    sput v0, Lcom/pusher/java_websocket/d;->RCVBUF:I

    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/pusher/java_websocket/d;->DEBUG:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    sput-object v0, Lcom/pusher/java_websocket/d;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lcom/pusher/java_websocket/drafts/b;

    invoke-direct {v1}, Lcom/pusher/java_websocket/drafts/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/pusher/java_websocket/d;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lcom/pusher/java_websocket/drafts/a;

    invoke-direct {v1}, Lcom/pusher/java_websocket/drafts/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/pusher/java_websocket/d;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lcom/pusher/java_websocket/drafts/d;

    invoke-direct {v1}, Lcom/pusher/java_websocket/drafts/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/pusher/java_websocket/d;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lcom/pusher/java_websocket/drafts/c;

    invoke-direct {v1}, Lcom/pusher/java_websocket/drafts/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/pusher/java_websocket/e;Lcom/pusher/java_websocket/drafts/Draft;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/pusher/java_websocket/d;->b:Z

    .line 79
    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    iput-object v1, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    .line 92
    iput-object v1, p0, Lcom/pusher/java_websocket/d;->h:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    .line 95
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    .line 98
    iput-object v1, p0, Lcom/pusher/java_websocket/d;->j:Lcom/pusher/java_websocket/c/a;

    .line 100
    iput-object v1, p0, Lcom/pusher/java_websocket/d;->k:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/pusher/java_websocket/d;->l:Ljava/lang/Integer;

    .line 102
    iput-object v1, p0, Lcom/pusher/java_websocket/d;->m:Ljava/lang/Boolean;

    .line 104
    iput-object v1, p0, Lcom/pusher/java_websocket/d;->n:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$Role;->SERVER:Lcom/pusher/java_websocket/WebSocket$Role;

    if-eq v0, v1, :cond_2

    .line 129
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/pusher/java_websocket/d;->outQueue:Ljava/util/concurrent/BlockingQueue;

    .line 130
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/pusher/java_websocket/d;->inQueue:Ljava/util/concurrent/BlockingQueue;

    .line 131
    iput-object p1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    .line 132
    sget-object p1, Lcom/pusher/java_websocket/WebSocket$Role;->CLIENT:Lcom/pusher/java_websocket/WebSocket$Role;

    iput-object p1, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {p2}, Lcom/pusher/java_websocket/drafts/Draft;->copyInstance()Lcom/pusher/java_websocket/drafts/Draft;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    :cond_1
    return-void

    .line 128
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameters must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/pusher/java_websocket/e;Lcom/pusher/java_websocket/drafts/Draft;Ljava/net/Socket;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/pusher/java_websocket/d;-><init>(Lcom/pusher/java_websocket/e;Lcom/pusher/java_websocket/drafts/Draft;)V

    return-void
.end method

.method public constructor <init>(Lcom/pusher/java_websocket/e;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pusher/java_websocket/e;",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/pusher/java_websocket/d;-><init>(Lcom/pusher/java_websocket/e;Lcom/pusher/java_websocket/drafts/Draft;)V

    .line 111
    sget-object p1, Lcom/pusher/java_websocket/WebSocket$Role;->SERVER:Lcom/pusher/java_websocket/WebSocket$Role;

    iput-object p1, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    if-eqz p2, :cond_1

    .line 113
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iput-object p2, p0, Lcom/pusher/java_websocket/d;->e:Ljava/util/List;

    return-void

    .line 114
    :cond_1
    :goto_0
    sget-object p1, Lcom/pusher/java_websocket/d;->defaultdraftlist:Ljava/util/List;

    iput-object p1, p0, Lcom/pusher/java_websocket/d;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/pusher/java_websocket/e;Ljava/util/List;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pusher/java_websocket/e;",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/net/Socket;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/pusher/java_websocket/d;-><init>(Lcom/pusher/java_websocket/e;Ljava/util/List;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    .line 478
    invoke-direct {p0, p1, v0, v1}, Lcom/pusher/java_websocket/d;->b(ILjava/lang/String;Z)V

    return-void
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-eq v0, v1, :cond_a

    .line 397
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->OPEN:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_2

    .line 399
    sget-boolean v0, Lcom/pusher/java_websocket/d;->a:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 400
    :cond_1
    :goto_0
    sget-object p3, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    iput-object p3, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    .line 401
    invoke-direct {p0, p1, p2, v2}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    return-void

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v1}, Lcom/pusher/java_websocket/drafts/Draft;->getCloseHandshakeType()Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v1

    sget-object v3, Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;

    if-eq v1, v3, :cond_4

    if-nez p3, :cond_3

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v1, p0, p1, p2}, Lcom/pusher/java_websocket/e;->onWebsocketCloseInitiated(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 410
    :try_start_1
    iget-object v3, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v3, p0, v1}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 413
    :cond_3
    :goto_1
    new-instance v1, Lcom/pusher/java_websocket/framing/b;

    invoke-direct {v1, p1, p2}, Lcom/pusher/java_websocket/framing/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/pusher/java_websocket/d;->sendFrame(Lcom/pusher/java_websocket/framing/Framedata;)V
    :try_end_1
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 415
    iget-object v3, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v3, p0, v1}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    const-string v1, "generated frame is invalid"

    .line 416
    invoke-direct {p0, v0, v1, v2}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    .line 419
    :cond_4
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    goto :goto_4

    :cond_5
    const/4 v0, -0x3

    if-ne p1, v0, :cond_8

    .line 421
    sget-boolean v1, Lcom/pusher/java_websocket/d;->a:Z

    if-nez v1, :cond_7

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    const/4 v1, 0x1

    .line 422
    invoke-direct {p0, v0, p2, v1}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    goto :goto_4

    :cond_8
    const/4 v0, -0x1

    .line 424
    invoke-direct {p0, v0, p2, v2}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    :goto_4
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_9

    .line 427
    invoke-direct {p0, p1, p2, p3}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    .line 428
    :cond_9
    sget-object p1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    iput-object p1, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    const/4 p1, 0x0

    .line 429
    iput-object p1, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    :cond_a
    return-void
.end method

.method private a(Lcom/pusher/java_websocket/c/f;)V
    .locals 3

    .line 659
    sget-boolean v0, Lcom/pusher/java_websocket/d;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 660
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open using draft: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 661
    :cond_0
    sget-object v0, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->OPEN:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    iput-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0, p0, p1}, Lcom/pusher/java_websocket/e;->onWebsocketOpen(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/f;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 665
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0, p0, p1}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/pusher/java_websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    .line 571
    invoke-virtual {p0}, Lcom/pusher/java_websocket/d;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/java_websocket/framing/Framedata;

    .line 574
    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/d;->sendFrame(Lcom/pusher/java_websocket/framing/Framedata;)V

    goto :goto_0

    :cond_0
    return-void

    .line 572
    :cond_1
    new-instance p1, Lcom/pusher/java_websocket/b/g;

    invoke-direct {p1}, Lcom/pusher/java_websocket/b/g;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 653
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 654
    invoke-direct {p0, v0}, Lcom/pusher/java_websocket/d;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)Z
    .locals 11

    .line 177
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 183
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 184
    iput-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 189
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    .line 191
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v1, 0x0

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    const/4 v3, 0x1

    if-nez v2, :cond_6

    .line 1596
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 1597
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sget-object v4, Lcom/pusher/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    array-length v4, v4

    if-le v2, v4, :cond_2

    .line 1598
    sget-object v2, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_2

    .line 1599
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sget-object v4, Lcom/pusher/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    array-length v4, v4

    if-lt v2, v4, :cond_5

    const/4 v2, 0x0

    .line 1603
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1604
    sget-object v4, Lcom/pusher/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1605
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 1606
    sget-object v2, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1609
    :cond_4
    sget-object v2, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    .line 195
    :goto_2
    sget-object v4, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    :try_end_0
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_0 .. :try_end_0} :catch_7

    if-ne v2, v4, :cond_6

    .line 197
    :try_start_1
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v2, p0}, Lcom/pusher/java_websocket/e;->getFlashPolicy(Lcom/pusher/java_websocket/WebSocket;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pusher/java_websocket/e/b;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pusher/java_websocket/d;->c(Ljava/nio/ByteBuffer;)V

    const/4 v2, -0x3

    const-string v4, ""

    .line 198
    invoke-virtual {p0, v2, v4}, Lcom/pusher/java_websocket/d;->close(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_3

    :catch_0
    const/16 v2, 0x3ee

    :try_start_2
    const-string v4, "remote peer closed connection before flashpolicy could be transmitted"

    .line 200
    invoke-direct {p0, v2, v4, v3}, Lcom/pusher/java_websocket/d;->a(ILjava/lang/String;Z)V

    :goto_3
    return v1

    .line 1600
    :cond_5
    new-instance v2, Lcom/pusher/java_websocket/b/a;

    sget-object v3, Lcom/pusher/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/pusher/java_websocket/b/a;-><init>(I)V

    throw v2
    :try_end_2
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_2 .. :try_end_2} :catch_7

    .line 208
    :cond_6
    :try_start_3
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    sget-object v4, Lcom/pusher/java_websocket/WebSocket$Role;->SERVER:Lcom/pusher/java_websocket/WebSocket$Role;
    :try_end_3
    .catch Lcom/pusher/java_websocket/b/d; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_3 .. :try_end_3} :catch_7

    const/4 v5, -0x1

    const-string v6, "wrong http function"

    const/16 v7, 0x3ea

    if-ne v2, v4, :cond_e

    .line 209
    :try_start_4
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    if-nez v2, :cond_b

    .line 210
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_1
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pusher/java_websocket/drafts/Draft;

    .line 211
    invoke-virtual {v4}, Lcom/pusher/java_websocket/drafts/Draft;->copyInstance()Lcom/pusher/java_websocket/drafts/Draft;

    move-result-object v4
    :try_end_4
    .catch Lcom/pusher/java_websocket/b/d; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_4 .. :try_end_4} :catch_7

    .line 213
    :try_start_5
    iget-object v8, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    invoke-virtual {v4, v8}, Lcom/pusher/java_websocket/drafts/Draft;->setParseMode(Lcom/pusher/java_websocket/WebSocket$Role;)V

    .line 214
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 215
    invoke-virtual {v4, v0}, Lcom/pusher/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lcom/pusher/java_websocket/c/f;

    move-result-object v8

    .line 216
    instance-of v9, v8, Lcom/pusher/java_websocket/c/a;

    if-nez v9, :cond_8

    .line 217
    invoke-direct {p0, v7, v6, v1}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    return v1

    .line 220
    :cond_8
    check-cast v8, Lcom/pusher/java_websocket/c/a;

    .line 221
    invoke-virtual {v4, v8}, Lcom/pusher/java_websocket/drafts/Draft;->acceptHandshakeAsServer(Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v9

    .line 222
    sget-object v10, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    if-ne v9, v10, :cond_7

    .line 223
    invoke-interface {v8}, Lcom/pusher/java_websocket/c/a;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pusher/java_websocket/d;->n:Ljava/lang/String;
    :try_end_5
    .catch Lcom/pusher/java_websocket/b/d; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_5 .. :try_end_5} :catch_7

    .line 226
    :try_start_6
    iget-object v9, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v9, p0, v4, v8}, Lcom/pusher/java_websocket/e;->onWebsocketHandshakeReceivedAsServer(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/drafts/Draft;Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/c/i;

    move-result-object v9
    :try_end_6
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/pusher/java_websocket/b/d; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_6 .. :try_end_6} :catch_7

    .line 235
    :try_start_7
    invoke-virtual {v4, v8, v9}, Lcom/pusher/java_websocket/drafts/Draft;->postProcessHandshakeResponseAsServer(Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/i;)Lcom/pusher/java_websocket/c/c;

    move-result-object v9

    iget-object v10, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    invoke-virtual {v4, v9, v10}, Lcom/pusher/java_websocket/drafts/Draft;->createHandshake(Lcom/pusher/java_websocket/c/f;Lcom/pusher/java_websocket/WebSocket$Role;)Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/pusher/java_websocket/d;->a(Ljava/util/List;)V

    .line 236
    iput-object v4, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    .line 237
    invoke-direct {p0, v8}, Lcom/pusher/java_websocket/d;->a(Lcom/pusher/java_websocket/c/f;)V

    return v3

    :catch_2
    move-exception v4

    .line 231
    iget-object v8, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v8, p0, v4}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 232
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4, v1}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    return v1

    :catch_3
    move-exception v4

    .line 228
    invoke-virtual {v4}, Lcom/pusher/java_websocket/b/b;->getCloseCode()I

    move-result v8

    invoke-virtual {v4}, Lcom/pusher/java_websocket/b/b;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v8, v4, v1}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V
    :try_end_7
    .catch Lcom/pusher/java_websocket/b/d; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_7 .. :try_end_7} :catch_7

    return v1

    .line 244
    :cond_9
    :try_start_8
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    if-nez v2, :cond_a

    const-string v2, "no draft matches"

    .line 245
    invoke-virtual {p0, v7, v2}, Lcom/pusher/java_websocket/d;->close(ILjava/lang/String;)V

    :cond_a
    return v1

    .line 250
    :cond_b
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v2, v0}, Lcom/pusher/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lcom/pusher/java_websocket/c/f;

    move-result-object v2

    .line 251
    instance-of v4, v2, Lcom/pusher/java_websocket/c/a;

    if-nez v4, :cond_c

    .line 252
    invoke-direct {p0, v7, v6, v1}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    return v1

    .line 255
    :cond_c
    check-cast v2, Lcom/pusher/java_websocket/c/a;

    .line 256
    iget-object v4, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v4, v2}, Lcom/pusher/java_websocket/drafts/Draft;->acceptHandshakeAsServer(Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v4

    .line 258
    sget-object v5, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    if-ne v4, v5, :cond_d

    .line 259
    invoke-direct {p0, v2}, Lcom/pusher/java_websocket/d;->a(Lcom/pusher/java_websocket/c/f;)V

    return v3

    :cond_d
    const-string v2, "the handshake did finaly not match"

    .line 262
    invoke-virtual {p0, v7, v2}, Lcom/pusher/java_websocket/d;->close(ILjava/lang/String;)V

    return v1

    .line 266
    :cond_e
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    sget-object v4, Lcom/pusher/java_websocket/WebSocket$Role;->CLIENT:Lcom/pusher/java_websocket/WebSocket$Role;

    if-ne v2, v4, :cond_15

    .line 267
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    iget-object v4, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    invoke-virtual {v2, v4}, Lcom/pusher/java_websocket/drafts/Draft;->setParseMode(Lcom/pusher/java_websocket/WebSocket$Role;)V

    .line 268
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v2, v0}, Lcom/pusher/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lcom/pusher/java_websocket/c/f;

    move-result-object v2

    .line 269
    instance-of v4, v2, Lcom/pusher/java_websocket/c/h;

    if-nez v4, :cond_f

    .line 270
    invoke-direct {p0, v7, v6, v1}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    return v1

    .line 273
    :cond_f
    check-cast v2, Lcom/pusher/java_websocket/c/h;

    .line 274
    iget-object v4, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    iget-object v6, p0, Lcom/pusher/java_websocket/d;->j:Lcom/pusher/java_websocket/c/a;

    invoke-virtual {v4, v6, v2}, Lcom/pusher/java_websocket/drafts/Draft;->acceptHandshakeAsClient(Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/h;)Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v4

    .line 275
    sget-object v6, Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lcom/pusher/java_websocket/drafts/Draft$HandshakeState;
    :try_end_8
    .catch Lcom/pusher/java_websocket/b/d; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_8 .. :try_end_8} :catch_7

    if-ne v4, v6, :cond_10

    .line 277
    :try_start_9
    iget-object v4, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    iget-object v6, p0, Lcom/pusher/java_websocket/d;->j:Lcom/pusher/java_websocket/c/a;

    invoke-interface {v4, p0, v6, v2}, Lcom/pusher/java_websocket/e;->onWebsocketHandshakeReceivedAsClient(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/a;Lcom/pusher/java_websocket/c/h;)V
    :try_end_9
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/pusher/java_websocket/b/d; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_9 .. :try_end_9} :catch_7

    .line 286
    :try_start_a
    invoke-direct {p0, v2}, Lcom/pusher/java_websocket/d;->a(Lcom/pusher/java_websocket/c/f;)V

    return v3

    :catch_4
    move-exception v2

    .line 282
    iget-object v3, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v3, p0, v2}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 283
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2, v1}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    return v1

    :catch_5
    move-exception v2

    .line 279
    invoke-virtual {v2}, Lcom/pusher/java_websocket/b/b;->getCloseCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/pusher/java_websocket/b/b;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2, v1}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    return v1

    .line 289
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "draft "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " refuses handshake"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Lcom/pusher/java_websocket/d;->close(ILjava/lang/String;)V
    :try_end_a
    .catch Lcom/pusher/java_websocket/b/d; {:try_start_a .. :try_end_a} :catch_6
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_5

    :catch_6
    move-exception v2

    .line 293
    :try_start_b
    invoke-virtual {p0, v2}, Lcom/pusher/java_websocket/d;->close(Lcom/pusher/java_websocket/b/b;)V
    :try_end_b
    .catch Lcom/pusher/java_websocket/b/a; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_5

    :catch_7
    move-exception v2

    .line 296
    iget-object v3, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-nez v3, :cond_14

    .line 297
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 298
    invoke-virtual {v2}, Lcom/pusher/java_websocket/b/a;->getPreferedSize()I

    move-result v3

    if-nez v3, :cond_11

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v3, v0, 0x10

    goto :goto_4

    .line 302
    :cond_11
    sget-boolean v4, Lcom/pusher/java_websocket/d;->a:Z

    if-nez v4, :cond_13

    invoke-virtual {v2}, Lcom/pusher/java_websocket/b/a;->getPreferedSize()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v2, v0, :cond_12

    goto :goto_4

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 304
    :cond_13
    :goto_4
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    .line 306
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 309
    :cond_14
    iget-object p1, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 310
    iget-object p1, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_15
    :goto_5
    return v1
.end method

.method private declared-synchronized b(ILjava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 450
    monitor-exit p0

    return-void

    .line 453
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->channel:Ljava/nio/channels/ByteChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 459
    :try_start_2
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 461
    :try_start_3
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v1, p0, v0}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    :cond_2
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/pusher/java_websocket/e;->onWebsocketClose(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 467
    :try_start_5
    iget-object p2, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {p2, p0, p1}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 469
    :goto_1
    iget-object p1, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    if-eqz p1, :cond_3

    .line 470
    iget-object p1, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {p1}, Lcom/pusher/java_websocket/drafts/Draft;->reset()V

    :cond_3
    const/4 p1, 0x0

    .line 471
    iput-object p1, p0, Lcom/pusher/java_websocket/d;->j:Lcom/pusher/java_websocket/c/a;

    .line 473
    sget-object p1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    iput-object p1, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    .line 474
    iget-object p1, p0, Lcom/pusher/java_websocket/d;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1}, Lcom/pusher/java_websocket/drafts/Draft;->translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/java_websocket/framing/Framedata;

    .line 322
    sget-boolean v1, Lcom/pusher/java_websocket/d;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 323
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "matched frame: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-interface {v0}, Lcom/pusher/java_websocket/framing/Framedata;->getOpcode()Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    move-result-object v1

    .line 325
    invoke-interface {v0}, Lcom/pusher/java_websocket/framing/Framedata;->isFin()Z

    move-result v2

    .line 327
    sget-object v3, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v1, v3, :cond_4

    const/16 v1, 0x3ed

    const-string v2, ""

    .line 330
    instance-of v3, v0, Lcom/pusher/java_websocket/framing/a;

    if-eqz v3, :cond_1

    .line 331
    check-cast v0, Lcom/pusher/java_websocket/framing/a;

    .line 332
    invoke-interface {v0}, Lcom/pusher/java_websocket/framing/a;->getCloseCode()I

    move-result v1

    .line 333
    invoke-interface {v0}, Lcom/pusher/java_websocket/framing/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v3, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    .line 337
    invoke-direct {p0, v1, v2, v4}, Lcom/pusher/java_websocket/d;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/drafts/Draft;->getCloseHandshakeType()Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v0

    sget-object v3, Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;

    if-ne v0, v3, :cond_3

    .line 341
    invoke-direct {p0, v1, v2, v4}, Lcom/pusher/java_websocket/d;->a(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, v1, v2, v0}, Lcom/pusher/java_websocket/d;->c(ILjava/lang/String;Z)V

    goto :goto_0

    .line 346
    :cond_4
    sget-object v3, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PING:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v1, v3, :cond_5

    .line 347
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v1, p0, v0}, Lcom/pusher/java_websocket/e;->onWebsocketPing(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V

    goto :goto_0

    .line 349
    :cond_5
    sget-object v3, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v1, v3, :cond_6

    .line 350
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v1, p0, v0}, Lcom/pusher/java_websocket/e;->onWebsocketPong(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x3ea

    if-eqz v2, :cond_b

    .line 352
    sget-object v4, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-ne v1, v4, :cond_7

    goto :goto_1

    .line 370
    :cond_7
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->h:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-nez v2, :cond_a

    .line 372
    sget-object v2, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/pusher/java_websocket/framing/Framedata$Opcode;
    :try_end_0
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v1, v2, :cond_8

    .line 374
    :try_start_1
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0}, Lcom/pusher/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/pusher/java_websocket/e/b;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/pusher/java_websocket/e;->onWebsocketMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 376
    :try_start_2
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v1, p0, v0}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 378
    :cond_8
    sget-object v2, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/pusher/java_websocket/framing/Framedata$Opcode;
    :try_end_2
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_2 .. :try_end_2} :catch_3

    if-ne v1, v2, :cond_9

    .line 380
    :try_start_3
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0}, Lcom/pusher/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/pusher/java_websocket/e;->onWebsocketMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 382
    :try_start_4
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v1, p0, v0}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 385
    :cond_9
    new-instance p1, Lcom/pusher/java_websocket/b/b;

    const-string v0, "non control or continious frame expected"

    invoke-direct {p1, v3, v0}, Lcom/pusher/java_websocket/b/b;-><init>(ILjava/lang/String;)V

    throw p1

    .line 371
    :cond_a
    new-instance p1, Lcom/pusher/java_websocket/b/b;

    const-string v0, "Continuous frame sequence not completed."

    invoke-direct {p1, v3, v0}, Lcom/pusher/java_websocket/b/b;-><init>(ILjava/lang/String;)V

    throw p1

    .line 353
    :cond_b
    :goto_1
    sget-object v4, Lcom/pusher/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eq v1, v4, :cond_d

    .line 354
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->h:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-nez v2, :cond_c

    .line 356
    iput-object v1, p0, Lcom/pusher/java_websocket/d;->h:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    .line 355
    :cond_c
    new-instance p1, Lcom/pusher/java_websocket/b/b;

    const-string v0, "Previous continuous frame sequence not completed."

    invoke-direct {p1, v3, v0}, Lcom/pusher/java_websocket/b/b;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_4
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_4 .. :try_end_4} :catch_3

    :cond_d
    const-string v1, "Continuous frame sequence was not started."

    if-eqz v2, :cond_f

    .line 358
    :try_start_5
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->h:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    .line 360
    iput-object v1, p0, Lcom/pusher/java_websocket/d;->h:Lcom/pusher/java_websocket/framing/Framedata$Opcode;

    goto :goto_2

    .line 359
    :cond_e
    new-instance p1, Lcom/pusher/java_websocket/b/b;

    invoke-direct {p1, v3, v1}, Lcom/pusher/java_websocket/b/b;-><init>(ILjava/lang/String;)V

    throw p1

    .line 361
    :cond_f
    iget-object v2, p0, Lcom/pusher/java_websocket/d;->h:Lcom/pusher/java_websocket/framing/Framedata$Opcode;
    :try_end_5
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v2, :cond_10

    .line 365
    :goto_2
    :try_start_6
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v1, p0, v0}, Lcom/pusher/java_websocket/e;->onWebsocketMessageFragment(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 367
    :try_start_7
    iget-object v1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v1, p0, v0}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 362
    :cond_10
    new-instance p1, Lcom/pusher/java_websocket/b/b;

    invoke-direct {p1, v3, v1}, Lcom/pusher/java_websocket/b/b;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_7
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_7 .. :try_end_7} :catch_3

    :cond_11
    return-void

    :catch_3
    move-exception p1

    .line 389
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0, p0, p1}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 390
    invoke-virtual {p0, p1}, Lcom/pusher/java_websocket/d;->close(Lcom/pusher/java_websocket/b/b;)V

    return-void
.end method

.method private declared-synchronized c(ILjava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 493
    :try_start_0
    iget-boolean v0, p0, Lcom/pusher/java_websocket/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 494
    monitor-exit p0

    return-void

    .line 496
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/java_websocket/d;->l:Ljava/lang/Integer;

    .line 497
    iput-object p2, p0, Lcom/pusher/java_websocket/d;->k:Ljava/lang/String;

    .line 498
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/java_websocket/d;->m:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 500
    iput-boolean v0, p0, Lcom/pusher/java_websocket/d;->b:Z

    .line 502
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0, p0}, Lcom/pusher/java_websocket/e;->onWriteDemand(Lcom/pusher/java_websocket/WebSocket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :try_start_2
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/pusher/java_websocket/e;->onWebsocketClosing(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 506
    :try_start_3
    iget-object p2, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {p2, p0, p1}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 508
    :goto_0
    iget-object p1, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    if-eqz p1, :cond_1

    .line 509
    iget-object p1, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {p1}, Lcom/pusher/java_websocket/drafts/Draft;->reset()V

    :cond_1
    const/4 p1, 0x0

    .line 510
    iput-object p1, p0, Lcom/pusher/java_websocket/d;->j:Lcom/pusher/java_websocket/c/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 638
    sget-boolean v0, Lcom/pusher/java_websocket/d;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 639
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_0

    const-string v2, "too big to display"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object p1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {p1, p0}, Lcom/pusher/java_websocket/e;->onWriteDemand(Lcom/pusher/java_websocket/WebSocket;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/16 v0, 0x3e8

    .line 728
    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/d;->close(I)V

    return-void
.end method

.method public close(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 532
    invoke-direct {p0, p1, v0, v1}, Lcom/pusher/java_websocket/d;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 436
    invoke-direct {p0, p1, p2, v0}, Lcom/pusher/java_websocket/d;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public close(Lcom/pusher/java_websocket/b/b;)V
    .locals 2

    .line 536
    invoke-virtual {p1}, Lcom/pusher/java_websocket/b/b;->getCloseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/pusher/java_websocket/b/b;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/pusher/java_websocket/d;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public closeConnection()V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/pusher/java_websocket/d;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/pusher/java_websocket/d;->m:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/pusher/java_websocket/d;->b(ILjava/lang/String;Z)V

    return-void

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this method must be used in conjuction with flushAndClose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 489
    invoke-direct {p0, p1, p2, v0}, Lcom/pusher/java_websocket/d;->b(ILjava/lang/String;Z)V

    return-void
.end method

.method public decode(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 151
    sget-boolean v0, Lcom/pusher/java_websocket/d;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 153
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/pusher/java_websocket/d;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 154
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "process("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_2

    const-string v2, "too big to display"

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-eq v0, v1, :cond_4

    .line 157
    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d;->b(Ljava/nio/ByteBuffer;)V

    goto :goto_3

    .line 159
    :cond_4
    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    sget-boolean v0, Lcom/pusher/java_websocket/d;->a:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 162
    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 163
    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d;->b(Ljava/nio/ByteBuffer;)V

    goto :goto_3

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->i:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/pusher/java_websocket/d;->b(Ljava/nio/ByteBuffer;)V

    .line 169
    :cond_8
    :goto_3
    sget-boolean v0, Lcom/pusher/java_websocket/d;->a:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/pusher/java_websocket/d;->isClosing()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/pusher/java_websocket/d;->isFlushAndClose()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_4
    return-void
.end method

.method public eot()V
    .locals 3

    .line 514
    invoke-virtual {p0}, Lcom/pusher/java_websocket/d;->getReadyState()Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    move-result-object v0

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 515
    invoke-direct {p0, v0}, Lcom/pusher/java_websocket/d;->a(I)V

    return-void

    .line 516
    :cond_0
    iget-boolean v0, p0, Lcom/pusher/java_websocket/d;->b:Z

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/pusher/java_websocket/d;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/pusher/java_websocket/d;->m:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/pusher/java_websocket/d;->b(ILjava/lang/String;Z)V

    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/drafts/Draft;->getCloseHandshakeType()Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;

    const/16 v2, 0x3e8

    if-ne v0, v1, :cond_2

    .line 519
    invoke-direct {p0, v2}, Lcom/pusher/java_websocket/d;->a(I)V

    return-void

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lcom/pusher/java_websocket/drafts/Draft;->getCloseHandshakeType()Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;->ONEWAY:Lcom/pusher/java_websocket/drafts/Draft$CloseHandshakeType;

    if-ne v0, v1, :cond_3

    .line 521
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$Role;->SERVER:Lcom/pusher/java_websocket/WebSocket$Role;

    if-eq v0, v1, :cond_3

    .line 524
    invoke-direct {p0, v2}, Lcom/pusher/java_websocket/d;->a(I)V

    return-void

    :cond_3
    const/16 v0, 0x3ee

    .line 526
    invoke-direct {p0, v0}, Lcom/pusher/java_websocket/d;->a(I)V

    return-void
.end method

.method public getDraft()Lcom/pusher/java_websocket/drafts/Draft;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0, p0}, Lcom/pusher/java_websocket/e;->getLocalSocketAddress(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReadyState()Lcom/pusher/java_websocket/WebSocket$READYSTATE;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0, p0}, Lcom/pusher/java_websocket/e;->getRemoteSocketAddress(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 703
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSED:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isClosing()Z
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CLOSING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnecting()Z
    .locals 2

    .line 671
    sget-boolean v0, Lcom/pusher/java_websocket/d;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pusher/java_websocket/d;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 672
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .line 688
    iget-boolean v0, p0, Lcom/pusher/java_websocket/d;->b:Z

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .line 677
    sget-boolean v0, Lcom/pusher/java_websocket/d;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->OPEN:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/pusher/java_websocket/d;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 678
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->OPEN:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/g;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 549
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    iget-object v1, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    sget-object v2, Lcom/pusher/java_websocket/WebSocket$Role;->CLIENT:Lcom/pusher/java_websocket/WebSocket$Role;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/pusher/java_websocket/drafts/Draft;->createFrames(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d;->a(Ljava/util/Collection;)V

    return-void

    .line 548
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/pusher/java_websocket/b/g;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 562
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    iget-object v1, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    sget-object v2, Lcom/pusher/java_websocket/WebSocket$Role;->CLIENT:Lcom/pusher/java_websocket/WebSocket$Role;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/pusher/java_websocket/drafts/Draft;->createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d;->a(Ljava/util/Collection;)V

    return-void

    .line 561
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/pusher/java_websocket/b/g;
        }
    .end annotation

    .line 567
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pusher/java_websocket/d;->send(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public sendFragmentedFrame(Lcom/pusher/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/java_websocket/drafts/Draft;->continuousFrame(Lcom/pusher/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public sendFrame(Lcom/pusher/java_websocket/framing/Framedata;)V
    .locals 3

    .line 585
    sget-boolean v0, Lcom/pusher/java_websocket/d;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 586
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "send frame: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1}, Lcom/pusher/java_websocket/drafts/Draft;->createBinaryFrame(Lcom/pusher/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d;->c(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public startHandshake(Lcom/pusher/java_websocket/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/d;
        }
    .end annotation

    .line 614
    sget-boolean v0, Lcom/pusher/java_websocket/d;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pusher/java_websocket/d;->c:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lcom/pusher/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lcom/pusher/java_websocket/WebSocket$READYSTATE;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "shall only be called once"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 617
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1}, Lcom/pusher/java_websocket/drafts/Draft;->postProcessHandshakeRequestAsClient(Lcom/pusher/java_websocket/c/b;)Lcom/pusher/java_websocket/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/java_websocket/d;->j:Lcom/pusher/java_websocket/c/a;

    .line 619
    invoke-interface {p1}, Lcom/pusher/java_websocket/c/b;->getResourceDescriptor()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/java_websocket/d;->n:Ljava/lang/String;

    .line 620
    sget-boolean p1, Lcom/pusher/java_websocket/d;->a:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/pusher/java_websocket/d;->n:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 624
    :cond_3
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    iget-object v0, p0, Lcom/pusher/java_websocket/d;->j:Lcom/pusher/java_websocket/c/a;

    invoke-interface {p1, p0, v0}, Lcom/pusher/java_websocket/e;->onWebsocketHandshakeSentAsClient(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/a;)V
    :try_end_0
    .catch Lcom/pusher/java_websocket/b/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    iget-object p1, p0, Lcom/pusher/java_websocket/d;->f:Lcom/pusher/java_websocket/drafts/Draft;

    iget-object v0, p0, Lcom/pusher/java_websocket/d;->j:Lcom/pusher/java_websocket/c/a;

    iget-object v1, p0, Lcom/pusher/java_websocket/d;->g:Lcom/pusher/java_websocket/WebSocket$Role;

    invoke-virtual {p1, v0, v1}, Lcom/pusher/java_websocket/drafts/Draft;->createHandshake(Lcom/pusher/java_websocket/c/f;Lcom/pusher/java_websocket/WebSocket$Role;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d;->a(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception p1

    .line 629
    iget-object v0, p0, Lcom/pusher/java_websocket/d;->d:Lcom/pusher/java_websocket/e;

    invoke-interface {v0, p0, p1}, Lcom/pusher/java_websocket/e;->onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 630
    new-instance v0, Lcom/pusher/java_websocket/b/d;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "rejected because of"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/pusher/java_websocket/b/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :catch_1
    new-instance p1, Lcom/pusher/java_websocket/b/d;

    const-string v0, "Handshake data rejected by client."

    invoke-direct {p1, v0}, Lcom/pusher/java_websocket/b/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 708
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
