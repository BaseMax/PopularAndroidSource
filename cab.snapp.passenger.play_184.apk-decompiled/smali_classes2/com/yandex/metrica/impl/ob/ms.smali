.class public Lcom/yandex/metrica/impl/ob/ms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/mx<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/mq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/mq;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ms;->a:Lcom/yandex/metrica/impl/ob/mq;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ms;->a:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 1042
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/au;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ms;->a:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->c()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ms;->a:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 2042
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/au;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ms;->a:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/mq;->c()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :catch_0
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ms;->a:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    .line 41
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ms;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ms;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ms;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
