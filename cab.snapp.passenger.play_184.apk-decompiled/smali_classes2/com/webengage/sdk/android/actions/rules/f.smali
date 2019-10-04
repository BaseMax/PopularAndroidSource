.class Lcom/webengage/sdk/android/actions/rules/f;
.super Lcom/webengage/sdk/android/a;


# instance fields
.field b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/webengage/sdk/android/utils/WebEngageConstant$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/f;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/rules/f;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/f;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    if-eqz p2, :cond_3

    const-string p1, "variations"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_2

    const-string v5, "sampling"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    goto :goto_1

    :cond_0
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_1
    cmpl-double v7, v0, v2

    if-ltz v7, :cond_1

    add-double v7, v2, v5

    cmpg-double v9, v0, v7

    if-gez v9, :cond_1

    const-string p1, "id"

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    add-double/2addr v2, v5

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/webengage/sdk/android/utils/WebEngageConstant$a;",
            ")Z"
        }
    .end annotation

    const-string p1, "maxTimesPerUser"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/util/Map;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v1

    invoke-virtual {v1, p2, p4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->d(Ljava/util/Map;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v2

    invoke-virtual {v2, p2, p4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->b(Ljava/util/Map;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v3

    invoke-virtual {v3, p2, p4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->c(Ljava/util/Map;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/lang/Long;

    move-result-object p4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, 0x1

    cmp-long p1, v0, v5

    if-gez p1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v5

    if-gez p1, :cond_2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v5

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p3, :cond_5

    const-string p4, "targetActivities"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    const-string p4, "skipTargetPage"

    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    goto :goto_3

    :cond_3
    const/4 p4, 0x0

    :goto_3
    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p4, :cond_5

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->n()Ljava/lang/String;

    move-result-object p4

    if-eqz p1, :cond_4

    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :cond_5
    :goto_4
    const-string p3, "startTimestamp"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_6

    const-wide/high16 p3, -0x8000000000000000L

    goto :goto_5

    :cond_6
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :goto_5
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "endTimestamp"

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_6

    :cond_7
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    if-eqz p1, :cond_8

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v0, v5

    if-ltz p1, :cond_8

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v0, p3, p1

    if-gtz v0, :cond_8

    return v4

    :cond_8
    return v3
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "order"

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/rules/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/rules/f;->i()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/rules/f;->h()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lcom/webengage/sdk/android/actions/rules/f;->b:Ljava/lang/String;

    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Map;

    const-string v3, "execution_chain"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, v0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    const-string v3, "event_state_data"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/webengage/sdk/android/l;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/webengage/sdk/android/actions/rules/f;->a(Lcom/webengage/sdk/android/l;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_2

    iget-object v3, v0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    if-eq v3, v6, :cond_1

    iget-object v3, v0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    sget-object v6, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-interface {v3, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object v3, v0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_3

    iget-object v3, v0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    if-eq v3, v4, :cond_4

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    sget-object v6, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-interface {v3, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    sget-object v4, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-interface {v3, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    iget-object v3, v0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    sget-object v7, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-virtual {v6, v7}, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/rules/f;->a()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->setCompetingIds(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/actions/rules/f;->b()Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v7

    sget-object v8, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-virtual {v7, v8}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->evaluateRulesByCategory(Lcom/webengage/sdk/android/utils/WebEngageConstant$c;)Ljava/util/List;

    move-result-object v7

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    new-instance v5, Lcom/webengage/sdk/android/actions/rules/c;

    iget-object v9, v0, Lcom/webengage/sdk/android/actions/rules/f;->c:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/webengage/sdk/android/actions/rules/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide v9, 0x7fffffffffffffffL

    move-wide v11, v9

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v14, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v5, v13, v14}, Lcom/webengage/sdk/android/actions/rules/c;->a(Ljava/lang/String;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_6

    const-wide/16 v15, 0x0

    :goto_4
    move-object/from16 v17, v5

    move-wide v4, v15

    goto :goto_5

    :cond_6
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_4

    :goto_5
    cmp-long v15, v11, v9

    if-eqz v15, :cond_8

    cmp-long v15, v4, v11

    if-nez v15, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v9, v17

    goto :goto_8

    :cond_8
    :goto_6
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    if-eqz v15, :cond_9

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v9, v17

    invoke-virtual {v9, v15, v14}, Lcom/webengage/sdk/android/actions/rules/c;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    goto :goto_7

    :cond_9
    move-object/from16 v9, v17

    const/4 v10, 0x0

    :goto_7
    sget-object v15, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-direct {v0, v13, v14, v10, v15}, Lcom/webengage/sdk/android/actions/rules/f;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v11, v4

    :cond_a
    :goto_8
    move-object v5, v9

    const-wide v9, 0x7fffffffffffffffL

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->setCompetingIds(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v5, v8

    goto/16 :goto_2

    :catch_1
    nop

    goto/16 :goto_2

    :cond_c
    sget-object v4, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-virtual {v6, v4}, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :try_start_2
    new-instance v4, Lcom/webengage/sdk/android/actions/rules/c;

    iget-object v6, v0, Lcom/webengage/sdk/android/actions/rules/f;->c:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/webengage/sdk/android/actions/rules/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->reset()V

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v6

    sget-object v7, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->b:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-virtual {v6, v7}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->evaluateRulesByCategory(Lcom/webengage/sdk/android/utils/WebEngageConstant$c;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    :cond_d
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lcom/webengage/sdk/android/utils/WebEngageConstant$a;->a:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    invoke-virtual {v4, v9, v10}, Lcom/webengage/sdk/android/actions/rules/c;->a(Ljava/lang/String;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)Ljava/util/Map;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/webengage/sdk/android/actions/rules/f;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v4, v11, v10}, Lcom/webengage/sdk/android/actions/rules/c;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    const-string v12, "layout"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/webengage/sdk/android/actions/rules/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v12, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    if-eqz v2, :cond_f

    const-string v4, "visitor_new_session"

    invoke-virtual {v2}, Lcom/webengage/sdk/android/l;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/webengage/sdk/android/actions/rules/f;->c:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/webengage/sdk/android/utils/f;->a(Ljava/util/Set;Landroid/content/Context;)V

    :cond_f
    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->setCompetingIds(Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lcom/webengage/sdk/android/actions/rules/f;->a(Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lcom/webengage/sdk/android/actions/rules/f;->d(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :cond_10
    sget-object v4, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-virtual {v6, v4}, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v4

    sget-object v5, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-virtual {v4, v5}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->evaluateRulesByCategory(Lcom/webengage/sdk/android/utils/WebEngageConstant$c;)Ljava/util/List;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_2

    :cond_11
    return-object v5
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
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

    return-object p1
.end method

.method public a(Lcom/webengage/sdk/android/l;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/webengage/sdk/android/l;->f()Ljava/lang/String;

    move-result-object p1

    const-string v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "we_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->getEventCriteriasForEvent(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/webengage/sdk/android/actions/rules/d;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/rules/d;->e()Lcom/webengage/sdk/android/actions/rules/a/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/rules/a/d;->a()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/webengage/sdk/android/actions/database/f;->b:Lcom/webengage/sdk/android/actions/database/f;

    invoke-virtual {v5}, Lcom/webengage/sdk/android/actions/database/f;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/rules/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "we_wk_sys"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/rules/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/rules/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/webengage/sdk/android/actions/database/DataHolder;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v4

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/rules/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->getFunction(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/rules/a/e;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Lcom/webengage/sdk/android/actions/rules/a/e;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    const/4 v1, 0x1

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v5

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/rules/f;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/rules/d;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v5, v6, v3, v4}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_4
    return v1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/utils/WebEngageConstant$c;

    invoke-virtual {v0, p1, v1}, Lcom/webengage/sdk/android/actions/rules/RuleExecutor;->filterRenderingIds(Ljava/util/List;Lcom/webengage/sdk/android/utils/WebEngageConstant$c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/rules/f;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
