.class Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$c;->a:Z

    .line 375
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$c;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 373
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 389
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$c;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 392
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$c;->a:Z

    .line 393
    iget-object v0, p0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 380
    :try_start_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
