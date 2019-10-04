.class public Lcom/yandex/metrica/impl/q;
.super Lcom/yandex/metrica/impl/bu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/yandex/metrica/impl/ob/bm;",
        ">",
        "Lcom/yandex/metrica/impl/bu<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final d:Lcom/yandex/metrica/impl/ob/bs;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/impl/ob/mg;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/bs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/yandex/metrica/impl/ob/mg;",
            "Lcom/yandex/metrica/impl/an;",
            "Lcom/yandex/metrica/impl/ob/bs;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/bu;-><init>(Lcom/yandex/metrica/impl/ob/ai;Lcom/yandex/metrica/impl/ob/mg;Lcom/yandex/metrica/impl/an;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/q;->e:Z

    .line 25
    iput-object p4, p0, Lcom/yandex/metrica/impl/q;->d:Lcom/yandex/metrica/impl/ob/bs;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)V
    .locals 3

    .line 29
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/q;->e:Z

    if-nez v0, :cond_0

    .line 30
    invoke-super {p0}, Lcom/yandex/metrica/impl/bu;->e()V

    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/bo;

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/q;->f()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/br;

    iget-object v2, p0, Lcom/yandex/metrica/impl/q;->d:Lcom/yandex/metrica/impl/ob/bs;

    invoke-direct {v0, v1, p1, v2}, Lcom/yandex/metrica/impl/ob/bo;-><init>(Lcom/yandex/metrica/impl/ob/br;Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bs;)V

    .line 42
    iget-object p1, p0, Lcom/yandex/metrica/impl/q;->b:Lcom/yandex/metrica/impl/an;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/an;->a(Lcom/yandex/metrica/impl/aq;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/q;->e:Z

    return-void
.end method
