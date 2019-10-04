.class public Lcom/koushikdutta/async/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/h$c;,
        Lcom/koushikdutta/async/h$a;,
        Lcom/koushikdutta/async/h$b;,
        Lcom/koushikdutta/async/h$d;,
        Lcom/koushikdutta/async/h$g;,
        Lcom/koushikdutta/async/h$f;,
        Lcom/koushikdutta/async/h$e;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "NIO"

.field static a:Lcom/koushikdutta/async/h;

.field static final e:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Thread;",
            "Lcom/koushikdutta/async/h;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic g:Z

.field private static i:Ljava/util/concurrent/ExecutorService;

.field private static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/util/concurrent/ExecutorService;


# instance fields
.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/h$f;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Thread;

.field private h:Lcom/koushikdutta/async/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-class v0, Lcom/koushikdutta/async/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/h;->g:Z

    .line 88
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    .line 89
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    .line 90
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :catchall_0
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/h;

    invoke-direct {v0}, Lcom/koushikdutta/async/h;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/h;->a:Lcom/koushikdutta/async/h;

    const-string v0, "AsyncServer-worker-"

    .line 132
    invoke-static {v0}, Lcom/koushikdutta/async/h;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/h;->i:Ljava/util/concurrent/ExecutorService;

    .line 429
    new-instance v0, Lcom/koushikdutta/async/h$14;

    invoke-direct {v0}, Lcom/koushikdutta/async/h$14;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/h;->j:Ljava/util/Comparator;

    const-string v0, "AsyncServer-resolver-"

    .line 442
    invoke-static {v0}, Lcom/koushikdutta/async/h;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/h;->k:Ljava/util/concurrent/ExecutorService;

    .line 557
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/h;->e:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/koushikdutta/async/h;->c:I

    .line 231
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/koushikdutta/async/h$g;->INSTANCE:Lcom/koushikdutta/async/h$g;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;

    if-nez p1, :cond_0

    const-string p1, "AsyncServer"

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/h;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/koushikdutta/async/h;Ljava/util/PriorityQueue;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/h;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/h$f;",
            ">;)J"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    const/4 v2, 0x0

    .line 722
    monitor-enter p0

    .line 723
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 725
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 726
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/h$f;

    .line 727
    iget-wide v6, v5, Lcom/koushikdutta/async/h$f;->time:J

    cmp-long v8, v6, v3

    if-gtz v8, :cond_0

    move-object v2, v5

    goto :goto_1

    .line 731
    :cond_0
    iget-wide v0, v5, Lcom/koushikdutta/async/h$f;->time:J

    sub-long/2addr v0, v3

    .line 732
    invoke-virtual {p1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 735
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 740
    iget-object v2, v2, Lcom/koushikdutta/async/h$f;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 743
    iput p1, p0, Lcom/koushikdutta/async/h;->c:I

    return-wide v0

    :catchall_0
    move-exception p1

    .line 735
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static synthetic a(Lcom/koushikdutta/async/h;)Lcom/koushikdutta/async/aa;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    return-object p0
.end method

.method static synthetic a(Lcom/koushikdutta/async/h;Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/h$b;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/h;->a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/h$b;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/h$b;
    .locals 2

    .line 363
    new-instance v0, Lcom/koushikdutta/async/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/h$b;-><init>(Lcom/koushikdutta/async/h;B)V

    .line 364
    sget-boolean v1, Lcom/koushikdutta/async/h;->g:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 366
    :cond_1
    :goto_0
    new-instance v1, Lcom/koushikdutta/async/h$12;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/koushikdutta/async/h$12;-><init>(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/h$b;Lcom/koushikdutta/async/a/b;Ljava/net/InetSocketAddress;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a()Ljava/util/Comparator;
    .locals 1

    .line 44
    sget-object v0, Lcom/koushikdutta/async/h;->j:Ljava/util/Comparator;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 423
    new-instance v7, Lcom/koushikdutta/async/h$c;

    invoke-direct {v7, p0}, Lcom/koushikdutta/async/h$c;-><init>(Ljava/lang/String;)V

    .line 424
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p0
.end method

.method static synthetic a(Lcom/koushikdutta/async/aa;)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/koushikdutta/async/h;->c(Lcom/koushikdutta/async/aa;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/aa;Ljava/util/PriorityQueue;)V
    .locals 1

    .line 4658
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/h;->b(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/aa;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catch Lcom/koushikdutta/async/h$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4664
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/aa;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4670
    :catch_1
    :goto_1
    monitor-enter p0

    .line 4671
    :try_start_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/aa;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/koushikdutta/async/aa;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4672
    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 4674
    :cond_1
    invoke-static {p1}, Lcom/koushikdutta/async/h;->c(Lcom/koushikdutta/async/aa;)V

    .line 4675
    iget-object p2, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    if-ne p2, p1, :cond_2

    .line 4676
    new-instance p1, Ljava/util/PriorityQueue;

    const/4 p2, 0x1

    sget-object v0, Lcom/koushikdutta/async/h$g;->INSTANCE:Lcom/koushikdutta/async/h$g;

    invoke-direct {p1, p2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;

    const/4 p1, 0x0

    .line 4677
    iput-object p1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    .line 4678
    iput-object p1, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    .line 4680
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4683
    sget-object p1, Lcom/koushikdutta/async/h;->e:Ljava/util/WeakHashMap;

    monitor-enter p1

    .line 4684
    :try_start_3
    sget-object p0, Lcom/koushikdutta/async/h;->e:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4685
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    .line 4681
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static synthetic a(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 4046
    iget-object v0, p1, Lcom/koushikdutta/async/c;->b:Lcom/koushikdutta/async/m;

    .line 3121
    iget-object v1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    invoke-virtual {v1}, Lcom/koushikdutta/async/aa;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/m;->register(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 3122
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3123
    invoke-virtual {p1, p0, v0}, Lcom/koushikdutta/async/c;->a(Lcom/koushikdutta/async/h;Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method private static b(Lcom/koushikdutta/async/aa;)V
    .locals 4

    .line 691
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/aa;->keys()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 692
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 694
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method private static b(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/aa;Ljava/util/PriorityQueue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/h;",
            "Lcom/koushikdutta/async/aa;",
            "Ljava/util/PriorityQueue<",
            "Lcom/koushikdutta/async/h$f;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/koushikdutta/async/h$a;
        }
    .end annotation

    .line 758
    invoke-static {p0, p2}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;Ljava/util/PriorityQueue;)J

    move-result-wide v0

    .line 760
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 763
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/aa;->selectNow()I

    move-result p2

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_1

    .line 767
    invoke-virtual {p1}, Lcom/koushikdutta/async/aa;->keys()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 769
    monitor-exit p0

    return-void

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 775
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    .line 780
    :try_start_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/aa;->select()V

    goto :goto_1

    .line 784
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/aa;->select(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 793
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/aa;->selectedKeys()Ljava/util/Set;

    move-result-object p2

    .line 794
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 796
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 797
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_4

    .line 801
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v2, :cond_5

    goto :goto_2

    .line 804
    :cond_5
    :try_start_5
    invoke-virtual {v2, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 805
    invoke-virtual {p1}, Lcom/koushikdutta/async/aa;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 806
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/a/e;

    .line 807
    new-instance v6, Lcom/koushikdutta/async/c;

    invoke-direct {v6}, Lcom/koushikdutta/async/c;-><init>()V

    .line 808
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;

    invoke-virtual {v6, v2, v7}, Lcom/koushikdutta/async/c;->a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 809
    invoke-virtual {v6, p0, v3}, Lcom/koushikdutta/async/c;->a(Lcom/koushikdutta/async/h;Ljava/nio/channels/SelectionKey;)V

    .line 810
    invoke-virtual {v3, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    invoke-interface {v1, v6}, Lcom/koushikdutta/async/a/e;->onAccepted(Lcom/koushikdutta/async/j;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_0
    move-object v2, v3

    :catch_1
    :try_start_6
    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v2, v1, v4

    .line 814
    invoke-static {v1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    if-eqz v3, :cond_4

    .line 816
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_2

    .line 819
    :cond_6
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 820
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/c;

    .line 821
    invoke-virtual {v1}, Lcom/koushikdutta/async/c;->a()I

    goto :goto_2

    .line 824
    :cond_7
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 825
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/c;

    .line 826
    invoke-virtual {v1}, Lcom/koushikdutta/async/c;->onDataWritable()V

    goto :goto_2

    .line 828
    :cond_8
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 829
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/h$b;

    .line 830
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SocketChannel;

    .line 831
    invoke-virtual {v1, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_4

    .line 834
    :try_start_7
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 835
    new-instance v7, Lcom/koushikdutta/async/c;

    invoke-direct {v7}, Lcom/koushikdutta/async/c;-><init>()V

    .line 836
    invoke-virtual {v7, p0, v1}, Lcom/koushikdutta/async/c;->a(Lcom/koushikdutta/async/h;Ljava/nio/channels/SelectionKey;)V

    .line 837
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v6, v8}, Lcom/koushikdutta/async/c;->a(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 838
    invoke-virtual {v1, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_4

    .line 848
    :try_start_8
    invoke-virtual {v2, v7}, Lcom/koushikdutta/async/h$b;->setComplete(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 849
    iget-object v1, v2, Lcom/koushikdutta/async/h$b;->b:Lcom/koushikdutta/async/a/b;

    invoke-interface {v1, v3, v7}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    :catch_2
    move-exception v1

    .line 852
    :try_start_9
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v7

    .line 841
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v6, v1, v4

    .line 842
    invoke-static {v1}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    .line 843
    invoke-virtual {v2, v7}, Lcom/koushikdutta/async/h$b;->setComplete(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 844
    iget-object v1, v2, Lcom/koushikdutta/async/h$b;->b:Lcom/koushikdutta/async/a/b;

    invoke-interface {v1, v7, v3}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    goto/16 :goto_2

    .line 857
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown key state."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    nop

    goto/16 :goto_2

    .line 863
    :cond_a
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    return-void

    :catchall_0
    move-exception p1

    .line 775
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    move-exception p0

    .line 789
    new-instance p1, Lcom/koushikdutta/async/h$a;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/h$a;-><init>(Ljava/lang/Exception;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private b()Z
    .locals 3

    .line 560
    sget-object v0, Lcom/koushikdutta/async/h;->e:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 561
    :try_start_0
    sget-object v1, Lcom/koushikdutta/async/h;->e:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 564
    monitor-exit v0

    return v1

    .line 566
    :cond_0
    sget-object v1, Lcom/koushikdutta/async/h;->e:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    invoke-virtual {v1, v2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static c(Lcom/koushikdutta/async/aa;)V
    .locals 0

    .line 705
    invoke-static {p0}, Lcom/koushikdutta/async/h;->b(Lcom/koushikdutta/async/aa;)V

    .line 708
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/aa;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getCurrentThreadServer()Lcom/koushikdutta/async/h;
    .locals 2

    .line 572
    sget-object v0, Lcom/koushikdutta/async/h;->e:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/h;

    return-object v0
.end method

.method public static getDefault()Lcom/koushikdutta/async/h;
    .locals 1

    .line 99
    sget-object v0, Lcom/koushikdutta/async/h;->a:Lcom/koushikdutta/async/h;

    return-object v0
.end method

.method public static post(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 73
    new-instance v0, Lcom/koushikdutta/async/h$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/h$e;-><init>(B)V

    .line 74
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/ae;->a(Ljava/lang/Thread;)Lcom/koushikdutta/async/ae;

    move-result-object v1

    .line 75
    iput-object v1, v0, Lcom/koushikdutta/async/h$e;->c:Lcom/koushikdutta/async/ae;

    .line 76
    iput-object p0, v0, Lcom/koushikdutta/async/h$e;->d:Landroid/os/Handler;

    .line 77
    iput-object p1, v0, Lcom/koushikdutta/async/h$e;->b:Ljava/lang/Runnable;

    .line 79
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ae;->add(Ljava/lang/Runnable;)Z

    .line 80
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    iget-object p0, v1, Lcom/koushikdutta/async/ae;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public connectDatagram(Ljava/lang/String;I)Lcom/koushikdutta/async/b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v5

    .line 484
    new-instance v6, Lcom/koushikdutta/async/b;

    invoke-direct {v6}, Lcom/koushikdutta/async/b;-><init>()V

    .line 485
    invoke-virtual {v6, v5}, Lcom/koushikdutta/async/b;->a(Ljava/nio/channels/DatagramChannel;)V

    .line 489
    new-instance v7, Lcom/koushikdutta/async/h$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/h$3;-><init>(Lcom/koushikdutta/async/h;Ljava/lang/String;ILcom/koushikdutta/async/b;Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public connectDatagram(Ljava/net/SocketAddress;)Lcom/koushikdutta/async/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 537
    new-instance v1, Lcom/koushikdutta/async/b;

    invoke-direct {v1}, Lcom/koushikdutta/async/b;-><init>()V

    .line 538
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/b;->a(Ljava/nio/channels/DatagramChannel;)V

    .line 542
    new-instance v2, Lcom/koushikdutta/async/h$5;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/koushikdutta/async/h$5;-><init>(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/b;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public connectSocket(Ljava/lang/String;ILcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;
    .locals 0

    .line 419
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/koushikdutta/async/h;->connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;

    move-result-object p1

    return-object p1
.end method

.method public connectSocket(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/b/a;
    .locals 3

    .line 395
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/h;->a(Ljava/net/InetSocketAddress;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/h$b;

    move-result-object p1

    return-object p1

    .line 398
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/b/i;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 400
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/h;->getByName(Ljava/lang/String;)Lcom/koushikdutta/async/b/e;

    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/b/i;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/i;

    .line 402
    new-instance v2, Lcom/koushikdutta/async/h$13;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/koushikdutta/async/h$13;-><init>(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/a/b;Lcom/koushikdutta/async/b/i;Ljava/net/InetSocketAddress;)V

    .line 403
    invoke-interface {v1, v2}, Lcom/koushikdutta/async/b/e;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;

    return-object v0
.end method

.method public dump()V
    .locals 1

    .line 867
    new-instance v0, Lcom/koushikdutta/async/h$7;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/h$7;-><init>(Lcom/koushikdutta/async/h;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method

.method public getAffinity()Ljava/lang/Thread;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method public getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 444
    new-instance v0, Lcom/koushikdutta/async/b/i;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 445
    sget-object v1, Lcom/koushikdutta/async/h;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/koushikdutta/async/h$15;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/h$15;-><init>(Lcom/koushikdutta/async/h;Ljava/lang/String;Lcom/koushikdutta/async/b/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/h;->getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/h$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/h$2;-><init>(Lcom/koushikdutta/async/h;)V

    .line 474
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/b/e;->then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/b/e;

    return-object p1
.end method

.method public isAffinityThread()Z
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAffinityThreadOrStopped()Z
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 893
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/a/e;)Lcom/koushikdutta/async/i;
    .locals 8

    .line 299
    new-instance v6, Lcom/koushikdutta/async/h$d;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/koushikdutta/async/h$d;-><init>(B)V

    .line 300
    new-instance v7, Lcom/koushikdutta/async/h$11;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/h$11;-><init>(Lcom/koushikdutta/async/h;Ljava/net/InetAddress;ILcom/koushikdutta/async/a/e;Lcom/koushikdutta/async/h$d;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    .line 343
    iget-object p1, v6, Lcom/koushikdutta/async/h$d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/koushikdutta/async/i;

    return-object p1
.end method

.method public openDatagram()Lcom/koushikdutta/async/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 507
    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/h;->openDatagram(Ljava/net/SocketAddress;Z)Lcom/koushikdutta/async/b;

    move-result-object v0

    return-object v0
.end method

.method public openDatagram(Ljava/net/SocketAddress;Z)Lcom/koushikdutta/async/b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v3

    .line 512
    new-instance v6, Lcom/koushikdutta/async/b;

    invoke-direct {v6}, Lcom/koushikdutta/async/b;-><init>()V

    .line 513
    invoke-virtual {v6, v3}, Lcom/koushikdutta/async/b;->a(Ljava/nio/channels/DatagramChannel;)V

    .line 517
    new-instance v7, Lcom/koushikdutta/async/h$4;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/h$4;-><init>(Lcom/koushikdutta/async/h;ZLjava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;Lcom/koushikdutta/async/b;)V

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/h;->run(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public post(Lcom/koushikdutta/async/a/a;Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 1

    .line 192
    new-instance v0, Lcom/koushikdutta/async/h$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/h$8;-><init>(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/a/a;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/h;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;
    .locals 4

    .line 150
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 161
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 163
    iget p2, p0, Lcom/koushikdutta/async/h;->c:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/koushikdutta/async/h;->c:I

    int-to-long v0, p2

    goto :goto_0

    .line 164
    :cond_1
    iget-object p2, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 165
    iget-object p2, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/koushikdutta/async/h$f;

    iget-wide p2, p2, Lcom/koushikdutta/async/h$f;->time:J

    const-wide/16 v2, 0x1

    sub-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 168
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;

    new-instance p3, Lcom/koushikdutta/async/h$f;

    invoke-direct {p3, p1, v0, v1}, Lcom/koushikdutta/async/h$f;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object p1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    if-nez p1, :cond_7

    .line 1580
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    :try_start_1
    iget-object p1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    if-eqz p1, :cond_5

    .line 1583
    sget-boolean p1, Lcom/koushikdutta/async/h;->g:Z

    if-nez p1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1586
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    .line 1587
    iget-object p2, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;

    .line 1626
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1630
    :try_start_2
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/h;->b(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/aa;Ljava/util/PriorityQueue;)V
    :try_end_2
    .catch Lcom/koushikdutta/async/h$a; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1636
    :catch_0
    :try_start_3
    invoke-virtual {p1}, Lcom/koushikdutta/async/aa;->getSelector()Ljava/nio/channels/Selector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1591
    :cond_5
    :try_start_4
    new-instance p1, Lcom/koushikdutta/async/aa;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/aa;-><init>(Ljava/nio/channels/Selector;)V

    iput-object p1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    .line 1592
    iget-object p2, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1598
    :try_start_5
    new-instance v0, Lcom/koushikdutta/async/h$6;

    iget-object v1, p0, Lcom/koushikdutta/async/h;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/koushikdutta/async/h$6;-><init>(Lcom/koushikdutta/async/h;Ljava/lang/String;Lcom/koushikdutta/async/aa;Ljava/util/PriorityQueue;)V

    iput-object v0, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    .line 1607
    invoke-direct {p0}, Lcom/koushikdutta/async/h;->b()Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p1, :cond_6

    .line 1609
    :try_start_6
    iget-object p1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    invoke-virtual {p1}, Lcom/koushikdutta/async/aa;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_1
    const/4 p1, 0x0

    .line 1613
    :try_start_7
    iput-object p1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    .line 1614
    iput-object p1, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    .line 1615
    monitor-exit p0

    goto :goto_2

    .line 1618
    :cond_6
    iget-object p1, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1620
    monitor-exit p0

    goto :goto_2

    .line 1595
    :catch_2
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 1626
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    .line 172
    :catch_3
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/h;->isAffinityThread()Z

    move-result p1

    if-nez p1, :cond_8

    .line 173
    iget-object p1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    .line 2134
    sget-object p2, Lcom/koushikdutta/async/h;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/koushikdutta/async/h$1;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/h$1;-><init>(Lcom/koushikdutta/async/aa;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 175
    :cond_8
    monitor-exit p0

    return-object p3

    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public postImmediate(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/h;->getAffinity()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 181
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    .line 184
    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/h;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAllCallbacks(Ljava/lang/Object;)V
    .locals 1

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 2

    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 203
    iget-object p1, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;

    invoke-static {p0, p1}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/h;Ljava/util/PriorityQueue;)J

    return-void

    .line 207
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 208
    new-instance v1, Lcom/koushikdutta/async/h$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/koushikdutta/async/h$9;-><init>(Lcom/koushikdutta/async/h;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 216
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public stop()V
    .locals 8

    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/h;->isAffinityThread()Z

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    if-nez v1, :cond_0

    .line 258
    monitor-exit p0

    return-void

    .line 259
    :cond_0
    sget-object v2, Lcom/koushikdutta/async/h;->e:Ljava/util/WeakHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    :try_start_1
    sget-object v3, Lcom/koushikdutta/async/h;->e:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :try_start_2
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 265
    iget-object v3, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;

    new-instance v4, Lcom/koushikdutta/async/h$f;

    new-instance v5, Lcom/koushikdutta/async/h$10;

    invoke-direct {v5, p0, v1, v2}, Lcom/koushikdutta/async/h$10;-><init>(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/aa;Ljava/util/concurrent/Semaphore;)V

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/koushikdutta/async/h$f;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v1}, Lcom/koushikdutta/async/aa;->wakeupOnce()V

    .line 275
    invoke-static {v1}, Lcom/koushikdutta/async/h;->b(Lcom/koushikdutta/async/aa;)V

    .line 277
    new-instance v1, Ljava/util/PriorityQueue;

    const/4 v3, 0x1

    sget-object v4, Lcom/koushikdutta/async/h$g;->INSTANCE:Lcom/koushikdutta/async/h$g;

    invoke-direct {v1, v3, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/koushikdutta/async/h;->d:Ljava/util/PriorityQueue;

    const/4 v1, 0x0

    .line 278
    iput-object v1, p0, Lcom/koushikdutta/async/h;->h:Lcom/koushikdutta/async/aa;

    .line 279
    iput-object v1, p0, Lcom/koushikdutta/async/h;->f:Ljava/lang/Thread;

    .line 280
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    .line 283
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    nop

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 261
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    .line 280
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
