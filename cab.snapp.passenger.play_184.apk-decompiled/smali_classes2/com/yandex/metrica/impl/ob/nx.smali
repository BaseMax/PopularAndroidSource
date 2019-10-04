.class public Lcom/yandex/metrica/impl/ob/nx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/oc;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/nw;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/nv;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/nv;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nx;-><init>(Lcom/yandex/metrica/impl/ob/nv;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/nv;)V
    .locals 3

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/nw;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/nv;->a()[B

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/nv;->b()[B

    move-result-object p1

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/nw;-><init>(Ljava/lang/String;[B[B)V

    .line 32
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/nx;-><init>(Lcom/yandex/metrica/impl/ob/nw;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/nw;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/nx;->a:Lcom/yandex/metrica/impl/ob/nw;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ob;
    .locals 3

    .line 43
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "UTF-8"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/nx;->a:Lcom/yandex/metrica/impl/ob/nw;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/nw;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 56
    :catch_0
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/ob;

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/nx;->a()Lcom/yandex/metrica/impl/ob/oe;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/ob;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/oe;)V

    return-object v0
.end method

.method public a()Lcom/yandex/metrica/impl/ob/oe;
    .locals 1

    .line 75
    sget-object v0, Lcom/yandex/metrica/impl/ob/oe;->c:Lcom/yandex/metrica/impl/ob/oe;

    return-object v0
.end method

.method public a([B)[B
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [B

    if-eqz p1, :cond_0

    .line 62
    array-length v2, p1

    if-lez v2, :cond_0

    .line 64
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/nx;->a:Lcom/yandex/metrica/impl/ob/nw;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/nw;->b([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method
