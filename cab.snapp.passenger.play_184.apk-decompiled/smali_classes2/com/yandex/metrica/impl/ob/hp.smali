.class Lcom/yandex/metrica/impl/ob/hp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hp;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/ic;
    .locals 0

    .line 41
    invoke-virtual {p0, p3}, Lcom/yandex/metrica/impl/ob/hp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 42
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/ij;->a(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/ic;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/hv;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ij;->a(Lcom/yandex/metrica/impl/ob/hv;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/hp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ic;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ij;->a(Lcom/yandex/metrica/impl/ob/ic;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/hp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/nm;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method b(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/hv;
    .locals 0

    .line 53
    invoke-virtual {p0, p3}, Lcom/yandex/metrica/impl/ob/hp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/ij;->b(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/hv;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hp;->a:Landroid/content/Context;

    const-string v1, "UTF-8"

    .line 1034
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/nm;->a(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
