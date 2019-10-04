.class public Lcom/yandex/metrica/impl/ob/dq;
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


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/cm;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/do;Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/dh;-><init>(Lcom/yandex/metrica/impl/ob/do;)V

    .line 23
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dq;->a:Lcom/yandex/metrica/impl/ob/cm;

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

    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dq;->a:Lcom/yandex/metrica/impl/ob/cm;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
