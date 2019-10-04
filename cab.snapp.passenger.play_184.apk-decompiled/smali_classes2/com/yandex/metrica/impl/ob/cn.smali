.class public Lcom/yandex/metrica/impl/ob/cn;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 5

    .line 43
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cn;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->A()Lcom/yandex/metrica/impl/ob/gb;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/gb;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->F()Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cn;->b()Ljava/util/HashSet;

    move-result-object v2

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cn;->c()Ljava/util/ArrayList;

    move-result-object v3

    .line 57
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/nb;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->p()V

    goto :goto_1

    .line 60
    :cond_0
    new-instance v2, Lorg/a/a;

    invoke-direct {v2}, Lorg/a/a;-><init>()V

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ob/hk;

    .line 62
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/hk;->a()Lorg/a/c;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/a/a;->put(Ljava/lang/Object;)Lorg/a/a;

    goto :goto_0

    .line 64
    :cond_1
    new-instance v3, Lorg/a/c;

    invoke-direct {v3}, Lorg/a/c;-><init>()V

    const-string v4, "features"

    invoke-virtual {v3, v4, v2}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1475
    new-instance v4, Lcom/yandex/metrica/impl/i;

    invoke-direct {v4, p1}, Lcom/yandex/metrica/impl/i;-><init>(Lcom/yandex/metrica/impl/i;)V

    .line 1476
    sget-object p1, Lcom/yandex/metrica/impl/s$a;->H:Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/yandex/metrica/impl/i;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ac;->g(Lcom/yandex/metrica/impl/i;)V

    .line 67
    invoke-virtual {v2}, Lorg/a/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/gd;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gd;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method b()Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/yandex/metrica/impl/ob/hk;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cn;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->F()Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gd;->b()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 85
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 86
    new-instance v3, Lorg/a/a;

    invoke-direct {v3, v0}, Lorg/a/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-virtual {v3}, Lorg/a/a;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 88
    new-instance v4, Lcom/yandex/metrica/impl/ob/hk;

    invoke-virtual {v3, v0}, Lorg/a/a;->getJSONObject(I)Lorg/a/c;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/yandex/metrica/impl/ob/hk;-><init>(Lorg/a/c;)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    return-object v2
.end method

.method c()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/yandex/metrica/impl/ob/hk;",
            ">;"
        }
    .end annotation

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cn;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4000

    .line 103
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x18

    .line 2045
    invoke-static {v2}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2046
    new-instance v2, Lcom/yandex/metrica/impl/ob/hj$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/hj$a;-><init>()V

    goto :goto_0

    .line 2048
    :cond_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/hj$b;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/hj$b;-><init>()V

    .line 110
    :goto_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-eqz v3, :cond_1

    .line 111
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 112
    invoke-virtual {v2, v5}, Lcom/yandex/metrica/impl/ob/hj;->b(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/hk;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
