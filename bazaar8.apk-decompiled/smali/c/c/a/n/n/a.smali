.class public final Lc/c/a/n/n/a;
.super Lc/c/a/n/c/c/t;
.source "InstalledAppsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/t<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Lc/c/a/e/d/l/d;

.field public final x:Z

.field public final y:Ljava/util/Locale;

.field public final z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/n/c/c/u;Lc/c/a/e/d/l/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installedAppRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/n/c/c/t;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;)V

    iput-object p1, p0, Lc/c/a/n/n/a;->z:Landroid/content/Context;

    iput-object p3, p0, Lc/c/a/n/n/a;->A:Lc/c/a/e/d/l/d;

    .line 2
    sget-object p1, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    iget-object p2, p0, Lc/c/a/n/n/a;->z:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/n/a;->y:Ljava/util/Locale;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/n/a;)Lc/c/a/e/d/l/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/n/a;->A:Lc/c/a/e/d/l/d;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/n/a;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/n/a;Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V
    .locals 2

    const-string v0, "packageChangedModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getChangeType()Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->REMOVE:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/n/n/a;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getChangeType()Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->ADD:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    if-ne v0, v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/n/n/a;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v4, Lcom/farsitel/bazaar/ui/installedapp/InstalledAppsViewModel$makeData$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/farsitel/bazaar/ui/installedapp/InstalledAppsViewModel$makeData$1;-><init>(Lc/c/a/n/n/a;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/n/a;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 6
    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 8
    sget-object v2, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v3, p0, Lc/c/a/n/n/a;->z:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lc/c/a/c/h/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v2, p0, Lc/c/a/n/n/a;->z:Landroid/content/Context;

    iget-object v3, p0, Lc/c/a/n/n/a;->y:Ljava/util/Locale;

    invoke-static {p1, v2, v3}, Lc/c/a/c/b/h;->b(Landroid/content/pm/PackageInfo;Landroid/content/Context;Ljava/util/Locale;)Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 9
    invoke-static {v0}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 4
    instance-of v4, v3, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, v1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/n/a;->x:Z

    return v0
.end method

.method public final q()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/n/a;->y:Ljava/util/Locale;

    return-object v0
.end method
