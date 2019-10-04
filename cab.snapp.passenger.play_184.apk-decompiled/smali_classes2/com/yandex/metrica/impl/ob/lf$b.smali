.class public Lcom/yandex/metrica/impl/ob/lf$b;
.super Lcom/yandex/metrica/impl/ob/lc$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/lc$a<",
        "Lcom/yandex/metrica/impl/ob/lf;",
        "Lcom/yandex/metrica/impl/ob/lf$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/lc$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/kz;
    .locals 0

    .line 224
    check-cast p1, Lcom/yandex/metrica/impl/ob/kz$c;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/lf$b;->a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/lf;

    move-result-object p1

    return-object p1
.end method

.method protected a()Lcom/yandex/metrica/impl/ob/lf;
    .locals 2

    .line 232
    new-instance v0, Lcom/yandex/metrica/impl/ob/lf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/lf;-><init>(B)V

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/lf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/kz$c<",
            "Lcom/yandex/metrica/impl/ob/lf$a;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/lf;"
        }
    .end annotation

    .line 237
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/lc$a;->b(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/lc;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/lf;

    .line 238
    invoke-static {}, Lcom/yandex/metrica/impl/bm;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/lf;->a(Lcom/yandex/metrica/impl/ob/lf;Z)V

    .line 240
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->a:Lcom/yandex/metrica/impl/ob/ma;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/lf$b;->a(Lcom/yandex/metrica/impl/ob/lf;Lcom/yandex/metrica/impl/ob/ma;)V

    .line 241
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/lf$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/lf$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/lf;->a(Lcom/yandex/metrica/impl/ob/lf;Ljava/lang/String;)V

    .line 242
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/lf$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/lf$a;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lf;->a(Ljava/util/Map;)V

    .line 243
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/lf$a;

    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/lf$a;->f:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lf;->b(Z)V

    .line 244
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/lf$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/lf$a;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lf;->c(Ljava/util/List;)V

    .line 245
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->a:Lcom/yandex/metrica/impl/ob/ma;

    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/ma;->s:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/lf;->a(Z)V

    .line 246
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->a:Lcom/yandex/metrica/impl/ob/ma;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ma;->v:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lf;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/ob/lf;Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 1

    .line 252
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/ma;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/lf;->b(Ljava/util/List;)V

    .line 253
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/ma;->i:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/lf;->a(Ljava/util/List;)V

    return-void
.end method

.method protected synthetic b()Lcom/yandex/metrica/impl/ob/kz;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/lf$b;->a()Lcom/yandex/metrica/impl/ob/lf;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/lc;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/lf$b;->a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/lf;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/kz;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/lf$b;->a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/lf;

    move-result-object p1

    return-object p1
.end method
