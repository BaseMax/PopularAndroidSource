.class public Lcom/yandex/metrica/impl/ob/bu;
.super Lcom/yandex/metrica/impl/ob/bz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/bz<",
        "Lcom/yandex/metrica/impl/ob/cb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/dg;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/x;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bz;-><init>()V

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/dg;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/dg;-><init>(Lcom/yandex/metrica/impl/ob/x;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->a:Lcom/yandex/metrica/impl/ob/dg;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/yandex/metrica/impl/ob/bw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/impl/ob/bw<",
            "Lcom/yandex/metrica/impl/ob/cb;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/yandex/metrica/impl/s$a;->a(I)Lcom/yandex/metrica/impl/s$a;

    move-result-object p1

    .line 30
    sget-object v1, Lcom/yandex/metrica/impl/ob/bu$1;->a:[I

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/s$a;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bu;->a:Lcom/yandex/metrica/impl/ob/dg;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dg;->d()Lcom/yandex/metrica/impl/ob/cb;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bu;->a:Lcom/yandex/metrica/impl/ob/dg;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dg;->c()Lcom/yandex/metrica/impl/ob/cf;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bu;->a:Lcom/yandex/metrica/impl/ob/dg;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dg;->b()Lcom/yandex/metrica/impl/ob/cd;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bu;->a:Lcom/yandex/metrica/impl/ob/dg;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dg;->a()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/bv;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/util/List;)V

    return-object p1
.end method
