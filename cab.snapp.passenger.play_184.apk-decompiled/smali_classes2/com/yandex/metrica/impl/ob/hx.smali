.class Lcom/yandex/metrica/impl/ob/hx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/hx$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "YMM-UH-1"

    .line 40
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/hx$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/hx$a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/hx;-><init>(Landroid/os/HandlerThread;Lcom/yandex/metrica/impl/ob/hx$a;)V

    return-void
.end method

.method constructor <init>(Landroid/os/HandlerThread;Lcom/yandex/metrica/impl/ob/hx$a;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hx;->a:Landroid/os/HandlerThread;

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hx;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hx;->c:Landroid/os/Looper;

    .line 71
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hx;->c:Landroid/os/Looper;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/hx$a;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hx;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hx;->c:Landroid/os/Looper;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hx;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hx;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hx;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
