.class public Lcom/yandex/metrica/impl/bh;
.super Lcom/yandex/metrica/impl/bu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/yandex/metrica/impl/ob/ac;",
        ">",
        "Lcom/yandex/metrica/impl/bu<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/mg;Lcom/yandex/metrica/impl/an;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/yandex/metrica/impl/ob/mg;",
            "Lcom/yandex/metrica/impl/an;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/bu;-><init>(Lcom/yandex/metrica/impl/ob/ai;Lcom/yandex/metrica/impl/ob/mg;Lcom/yandex/metrica/impl/an;)V

    .line 27
    new-instance p1, Lcom/yandex/metrica/impl/bh$1;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/bh$1;-><init>(Lcom/yandex/metrica/impl/bh;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/bh;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/bc$a;Ljava/lang/Long;)V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->f()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->l()Lcom/yandex/metrica/impl/ob/fo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/fo;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p2

    .line 73
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/yandex/metrica/impl/m;->a:Landroid/content/ContentValues;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->f()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/bc$a;->a(Lcom/yandex/metrica/impl/ob/ac;)Lcom/yandex/metrica/impl/bc;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->b:Lcom/yandex/metrica/impl/an;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/bc;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/m;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/an;->a(Lcom/yandex/metrica/impl/aq;)V

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->f()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->m()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/bh;->c:Z

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->a()V

    .line 1091
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->f()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->P()I

    move-result v1

    if-lez v1, :cond_0

    .line 1092
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1093
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->f()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/le;->P()I

    move-result v2

    int-to-long v2, v2

    .line 1092
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 1095
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->f()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/ac;->m()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/bh;->d:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method c()V
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/yandex/metrica/impl/bu;->c()V

    .line 55
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->f()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->T()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/yandex/metrica/impl/bb;->F()Lcom/yandex/metrica/impl/bc$a;

    move-result-object v0

    const-wide/16 v1, -0x2

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 60
    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/bh;->a(Lcom/yandex/metrica/impl/bc$a;Ljava/lang/Long;)V

    .line 66
    invoke-static {}, Lcom/yandex/metrica/impl/bc;->J()Lcom/yandex/metrica/impl/bc$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/bh;->a(Lcom/yandex/metrica/impl/bc$a;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
