.class public Lcom/yandex/metrica/impl/ob/bq$b;
.super Lcom/yandex/metrica/impl/ob/lc$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/lc$a<",
        "Lcom/yandex/metrica/impl/ob/bq;",
        "Lcom/yandex/metrica/impl/ob/bq$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/lc$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/yandex/metrica/impl/ob/bq;
    .locals 1

    .line 92
    new-instance v0, Lcom/yandex/metrica/impl/ob/bq;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/bq;-><init>()V

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/bq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/kz$c<",
            "Lcom/yandex/metrica/impl/ob/bq$a;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/bq;"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/lc$a;->b(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/lc;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bq;

    .line 99
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->a:Lcom/yandex/metrica/impl/ob/ma;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/ma;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/util/List;)V

    .line 100
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/kz$c;->b:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/metrica/impl/ob/bq$a;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/bq$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bq;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/kz;
    .locals 0

    .line 83
    check-cast p1, Lcom/yandex/metrica/impl/ob/kz$c;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/bq$b;->a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/bq;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b()Lcom/yandex/metrica/impl/ob/kz;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bq$b;->a()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/lc;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/bq$b;->a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/bq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/kz;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/bq$b;->a(Lcom/yandex/metrica/impl/ob/kz$c;)Lcom/yandex/metrica/impl/ob/bq;

    move-result-object p1

    return-object p1
.end method
