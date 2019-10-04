.class public final Lc/c/a/n/b/w;
.super Lc/c/a/n/c/d/g;
.source "AppDetailViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/b/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lc/c/a/n/b/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic j:[Lh/i/i;

.field public static final k:Lc/c/a/n/b/w$a;


# instance fields
.field public final A:Lc/c/a/p/I;

.field public l:Ljava/lang/String;

.field public final m:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lh/c;

.field public final r:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Landroid/content/Context;

.field public final t:Lc/c/a/e/d/c/a;

.field public final u:Lc/c/a/e/d/i/j;

.field public final v:Lc/c/a/e/d/d/b;

.field public final w:Lc/c/a/e/d/b/ba;

.field public final x:Lc/c/a/b/d/b;

.field public final y:Lc/c/a/b/d/m;

.field public final z:Lc/c/a/d/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/n/b/w;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "appPurchasedLiveData"

    const-string v4, "getAppPurchasedLiveData()Landroidx/lifecycle/LiveData;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/n/b/w;->j:[Lh/i/i;

    new-instance v0, Lc/c/a/n/b/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/b/w$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/b/w;->k:Lc/c/a/n/b/w$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/c/a;Lc/c/a/e/d/i/j;Lc/c/a/e/d/d/b;Lc/c/a/e/d/b/ba;Lc/c/a/b/d/b;Lc/c/a/b/d/m;Lc/c/a/d/c/b;Lc/c/a/p/I;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAppDetailRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadProgressRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookmarkRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradableAppRepository"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appManager"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentManager"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {p9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/b/w;->s:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/n/b/w;->t:Lc/c/a/e/d/c/a;

    iput-object p3, p0, Lc/c/a/n/b/w;->u:Lc/c/a/e/d/i/j;

    iput-object p4, p0, Lc/c/a/n/b/w;->v:Lc/c/a/e/d/d/b;

    iput-object p5, p0, Lc/c/a/n/b/w;->w:Lc/c/a/e/d/b/ba;

    iput-object p6, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    iput-object p7, p0, Lc/c/a/n/b/w;->y:Lc/c/a/b/d/m;

    iput-object p8, p0, Lc/c/a/n/b/w;->z:Lc/c/a/d/c/b;

    iput-object p9, p0, Lc/c/a/n/b/w;->A:Lc/c/a/p/I;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/b/w;->m:Lb/r/t;

    .line 3
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/b/w;->n:Lb/r/t;

    .line 4
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/b/w;->o:Lb/r/r;

    .line 5
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/b/w;->p:Lb/r/r;

    .line 6
    new-instance p1, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$appPurchasedLiveData$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$appPurchasedLiveData$2;-><init>(Lc/c/a/n/b/w;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/b/w;->q:Lh/c;

    .line 7
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/b/w;->r:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/b/w;)Lc/c/a/d/c/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/b/w;->z:Lc/c/a/d/c/b;

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/b/w;I)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->d(I)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/b/w;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/b/w;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/b/w;Ljava/util/List;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->f(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/b/w;)Lb/r/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/w;->o:Lb/r/r;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/b/w;)Lc/c/a/e/d/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/w;->v:Lc/c/a/e/d/d/b;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/n/b/w;)Lb/r/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/w;->n:Lb/r/t;

    return-object p0
.end method

.method public static final synthetic e(Lc/c/a/n/b/w;)Lc/c/a/e/d/i/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/w;->u:Lc/c/a/e/d/i/j;

    return-object p0
.end method

.method public static final synthetic f(Lc/c/a/n/b/w;)Lc/c/a/e/d/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/w;->t:Lc/c/a/e/d/c/a;

    return-object p0
.end method

.method public static final synthetic g(Lc/c/a/n/b/w;)Lb/r/r;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lc/c/a/n/b/w;)Lb/r/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/w;->r:Lb/r/t;

    return-object p0
.end method

.method public static final synthetic i(Lc/c/a/n/b/w;)Lb/r/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/w;->p:Lb/r/r;

    return-object p0
.end method

.method public static final synthetic j(Lc/c/a/n/b/w;)Lc/c/a/b/d/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/w;->y:Lc/c/a/b/d/m;

    return-object p0
.end method

.method public static final synthetic k(Lc/c/a/n/b/w;)Lc/c/a/e/d/b/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/w;->w:Lc/c/a/e/d/b/ba;

    return-object p0
.end method

.method public static final synthetic l(Lc/c/a/n/b/w;)Lc/c/a/p/I;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/b/w;->A:Lc/c/a/p/I;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)I"
        }
    .end annotation

    .line 35
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 36
    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 37
    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_2
    return v1
.end method

