.class public Lcom/yandex/metrica/impl/ob/oj;
.super Lcom/yandex/metrica/impl/ob/oi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/oi<",
        "[B>;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/nk;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/oj;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/nk;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/nk;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/oi;-><init>(ILjava/lang/String;)V

    .line 28
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/oj;->a:Lcom/yandex/metrica/impl/ob/nk;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .line 17
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/oi;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/oj;->a([B)[B

    move-result-object p1

    return-object p1
.end method

.method public a([B)[B
    .locals 5

    .line 35
    array-length v0, p1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/oj;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/oj;->a()I

    move-result v0

    new-array v0, v0, [B

    .line 37
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/oj;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/oj;->a:Lcom/yandex/metrica/impl/ob/nk;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/oj;->a:Lcom/yandex/metrica/impl/ob/nk;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/oj;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    aput-object p1, v3, v2

    const/4 p1, 0x2

    .line 43
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/oj;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, p1

    const-string p1, "\"%s\" %s exceeded limit of %d bytes"

    .line 39
    invoke-virtual {v1, p1, v3}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/oi;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
