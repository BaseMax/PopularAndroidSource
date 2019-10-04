.class public Lcom/yandex/metrica/impl/ob/cy;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ca;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/ca<",
            "Lcom/yandex/metrica/impl/ob/cm;",
            "Lcom/yandex/metrica/impl/ob/ac<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/ca;

    new-instance v1, Lcom/yandex/metrica/impl/ob/by;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/by;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ca;-><init>(Lcom/yandex/metrica/impl/ob/bz;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Lcom/yandex/metrica/impl/ob/ca;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cy;->a:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->b(Lcom/yandex/metrica/impl/i;)Z

    move-result p1

    return p1
.end method
