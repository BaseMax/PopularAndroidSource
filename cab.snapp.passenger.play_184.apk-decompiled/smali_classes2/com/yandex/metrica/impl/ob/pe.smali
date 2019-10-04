.class public Lcom/yandex/metrica/impl/ob/pe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/pa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/pa<",
        "Lcom/yandex/metrica/Revenue;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/oy;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/ob/oz;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/oz;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/pe;->a:Lcom/yandex/metrica/impl/ob/pa;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/Revenue;)Lcom/yandex/metrica/impl/ob/oy;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pe;->a:Lcom/yandex/metrica/impl/ob/pa;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/oy;

    new-instance v2, Lcom/yandex/metrica/impl/ob/pd;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/pd;-><init>()V

    iget-object p1, p1, Lcom/yandex/metrica/Revenue;->quantity:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/pd;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;
    .locals 0

    .line 22
    check-cast p1, Lcom/yandex/metrica/Revenue;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/pe;->a(Lcom/yandex/metrica/Revenue;)Lcom/yandex/metrica/impl/ob/oy;

    move-result-object p1

    return-object p1
.end method
