.class public Lcom/yandex/metrica/impl/ob/jr;
.super Lcom/yandex/metrica/impl/ob/jl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/jl<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;DLcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/ji;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/jl;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/ke$a$a;)V
    .locals 2

    .line 33
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ke$a$a;->e:Lcom/yandex/metrica/impl/ob/ke$a$c;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jr;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/yandex/metrica/impl/ob/ke$a$c;->c:D

    return-void
.end method
