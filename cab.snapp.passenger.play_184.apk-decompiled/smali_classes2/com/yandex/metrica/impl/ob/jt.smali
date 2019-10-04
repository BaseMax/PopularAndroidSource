.class public Lcom/yandex/metrica/impl/ob/jt;
.super Lcom/yandex/metrica/impl/ob/jq;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/jh;",
            ")V"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/ob/js;

    invoke-direct {v0, p4}, Lcom/yandex/metrica/impl/ob/js;-><init>(Lcom/yandex/metrica/impl/ob/jh;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/jq;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/ji;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/jy;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jt;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/jt;->e()Lcom/yandex/metrica/impl/ob/ji;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcom/yandex/metrica/impl/ob/ji;->a(Lcom/yandex/metrica/impl/ob/jy;Lcom/yandex/metrica/impl/ob/ke$a$a;Lcom/yandex/metrica/impl/ob/jg;)Lcom/yandex/metrica/impl/ob/ke$a$a;

    :cond_0
    return-void
.end method
