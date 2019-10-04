.class public Lcom/yandex/metrica/impl/ob/dl;
.super Lcom/yandex/metrica/impl/ob/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/dh<",
        "Lcom/yandex/metrica/impl/ob/cm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/do;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dh;-><init>(Lcom/yandex/metrica/impl/ob/do;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/cm;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dl;->a()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->a()Lcom/yandex/metrica/impl/ob/cq;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dl;->a()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->s()Lcom/yandex/metrica/impl/ob/cp;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dl;->a()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/do;->d()Lcom/yandex/metrica/impl/ob/cw;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
