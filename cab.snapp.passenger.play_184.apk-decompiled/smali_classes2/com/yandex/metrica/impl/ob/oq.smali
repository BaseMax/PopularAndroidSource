.class public Lcom/yandex/metrica/impl/ob/oq;
.super Lcom/yandex/metrica/impl/ob/oi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/oi<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/oi;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/oi;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/oq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/oq;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/oq;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/oq;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/oq;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p1

    const-string p1, "\"%s\" %s size exceeded limit of %d characters"

    .line 28
    invoke-virtual {v2, p1, v3}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0

    :cond_1
    return-object p1
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/oi;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