.method public final a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    invoke-virtual {v0, p1}, Lc/c/a/b/d/b;->l(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 2

    .line 14
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    iget-object v1, p0, Lc/c/a/n/b/w;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lc/c/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "packageName"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 8
    sget-object v0, Lc/c/a/n/b/u;->c:Lc/c/a/n/b/u;

    invoke-virtual {v0, p1, p2}, Lc/c/a/n/b/u;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p2, p3, :cond_0

    .line 32
    invoke-virtual {p0}, Lc/c/a/n/b/w;->w()V

    goto :goto_0

    :pswitch_1
    if-ne p2, p3, :cond_0

    .line 33
    invoke-virtual {p0}, Lc/c/a/n/b/w;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->c(I)V

    goto :goto_0

    :pswitch_2
    if-ne p2, p3, :cond_0

    .line 34
    invoke-virtual {p0}, Lc/c/a/n/b/w;->j()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lc/c/a/n/b/s;)V
    .locals 13

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v4, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$1;-><init>(Lc/c/a/n/b/w;Lc/c/a/n/b/s;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    .line 7
    new-instance v10, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;

    invoke-direct {v10, p0, v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$makeData$2;-><init>(Lc/c/a/n/b/w;Lh/c/b;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lc/c/a/n/b/w;->m:Lb/r/t;

    invoke-virtual {v0, p1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 9
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/c/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UPDATE_NEEDED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_0

    .line 11
    new-instance v1, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$handleAppState$$inlined$let$lambda$1;-><init>(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;Lh/c/b;Lc/c/a/n/b/w;Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    invoke-virtual {p0, v1}, Lc/c/a/d/f/p;->a(Lh/f/a/b;)V

    .line 12
    :cond_0
    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->setAppState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 13
    invoke-virtual {p0, v0}, Lc/c/a/n/b/w;->b(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;Ljava/lang/Long;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    .line 18
    new-instance v8, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    .line 19
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isFree()Z

    move-result v4

    .line 22
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getReferrer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    .line 23
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getVersionCode()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, v8

    move-object v7, p2

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 25
    invoke-virtual {v0, v8}, Lc/c/a/b/d/b;->a(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V
    .locals 5

    const-string v0, "packageChangeModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/b/w;->l:Ljava/lang/String;

    const-string v1, "packageName"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 29
    invoke-static {p0, v2, p1, v2}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    iget-object v4, p0, Lc/c/a/n/b/w;->l:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Lc/c/a/b/d/b;->p(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->setApplicationInstalled(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_1
    :goto_0
    invoke-static {p0, v2, p1, v2}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    :cond_2
    return-void

    .line 31
    :cond_3
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)Z
    .locals 1

    .line 16
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    invoke-virtual {v0, p1}, Lc/c/a/b/d/b;->m(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v7, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailDividerItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailDividerItem;-><init>(IZIILh/f/b/f;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_12

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/common/model/RecyclerData;

    invoke-interface {v3}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_1
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->MORE_ARTICLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 8
    :cond_1
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->ARTICLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_3

    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->MORE_ARTICLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_3

    .line 9
    :goto_2
    new-instance v2, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailDividerItem;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailDividerItem;-><init>(IZIILh/f/b/f;)V

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 10
    :cond_3
    sget-object v4, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v4

    if-ne v2, v4, :cond_4

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 11
    :cond_4
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->REVIEW_ACTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_5

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 12
    :cond_5
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->REVIEW_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_7

    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->MY_REVIEW:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_7

    :goto_3
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 13
    :cond_7
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_MORE_DESCRIPTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 14
    :cond_8
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->CHANGE_LOG:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_9

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 15
    :cond_9
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_MY_RATE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_a

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 16
    :cond_a
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->DEVELOPER_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_c

    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->SCREEN_SHOT_SECTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_c

    .line 17
    new-instance v2, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailDividerItem;

    const/4 v10, 0x0

    const/16 v9, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailDividerItem;-><init>(IZIILh/f/b/f;)V

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 18
    :cond_c
    :goto_4
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->DEVELOPER_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_d

    .line 19
    new-instance v2, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailDividerItem;

    const/4 v10, 0x0

    const/16 v9, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailDividerItem;-><init>(IZIILh/f/b/f;)V

    .line 20
    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 21
    :cond_d
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_f

    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->SCREEN_SHOT_SECTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-nez v3, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_f

    .line 22
    :goto_5
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 23
    :cond_f
    sget-object v4, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->EDITOR_CHOICE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_11

    sget-object v2, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->SCREEN_SHOT_SECTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-nez v3, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_11

    .line 24
    :goto_6
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    :cond_11
    :goto_7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_12
    return-object v0
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getCanBeInstalled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v2, p0, Lc/c/a/n/b/w;->s:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lc/c/a/c/h/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/c/b/h;->b(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 31
    :cond_0
    invoke-virtual {p0, p1, v1}, Lc/c/a/n/b/w;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;Ljava/lang/Long;)V

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object p1

    new-instance v0, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/AppDetailState$Payment;->a:Lcom/farsitel/bazaar/core/model/AppDetailState$Payment;

    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v1

    :cond_3
    invoke-direct {v0, v2, v3, v1}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {p1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "appState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    iget-object p1, p0, Lc/c/a/n/b/w;->l:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "packageName"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    invoke-virtual {v0, p1}, Lc/c/a/b/d/b;->n(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 6
    instance-of v2, v2, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 7
    :goto_0
    move-object p1, v1

    check-cast p1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    if-nez v1, :cond_3

    move-object p1, v0

    :cond_3
    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    return-object p1
.end method

.method public final c(I)V
    .locals 2

    .line 4
    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onPostCommentClicked$1;-><init>(Lc/c/a/n/b/w;ILh/c/b;)V

    invoke-virtual {p0, v0}, Lc/c/a/d/f/p;->a(Lh/f/a/b;)V

    return-void
.end method

.method public final c(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/b/d/i;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    invoke-virtual {v0, p1}, Lc/c/a/b/d/b;->o(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->CHANGE_LOG:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {p0, v1, p1}, Lc/c/a/n/b/w;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;Ljava/util/List;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final d(I)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/b/w;->q()Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    invoke-virtual {v0}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 8
    invoke-virtual {v1, p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;->setMyRate(I)V

    .line 9
    iget-object p1, p0, Lc/c/a/n/b/w;->p:Lb/r/r;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/r/t;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lc/c/a/n/b/s;

    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/s;)V

    return-void
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_MY_RATE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {p0, v1, p1}, Lc/c/a/n/b/w;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;Ljava/util/List;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 6

    .line 5
    new-instance v3, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$registerOnProgressChange$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$registerOnProgressChange$1;-><init>(Lc/c/a/n/b/w;Ljava/lang/String;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lc/c/a/n/b/w;->l:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/b/w;->u()Z

    move-result v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lc/c/a/n/b/w;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/b/w;->k()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->setBought(Z)V

    :cond_2
    const-string v1, "packageName"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 10
    iget-object v3, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    iget-object v4, p0, Lc/c/a/n/b/w;->l:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Lc/c/a/b/d/b;->p(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->setApplicationInstalled(Z)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    if-eqz v0, :cond_7

    .line 11
    iget-object v3, p0, Lc/c/a/n/b/w;->s:Landroid/content/Context;

    iget-object v4, p0, Lc/c/a/n/b/w;->l:Ljava/lang/String;

    if-eqz v4, :cond_6

    invoke-static {v3, v4}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lc/c/a/c/b/h;->c(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_5
    invoke-virtual {v0, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->setUnInstallable(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lc/c/a/n/b/w;->c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/n/b/w;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    .line 13
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method public final j()V
    .locals 2

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$changeBookmarkState$1;-><init>(Lc/c/a/n/b/w;Lh/c/b;)V

    invoke-virtual {p0, v0}, Lc/c/a/d/f/p;->a(Lh/f/a/b;)V

    return-void
.end method

.method public final k()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/n/b/w;->q:Lh/c;

    sget-object v1, Lc/c/a/n/b/w;->j:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final l()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    iget-object v1, p0, Lc/c/a/n/b/w;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lc/c/a/b/d/i;->d(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "packageName"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final m()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/w;->o:Lb/r/r;

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/w;->n:Lb/r/t;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/w;->r:Lb/r/t;

    return-object v0
.end method

.method public final p()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 3
    instance-of v3, v3, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 4
    :goto_0
    move-object v0, v2

    check-cast v0, Lcom/farsitel/bazaar/common/model/RecyclerData;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    if-nez v2, :cond_3

    move-object v0, v1

    :cond_3
    check-cast v0, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;->getMyRate()I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final q()Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

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
    instance-of v5, v3, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    if-eqz v5, :cond_0

    new-instance v0, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    move v2, v4

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    throw v1

    :cond_2
    return-object v1
.end method

.method public final r()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/w;->p:Lb/r/r;

    return-object v0
.end method

.method public final s()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    invoke-virtual {v0}, Lc/c/a/b/d/b;->g()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/w;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "packageName"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final u()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/w;->x:Lc/c/a/b/d/b;

    iget-object v1, p0, Lc/c/a/n/b/w;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lc/c/a/b/d/b;->p(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "packageName"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/w;->o:Lb/r/r;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w()V
    .locals 2

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailViewModel$onReportFragmentClicked$1;-><init>(Lc/c/a/n/b/w;Lh/c/b;)V

    invoke-virtual {p0, v0}, Lc/c/a/d/f/p;->a(Lh/f/a/b;)V

    return-void
.end method

.method public final x()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/w;->m:Lb/r/t;

    return-object v0
.end method
