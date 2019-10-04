.class public Lcom/yandex/metrica/impl/ob/le$b;
.super Lcom/yandex/metrica/impl/ob/lc$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/lc$a<",
        "Lcom/yandex/metrica/impl/ob/le;",
        "Lcom/yandex/metrica/impl/ob/le$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yandex/metrica/impl/ob/ac;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 2

    .line 461
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/lc$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 462
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/le$b;->c:Lcom/yandex/metrica/impl/ob/ac;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/kz;
    .locals 0

    .line 456
    check-cast p1, Lcom/yandex/metrica/impl/ob/kz$c;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/le$b;->a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/le;

    move-result-object p1

    return-object p1
.end method

.method protected a()Lcom/yandex/metrica/impl/ob/le;
    .locals 2

    .line 468
    new-instance v0, Lcom/yandex/metrica/impl/ob/le;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/le;-><init>(B)V

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/le;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/kz$c<",
            "Lcom/yandex/metrica/impl/ob/le$a;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/le;"
        }
    .end annotation

    .line 473
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/lc$a;->b(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/lc;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/le;

    .line 476
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->a(Lcom/yandex/metrica/impl/ob/le;Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$b;->c:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ac;->E()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->a(Lcom/yandex/metrica/impl/ob/le;Z)V

    .line 478
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/le$b;->c:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ac;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->d(I)V

    .line 480
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->e:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->e(Z)V

    .line 484
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->f:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->a(Landroid/location/Location;)V

    .line 485
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->g:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->f(Z)V

    .line 489
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->h:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->g(Z)V

    .line 493
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->i:Ljava/lang/Integer;

    const/16 v4, 0xa

    .line 495
    invoke-static {v1, v4}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 494
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 493
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->a(I)V

    .line 501
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->j:Ljava/lang/Integer;

    const/4 v4, 0x7

    invoke-static {v1, v4}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Integer;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->c(I)V

    .line 505
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->k:Ljava/lang/Integer;

    const/16 v4, 0x5a

    invoke-static {v1, v4}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Integer;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->b(I)V

    .line 509
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->l:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->h(Z)V

    .line 513
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->n:Lcom/yandex/metrica/CounterConfiguration$a;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->a(Lcom/yandex/metrica/CounterConfiguration$a;)V

    .line 514
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/le$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/le$a;->m:Ljava/lang/Boolean;

    .line 515
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 514
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/le;->i(Z)V

    .line 519
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->a:Lcom/yandex/metrica/impl/ob/ma;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/le$b;->a(Lcom/yandex/metrica/impl/ob/le;Lcom/yandex/metrica/impl/ob/ma;)V

    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/ob/le;Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 0

    .line 525
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/le$b;->b(Lcom/yandex/metrica/impl/ob/le;Lcom/yandex/metrica/impl/ob/ma;)V

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/le$b;->c(Lcom/yandex/metrica/impl/ob/le;Lcom/yandex/metrica/impl/ob/ma;)V

    .line 527
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/ma;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/le;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic b()Lcom/yandex/metrica/impl/ob/kz;
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/le$b;->a()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/lc;
    .locals 0

    .line 456
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/le$b;->a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/le;

    move-result-object p1

    return-object p1
.end method

.method b(Lcom/yandex/metrica/impl/ob/le;Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 0

    .line 531
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/ma;->d:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/le;->a(Ljava/util/List;)V

    return-void
.end method

.method public synthetic c(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/kz;
    .locals 0

    .line 456
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/le$b;->a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/le;

    move-result-object p1

    return-object p1
.end method

.method c(Lcom/yandex/metrica/impl/ob/le;Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 1

    .line 535
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/lp;->a:Z

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/le;->a(Z)V

    .line 536
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/lp;->b:Z

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/le;->b(Z)V

    .line 537
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/lp;->c:Z

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/le;->c(Z)V

    .line 538
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    iget-boolean p2, p2, Lcom/yandex/metrica/impl/ob/lp;->d:Z

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/le;->d(Z)V

    return-void
.end method
