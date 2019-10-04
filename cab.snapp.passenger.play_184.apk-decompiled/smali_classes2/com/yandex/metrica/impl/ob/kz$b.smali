.class public abstract Lcom/yandex/metrica/impl/ob/kz$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/kz$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/kz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/metrica/impl/ob/kz;",
        "A:",
        "Lcom/yandex/metrica/impl/ob/kz$a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/kz$d<",
        "TT;",
        "Lcom/yandex/metrica/impl/ob/kz$c<",
        "TA;>;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kz$b;->a:Landroid/content/Context;

    .line 319
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kz$b;->b:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized b(Lcom/yandex/metrica/impl/ob/kz;Lcom/yandex/metrica/impl/ob/kz$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/metrica/impl/ob/kz$c<",
            "TA;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1393
    :try_start_0
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/kz$c;->a:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    .line 373
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/kz;->e(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/kz$b;->a(Lcom/yandex/metrica/impl/ob/kz;Lcom/yandex/metrica/impl/ob/kz$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/kz;
    .locals 0

    .line 309
    check-cast p1, Lcom/yandex/metrica/impl/ob/kz$c;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/kz$b;->c(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/kz;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    .line 398
    invoke-static {p1}, Lcom/yandex/metrica/impl/h;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/h;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/metrica/impl/h;->g:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method a(Lcom/yandex/metrica/impl/ob/kz;Lcom/yandex/metrica/impl/ob/kz$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/metrica/impl/ob/kz$c<",
            "TA;>;)V"
        }
    .end annotation

    .line 378
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/kz$c;->a:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ma;->b:Ljava/lang/String;

    .line 379
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-static {}, Lcom/yandex/metrica/impl/ob/hg;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object p2

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kz$b;->a:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 383
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/kz;->f(Ljava/lang/String;)V

    .line 384
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/hb;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/kz;->g(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/kz;->f(Ljava/lang/String;)V

    .line 388
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/kz$c;->a:Lcom/yandex/metrica/impl/ob/ma;

    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/ma;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/kz;->g(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract b()Lcom/yandex/metrica/impl/ob/kz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public c(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/kz;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/kz$c<",
            "TA;>;)TT;"
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kz$b;->b()Lcom/yandex/metrica/impl/ob/kz;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kz$b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kz;->a(Landroid/content/Context;)V

    .line 330
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kz$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/h;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kz;->a(Lcom/yandex/metrica/impl/h;)V

    .line 331
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->a:Lcom/yandex/metrica/impl/ob/ma;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kz;->a(Lcom/yandex/metrica/impl/ob/ma;)V

    .line 333
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kz$b;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v2, Lcom/yandex/metrica/impl/ob/kz$a;

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/kz$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/yandex/metrica/impl/ob/kz$b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kz;->i(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/kz$b;->b(Lcom/yandex/metrica/impl/ob/kz;Lcom/yandex/metrica/impl/ob/kz$c;)V

    .line 337
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kz$b;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v2, Lcom/yandex/metrica/impl/ob/kz$a;

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/kz$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/kz$b;->a:Landroid/content/Context;

    .line 1351
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1352
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/bv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1355
    :cond_0
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/kz;->d(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kz$b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/metrica/impl/ob/kz$a;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/kz$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/kz$b;->a:Landroid/content/Context;

    .line 1363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1364
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1367
    :cond_1
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kz;->c(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/kz$b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kz;->b(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->a()Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kz$b;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;->c(Landroid/content/Context;)Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kz;->a(Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$b;)V

    .line 342
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/kz$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ac;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ac;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/kz;->h(Ljava/lang/String;)V

    return-object v0
.end method
