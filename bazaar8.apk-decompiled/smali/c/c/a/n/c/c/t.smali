.class public abstract Lc/c/a/n/c/c/t;
.super Lc/c/a/n/c/d/g;
.source "PageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "TParams;>;"
    }
.end annotation


# instance fields
.field public final j:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Lcom/farsitel/bazaar/common/model/page/PageItem;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Li/a/u;

.field public final l:Lh/c/e;

.field public final m:Lc/c/a/e/d/i/j;

.field public final n:Lc/c/a/b/d/b;

.field public final o:Lc/c/a/b/d/o;

.field public final p:Lc/c/a/e/d/b/ba;

.field public final q:Lc/c/a/b/d/m;

.field public final r:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;>;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field public final w:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/n/c/c/u;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/c/c/t;->w:Landroid/content/Context;

    .line 2
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/c/c/t;->j:Lb/r/r;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p1, v0}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/c/c/t;->k:Li/a/u;

    .line 4
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/c/c/t;->k:Li/a/u;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/c/c/t;->l:Lh/c/e;

    .line 5
    invoke-virtual {p2}, Lc/c/a/n/c/c/u;->b()Lc/c/a/e/d/i/j;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/c/c/t;->m:Lc/c/a/e/d/i/j;

    .line 6
    invoke-virtual {p2}, Lc/c/a/n/c/c/u;->a()Lc/c/a/b/d/b;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    .line 7
    invoke-virtual {p2}, Lc/c/a/n/c/c/u;->e()Lc/c/a/b/d/o;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/c/c/t;->o:Lc/c/a/b/d/o;

    .line 8
    invoke-virtual {p2}, Lc/c/a/n/c/c/u;->d()Lc/c/a/e/d/b/ba;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/c/c/t;->p:Lc/c/a/e/d/b/ba;

    .line 9
    invoke-virtual {p2}, Lc/c/a/n/c/c/u;->c()Lc/c/a/b/d/m;

    move-result-object p2

    iput-object p2, p0, Lc/c/a/n/c/c/t;->q:Lc/c/a/b/d/m;

    .line 10
    new-instance p2, Lb/r/r;

    invoke-direct {p2}, Lb/r/r;-><init>()V

    iput-object p2, p0, Lc/c/a/n/c/c/t;->r:Lb/r/r;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lc/c/a/n/c/c/t;->s:Ljava/util/List;

    .line 12
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lc/c/a/n/c/c/t;->t:Ljava/util/HashSet;

    .line 13
    new-instance p2, Lb/r/t;

    invoke-direct {p2}, Lb/r/t;-><init>()V

    iput-object p2, p0, Lc/c/a/n/c/c/t;->u:Lb/r/t;

    .line 14
    iput-boolean p1, p0, Lc/c/a/n/c/c/t;->v:Z

    .line 15
    iget-object p1, p0, Lc/c/a/n/c/c/t;->r:Lb/r/r;

    iget-object p2, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    invoke-virtual {p2}, Lc/c/a/b/d/i;->c()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lc/c/a/n/c/c/o;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/o;-><init>(Lc/c/a/n/c/c/t;)V

    invoke-virtual {p1, p2, v0}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    .line 16
    iget-object p1, p0, Lc/c/a/n/c/c/t;->r:Lb/r/r;

    iget-object p2, p0, Lc/c/a/n/c/c/t;->p:Lc/c/a/e/d/b/ba;

    invoke-virtual {p2}, Lc/c/a/e/d/b/ba;->d()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lc/c/a/n/c/c/p;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/p;-><init>(Lc/c/a/n/c/c/t;)V

    invoke-virtual {p1, p2, v0}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    .line 17
    iget-object p1, p0, Lc/c/a/n/c/c/t;->r:Lb/r/r;

    iget-object p2, p0, Lc/c/a/n/c/c/t;->q:Lc/c/a/b/d/m;

    invoke-virtual {p2}, Lc/c/a/b/d/m;->a()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lc/c/a/n/c/c/q;

    invoke-direct {v0, p0}, Lc/c/a/n/c/c/q;-><init>(Lc/c/a/n/c/c/t;)V

    invoke-virtual {p1, p2, v0}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/t;)Lc/c/a/b/d/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/t;Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/DownloadableEntity;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/DownloadableEntity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/t;Lcom/farsitel/bazaar/common/model/DownloadableEntity;)Ljava/lang/Long;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->b(Lcom/farsitel/bazaar/common/model/DownloadableEntity;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/t;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/c/c/t;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/c/t;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: entityStateChanged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/t;Ljava/util/List;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/c/c/t;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->b(Ljava/util/List;)V

    return-void

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: paymentStateChanged"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic b(Lc/c/a/n/c/c/t;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/c/t;->t:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/c/c/t;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lc/c/a/n/c/c/t;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->c(Ljava/util/List;)V

    return-void

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updatePageListWithUpgradableApps"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic c(Lc/c/a/n/c/c/t;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/c/t;->w:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/n/c/c/t;)Lc/c/a/e/d/i/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/c/t;->m:Lc/c/a/e/d/i/j;

    return-object p0
.end method

.method public static final synthetic e(Lc/c/a/n/c/c/t;)Lb/r/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/c/t;->r:Lb/r/r;

    return-object p0
.end method

.method public static final synthetic f(Lc/c/a/n/c/c/t;)Lb/r/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/c/t;->j:Lb/r/r;

    return-object p0
.end method

.method public static final synthetic g(Lc/c/a/n/c/c/t;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/c/t;->s:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic h(Lc/c/a/n/c/c/t;)Lc/c/a/b/d/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/c/t;->o:Lc/c/a/b/d/o;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)Landroid/content/Intent;
    .locals 1

    const-string v0, "appItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    .line 22
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lc/c/a/b/d/b;->l(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    invoke-virtual {v0, p1}, Lc/c/a/b/d/b;->m(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/DownloadableEntity;
    .locals 1

    .line 57
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    goto :goto_0

    .line 58
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    goto :goto_0

    .line 59
    :cond_1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final synthetic a(Lcom/farsitel/bazaar/common/model/page/PageItem;Lh/c/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/page/PageItem;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 7
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$updateItemsState$2;-><init>(Lc/c/a/n/c/c/t;Lcom/farsitel/bazaar/common/model/page/PageItem;Lh/c/b;)V

    invoke-static {v0, v1, p2}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/DownloadableEntity;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-interface {p1}, Lcom/farsitel/bazaar/common/model/common/Entity;->getEntityId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p2, p1}, Lc/c/a/n/c/c/t;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/Page;)V
    .locals 3

    const-string v0, "page"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 9
    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageTitleItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/farsitel/bazaar/common/model/page/PageTitleItem;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lc/c/a/n/c/c/t;->o()Z

    move-result v2

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;-><init>(Lcom/farsitel/bazaar/common/model/page/PageTitleItem;Z)V

    .line 12
    new-instance v1, Lcom/farsitel/bazaar/common/model/page/PageItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getItems()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2, p1}, Lcom/farsitel/bazaar/common/model/page/PageItem;-><init>(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/page/PageItem;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/page/PageAppItem;Ljava/lang/Long;)V
    .locals 9

    const-string v0, "appItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    .line 14
    new-instance v8, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    .line 15
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isFree()Z

    move-result v4

    .line 18
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getReferrer()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v8

    move-object v7, p2

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 20
    invoke-virtual {v0, v8}, Lc/c/a/b/d/b;->a(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/page/PageItem;)V
    .locals 6

    .line 6
    new-instance v3, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$handleSuccess$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$handleSuccess$1;-><init>(Lc/c/a/n/c/c/t;Lcom/farsitel/bazaar/common/model/page/PageItem;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, p2}, Lc/c/a/n/c/c/t;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V
    .locals 2

    const-string v0, "packageChangedModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 26
    invoke-static {p0, p1, v0, v1, v0}, Lc/c/a/n/c/c/t;->a(Lc/c/a/n/c/c/t;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 6

    .line 62
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 63
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_3

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 64
    invoke-virtual {p0, v2}, Lc/c/a/n/c/c/t;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    invoke-virtual {p0, v2}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/DownloadableEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v4, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    invoke-virtual {p0, v2}, Lc/c/a/n/c/c/t;->b(Lcom/farsitel/bazaar/common/model/DownloadableEntity;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lc/c/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/farsitel/bazaar/common/model/DownloadableEntity;->setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 67
    invoke-interface {v2, p2}, Lcom/farsitel/bazaar/common/model/DownloadableEntity;->setProgressInfo(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    .line 68
    :cond_1
    iget-object v2, p0, Lc/c/a/n/c/c/t;->u:Lb/r/t;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_2
    move v1, v3

    goto :goto_0

    .line 69
    :cond_3
    invoke-static {}, Lh/a/l;->b()V

    const/4 p1, 0x0

    throw p1

    :cond_4
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 9
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

    .line 27
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    .line 28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_7

    check-cast v3, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 29
    invoke-virtual {p0, v3}, Lc/c/a/n/c/c/t;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-virtual {p0, v3}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/DownloadableEntity;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 31
    invoke-interface {v3}, Lcom/farsitel/bazaar/common/model/DownloadableEntity;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v7

    .line 32
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 33
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    check-cast v8, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v8, v7, :cond_0

    .line 34
    iget-boolean v7, p0, Lc/c/a/n/c/c/t;->v:Z

    if-eqz v7, :cond_6

    .line 35
    :cond_0
    invoke-interface {v3, v8}, Lcom/farsitel/bazaar/common/model/DownloadableEntity;->setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 36
    invoke-interface {v3}, Lcom/farsitel/bazaar/common/model/DownloadableEntity;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v3

    if-eqz v6, :cond_1

    invoke-virtual {p0, v3, v6}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;Ljava/lang/String;)V

    .line 37
    iget-object v3, p0, Lc/c/a/n/c/c/t;->u:Lb/r/t;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 38
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v5

    .line 39
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v5

    .line 40
    :cond_3
    sget-object v5, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v7, v5, :cond_6

    .line 41
    invoke-interface {v3}, Lcom/farsitel/bazaar/common/model/DownloadableEntity;->getEntityType()Lcom/farsitel/bazaar/common/model/EntityType;

    move-result-object v5

    sget-object v6, Lc/c/a/n/c/c/r;->b:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 42
    iget-object v5, p0, Lc/c/a/n/c/c/t;->o:Lc/c/a/b/d/o;

    invoke-interface {v3}, Lcom/farsitel/bazaar/common/model/common/Entity;->getEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc/c/a/b/d/o;->l(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v5

    goto :goto_1

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 43
    :cond_5
    iget-object v5, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    .line 44
    invoke-interface {v3}, Lcom/farsitel/bazaar/common/model/common/Entity;->getEntityId()Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-virtual {p0, v3}, Lc/c/a/n/c/c/t;->b(Lcom/farsitel/bazaar/common/model/DownloadableEntity;)Ljava/lang/Long;

    move-result-object v7

    .line 46
    invoke-virtual {v5, v6, v7}, Lc/c/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v5

    .line 47
    :goto_1
    invoke-interface {v3}, Lcom/farsitel/bazaar/common/model/DownloadableEntity;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v6

    if-eq v6, v5, :cond_6

    .line 48
    invoke-interface {v3, v5}, Lcom/farsitel/bazaar/common/model/DownloadableEntity;->setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 49
    iget-object v3, p0, Lc/c/a/n/c/c/t;->u:Lb/r/t;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    move v2, v4

    goto/16 :goto_0

    .line 50
    :cond_7
    invoke-static {}, Lh/a/l;->b()V

    throw v5

    .line 51
    :cond_8
    iput-boolean v1, p0, Lc/c/a/n/c/c/t;->v:Z

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)Z
    .locals 1

    .line 56
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    invoke-virtual {v0, p1}, Lc/c/a/b/d/b;->n(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/DownloadableEntity;)Ljava/lang/Long;
    .locals 2

    .line 8
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getLatestVersionCodeOnServer()Ljava/lang/Long;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/RecyclerData;)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/DownloadableEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/DownloadableEntity;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b(Landroidx/lifecycle/LiveData;Lh/f/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Lh/f/a/b<",
            "-TT;",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;)V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapFunction"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/c/c/t;->j:Lb/r/r;

    new-instance v1, Lc/c/a/n/c/c/s;

    invoke-direct {v1, p0, p2}, Lc/c/a/n/c/c/s;-><init>(Lc/c/a/n/c/c/t;Lh/f/a/b;)V

    invoke-virtual {v0, p1, v1}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_1

    check-cast v1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 10
    invoke-virtual {p0, v1}, Lc/c/a/n/c/c/t;->d(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/PurchasableEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/PurchasableEntity;->isBought()Z

    move-result v3

    .line 12
    iget-object v4, p0, Lc/c/a/n/c/c/t;->t:Ljava/util/HashSet;

    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/common/Entity;->getEntityId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/farsitel/bazaar/common/model/PurchasableEntity;->setBought(Z)V

    .line 13
    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/PurchasableEntity;->isBought()Z

    move-result v1

    if-eq v3, v1, :cond_0

    .line 14
    iget-object v1, p0, Lc/c/a/n/c/c/t;->u:Lb/r/t;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_0
    move v0, v2

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    invoke-virtual {v0, p1}, Lc/c/a/b/d/b;->o(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/common/LoadableEntity;
    .locals 1

    .line 20
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final c(Lcom/farsitel/bazaar/common/model/DownloadableEntity;)V
    .locals 1

    const-string v0, "downloadableEntity"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/DownloadableEntity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    invoke-virtual {v0, p1}, Lc/c/a/b/d/i;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/t;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_8

    check-cast v1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 4
    invoke-virtual {p0, v1}, Lc/c/a/n/c/c/t;->a(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/DownloadableEntity;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 5
    instance-of v4, v1, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    check-cast v4, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz v4, :cond_7

    .line 6
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getLatestVersionCodeOnServer()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getLatestVersionCodeOnServer()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_7

    .line 7
    :cond_3
    iget-object v5, p0, Lc/c/a/n/c/c/t;->s:Ljava/util/List;

    .line 8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    .line 9
    invoke-virtual {v7}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_5
    move-object v6, v3

    .line 10
    :goto_2
    check-cast v6, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/farsitel/bazaar/data/entity/UpgradableApp;->getVersionCode()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_6
    invoke-virtual {v4, v3}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->setLatestVersionCodeOnServer(Ljava/lang/Long;)V

    .line 11
    iget-object v3, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    .line 12
    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/common/Entity;->getEntityId()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {p0, v1}, Lc/c/a/n/c/c/t;->b(Lcom/farsitel/bazaar/common/model/DownloadableEntity;)Ljava/lang/Long;

    move-result-object v1

    .line 14
    invoke-virtual {v3, v5, v1}, Lc/c/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 15
    iget-object v1, p0, Lc/c/a/n/c/c/t;->u:Lb/r/t;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    move v0, v2

    goto/16 :goto_0

    .line 16
    :cond_8
    invoke-static {}, Lh/a/l;->b()V

    throw v3

    :cond_9
    :goto_4
    return-void
.end method

.method public final d(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/PurchasableEntity;
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_2
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_3
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d()V
    .locals 3

    .line 7
    invoke-super {p0}, Lc/c/a/d/f/p;->d()V

    .line 8
    iget-object v0, p0, Lc/c/a/n/c/c/t;->k:Li/a/u;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Li/a/ra$a;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 6

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 11
    invoke-virtual {p0, v2}, Lc/c/a/n/c/c/t;->c(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/common/LoadableEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12
    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/common/LoadableEntity;->isLoading()Z

    move-result v4

    .line 13
    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/common/Entity;->getEntityId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v2, v5}, Lcom/farsitel/bazaar/common/model/common/LoadableEntity;->setLoading(Z)V

    .line 14
    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/common/LoadableEntity;->isLoading()Z

    move-result v2

    if-eq v4, v2, :cond_0

    .line 15
    iget-object v2, p0, Lc/c/a/n/c/c/t;->u:Lb/r/t;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_0
    move v1, v3

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 6

    .line 2
    iget-object v1, p0, Lc/c/a/n/c/c/t;->l:Lh/c/e;

    new-instance v3, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$registerOnProgressChange$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/ui/base/page/PageViewModel$registerOnProgressChange$1;-><init>(Lc/c/a/n/c/c/t;Ljava/lang/String;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final j()Lb/r/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/r<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/t;->r:Lb/r/r;

    return-object v0
.end method

.method public final k()Lb/r/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/t;->u:Lb/r/t;

    return-object v0
.end method

.method public final l()Lb/r/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/t;->u:Lb/r/t;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/t;->n:Lc/c/a/b/d/b;

    invoke-virtual {v0}, Lc/c/a/b/d/b;->g()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/page/PageItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/t;->j:Lb/r/r;

    return-object v0
.end method

.method public abstract o()Z
.end method

.method public final p()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 3
    invoke-virtual {p0, v3}, Lc/c/a/n/c/c/t;->c(Lcom/farsitel/bazaar/common/model/RecyclerData;)Lcom/farsitel/bazaar/common/model/common/LoadableEntity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v3}, Lcom/farsitel/bazaar/common/model/common/LoadableEntity;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-interface {v3, v1}, Lcom/farsitel/bazaar/common/model/common/LoadableEntity;->setLoading(Z)V

    .line 6
    iget-object v3, p0, Lc/c/a/n/c/c/t;->u:Lb/r/t;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_0
    move v2, v4

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    return-void
.end method
