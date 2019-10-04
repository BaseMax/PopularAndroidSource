.class public Lcom/yandex/metrica/impl/ob/de;
.super Lcom/yandex/metrica/impl/ob/df;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/df<",
        "Lcom/yandex/metrica/impl/ob/cm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/do;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/df;-><init>(Lcom/yandex/metrica/impl/ob/do;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/s$a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/s$a;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cm;",
            ">;)V"
        }
    .end annotation

    .line 1036
    invoke-static {p1}, Lcom/yandex/metrica/impl/s;->b(Lcom/yandex/metrica/impl/s$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/de;->a()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->j()Lcom/yandex/metrica/impl/ob/da;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/s;->a(Lcom/yandex/metrica/impl/s$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/de;->a()Lcom/yandex/metrica/impl/ob/do;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/do;->e()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
