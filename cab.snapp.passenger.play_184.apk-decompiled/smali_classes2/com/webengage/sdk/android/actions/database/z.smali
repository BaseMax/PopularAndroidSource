.class Lcom/webengage/sdk/android/actions/database/z;
.super Lcom/webengage/sdk/android/a;


# instance fields
.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Lcom/webengage/sdk/android/actions/rules/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/z;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/z;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/database/z;->d:Lcom/webengage/sdk/android/actions/rules/c;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/z;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/webengage/sdk/android/actions/database/f;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/webengage/sdk/android/actions/database/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/webengage/sdk/android/actions/database/z$1;->a:[I

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/database/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "user_attributes"

    const-string v2, "event_criterias"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, p2, p1}, Lcom/webengage/sdk/android/actions/database/z;->a(Ljava/util/Map;Lcom/webengage/sdk/android/actions/database/f;)V

    goto/16 :goto_3

    :pswitch_1
    return-void

    :pswitch_2
    :try_start_0
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/z;->c:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, v0, p2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->c(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/database/z;->d:Lcom/webengage/sdk/android/actions/rules/c;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/rules/c;->e()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    :try_start_1
    const-string v2, "criteria_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/database/z;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_4
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/webengage/sdk/android/am;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/am;

    move-result-object v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "devices"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "journey"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_2
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v4

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/database/z;->c:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_3

    sget-object v3, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/webengage/sdk/android/am;->a()Lcom/webengage/sdk/android/actions/database/o;

    move-result-object v3

    :goto_2
    move-object v9, v3

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/webengage/sdk/android/actions/database/f;Lcom/webengage/sdk/android/actions/database/o;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    nop

    goto :goto_1

    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/webengage/sdk/android/am;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/webengage/sdk/android/am;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/database/z;->c:Ljava/lang/String;

    sget-object v4, Lcom/webengage/sdk/android/actions/database/f;->d:Lcom/webengage/sdk/android/actions/database/f;

    sget-object v5, Lcom/webengage/sdk/android/actions/database/o;->b:Lcom/webengage/sdk/android/actions/database/o;

    invoke-virtual/range {v0 .. v5}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/webengage/sdk/android/actions/database/f;Lcom/webengage/sdk/android/actions/database/o;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/webengage/sdk/android/actions/database/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/webengage/sdk/android/actions/database/f;",
            ")V"
        }
    .end annotation

    const-string v0, "devices"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/database/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/database/z;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, p2}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/webengage/sdk/android/actions/database/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/database/z;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/database/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->get()Lcom/webengage/sdk/android/AbstractWebEngage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/AbstractWebEngage;->getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/webengage/sdk/android/utils/WebEngageConstant$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/webengage/sdk/android/utils/a/f$a;

    sget-object v2, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/database/z;->b:Landroid/content/Context;

    invoke-direct {v1, p1, v2, v3}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/f;->i()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/database/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/database/z;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/database/z;->h()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/webengage/sdk/android/actions/database/z;->c:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->e()Ljava/io/InputStream;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/webengage/sdk/android/utils/f;->a(Ljava/io/InputStream;Z)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/database/z;->d(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_6

    const-string v1, "upf"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/database/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/f;->values()[Lcom/webengage/sdk/android/actions/database/f;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/database/f;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4, p1}, Lcom/webengage/sdk/android/actions/database/z;->a(Lcom/webengage/sdk/android/actions/database/f;Ljava/util/Map;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/webengage/sdk/android/am;->p:Lcom/webengage/sdk/android/am;

    invoke-direct {p0, v1, p1}, Lcom/webengage/sdk/android/actions/database/z;->a(Lcom/webengage/sdk/android/am;Ljava/util/Map;)V

    sget-object v1, Lcom/webengage/sdk/android/am;->q:Lcom/webengage/sdk/android/am;

    invoke-direct {p0, v1, p1}, Lcom/webengage/sdk/android/actions/database/z;->a(Lcom/webengage/sdk/android/am;Ljava/util/Map;)V

    sget-object v1, Lcom/webengage/sdk/android/am;->r:Lcom/webengage/sdk/android/am;

    invoke-direct {p0, v1, p1}, Lcom/webengage/sdk/android/actions/database/z;->a(Lcom/webengage/sdk/android/am;Ljava/util/Map;)V

    sget-object v1, Lcom/webengage/sdk/android/am;->t:Lcom/webengage/sdk/android/am;

    invoke-direct {p0, v1, p1}, Lcom/webengage/sdk/android/actions/database/z;->a(Lcom/webengage/sdk/android/am;Ljava/util/Map;)V

    sget-object v1, Lcom/webengage/sdk/android/am;->s:Lcom/webengage/sdk/android/am;

    invoke-direct {p0, v1, p1}, Lcom/webengage/sdk/android/actions/database/z;->a(Lcom/webengage/sdk/android/am;Ljava/util/Map;)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/database/z;->h()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cuid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/f;->values()[Lcom/webengage/sdk/android/actions/database/f;

    move-result-object v1

    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_6

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/database/f;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v4, p1}, Lcom/webengage/sdk/android/actions/database/z;->a(Lcom/webengage/sdk/android/actions/database/f;Ljava/util/Map;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    :cond_6
    :goto_4
    return-object v0
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
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

    :try_start_0
    new-instance p1, Lcom/webengage/sdk/android/actions/rules/c;

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/database/z;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/webengage/sdk/android/actions/rules/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/database/z;->d:Lcom/webengage/sdk/android/actions/rules/c;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/database/z;->d:Lcom/webengage/sdk/android/actions/rules/c;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/rules/c;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/database/z;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
