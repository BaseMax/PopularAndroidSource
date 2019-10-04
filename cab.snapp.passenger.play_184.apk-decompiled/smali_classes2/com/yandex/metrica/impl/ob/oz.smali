.class public Lcom/yandex/metrica/impl/ob/oz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/pa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/pa<",
        "Ljava/util/List<",
        "Lcom/yandex/metrica/impl/ob/oy;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;
    .locals 0

    .line 17
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/oz;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/oy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/oy;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/oy;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/oy;

    .line 24
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/oy;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 25
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/oy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 29
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/oy;->a(Lcom/yandex/metrica/impl/ob/pa;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ", "

    .line 30
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/oy;->a(Lcom/yandex/metrica/impl/ob/pa;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    return-object p1
.end method
