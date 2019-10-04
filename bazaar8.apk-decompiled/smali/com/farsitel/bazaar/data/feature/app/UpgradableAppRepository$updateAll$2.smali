.class public final Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpgradableAppRepository.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/b/ba;->f(Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/c<",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
        ">;",
        "Lh/c/b<",
        "-",
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.data.feature.app.UpgradableAppRepository$updateAll$2"
    f = "UpgradableAppRepository.kt"
    l = {
        0x23,
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public p$0:Ljava/util/List;

.field public final synthetic this$0:Lc/c/a/e/d/b/ba;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/ba;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->this$0:Lc/c/a/e/d/b/ba;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->this$0:Lc/c/a/e/d/b/ba;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;-><init>(Lc/c/a/e/d/b/ba;Lh/c/b;)V

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->p$0:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v4, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V

    move-object v5, v2

    move-object v2, v4

    move-object/from16 v4, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->p$0:Ljava/util/List;

    .line 4
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    iget-object v6, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->this$0:Lc/c/a/e/d/b/ba;

    invoke-static {v6}, Lc/c/a/e/d/b/ba;->c(Lc/c/a/e/d/b/ba;)Lc/c/a/e/d/b/W;

    move-result-object v6

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->label:I

    invoke-virtual {v6, v0}, Lc/c/a/e/d/b/W;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_0
    check-cast v4, Ljava/lang/Iterable;

    .line 7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    .line 8
    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 11
    move-object v7, v6

    check-cast v7, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    .line 12
    invoke-virtual {v7}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 13
    invoke-virtual {v7}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    check-cast v6, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    .line 14
    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateEnabled()Z

    move-result v14

    .line 15
    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->isUpdateNotified()Z

    move-result v13

    const/16 v15, 0xf

    const/16 v16, 0x0

    .line 16
    invoke-static/range {v7 .. v16}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->copy$default(Lcom/farsitel/bazaar/data/entity/UpgradableApp;Ljava/lang/String;Ljava/lang/String;ZJZZILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    move-result-object v7

    goto :goto_3

    .line 17
    :cond_5
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v1, 0x0

    throw v1

    .line 18
    :cond_6
    :goto_3
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_7
    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->this$0:Lc/c/a/e/d/b/ba;

    invoke-static {v2}, Lc/c/a/e/d/b/ba;->c(Lc/c/a/e/d/b/ba;)Lc/c/a/e/d/b/W;

    move-result-object v2

    iput-object v5, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->label:I

    invoke-virtual {v2, v4, v0}, Lc/c/a/e/d/b/W;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    .line 20
    :cond_8
    :goto_4
    sget-object v1, Lh/h;->a:Lh/h;

    return-object v1
.end method
