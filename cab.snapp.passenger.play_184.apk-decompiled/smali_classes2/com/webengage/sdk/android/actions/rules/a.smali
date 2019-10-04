.class Lcom/webengage/sdk/android/actions/rules/a;
.super Lcom/webengage/sdk/android/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/webengage/sdk/android/af;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a;->c:Lcom/webengage/sdk/android/af;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/webengage/sdk/android/actions/rules/c;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/webengage/sdk/android/actions/rules/c;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/rules/c;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/utils/a/b;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/utils/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/utils/a/b;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/utils/a/b;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/utils/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/utils/a/b;->a(Ljava/util/Set;)I

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/rules/c;->e()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/database/y;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/y;->a()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/database/y;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/y;->b()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    :cond_4
    if-eq v6, v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v3, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v7

    sget-object v8, Lcom/webengage/sdk/android/actions/database/f;->k:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v7, v2, v6, v1, v8}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/webengage/sdk/android/actions/database/f;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/webengage/sdk/android/actions/rules/a;->e(Ljava/util/Map;)V

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/webengage/sdk/android/p;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/o;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "lat"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string v2, "long"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v2, "radius"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/p;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v10

    invoke-virtual/range {v3 .. v10}, Lcom/webengage/sdk/android/o;->a(DDFLjava/lang/String;Lcom/webengage/sdk/android/WebEngageConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/webengage/sdk/android/utils/a/g;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/webengage/sdk/android/actions/rules/a$1;->a:[I

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a;->c:Lcom/webengage/sdk/android/af;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/af;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->C()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/webengage/sdk/android/actions/rules/c;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->e()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/webengage/sdk/android/utils/f;->a(Ljava/io/InputStream;Z)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/webengage/sdk/android/actions/rules/c;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v2

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/webengage/sdk/android/actions/rules/c;->a(Lcom/webengage/sdk/android/actions/rules/RuleExecutor;Lcom/webengage/sdk/android/actions/database/DataHolder;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/webengage/sdk/android/actions/rules/a;->a(Lcom/webengage/sdk/android/actions/rules/c;Ljava/util/Set;)V

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/rules/c;->c()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/webengage/sdk/android/utils/f;->a(Ljava/util/Set;Landroid/content/Context;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->C()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/webengage/sdk/android/actions/rules/a;->a(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->m()V

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/webengage/sdk/android/actions/rules/c;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->e()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/webengage/sdk/android/utils/f;->a(Ljava/io/InputStream;Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/webengage/sdk/android/actions/rules/c;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v1

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/webengage/sdk/android/actions/rules/c;->a(Lcom/webengage/sdk/android/actions/rules/RuleExecutor;Lcom/webengage/sdk/android/actions/database/DataHolder;)Ljava/util/Set;

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->C()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a;->e(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a;->d(Ljava/lang/Object;)V

    :goto_2
    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "config_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "topic"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/af;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/rules/a;->c:Lcom/webengage/sdk/android/af;

    sget-object p1, Lcom/webengage/sdk/android/actions/rules/a$1;->a:[I

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a;->c:Lcom/webengage/sdk/android/af;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/af;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    new-instance p1, Lcom/webengage/sdk/android/utils/a/f$a;

    sget-object v1, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v3}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f;->i()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/webengage/sdk/android/af;->d:Lcom/webengage/sdk/android/af;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a;->c:Lcom/webengage/sdk/android/af;

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/webengage/sdk/android/utils/a/g;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->d()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/webengage/sdk/android/af;->l:Lcom/webengage/sdk/android/af;

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    sget-object p1, Lcom/webengage/sdk/android/af;->m:Lcom/webengage/sdk/android/af;

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
