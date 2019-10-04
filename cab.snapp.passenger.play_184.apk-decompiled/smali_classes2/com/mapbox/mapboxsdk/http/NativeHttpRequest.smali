.class public Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/http/HttpResponder;


# instance fields
.field private final httpRequest:Lcom/mapbox/mapboxsdk/http/HttpRequest;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativePtr:J


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getModuleProvider()Lcom/mapbox/mapboxsdk/ModuleProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/ModuleProvider;->createHttpRequest()Lcom/mapbox/mapboxsdk/http/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->httpRequest:Lcom/mapbox/mapboxsdk/http/HttpRequest;

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->nativePtr:J

    const-string v0, "local://"

    .line 24
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-direct {p0, p3}, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->executeLocalRequest(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->httpRequest:Lcom/mapbox/mapboxsdk/http/HttpRequest;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/mapbox/mapboxsdk/http/HttpRequest;->executeRequest(Lcom/mapbox/mapboxsdk/http/HttpResponder;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->nativePtr:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p8}, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->nativeOnResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method private executeLocalRequest(Ljava/lang/String;)V
    .locals 3

    .line 62
    new-instance v0, Lcom/mapbox/mapboxsdk/http/LocalRequestTask;

    new-instance v1, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest$1;

    invoke-direct {v1, p0}, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest$1;-><init>(Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;)V

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/http/LocalRequestTask;-><init>(Lcom/mapbox/mapboxsdk/http/LocalRequestTask$OnLocalRequestResponse;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 73
    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/http/LocalRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private native nativeOnFailure(ILjava/lang/String;)V
.end method

.method private native nativeOnResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->httpRequest:Lcom/mapbox/mapboxsdk/http/HttpRequest;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/http/HttpRequest;->cancelRequest()V

    .line 40
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->nativePtr:J

    .line 42
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public handleFailure(ILjava/lang/String;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 78
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->nativeOnFailure(ILjava/lang/String;)V

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 48
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 49
    invoke-direct/range {p0 .. p8}, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->nativeOnResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/http/NativeHttpRequest;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
