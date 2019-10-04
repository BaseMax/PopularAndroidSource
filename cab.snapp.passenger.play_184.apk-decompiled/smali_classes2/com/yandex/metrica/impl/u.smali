.class Lcom/yandex/metrica/impl/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x1e8480

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/u;->a:J

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/u;->b:Z

    return-void
.end method


# virtual methods
.method a()Z
    .locals 6

    .line 25
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/u;->b:Z

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/u;->b:Z

    .line 1037
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/metrica/impl/u;->a:J

    sub-long/2addr v2, v4

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method b()V
    .locals 2

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/u;->b:Z

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/u;->a:J

    return-void
.end method

.method c()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/u;->b:Z

    return v0
.end method
