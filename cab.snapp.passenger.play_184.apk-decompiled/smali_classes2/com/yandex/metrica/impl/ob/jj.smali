.class public Lcom/yandex/metrica/impl/ob/jj;
.super Lcom/yandex/metrica/impl/ob/jl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/jl<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/ji;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/jl;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/ke$a$a;)V
    .locals 1

    .line 33
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ke$a$a;->e:Lcom/yandex/metrica/impl/ob/ke$a$c;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/yandex/metrica/impl/ob/ke$a$c;->e:Z

    return-void
.end method
