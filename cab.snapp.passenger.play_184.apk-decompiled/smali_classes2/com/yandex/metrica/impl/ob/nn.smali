.class public Lcom/yandex/metrica/impl/ob/nn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/nn$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private b:Lcom/yandex/metrica/impl/ob/gf;

.field private c:Lcom/yandex/metrica/impl/ob/nq;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/nn;-><init>()V

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/nn;
    .locals 1

    .line 29
    sget-object v0, Lcom/yandex/metrica/impl/ob/nn$a;->a:Lcom/yandex/metrica/impl/ob/nn;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(JLjava/lang/Long;)V
    .locals 6

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nn;->c:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/nq;->a()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/nn;->a:J

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nn;->b:Lcom/yandex/metrica/impl/ob/gf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gf;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 56
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/nn;->c:Lcom/yandex/metrica/impl/ob/nq;

    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/nq;->a()J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 57
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/nn;->b:Lcom/yandex/metrica/impl/ob/gf;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long p3, p1, v3

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/gf;->c(Z)Lcom/yandex/metrica/impl/ob/gf;

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/nn;->b:Lcom/yandex/metrica/impl/ob/gf;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gf;->c(Z)Lcom/yandex/metrica/impl/ob/gf;

    .line 62
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/nn;->b:Lcom/yandex/metrica/impl/ob/gf;

    iget-wide p2, p0, Lcom/yandex/metrica/impl/ob/nn;->a:J

    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/gf;->a(J)Lcom/yandex/metrica/impl/ob/gf;

    .line 63
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/nn;->b:Lcom/yandex/metrica/impl/ob/gf;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gf;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fq;->c()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object p1

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/gf;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/gf;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    .line 47
    new-instance p1, Lcom/yandex/metrica/impl/ob/np;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/np;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/nn;->a(Lcom/yandex/metrica/impl/ob/gf;Lcom/yandex/metrica/impl/ob/nq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/gf;Lcom/yandex/metrica/impl/ob/nq;)V
    .locals 2

    .line 83
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/nn;->b:Lcom/yandex/metrica/impl/ob/gf;

    .line 84
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/nn;->b:Lcom/yandex/metrica/impl/ob/gf;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/gf;->c(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/nn;->a:J

    .line 85
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/nn;->c:Lcom/yandex/metrica/impl/ob/nq;

    return-void
.end method

.method public declared-synchronized b()J
    .locals 2

    monitor-enter p0

    .line 39
    :try_start_0
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/nn;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nn;->b:Lcom/yandex/metrica/impl/ob/gf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gf;->c(Z)Lcom/yandex/metrica/impl/ob/gf;

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nn;->b:Lcom/yandex/metrica/impl/ob/gf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gf;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nn;->b:Lcom/yandex/metrica/impl/ob/gf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gf;->b(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
