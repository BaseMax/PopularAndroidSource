.class public Lcom/yandex/metrica/impl/ob/ev;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ev$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Lcom/yandex/metrica/impl/ob/fh;

.field private final c:Lcom/yandex/metrica/impl/ob/ez;

.field private final d:Lcom/yandex/metrica/impl/ob/nq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/yandex/metrica/impl/ob/ez;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/fh;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/fh;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/yandex/metrica/impl/ob/ev;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/yandex/metrica/impl/ob/fh;Lcom/yandex/metrica/impl/ob/ez;Lcom/yandex/metrica/impl/ob/nq;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/yandex/metrica/impl/ob/fh;Lcom/yandex/metrica/impl/ob/ez;Lcom/yandex/metrica/impl/ob/nq;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ev;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 100
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ev;->b:Lcom/yandex/metrica/impl/ob/fh;

    .line 101
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ev;->c:Lcom/yandex/metrica/impl/ob/ez;

    .line 102
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ev;->d:Lcom/yandex/metrica/impl/ob/nq;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ev;->c:Lcom/yandex/metrica/impl/ob/ez;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/ez;->a()V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ev;->c:Lcom/yandex/metrica/impl/ob/ez;

    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ez;->a(J)V

    .line 1090
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ev;->b:Lcom/yandex/metrica/impl/ob/fh;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ev;->d:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/nq;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/fh;->a(J)Lcom/yandex/metrica/impl/ob/fh;

    return-void
.end method

.method public a(JLcom/yandex/metrica/impl/ob/ev$a;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ev;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ev$1;

    invoke-direct {v1, p3}, Lcom/yandex/metrica/impl/ob/ev$1;-><init>(Lcom/yandex/metrica/impl/ob/ev$a;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public b()Z
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ev;->d:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/nq;->a()J

    move-result-wide v0

    .line 2086
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ev;->b:Lcom/yandex/metrica/impl/ob/fh;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/fh;->b(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 82
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ev;->d:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/nq;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
