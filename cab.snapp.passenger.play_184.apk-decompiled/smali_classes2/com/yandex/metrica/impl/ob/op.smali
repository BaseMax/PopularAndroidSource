.class public Lcom/yandex/metrica/impl/ob/op;
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


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/nk;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/op;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/nk;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/nk;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/oi;-><init>(ILjava/lang/String;)V

    .line 32
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/op;->a:Lcom/yandex/metrica/impl/ob/nk;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/oi;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/op;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "UTF-8"

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 42
    array-length v2, v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/op;->a()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 43
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/op;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/op;->a:Lcom/yandex/metrica/impl/ob/nk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/op;->a:Lcom/yandex/metrica/impl/ob/nk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    const-string v1, "\"%s\" %s exceeded limit of %d bytes"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/op;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    .line 49
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/op;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p1

    .line 45
    invoke-virtual {v0, v1, v3}, Lcom/yandex/metrica/impl/ob/nk;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    move-object p1, v2

    :catch_1
    :cond_1
    return-object p1
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/oi;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
