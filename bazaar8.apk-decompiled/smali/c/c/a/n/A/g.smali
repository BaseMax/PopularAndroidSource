.class public final Lc/c/a/n/A/g;
.super Lc/c/a/n/c/c/t;
.source "UpgradableAppsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/t<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic x:[Lh/i/i;


# instance fields
.field public final A:I

.field public final B:Landroid/content/Context;

.field public final C:Lc/c/a/e/d/b/ba;

.field public final D:Lc/c/a/b/d/b;

.field public final y:Z

.field public final z:Lh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/n/A/g;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "locale"

    const-string v4, "getLocale()Ljava/util/Locale;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/n/A/g;->x:[Lh/i/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/c/a/n/c/c/u;Lc/c/a/e/d/b/ba;Lc/c/a/b/d/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appManager"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/n/c/c/t;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;)V

    iput-object p1, p0, Lc/c/a/n/A/g;->B:Landroid/content/Context;

    iput-object p3, p0, Lc/c/a/n/A/g;->C:Lc/c/a/e/d/b/ba;

    iput-object p4, p0, Lc/c/a/n/A/g;->D:Lc/c/a/b/d/b;

    .line 2
    new-instance p1, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$locale$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$locale$2;-><init>(Lc/c/a/n/A/g;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/A/g;->z:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/A/g;)Lc/c/a/b/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/A/g;->D:Lc/c/a/b/d/b;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/A/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/n/A/g;->A:I

    return p0
.end method

.method public static final synthetic c(Lc/c/a/n/A/g;)Ljava/util/Locale;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/A/g;->t()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/n/A/g;)Lc/c/a/e/d/b/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/A/g;->C:Lc/c/a/e/d/b/ba;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/A/g;->B:Landroid/content/Context;

    const v0, 0x7f100215

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.updates)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v4, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;-><init>(Lc/c/a/n/A/g;Ljava/lang/String;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entitiesState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Lc/c/a/n/c/c/t;->a(Ljava/util/Map;)V

    .line 5
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    goto/16 :goto_6

    .line 6
    :cond_2
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 8
    instance-of v5, v4, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-nez v5, :cond_4

    move-object v4, v2

    :cond_4
    check-cast v4, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/ui/EntityState;->inDownloadProcess()Z

    move-result v4

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_6
    move-object v3, v2

    .line 9
    :goto_3
    move-object p1, v3

    check-cast p1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    goto :goto_4

    :cond_7
    move-object p1, v2

    .line 10
    :goto_4
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    check-cast v3, Ljava/util/List;

    iget v2, p0, Lc/c/a/n/A/g;->A:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v2, v0}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;->a(Z)V

    .line 11
    invoke-virtual {p0}, Lc/c/a/n/c/c/t;->l()Lb/r/t;

    move-result-object p1

    iget v0, p0, Lc/c/a/n/A/g;->A:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsHeaderItem"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    :cond_b
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    :cond_c
    :goto_6
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/A/g;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/A/g;->y:Z

    return v0
.end method

.method public final q()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 7
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v4

    sget-object v5, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 9
    sget-object v3, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->Companion:Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;

    invoke-virtual {v3, v2}, Lcom/farsitel/bazaar/data/entity/UpgradableApp$Companion;->fromAppItem(Lcom/farsitel/bazaar/common/model/page/ListItem$App;)Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method public final r()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

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

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 6
    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v3

    sget-object v4, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    return-object v0
.end method

.method public final s()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/A/g;->B:Landroid/content/Context;

    return-object v0
.end method

.method public final t()Ljava/util/Locale;
    .locals 3

    iget-object v0, p0, Lc/c/a/n/A/g;->z:Lh/c;

    sget-object v1, Lc/c/a/n/A/g;->x:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method
