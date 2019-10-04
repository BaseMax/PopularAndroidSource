.class Lcom/yandex/metrica/impl/ob/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/hb;

.field private final b:Lcom/yandex/metrica/impl/ob/hh;

.field private c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hc;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hc;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/hb;Lcom/yandex/metrica/impl/ob/hh;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hd;->a:Lcom/yandex/metrica/impl/ob/hb;

    .line 28
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hd;->b:Lcom/yandex/metrica/impl/ob/hh;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hd;->d:Ljava/util/List;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hd;->e:Ljava/util/List;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hd;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/hc;)V
    .locals 2

    .line 36
    iget v0, p0, Lcom/yandex/metrica/impl/ob/hd;->c:I

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/hc;->c()Lcom/yandex/metrica/impl/bo$a;

    move-result-object v1

    iget v1, v1, Lcom/yandex/metrica/impl/bo$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/hd;->c:I

    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/yandex/metrica/impl/ob/hd$1;->a:[I

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hd;->b:Lcom/yandex/metrica/impl/ob/hh;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/hc;->a(Lcom/yandex/metrica/impl/ob/hh;)Lcom/yandex/metrica/impl/ob/hc$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/hc$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/hb;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->a:Lcom/yandex/metrica/impl/ob/hb;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hc;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hd;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/hc;

    .line 73
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/hc;->c()Lcom/yandex/metrica/impl/bo$a;

    move-result-object v2

    iget-wide v2, v2, Lcom/yandex/metrica/impl/bo$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v3

    if-gez v3, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/hd;

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->a:Lcom/yandex/metrica/impl/ob/hb;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/hd;->a:Lcom/yandex/metrica/impl/ob/hb;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/hb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hd;->a:Lcom/yandex/metrica/impl/ob/hb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hb;->hashCode()I

    move-result v0

    return v0
.end method
