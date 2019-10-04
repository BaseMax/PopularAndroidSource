.class public Lcom/yandex/metrica/impl/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ah$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bj$c;,
        Lcom/yandex/metrica/impl/bj$d;,
        Lcom/yandex/metrica/impl/bj$a;,
        Lcom/yandex/metrica/impl/bj$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/x;

.field private final b:Lcom/yandex/metrica/impl/ah;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/x;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/ni;

    const-string v1, "YMM-RS"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ni;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bj;->d:Ljava/util/concurrent/ExecutorService;

    .line 40
    iput-object p1, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/x;

    .line 42
    invoke-interface {p1}, Lcom/yandex/metrica/impl/x;->a()Lcom/yandex/metrica/impl/ah;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/bj;->b:Lcom/yandex/metrica/impl/ah;

    .line 43
    iget-object p1, p0, Lcom/yandex/metrica/impl/bj;->b:Lcom/yandex/metrica/impl/ah;

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ah;->a(Lcom/yandex/metrica/impl/ah$a;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/bj;)Lcom/yandex/metrica/impl/ah;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yandex/metrica/impl/bj;->b:Lcom/yandex/metrica/impl/ah;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/bj;)Lcom/yandex/metrica/impl/x;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yandex/metrica/impl/bj;->a:Lcom/yandex/metrica/impl/x;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/bj;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/bj;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yandex/metrica/impl/bj;->d:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/bj$d;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/bj$d;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bj$d;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/yandex/metrica/impl/bj$a;

    invoke-direct {v1, p0, p1, v2}, Lcom/yandex/metrica/impl/bj$a;-><init>(Lcom/yandex/metrica/impl/bj;Lcom/yandex/metrica/impl/bj$d;B)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yandex/metrica/impl/bj$b;

    invoke-direct {v1, p0, p1, v2}, Lcom/yandex/metrica/impl/bj$b;-><init>(Lcom/yandex/metrica/impl/bj;Lcom/yandex/metrica/impl/bj$d;B)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/bj;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
