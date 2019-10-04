.class public final Lc/c/a/e/d/b/ba;
.super Ljava/lang/Object;
.source "UpgradableAppRepository.kt"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lc/c/a/e/d/b/W;

.field public final c:Lc/c/a/e/d/b/W;

.field public final d:Lc/c/a/e/d/b/y;

.field public final e:Lc/c/a/e/d/b/da;

.field public final f:Lc/c/a/e/d/l/b;

.field public final g:Lc/c/a/e/d/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/b/W;Lc/c/a/e/d/b/W;Lc/c/a/e/d/b/y;Lc/c/a/e/d/b/da;Lc/c/a/e/d/l/b;Lc/c/a/e/d/a/a/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradableAppsLocalDataSource"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maliciousAppLocalDataSource"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteDataSource"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installedAppDataSource"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountLocalDataSource"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/b/ba;->a:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/e/d/b/ba;->b:Lc/c/a/e/d/b/W;

    iput-object p3, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    iput-object p4, p0, Lc/c/a/e/d/b/ba;->d:Lc/c/a/e/d/b/y;

    iput-object p5, p0, Lc/c/a/e/d/b/ba;->e:Lc/c/a/e/d/b/da;

    iput-object p6, p0, Lc/c/a/e/d/b/ba;->f:Lc/c/a/e/d/l/b;

    iput-object p7, p0, Lc/c/a/e/d/b/ba;->g:Lc/c/a/e/d/a/a/a;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/e/d/b/ba;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/b/ba;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/e/d/b/ba;)Lc/c/a/e/d/b/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/b/ba;->d:Lc/c/a/e/d/b/y;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/e/d/b/ba;)Lc/c/a/e/d/b/W;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    return-object p0
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    invoke-virtual {v0}, Lc/c/a/e/d/b/W;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    sget-object v1, Lc/c/a/e/d/b/Z;->a:Lc/c/a/e/d/b/Z;

    invoke-static {v0, v1}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations.map(upgr\u2026t.toFlatPageItemApp() } }"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic a(JLh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/e/d/b/W;->a(JLh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/UpgradableApp;Lh/c/b;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/e/d/b/W;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->getVersionCode()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getVersionCode()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 31
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 32
    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isNotified()Z

    move-result v6

    .line 33
    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;->isUpdateEnabled()Z

    move-result v7

    const/16 v8, 0xf

    const/4 v9, 0x0

    move-object v0, p1

    .line 34
    invoke-static/range {v0 .. v9}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->copy$default(Lcom/farsitel/bazaar/data/entity/UpgradableApp;Ljava/lang/String;Ljava/lang/String;ZJZZILjava/lang/Object;)Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    move-result-object p1

    .line 35
    :cond_1
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/b/W;->a(Lcom/farsitel/bazaar/data/entity/UpgradableApp;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 22
    iget-object p1, p0, Lc/c/a/e/d/b/ba;->d:Lc/c/a/e/d/b/y;

    invoke-virtual {p1}, Lc/c/a/e/d/b/y;->b()Ljava/util/List;

    move-result-object p1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    .line 26
    iget-object v2, p0, Lc/c/a/e/d/b/ba;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->toFlatPageItemApp(Landroid/content/Context;)Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;JLh/c/b;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;

    invoke-direct {v0, p0, p4}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;-><init>(Lc/c/a/e/d/b/ba;Lh/c/b;)V

    :goto_0
    iget-object p4, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 19
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->J$0:J

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/e/d/b/ba;

    invoke-static {p4}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-wide p2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->J$0:J

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/e/d/b/ba;

    invoke-static {p4}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lh/e;->a(Ljava/lang/Object;)V

    .line 20
    iget-object p4, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->L$1:Ljava/lang/Object;

    iput-wide p2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->J$0:J

    iput v4, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->label:I

    invoke-virtual {p4, p1, p2, p3, v0}, Lc/c/a/e/d/b/W;->a(Ljava/lang/String;JLh/c/b;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 21
    :goto_1
    iget-object p4, v2, Lc/c/a/e/d/b/ba;->d:Lc/c/a/e/d/b/y;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->L$1:Ljava/lang/Object;

    iput-wide p2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->J$0:J

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$removeIfAppIsUpdate$1;->label:I

    invoke-virtual {p4, p1, p2, p3, v0}, Lc/c/a/e/d/b/y;->a(Ljava/lang/String;JLh/c/b;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p4
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->b:Lc/c/a/e/d/b/W;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/b/W;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Locale;Lh/c/b;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;

    iget v4, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;

    invoke-direct {v3, v0, v2}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;-><init>(Lc/c/a/e/d/b/ba;Lh/c/b;)V

    :goto_0
    iget-object v2, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v4

    .line 2
    iget v5, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->label:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v5, :cond_6

    if-eq v5, v10, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$7:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$6:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$5:Ljava/lang/Object;

    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Iterable;

    iget-object v10, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v11, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Locale;

    iget-object v12, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lc/c/a/e/d/b/ba;

    invoke-static {v2}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_2
    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$7:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    iget-object v5, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    iget-object v10, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$5:Ljava/lang/Object;

    iget-object v11, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Iterable;

    iget-object v13, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v14, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/util/Locale;

    iget-object v15, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lc/c/a/e/d/b/ba;

    invoke-static {v2}, Lh/e;->a(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v2, v10

    move-object v1, v11

    move-object v10, v13

    move-object v11, v14

    move-object v13, v5

    move-object v5, v12

    move-object v12, v15

    goto/16 :goto_c

    :cond_3
    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$7:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$6:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$5:Ljava/lang/Object;

    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Iterable;

    iget-object v10, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v11, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Locale;

    iget-object v12, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lc/c/a/e/d/b/ba;

    invoke-static {v2}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_4
    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$7:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    iget-object v5, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    iget-object v10, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$5:Ljava/lang/Object;

    iget-object v11, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Iterable;

    iget-object v13, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v14, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/util/Locale;

    iget-object v15, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lc/c/a/e/d/b/ba;

    invoke-static {v2}, Lh/e;->a(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v2, v10

    move-object v1, v11

    move-object v10, v13

    move-object v11, v14

    move-object v13, v5

    move-object v5, v12

    move-object v12, v15

    goto/16 :goto_7

    :cond_5
    iget-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v5, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Locale;

    iget-object v10, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lc/c/a/e/d/b/ba;

    invoke-static {v2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object v2, v0, Lc/c/a/e/d/b/ba;->f:Lc/c/a/e/d/l/b;

    invoke-virtual {v2, v1}, Lc/c/a/e/d/l/b;->a(Ljava/util/Locale;)Lcom/farsitel/bazaar/data/entity/Either;

    move-result-object v2

    .line 6
    instance-of v5, v2, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v5, :cond_7

    .line 7
    sget-object v1, Lh/h;->a:Lh/h;

    return-object v1

    .line 8
    :cond_7
    iget-object v5, v0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    iput-object v0, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$2:Ljava/lang/Object;

    iput v10, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->label:I

    invoke-virtual {v5, v3}, Lc/c/a/e/d/b/W;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_8

    return-object v4

    :cond_8
    move-object v10, v0

    move-object/from16 v19, v5

    move-object v5, v1

    move-object v1, v2

    move-object/from16 v2, v19

    .line 9
    :goto_1
    check-cast v2, Ljava/lang/Iterable;

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    .line 11
    invoke-static {v1}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrNull(Lcom/farsitel/bazaar/data/entity/Either;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    if-eqz v14, :cond_d

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/farsitel/bazaar/common/model/RecyclerData;

    instance-of v6, v15, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-nez v6, :cond_9

    const/4 v15, 0x0

    :cond_9
    check-cast v15, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_a
    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v13}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    const/4 v6, 0x5

    goto :goto_3

    :cond_c
    const/16 v16, 0x0

    :goto_5
    check-cast v16, Lcom/farsitel/bazaar/common/model/RecyclerData;

    move-object/from16 v6, v16

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_10

    .line 12
    iget-object v14, v10, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    invoke-virtual {v13}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iput-object v10, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$3:Ljava/lang/Object;

    iput-object v11, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$4:Ljava/lang/Object;

    iput-object v12, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$5:Ljava/lang/Object;

    iput-object v13, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$6:Ljava/lang/Object;

    iput-object v6, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$7:Ljava/lang/Object;

    iput v9, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->label:I

    invoke-virtual {v14, v15, v3}, Lc/c/a/e/d/b/W;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_e

    return-object v4

    :cond_e
    move-object/from16 v19, v10

    move-object v10, v1

    move-object v1, v11

    move-object v11, v5

    move-object v5, v2

    move-object v2, v12

    move-object/from16 v12, v19

    .line 13
    :goto_7
    iget-object v14, v12, Lc/c/a/e/d/b/ba;->d:Lc/c/a/e/d/b/y;

    invoke-virtual {v13}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iput-object v12, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$2:Ljava/lang/Object;

    iput-object v5, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$3:Ljava/lang/Object;

    iput-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$4:Ljava/lang/Object;

    iput-object v2, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$5:Ljava/lang/Object;

    iput-object v13, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$6:Ljava/lang/Object;

    iput-object v6, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$7:Ljava/lang/Object;

    iput v8, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->label:I

    invoke-virtual {v14, v15, v3}, Lc/c/a/e/d/b/y;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_f

    return-object v4

    :cond_f
    :goto_8
    move-object v2, v5

    move-object v5, v11

    const/4 v6, 0x5

    :goto_9
    move-object v11, v1

    move-object v1, v10

    move-object v10, v12

    goto/16 :goto_2

    .line 14
    :cond_10
    instance-of v14, v6, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-nez v14, :cond_11

    const/4 v14, 0x0

    goto :goto_a

    :cond_11
    move-object v14, v6

    :goto_a
    check-cast v14, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v14, :cond_12

    invoke-virtual {v14}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v14

    if-eqz v14, :cond_12

    invoke-virtual {v14}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getInstalledVersionCode()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_12

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_b

    :cond_12
    const-wide/16 v14, 0x0

    :goto_b
    invoke-virtual {v13}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getVersionCode()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-ltz v18, :cond_15

    .line 15
    iget-object v14, v10, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    invoke-virtual {v13}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iput-object v10, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$1:Ljava/lang/Object;

    iput-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$3:Ljava/lang/Object;

    iput-object v11, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$4:Ljava/lang/Object;

    iput-object v12, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$5:Ljava/lang/Object;

    iput-object v13, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$6:Ljava/lang/Object;

    iput-object v6, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$7:Ljava/lang/Object;

    iput v7, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->label:I

    invoke-virtual {v14, v15, v3}, Lc/c/a/e/d/b/W;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_13

    return-object v4

    :cond_13
    move-object/from16 v19, v10

    move-object v10, v1

    move-object v1, v11

    move-object v11, v5

    move-object v5, v2

    move-object v2, v12

    move-object/from16 v12, v19

    .line 16
    :goto_c
    iget-object v14, v12, Lc/c/a/e/d/b/ba;->d:Lc/c/a/e/d/b/y;

    invoke-virtual {v13}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iput-object v12, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$0:Ljava/lang/Object;

    iput-object v11, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$2:Ljava/lang/Object;

    iput-object v5, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$3:Ljava/lang/Object;

    iput-object v1, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$4:Ljava/lang/Object;

    iput-object v2, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$5:Ljava/lang/Object;

    iput-object v13, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$6:Ljava/lang/Object;

    iput-object v6, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->L$7:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v3, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$syncWithInstalledApps$1;->label:I

    invoke-virtual {v14, v15, v3}, Lc/c/a/e/d/b/y;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_14

    return-object v4

    :cond_14
    :goto_d
    move-object v2, v5

    move-object v5, v11

    goto :goto_9

    :cond_15
    const/4 v6, 0x5

    goto/16 :goto_2

    .line 17
    :cond_16
    sget-object v1, Lh/h;->a:Lh/h;

    return-object v1
.end method

.method public final b()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->d:Lc/c/a/e/d/b/y;

    invoke-virtual {v0}, Lc/c/a/e/d/b/y;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lc/c/a/e/d/b/aa;

    invoke-direct {v1, p0}, Lc/c/a/e/d/b/aa;-><init>(Lc/c/a/e/d/b/ba;)V

    invoke-static {v0, v1}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations.map(mali\u2026tPageItemApp(context) } }"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;-><init>(Lc/c/a/e/d/b/ba;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/b/ba;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$allUpgradableAppNotifiable$1;->label:I

    invoke-virtual {p1, v0}, Lc/c/a/e/d/b/W;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    .line 12
    invoke-static {v1}, Lc/c/a/e/f/g;->a(Lcom/farsitel/bazaar/data/entity/UpgradableApp;)Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public final b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/b/W;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/MaliciousApp;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->d:Lc/c/a/e/d/b/y;

    invoke-virtual {v0}, Lc/c/a/e/d/b/y;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/W;->c(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->d:Lc/c/a/e/d/b/y;

    invoke-virtual {v0, p1, p2}, Lc/c/a/e/d/b/y;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    invoke-virtual {v0}, Lc/c/a/e/d/b/W;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->d:Lc/c/a/e/d/b/y;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/y;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/ba;->c:Lc/c/a/e/d/b/W;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/b/W;->d(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lh/c/b;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;-><init>(Lc/c/a/e/d/b/ba;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$3;

    iget-object v1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/b/ba;

    :try_start_0
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v4, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$3;

    iget-object v6, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;

    iget-object v7, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lc/c/a/e/d/b/ba;

    :try_start_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v4

    goto/16 :goto_4

    :cond_3
    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object v5, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$3;

    iget-object v7, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;

    iget-object v8, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lc/c/a/e/d/b/ba;

    :try_start_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object p1, v5

    move-object v5, v6

    :goto_1
    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_3

    :cond_4
    iget-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v6, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$3;

    iget-object v7, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;

    iget-object v8, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lc/c/a/e/d/b/ba;

    :try_start_3
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v10, v6

    move-object v6, v2

    move-object v2, v10

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    new-instance v7, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;

    const/4 p1, 0x0

    invoke-direct {v7, p0, p1}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;-><init>(Lc/c/a/e/d/b/ba;Lh/c/b;)V

    .line 5
    new-instance v2, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$3;

    invoke-direct {v2, p0, p1}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$3;-><init>(Lc/c/a/e/d/b/ba;Lh/c/b;)V

    .line 6
    :try_start_4
    iget-object p1, p0, Lc/c/a/e/d/b/ba;->f:Lc/c/a/e/d/l/b;

    invoke-virtual {p1}, Lc/c/a/e/d/l/b;->a()Ljava/util/List;

    move-result-object p1

    .line 7
    iget-object v8, p0, Lc/c/a/e/d/b/ba;->e:Lc/c/a/e/d/b/da;

    iget-object v9, p0, Lc/c/a/e/d/b/ba;->g:Lc/c/a/e/d/a/a/a;

    invoke-virtual {v9}, Lc/c/a/e/d/a/a/a;->e()I

    move-result v9

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$3:Ljava/lang/Object;

    iput v6, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->label:I

    invoke-virtual {v8, v9, p1, v0}, Lc/c/a/e/d/b/da;->a(ILjava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_6

    return-object v1

    :cond_6
    move-object v8, p0

    move-object v10, v6

    move-object v6, p1

    move-object p1, v10

    .line 8
    :goto_2
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 9
    instance-of v9, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v9, :cond_9

    .line 10
    move-object v9, p1

    check-cast v9, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v9}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/farsitel/bazaar/data/entity/UpgradableApps;

    invoke-virtual {v9}, Lcom/farsitel/bazaar/data/entity/UpgradableApps;->getUpgradableApps()Ljava/util/List;

    move-result-object v9

    iput-object v8, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$4:Ljava/lang/Object;

    iput v5, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->label:I

    invoke-virtual {v7, v9, v0}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$2;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_7

    return-object v1

    :cond_7
    move-object v5, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_1

    .line 11
    :goto_3
    move-object v8, v2

    check-cast v8, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v8}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/farsitel/bazaar/data/entity/UpgradableApps;

    invoke-virtual {v8}, Lcom/farsitel/bazaar/data/entity/UpgradableApps;->getMaliciousApps()Ljava/util/List;

    move-result-object v8

    iput-object v7, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->label:I

    invoke-virtual {v5, v8, v0}, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$3;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_8

    return-object v1

    .line 12
    :cond_8
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-object v7, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/app/UpgradableAppRepository$updateAll$1;->label:I

    invoke-virtual {v7, v8, v9, v0}, Lc/c/a/e/d/b/ba;->a(JLh/c/b;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-ne p1, v1, :cond_9

    return-object v1

    :catch_0
    move-exception p1

    .line 13
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 14
    :cond_9
    :goto_5
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
