.class public Lcom/yandex/metrica/impl/ob/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/af;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/z;

.field private final c:Lcom/yandex/metrica/impl/ob/lz;

.field private volatile d:Lcom/yandex/metrica/impl/ob/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/gk<",
            "Lcom/yandex/metrica/impl/ob/ma;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Lcom/yandex/metrica/impl/br;

.field private f:Lcom/yandex/metrica/impl/ob/lt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/lz;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mb;->a:Landroid/content/Context;

    .line 65
    new-instance p1, Lcom/yandex/metrica/impl/ob/w;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/w;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mb;->b:Lcom/yandex/metrica/impl/ob/z;

    .line 66
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/mb;->c:Lcom/yandex/metrica/impl/ob/lz;

    .line 67
    const-class p1, Lcom/yandex/metrica/impl/ob/ma;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ha$a;->a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/ha;

    move-result-object p1

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/mb;->a:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/yandex/metrica/impl/ob/ha;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/gk;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mb;->d:Lcom/yandex/metrica/impl/ob/gk;

    .line 68
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mb;->d:Lcom/yandex/metrica/impl/ob/gk;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/gk;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ma;

    .line 69
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/mb;->a(Lcom/yandex/metrica/impl/ob/ma;)V

    .line 70
    new-instance p2, Lcom/yandex/metrica/impl/ob/lt;

    new-instance p4, Lcom/yandex/metrica/impl/ob/lf$b;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mb;->b:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Lcom/yandex/metrica/impl/ob/lf$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p2, p4, p1, p3}, Lcom/yandex/metrica/impl/ob/lt;-><init>(Lcom/yandex/metrica/impl/ob/lf$b;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    return-void
.end method

.method private declared-synchronized a(Lcom/yandex/metrica/impl/ob/lf;)V
    .locals 5

    monitor-enter p0

    .line 317
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lf;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lf;->H()Ljava/util/List;

    move-result-object v1

    .line 321
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lf;->D()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mb;->f()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ma;->a()Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/ma$a;->d(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v4

    const/4 v0, 0x1

    .line 327
    :cond_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lf;->D()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yandex/metrica/impl/bv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mb;->f()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ma;->a()Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->d(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v4

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/ma$a;->a()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/mb;->c(Lcom/yandex/metrica/impl/ob/ma;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 180
    :try_start_0
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->e:Lcom/yandex/metrica/impl/br;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized a()Lcom/yandex/metrica/impl/br;
    .locals 2

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mb;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->e:Lcom/yandex/metrica/impl/br;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/yandex/metrica/impl/br;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mb;->e()Lcom/yandex/metrica/impl/ob/lf;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/br;-><init>(Lcom/yandex/metrica/impl/ob/mb;Lcom/yandex/metrica/impl/ob/lf;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->e:Lcom/yandex/metrica/impl/br;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->e:Lcom/yandex/metrica/impl/br;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 107
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/lf;)Lcom/yandex/metrica/impl/ob/ma;
    .locals 8

    .line 201
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/lf;->E()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/no;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    .line 203
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/lt;->c()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/ma;->k:Ljava/lang/String;

    .line 3061
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/no;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 3062
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/no;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4061
    :cond_0
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/no;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 4062
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/no;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 205
    :goto_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/ma$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->a()Lcom/yandex/metrica/impl/ob/lp;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/ma$a;-><init>(Lcom/yandex/metrica/impl/ob/lp;)V

    .line 5028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 206
    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/ma$a;->a(J)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 207
    invoke-static {}, Lcom/yandex/metrica/impl/ob/hg;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/mb;->a:Landroid/content/Context;

    new-instance v5, Lcom/yandex/metrica/impl/ob/hb;

    .line 210
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->h()Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->i()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/yandex/metrica/impl/ob/hb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 215
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/lt;->c()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 216
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/ma$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 217
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/ma$a;->c(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 218
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/lf;->D()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/ma$a;->d(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 219
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 220
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->g()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/ma$a;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 221
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/ma$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 222
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->t()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/ma$a;->e(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 223
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v2

    .line 224
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/ma$a;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    .line 226
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/lf;->E()Ljava/util/Map;

    move-result-object p2

    .line 5283
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/no;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 5284
    invoke-interface {v1, p2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 225
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/ma$a;->b(Z)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object p2

    .line 227
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->n()Lcom/yandex/metrica/impl/ob/lr;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/lr;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object p2

    .line 228
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->o()Lcom/yandex/metrica/impl/ob/hq;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object p2

    .line 229
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->p()Lcom/yandex/metrica/impl/ob/hl;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object p2

    .line 230
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->r()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/ma$a;->f(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object p2

    .line 231
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/ma$a;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object p2

    .line 232
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->u()Lcom/yandex/metrica/impl/ob/mc;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/mc;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 233
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Z)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ma$a;->a()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/lf;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/bq$b;",
            "Lcom/yandex/metrica/impl/ob/lf;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bq$b;->q()Ljava/lang/Long;

    move-result-object v0

    .line 1251
    invoke-static {p3}, Lcom/yandex/metrica/impl/bq;->a(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1253
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nn;->a()Lcom/yandex/metrica/impl/ob/nn;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/yandex/metrica/impl/ob/nn;->a(JLjava/lang/Long;)V

    .line 188
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/mb;->a(Lcom/yandex/metrica/impl/bq$b;Lcom/yandex/metrica/impl/ob/lf;)Lcom/yandex/metrica/impl/ob/ma;

    move-result-object p1

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mb;->g()V

    .line 192
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/mb;->c(Lcom/yandex/metrica/impl/ob/ma;)V

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/mb;->c:Lcom/yandex/metrica/impl/ob/lz;

    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/mb;->b:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/yandex/metrica/impl/ob/lz;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ma;)V

    .line 2239
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/mb;->a(Lcom/yandex/metrica/impl/ob/ma;)V

    return-void

    :catchall_0
    move-exception p1

    .line 193
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/lu;)V
    .locals 2

    .line 305
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mb;->g()V

    .line 306
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->c:Lcom/yandex/metrica/impl/ob/lz;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mb;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/lz;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/lu;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 3

    .line 243
    invoke-static {}, Lcom/yandex/metrica/impl/ob/h;->a()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/r;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mb;->b:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/yandex/metrica/impl/ob/r;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ma;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/h;->b(Lcom/yandex/metrica/impl/ob/j;)V

    .line 244
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/yandex/metrica/impl/ob/h;->a()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/s;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mb;->b:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/h;->b(Lcom/yandex/metrica/impl/ob/j;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lt;->a(Lcom/yandex/metrica/impl/ob/t;)V

    .line 313
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lt;->e()Lcom/yandex/metrica/impl/ob/kz;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/lf;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mb;->a(Lcom/yandex/metrica/impl/ob/lf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mb;->f()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ma;->a()Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ma$a;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ma$a;->a()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object p1

    .line 344
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/mb;->c(Lcom/yandex/metrica/impl/ob/ma;)V

    return-void
.end method

.method declared-synchronized a(J)Z
    .locals 6

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/lt;->e()Lcom/yandex/metrica/impl/ob/kz;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/lf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/lf;->e()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 146
    monitor-exit p0

    return v1

    .line 1028
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v2, p1

    const-wide/32 p1, 0x15180

    cmp-long v0, v2, p1

    if-gtz v0, :cond_2

    const-wide/16 p1, 0x0

    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 166
    monitor-exit p0

    return p1

    .line 163
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/yandex/metrica/impl/ob/z;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->b:Lcom/yandex/metrica/impl/ob/z;

    return-object v0
.end method

.method b(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->d:Lcom/yandex/metrica/impl/ob/gk;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/gk;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->a:Landroid/content/Context;

    return-object v0
.end method

.method declared-synchronized c(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 3

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lt;->a(Lcom/yandex/metrica/impl/ob/ma;)V

    .line 260
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/mb;->b(Lcom/yandex/metrica/impl/ob/ma;)V

    .line 5289
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yandex.metrica.intent.action.SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CAUSE"

    const-string v2, "CAUSE_DEVICE_ID"

    .line 5291
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SYNC_TO_PKG"

    .line 5292
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mb;->b:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SYNC_DATA"

    .line 5293
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ma;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SYNC_DATA_2"

    .line 5294
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5295
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mb;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()Z
    .locals 4

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/lt;->c()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v0

    iget-wide v0, v0, Lcom/yandex/metrica/impl/ob/ma;->r:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/mb;->a(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/lt;->e()Lcom/yandex/metrica/impl/ob/kz;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/lf;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/lf;->E()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/no;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/lt;->c()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/ma;->l:Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_4

    .line 125
    invoke-static {}, Lcom/yandex/metrica/impl/ob/hg;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hg;->d()Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v0

    .line 126
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/lt;->e()Lcom/yandex/metrica/impl/ob/kz;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/lf;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/lf;->q()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 128
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    .line 129
    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    xor-int/2addr v0, v1

    .line 134
    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/lf;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/lt;->e()Lcom/yandex/metrica/impl/ob/kz;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/lf;

    return-object v0
.end method

.method public f()Lcom/yandex/metrica/impl/ob/ma;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mb;->f:Lcom/yandex/metrica/impl/ob/lt;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/lt;->c()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v0

    return-object v0
.end method
