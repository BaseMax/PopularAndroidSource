.class public abstract Lcom/pusher/java_websocket/d/b;
.super Lcom/pusher/java_websocket/b;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/java_websocket/d/b$a;,
        Lcom/pusher/java_websocket/d/b$b;
    }
.end annotation


# static fields
.field public static DECODERS:I

.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/pusher/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/net/InetSocketAddress;

.field private d:Ljava/nio/channels/ServerSocketChannel;

.field private e:Ljava/nio/channels/Selector;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Thread;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/d/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private n:Lcom/pusher/java_websocket/d/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/pusher/java_websocket/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/pusher/java_websocket/d/b;->a:Z

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/pusher/java_websocket/d/b;->DECODERS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    sget v1, Lcom/pusher/java_websocket/d/b;->DECODERS:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/pusher/java_websocket/d/b;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2

    .line 107
    sget v0, Lcom/pusher/java_websocket/d/b;->DECODERS:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/pusher/java_websocket/d/b;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;I)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, v0}, Lcom/pusher/java_websocket/d/b;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pusher/java_websocket/d/b;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/pusher/java_websocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/pusher/java_websocket/b;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pusher/java_websocket/d/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    iput v1, p0, Lcom/pusher/java_websocket/d/b;->l:I

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/pusher/java_websocket/d/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v0, Lcom/pusher/java_websocket/d/a;

    invoke-direct {v0}, Lcom/pusher/java_websocket/d/a;-><init>()V

    iput-object v0, p0, Lcom/pusher/java_websocket/d/b;->n:Lcom/pusher/java_websocket/d/b$a;

    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    if-eqz p4, :cond_2

    if-nez p3, :cond_0

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/pusher/java_websocket/d/b;->f:Ljava/util/List;

    goto :goto_0

    .line 159
    :cond_0
    iput-object p3, p0, Lcom/pusher/java_websocket/d/b;->f:Ljava/util/List;

    .line 161
    :goto_0
    iput-object p1, p0, Lcom/pusher/java_websocket/d/b;->c:Ljava/net/InetSocketAddress;

    .line 162
    iput-object p4, p0, Lcom/pusher/java_websocket/d/b;->b:Ljava/util/Collection;

    .line 164
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/pusher/java_websocket/d/b;->j:Ljava/util/List;

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/pusher/java_websocket/d/b;->i:Ljava/util/List;

    .line 167
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/pusher/java_websocket/d/b;->k:Ljava/util/concurrent/BlockingQueue;

    :goto_1
    if-ge v1, p2, :cond_1

    .line 169
    new-instance p1, Lcom/pusher/java_websocket/d/b$b;

    invoke-direct {p1, p0}, Lcom/pusher/java_websocket/d/b$b;-><init>(Lcom/pusher/java_websocket/d/b;)V

    .line 170
    iget-object p3, p0, Lcom/pusher/java_websocket/d/b;->i:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p1}, Lcom/pusher/java_websocket/d/b$b;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 153
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address and connectionscontainer must not be null and you need at least 1 decoder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .line 121
    sget v0, Lcom/pusher/java_websocket/d/b;->DECODERS:I

    invoke-direct {p0, p1, v0, p2}, Lcom/pusher/java_websocket/d/b;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method private a()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private a(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 1

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/pusher/java_websocket/d/b;->onError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lcom/pusher/java_websocket/d/b;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 460
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/pusher/java_websocket/d/b;->onError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p2

    .line 458
    invoke-virtual {p0, p1, p2}, Lcom/pusher/java_websocket/d/b;->onError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/pusher/java_websocket/d/b;Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/pusher/java_websocket/d/b;->a(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/pusher/java_websocket/d/b;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d/b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private a(Lcom/pusher/java_websocket/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 418
    iget-object v0, p1, Lcom/pusher/java_websocket/d;->workerThread:Lcom/pusher/java_websocket/d/b$b;

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->i:Ljava/util/List;

    iget v1, p0, Lcom/pusher/java_websocket/d/b;->l:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/java_websocket/d/b$b;

    iput-object v0, p1, Lcom/pusher/java_websocket/d;->workerThread:Lcom/pusher/java_websocket/d/b$b;

    .line 420
    iget v0, p0, Lcom/pusher/java_websocket/d/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pusher/java_websocket/d/b;->l:I

    .line 422
    :cond_0
    iget-object v0, p1, Lcom/pusher/java_websocket/d;->workerThread:Lcom/pusher/java_websocket/d/b$b;

    invoke-virtual {v0, p1}, Lcom/pusher/java_websocket/d/b$b;->put(Lcom/pusher/java_websocket/d;)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/pusher/java_websocket/WebSocket;)Z
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->b:Ljava/util/Collection;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 532
    sget-boolean v1, Lcom/pusher/java_websocket/d/b;->a:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 533
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    .line 533
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b(Lcom/pusher/java_websocket/WebSocket;)Z
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->b:Ljava/util/Collection;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 549
    sget-boolean v1, Lcom/pusher/java_websocket/d/b;->a:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 550
    :cond_1
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 551
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/16 v0, 0x3e9

    .line 554
    invoke-interface {p1, v0}, Lcom/pusher/java_websocket/WebSocket;->close(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private static c(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/Socket;
    .locals 0

    .line 617
    check-cast p0, Lcom/pusher/java_websocket/d;

    .line 618
    iget-object p0, p0, Lcom/pusher/java_websocket/d;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p0

    check-cast p0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public connections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/pusher/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public createBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 414
    sget v0, Lcom/pusher/java_websocket/d;->RCVBUF:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getDraft()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pusher/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 623
    invoke-static {p1}, Lcom/pusher/java_websocket/d/b;->c(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method public getPort()I
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/pusher/java_websocket/d/b;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getRemoteSocketAddress(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 628
    invoke-static {p1}, Lcom/pusher/java_websocket/d/b;->c(Lcom/pusher/java_websocket/WebSocket;)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method public final getWebSocketFactory()Lcom/pusher/java_websocket/c;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->n:Lcom/pusher/java_websocket/d/b$a;

    return-object v0
.end method

.method public abstract onClose(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public abstract onError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V
.end method

.method public onFragment(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V
    .locals 0

    return-void
.end method

.method public abstract onMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/String;)V
.end method

.method public onMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public abstract onOpen(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/a;)V
.end method

.method public final onWebsocketClose(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 509
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d/b;->a(Lcom/pusher/java_websocket/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pusher/java_websocket/d/b;->onClose(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 517
    throw p1
.end method

.method public onWebsocketCloseInitiated(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 581
    invoke-virtual {p0, p1, p2, p3}, Lcom/pusher/java_websocket/d/b;->onCloseInitiated(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;)V

    return-void
.end method

.method public onWebsocketClosing(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 586
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pusher/java_websocket/d/b;->onClosing(Lcom/pusher/java_websocket/WebSocket;ILjava/lang/String;Z)V

    return-void
.end method

.method public final onWebsocketError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/pusher/java_websocket/d/b;->onError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/drafts/Draft;Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/c/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/java_websocket/b/b;
        }
    .end annotation

    .line 541
    invoke-super {p0, p1, p2, p3}, Lcom/pusher/java_websocket/b;->onWebsocketHandshakeReceivedAsServer(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/drafts/Draft;Lcom/pusher/java_websocket/c/a;)Lcom/pusher/java_websocket/c/i;

    move-result-object p1

    return-object p1
.end method

.method public final onWebsocketMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/pusher/java_websocket/d/b;->onMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method public final onWebsocketMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/pusher/java_websocket/d/b;->onMessage(Lcom/pusher/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 490
    invoke-virtual {p0, p1, p2}, Lcom/pusher/java_websocket/d/b;->onFragment(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public final onWebsocketOpen(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/f;)V
    .locals 1

    .line 500
    invoke-direct {p0, p1}, Lcom/pusher/java_websocket/d/b;->b(Lcom/pusher/java_websocket/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    check-cast p2, Lcom/pusher/java_websocket/c/a;

    invoke-virtual {p0, p1, p2}, Lcom/pusher/java_websocket/d/b;->onOpen(Lcom/pusher/java_websocket/WebSocket;Lcom/pusher/java_websocket/c/a;)V

    :cond_0
    return-void
.end method

.method public final onWriteDemand(Lcom/pusher/java_websocket/WebSocket;)V
    .locals 2

    .line 569
    check-cast p1, Lcom/pusher/java_websocket/d;

    .line 571
    :try_start_0
    iget-object v0, p1, Lcom/pusher/java_websocket/d;->key:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    iget-object p1, p1, Lcom/pusher/java_websocket/d;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 576
    :goto_0
    iget-object p1, p0, Lcom/pusher/java_websocket/d/b;->e:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method public run()V
    .locals 11

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    if-nez v0, :cond_18

    .line 267
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    .line 268
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    monitor-exit p0

    return-void

    .line 271
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 272
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebsocketSelector"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 274
    :try_start_1
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    .line 275
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 276
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    .line 277
    sget v3, Lcom/pusher/java_websocket/d;->RCVBUF:I

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 278
    iget-object v3, p0, Lcom/pusher/java_websocket/d/b;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 279
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    iput-object v1, p0, Lcom/pusher/java_websocket/d/b;->e:Ljava/nio/channels/Selector;

    .line 280
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    iget-object v3, p0, Lcom/pusher/java_websocket/d/b;->e:Ljava/nio/channels/Selector;

    iget-object v4, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->validOps()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11

    .line 286
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_12

    .line 290
    :try_start_3
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->select()I

    .line 291
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    .line 292
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v0

    move-object v4, v3

    .line 294
    :goto_1
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/SelectionKey;
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 297
    :try_start_5
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 302
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 308
    iget-object v3, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    .line 309
    invoke-virtual {v3, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 310
    iget-object v7, p0, Lcom/pusher/java_websocket/d/b;->n:Lcom/pusher/java_websocket/d/b$a;

    iget-object v8, p0, Lcom/pusher/java_websocket/d/b;->f:Ljava/util/List;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v9

    invoke-interface {v7, p0, v8, v9}, Lcom/pusher/java_websocket/d/b$a;->createWebSocket(Lcom/pusher/java_websocket/b;Ljava/util/List;Ljava/net/Socket;)Lcom/pusher/java_websocket/d;

    move-result-object v7

    .line 311
    iget-object v8, p0, Lcom/pusher/java_websocket/d/b;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v3, v8, v6, v7}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v8

    iput-object v8, v7, Lcom/pusher/java_websocket/d;->key:Ljava/nio/channels/SelectionKey;

    .line 312
    iget-object v8, p0, Lcom/pusher/java_websocket/d/b;->n:Lcom/pusher/java_websocket/d/b$a;

    iget-object v9, v7, Lcom/pusher/java_websocket/d;->key:Ljava/nio/channels/SelectionKey;

    invoke-interface {v8, v3, v9}, Lcom/pusher/java_websocket/d/b$a;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;

    move-result-object v3

    iput-object v3, v7, Lcom/pusher/java_websocket/d;->channel:Ljava/nio/channels/ByteChannel;

    .line 313
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1401
    iget-object v3, p0, Lcom/pusher/java_websocket/d/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v7, p0, Lcom/pusher/java_websocket/d/b;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    if-ge v3, v7, :cond_8

    .line 1404
    iget-object v3, p0, Lcom/pusher/java_websocket/d/b;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1405
    iget-object v3, p0, Lcom/pusher/java_websocket/d/b;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lcom/pusher/java_websocket/d/b;->createBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 318
    :cond_2
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 319
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pusher/java_websocket/d;
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 320
    :try_start_6
    invoke-direct {p0}, Lcom/pusher/java_websocket/d/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 322
    :try_start_7
    iget-object v7, v3, Lcom/pusher/java_websocket/d;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v4, v3, v7}, Lcom/pusher/java_websocket/a;->read(Ljava/nio/ByteBuffer;Lcom/pusher/java_websocket/d;Ljava/nio/channels/ByteChannel;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 323
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 324
    iget-object v7, v3, Lcom/pusher/java_websocket/d;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 325
    invoke-direct {p0, v3}, Lcom/pusher/java_websocket/d/b;->a(Lcom/pusher/java_websocket/d;)V

    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 327
    iget-object v7, v3, Lcom/pusher/java_websocket/d;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v7, v7, Lcom/pusher/java_websocket/f;

    if-eqz v7, :cond_5

    .line 328
    iget-object v7, v3, Lcom/pusher/java_websocket/d;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v7, Lcom/pusher/java_websocket/f;

    invoke-interface {v7}, Lcom/pusher/java_websocket/f;->isNeedRead()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 329
    iget-object v7, p0, Lcom/pusher/java_websocket/d/b;->j:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 333
    :cond_3
    invoke-direct {p0, v4}, Lcom/pusher/java_websocket/d/b;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 335
    :cond_4
    invoke-direct {p0, v4}, Lcom/pusher/java_websocket/d/b;->a(Ljava/nio/ByteBuffer;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :goto_2
    move-object v4, v3

    goto :goto_3

    :catch_1
    move-exception v1

    .line 338
    :try_start_8
    invoke-direct {p0, v4}, Lcom/pusher/java_websocket/d/b;->a(Ljava/nio/ByteBuffer;)V

    .line 339
    throw v1
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_2
    move-exception v1

    move-object v4, v3

    goto/16 :goto_8

    .line 342
    :cond_6
    :goto_3
    :try_start_9
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 343
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pusher/java_websocket/d;
    :try_end_9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 344
    :try_start_a
    iget-object v4, v3, Lcom/pusher/java_websocket/d;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v3, v4}, Lcom/pusher/java_websocket/a;->batch(Lcom/pusher/java_websocket/d;Ljava/nio/channels/ByteChannel;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 345
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 346
    invoke-virtual {v5, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_7
    move-object v4, v3

    :cond_8
    :goto_4
    move-object v3, v5

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto/16 :goto_8

    .line 350
    :cond_9
    :goto_5
    :try_start_b
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pusher/java_websocket/d;
    :try_end_b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 352
    :try_start_c
    iget-object v4, v1, Lcom/pusher/java_websocket/d;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v4, Lcom/pusher/java_websocket/f;

    .line 353
    invoke-direct {p0}, Lcom/pusher/java_websocket/d/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_c
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 355
    :try_start_d
    invoke-static {v5, v1, v4}, Lcom/pusher/java_websocket/a;->readMore(Ljava/nio/ByteBuffer;Lcom/pusher/java_websocket/d;Lcom/pusher/java_websocket/f;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 356
    iget-object v4, p0, Lcom/pusher/java_websocket/d/b;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_a
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 358
    iget-object v4, v1, Lcom/pusher/java_websocket/d;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 359
    invoke-direct {p0, v1}, Lcom/pusher/java_websocket/d/b;->a(Lcom/pusher/java_websocket/d;)V

    goto :goto_6

    .line 361
    :cond_b
    invoke-direct {p0, v5}, Lcom/pusher/java_websocket/d/b;->a(Ljava/nio/ByteBuffer;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_6
    move-object v4, v1

    goto :goto_5

    :catch_4
    move-exception v4

    .line 364
    :try_start_e
    invoke-direct {p0, v5}, Lcom/pusher/java_websocket/d/b;->a(Ljava/nio/ByteBuffer;)V

    .line 365
    throw v4
    :try_end_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catch_5
    move-exception v4

    move-object v5, v3

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto :goto_8

    :catch_6
    move-exception v1

    move-object v5, v3

    goto :goto_8

    :catch_7
    nop

    .line 386
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->i:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 387
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pusher/java_websocket/d/b$b;

    .line 388
    invoke-virtual {v2}, Lcom/pusher/java_websocket/d/b$b;->interrupt()V

    goto :goto_7

    .line 391
    :cond_c
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_d

    .line 393
    :try_start_f
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    return-void

    :catch_8
    move-exception v1

    .line 395
    invoke-virtual {p0, v0, v1}, Lcom/pusher/java_websocket/d/b;->onError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :cond_d
    return-void

    :catch_9
    move-exception v1

    move-object v4, v0

    move-object v5, v4

    :goto_8
    if-eqz v5, :cond_e

    .line 375
    :try_start_10
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_e
    if-eqz v4, :cond_f

    const/16 v3, 0x3ee

    .line 1438
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Lcom/pusher/java_websocket/WebSocket;->closeConnection(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    if-eqz v5, :cond_1

    .line 1440
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1441
    invoke-virtual {v3}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v4
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v4, :cond_1

    .line 1443
    :try_start_11
    invoke-virtual {v3}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1447
    :catch_a
    :try_start_12
    sget-boolean v3, Lcom/pusher/java_websocket/d;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1448
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Connection closed because of"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    :catch_b
    nop

    .line 386
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->i:Ljava/util/List;

    if-eqz v1, :cond_10

    .line 387
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pusher/java_websocket/d/b$b;

    .line 388
    invoke-virtual {v2}, Lcom/pusher/java_websocket/d/b$b;->interrupt()V

    goto :goto_9

    .line 391
    :cond_10
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_11

    .line 393
    :try_start_13
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    return-void

    :catch_c
    move-exception v1

    .line 395
    invoke-virtual {p0, v0, v1}, Lcom/pusher/java_websocket/d/b;->onError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :cond_11
    return-void

    .line 386
    :cond_12
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->i:Ljava/util/List;

    if-eqz v1, :cond_13

    .line 387
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pusher/java_websocket/d/b$b;

    .line 388
    invoke-virtual {v2}, Lcom/pusher/java_websocket/d/b$b;->interrupt()V

    goto :goto_a

    .line 391
    :cond_13
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_15

    .line 393
    :try_start_14
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    return-void

    :catch_d
    move-exception v1

    .line 395
    invoke-virtual {p0, v0, v1}, Lcom/pusher/java_websocket/d/b;->onError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_c

    :catch_e
    move-exception v1

    .line 384
    :try_start_15
    invoke-direct {p0, v0, v1}, Lcom/pusher/java_websocket/d/b;->a(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 386
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->i:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 387
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pusher/java_websocket/d/b$b;

    .line 388
    invoke-virtual {v2}, Lcom/pusher/java_websocket/d/b$b;->interrupt()V

    goto :goto_b

    .line 391
    :cond_14
    iget-object v1, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_15

    .line 393
    :try_start_16
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    return-void

    :catch_f
    move-exception v1

    .line 395
    invoke-virtual {p0, v0, v1}, Lcom/pusher/java_websocket/d/b;->onError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    :cond_15
    return-void

    .line 386
    :goto_c
    iget-object v2, p0, Lcom/pusher/java_websocket/d/b;->i:Ljava/util/List;

    if-eqz v2, :cond_16

    .line 387
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pusher/java_websocket/d/b$b;

    .line 388
    invoke-virtual {v3}, Lcom/pusher/java_websocket/d/b$b;->interrupt()V

    goto :goto_d

    .line 391
    :cond_16
    iget-object v2, p0, Lcom/pusher/java_websocket/d/b;->d:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_17

    .line 393
    :try_start_17
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    goto :goto_e

    :catch_10
    move-exception v2

    .line 395
    invoke-virtual {p0, v0, v2}, Lcom/pusher/java_websocket/d/b;->onError(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 396
    :cond_17
    :goto_e
    throw v1

    :catch_11
    move-exception v1

    .line 282
    invoke-direct {p0, v0, v1}, Lcom/pusher/java_websocket/d/b;->a(Lcom/pusher/java_websocket/WebSocket;Ljava/lang/Exception;)V

    return-void

    .line 266
    :cond_18
    :try_start_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 271
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method public final setWebSocketFactory(Lcom/pusher/java_websocket/d/b$a;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/pusher/java_websocket/d/b;->n:Lcom/pusher/java_websocket/d/b$a;

    return-void
.end method

.method public start()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Lcom/pusher/java_websocket/d/b;->stop(I)V

    return-void
.end method

.method public stop(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->b:Ljava/util/Collection;

    monitor-enter v0

    .line 211
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pusher/java_websocket/d/b;->b:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pusher/java_websocket/WebSocket;

    const/16 v2, 0x3e9

    .line 215
    invoke-interface {v1, v2}, Lcom/pusher/java_websocket/WebSocket;->close(I)V

    goto :goto_0

    .line 218
    :cond_1
    monitor-enter p0

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 221
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 222
    iget-object v0, p0, Lcom/pusher/java_websocket/d/b;->g:Ljava/lang/Thread;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 224
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 212
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
