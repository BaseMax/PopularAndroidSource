.class public final Lcom/yandex/metrica/impl/ob/jm;
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
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 6

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/jo;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/jo;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/jk;

    new-instance p2, Lcom/yandex/metrica/impl/ob/jp;

    new-instance p3, Lcom/yandex/metrica/impl/ob/ok;

    const/16 v0, 0x64

    invoke-direct {p3, v0}, Lcom/yandex/metrica/impl/ob/ok;-><init>(I)V

    invoke-direct {p2, p3}, Lcom/yandex/metrica/impl/ob/jp;-><init>(Lcom/yandex/metrica/impl/ob/ok;)V

    invoke-direct {v5, p2}, Lcom/yandex/metrica/impl/ob/jk;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/jl;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/yandex/metrica/impl/ob/ke$a$a;)V
    .locals 4

    .line 33
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ke$a$a;->e:Lcom/yandex/metrica/impl/ob/ke$a$c;

    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/ke$a$c;->d:D

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jm;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p1, Lcom/yandex/metrica/impl/ob/ke$a$c;->d:D

    return-void
.end method
