.class public Lcom/yandex/metrica/impl/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/PreloadInfo;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/PreloadInfo;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/yandex/metrica/PreloadInfo;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    invoke-static {}, Lcom/yandex/metrica/impl/ob/nk;->f()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    const-string v0, "Required field \"PreloadInfo.trackingId\" is empty!\nThis preload info will be skipped."

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/nk;->c(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/aw;->a:Lcom/yandex/metrica/PreloadInfo;

    :cond_1
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->a:Lcom/yandex/metrica/PreloadInfo;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    :try_start_0
    const-string v1, "preloadInfo"

    .line 79
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aw;->b()Lorg/a/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public b()Lorg/a/c;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/aw;->a:Lcom/yandex/metrica/PreloadInfo;

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    :try_start_0
    const-string v1, "trackingId"

    .line 94
    iget-object v2, p0, Lcom/yandex/metrica/impl/aw;->a:Lcom/yandex/metrica/PreloadInfo;

    .line 95
    invoke-virtual {v2}, Lcom/yandex/metrica/PreloadInfo;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 97
    iget-object v1, p0, Lcom/yandex/metrica/impl/aw;->a:Lcom/yandex/metrica/PreloadInfo;

    invoke-virtual {v1}, Lcom/yandex/metrica/PreloadInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lorg/a/c;

    iget-object v2, p0, Lcom/yandex/metrica/impl/aw;->a:Lcom/yandex/metrica/PreloadInfo;

    invoke-virtual {v2}, Lcom/yandex/metrica/PreloadInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/a/c;-><init>(Ljava/util/Map;)V

    const-string v2, "additionalParams"

    .line 99
    invoke-virtual {v0, v2, v1}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
