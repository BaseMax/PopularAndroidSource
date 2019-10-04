.class public final Lcom/adyen/threeds2/internal/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/adyen/threeds2/internal/a/a/b/j;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/adyen/threeds2/internal/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adyen/threeds2/internal/a/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adyen/threeds2/internal/a/c;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adyen/threeds2/internal/a/c<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/adyen/threeds2/internal/a/d;->a:Lcom/adyen/threeds2/internal/a/c;

    .line 42
    iput-object p2, p0, Lcom/adyen/threeds2/internal/a/d;->b:Ljava/util/concurrent/Callable;

    return-void
.end method

.method static synthetic a(Lcom/adyen/threeds2/internal/a/d;)Lcom/adyen/threeds2/internal/a/c;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/adyen/threeds2/internal/a/d;->a:Lcom/adyen/threeds2/internal/a/c;

    return-object p0
.end method

.method private a(Lcom/adyen/threeds2/internal/a/a/b/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/adyen/threeds2/internal/a/d$1;

    invoke-direct {v0, p0, p1}, Lcom/adyen/threeds2/internal/a/d$1;-><init>(Lcom/adyen/threeds2/internal/a/d;Lcom/adyen/threeds2/internal/a/a/b/j;)V

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/a/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .line 66
    new-instance v0, Lcom/adyen/threeds2/internal/a/d$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/adyen/threeds2/internal/a/d$2;-><init>(Lcom/adyen/threeds2/internal/a/d;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/a/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .line 76
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/d;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/internal/a/a/b/j;

    .line 49
    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/a/d;->a(Lcom/adyen/threeds2/internal/a/a/b/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x11

    .line 51
    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/a/d;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
