.class public Lcom/yandex/metrica/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/a;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/a;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/a;->c:Ljava/util/concurrent/CountDownLatch;

    .line 29
    iput-object p2, p0, Lcom/yandex/metrica/impl/a;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/a;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/yandex/metrica/impl/a;->c:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/a$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/a$1;-><init>(Lcom/yandex/metrica/impl/a;)V

    sget-wide v2, Lcom/yandex/metrica/impl/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
