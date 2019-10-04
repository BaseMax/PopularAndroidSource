.class public final Lcom/adyen/threeds2/internal/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/adyen/threeds2/internal/a/a/a;

.field private final c:Lcom/adyen/threeds2/internal/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adyen/threeds2/internal/a/c<",
            "Lcom/adyen/threeds2/internal/a/a/b/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/b/a;Lcom/adyen/threeds2/internal/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adyen/threeds2/internal/h/b/a;",
            "Lcom/adyen/threeds2/internal/a/c<",
            "Lcom/adyen/threeds2/internal/a/a/b/j;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 37
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 48
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/a;

    invoke-direct {v0, p1, p2}, Lcom/adyen/threeds2/internal/a/a/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/h/b/a;)V

    iput-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b;->b:Lcom/adyen/threeds2/internal/a/a/a;

    .line 49
    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/a/b;->c:Lcom/adyen/threeds2/internal/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/adyen/threeds2/internal/a/a/b/i;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b;->b:Lcom/adyen/threeds2/internal/a/a/a;

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/a/a/a;->a(Lcom/adyen/threeds2/internal/a/a/b/i;)Ljava/util/concurrent/Callable;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/adyen/threeds2/internal/a/d;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b;->c:Lcom/adyen/threeds2/internal/a/c;

    invoke-direct {v0, v1, p1}, Lcom/adyen/threeds2/internal/a/d;-><init>(Lcom/adyen/threeds2/internal/a/c;Ljava/util/concurrent/Callable;)V

    .line 57
    iget-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
