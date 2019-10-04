.class public Lcom/yandex/metrica/impl/ob/dy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a([B)Lcom/yandex/metrica/impl/ob/dx;
    .locals 4

    .line 1168
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/kf$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kf$a;-><init>()V

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/e;[B)Lcom/yandex/metrica/impl/ob/e;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/kf$a;
    :try_end_0
    .catch Lcom/yandex/metrica/impl/ob/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/kf$a;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/kf$a;-><init>()V

    .line 36
    :goto_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/dx;

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/kf$a;->b:Z

    iget v2, p1, Lcom/yandex/metrica/impl/ob/kf$a;->c:I

    iget v3, p1, Lcom/yandex/metrica/impl/ob/kf$a;->d:I

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/yandex/metrica/impl/ob/dx;-><init>(ZII[I)V

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/dx;)[B
    .locals 4

    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/kf$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/kf$a;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dx;->b()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/kf$a;->b:Z

    .line 15
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dx;->d()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/kf$a;->d:I

    .line 16
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dx;->e()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/kf$a;->c:I

    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dx;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    .line 20
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dx;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v1, v1, 0x1

    .line 22
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v1

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/e;)[B

    move-result-object p1

    return-object p1
.end method
