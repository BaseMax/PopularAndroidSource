.class public final Lc/c/a/n/A/f;
.super Ljava/lang/Object;
.source "UpgradableAppsViewModel.kt"

# interfaces
.implements Lb/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/c/a/c/a<",
        "TX;TY;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/A/f;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;"
        }
    .end annotation

    const-string v0, "appItems"

    .line 1
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/common/model/page/PageTypeItem;

    .line 3
    instance-of v2, v1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v2

    .line 5
    sget-object v3, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    .line 6
    iget-object v4, p0, Lc/c/a/n/A/f;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;

    iget-object v4, v4, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;->this$0:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;

    iget-object v4, v4, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->this$0:Lc/c/a/n/A/g;

    invoke-virtual {v4}, Lc/c/a/n/A/g;->s()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc/c/a/c/h/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v4, p0, Lc/c/a/n/A/f;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;

    iget-object v4, v4, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;->this$0:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;

    iget-object v4, v4, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->this$0:Lc/c/a/n/A/g;

    invoke-virtual {v4}, Lc/c/a/n/A/g;->s()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lc/c/a/n/A/f;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;

    iget-object v5, v5, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;->this$0:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;

    iget-object v5, v5, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->this$0:Lc/c/a/n/A/g;

    invoke-static {v5}, Lc/c/a/n/A/g;->c(Lc/c/a/n/A/g;)Ljava/util/Locale;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc/c/a/c/b/h;->a(Landroid/content/pm/PackageInfo;Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->setAppName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v2

    iget-object v3, p0, Lc/c/a/n/A/f;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;

    iget-object v3, v3, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;->this$0:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;

    iget-object v3, v3, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->this$0:Lc/c/a/n/A/g;

    invoke-static {v3}, Lc/c/a/n/A/g;->a(Lc/c/a/n/A/g;)Lc/c/a/b/d/b;

    move-result-object v3

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lc/c/a/b/d/b;->p(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->setApplicationInstalled(Z)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lc/c/a/n/A/f;->a:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;

    iget-object v2, v2, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1$1;->this$0:Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;

    iget-object v2, v2, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsViewModel$makeData$1;->this$0:Lc/c/a/n/A/g;

    invoke-static {v2}, Lc/c/a/n/A/g;->b(Lc/c/a/n/A/g;)I

    move-result v2

    new-instance v3, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v3, p1, v1}, Lcom/farsitel/bazaar/ui/upgradableapps/UpgradableAppsHeaderItem;-><init>(IZ)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/c/a/n/A/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
