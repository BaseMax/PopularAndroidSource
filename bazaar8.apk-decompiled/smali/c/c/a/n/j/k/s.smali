.class public final Lc/c/a/n/j/k/s;
.super Lc/c/a/n/c/d/g;
.source "VideoDetailViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic j:[Lh/i/i;


# instance fields
.field public final k:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

.field public final n:Lh/c;

.field public final o:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Integer;",
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

.field public final q:Lc/c/a/e/d/h/e/a;

.field public final r:Lc/c/a/e/d/h/e/a/c;

.field public final s:Lc/c/a/b/d/o;

.field public final t:Lc/c/a/b/d/m;

.field public final u:Lc/c/a/d/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/n/j/k/s;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "videoPurchasedLiveData"

    const-string v4, "getVideoPurchasedLiveData()Landroidx/lifecycle/LiveData;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/n/j/k/s;->j:[Lh/i/i;

    return-void
.end method

.method public constructor <init>(Lc/c/a/e/d/h/e/a;Lc/c/a/e/d/h/e/a/c;Lc/c/a/b/d/o;Lc/c/a/b/d/m;Lc/c/a/d/c/b;)V
    .locals 1

    const-string v0, "videoDetailRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDownloadedRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentManager"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/k/s;->q:Lc/c/a/e/d/h/e/a;

    iput-object p2, p0, Lc/c/a/n/j/k/s;->r:Lc/c/a/e/d/h/e/a/c;

    iput-object p3, p0, Lc/c/a/n/j/k/s;->s:Lc/c/a/b/d/o;

    iput-object p4, p0, Lc/c/a/n/j/k/s;->t:Lc/c/a/b/d/m;

    iput-object p5, p0, Lc/c/a/n/j/k/s;->u:Lc/c/a/d/c/b;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/k/s;->k:Lb/r/t;

    .line 3
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/k/s;->l:Lb/r/r;

    .line 4
    new-instance p1, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$videoPurchasedLiveData$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$videoPurchasedLiveData$2;-><init>(Lc/c/a/n/j/k/s;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/j/k/s;->n:Lh/c;

    .line 5
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/k/s;->o:Lb/r/t;

    .line 6
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/k/s;->p:Lb/r/r;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/k/s;)Lb/r/r;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/j/k/s;->p:Lb/r/r;

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/n/j/k/s;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;
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
    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/k/s;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/k/s;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->a(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/k/s;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/k/s;Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->e(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/j/k/s;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_1

    .line 11
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
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_3

    .line 12
    invoke-virtual {p0}, Lc/c/a/n/j/k/s;->o()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/j/k/s;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/j/k/s;)Lc/c/a/b/d/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/k/s;->t:Lc/c/a/b/d/m;

    return-object p0
.end method

.method public static synthetic b(Lc/c/a/n/j/k/s;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 2
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
    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->d(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/j/k/s;)Lc/c/a/e/d/h/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/k/s;->q:Lc/c/a/e/d/h/e/a;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/n/j/k/s;)Lc/c/a/e/d/h/e/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/k/s;->r:Lc/c/a/e/d/h/e/a/c;

    return-object p0
.end method

.method public static final synthetic e(Lc/c/a/n/j/k/s;)Lb/r/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/k/s;->l:Lb/r/r;

    return-object p0
.end method

.method public static final synthetic f(Lc/c/a/n/j/k/s;)Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/k/s;->m:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "videoInfoModel"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic g(Lc/c/a/n/j/k/s;)Lc/c/a/b/d/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/k/s;->s:Lc/c/a/b/d/o;

    return-object p0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0x3f2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lc/c/a/n/j/k/s;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lc/c/a/n/j/k/s;->k:Lb/r/t;

    invoke-virtual {v0, p1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/j/k/s;->j()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setVideoState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 10
    invoke-virtual {p0, v0}, Lc/c/a/n/j/k/s;->b(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lc/c/a/n/j/k/s;->m:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    .line 7
    new-instance v4, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$makeData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$makeData$1;-><init>(Lc/c/a/n/j/k/s;Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 16
    new-instance v3, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/ui/cinema/video/VideoDetailViewModel$registerOnProgressChange$1;-><init>(Lc/c/a/n/j/k/s;Ljava/lang/String;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;Z)V"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setBought(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)Z
    .locals 1

    .line 17
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 8
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

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v7, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;-><init>(IZIILh/f/b/f;)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_e

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v2

    .line 9
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

    .line 10
    :goto_1
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DESCRIPTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SCREEN_SHOT:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_2

    :goto_2
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 11
    :cond_2
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_SEE_MORE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 12
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 13
    :cond_3
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_4

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 14
    :cond_4
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SCREEN_SHOT:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_5

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 15
    :cond_5
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->CREWS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_6

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_6
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->OTHER_INFO_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_7

    if-eqz v3, :cond_7

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 17
    :cond_7
    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->LOADING_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_8

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 18
    :cond_8
    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->ADD_REVIEW:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_9

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 19
    :cond_9
    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->REVIEW_ACTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_a

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 20
    :cond_a
    sget-object v3, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_VIDEO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_b

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 21
    :cond_b
    sget-object v3, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_SERIAL:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_c

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 22
    :cond_c
    sget-object v3, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_d

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23
    :cond_d
    :goto_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_e
    return-object v0
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lc/c/a/n/j/k/s;->s:Lc/c/a/b/d/o;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/b/d/i;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lc/c/a/n/j/k/s;->m:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;->getVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "videoInfoModel"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
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

    .line 3
    instance-of v2, v2, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 4
    :goto_0
    move-object p1, v1

    check-cast p1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    if-nez v1, :cond_3

    move-object p1, v0

    :cond_3
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    return-object p1
.end method

.method public final d(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
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

    .line 4
    instance-of v2, v2, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 5
    :goto_0
    move-object p1, v1

    check-cast p1, Lcom/farsitel/bazaar/common/model/RecyclerData;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    if-nez v1, :cond_3

    move-object p1, v0

    :cond_3
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->a(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;)V

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, v2}, Lc/c/a/n/j/k/s;->a(Lc/c/a/n/j/k/s;Ljava/util/List;ZILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/n/j/k/s;->a(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/j/k/s;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public final j()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/k/s;->s:Lc/c/a/b/d/o;

    iget-object v1, p0, Lc/c/a/n/j/k/s;->m:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/VideoInfoModel;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/d/o;->l(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "videoInfoModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
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
    iget-object v0, p0, Lc/c/a/n/j/k/s;->o:Lb/r/t;

    return-object v0
.end method

.method public final l()Lb/r/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/k/s;->p:Lb/r/r;

    return-object v0
.end method

.method public final m()Lcom/farsitel/bazaar/common/model/PlayedVideoModel;
    .locals 17

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object/from16 v2, p0

    .line 1
    invoke-static {v2, v0, v1, v0}, Lc/c/a/n/j/k/s;->b(Lc/c/a/n/j/k/s;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    new-instance v16, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    .line 3
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/farsitel/bazaar/common/model/PlayedVideoType;->VIDEO:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->isLive()Z

    move-result v11

    const-wide/16 v12, 0x0

    const/16 v14, 0x100

    const/4 v15, 0x0

    move-object/from16 v3, v16

    .line 4
    invoke-direct/range {v3 .. v15}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJILh/f/b/f;)V

    return-object v16

    .line 5
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0
.end method

.method public final n()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/model/Resource;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 4
    instance-of v3, v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final o()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/n/j/k/s;->n:Lh/c;

    sget-object v1, Lc/c/a/n/j/k/s;->j:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final p()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/k/s;->l:Lb/r/r;

    return-object v0
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v1, v0, v1}, Lc/c/a/n/j/k/s;->a(Lc/c/a/n/j/k/s;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setShowLoadingButton(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Lc/c/a/n/j/k/s;->p:Lb/r/r;

    invoke-virtual {p0}, Lc/c/a/n/j/k/s;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final r()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/k/s;->u:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ReviewState$PostComment;->a:Lcom/farsitel/bazaar/core/model/ReviewState$PostComment;

    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/core/model/Resource;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v4

    :cond_1
    invoke-direct {v1, v2, v3, v4}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p0, Lc/c/a/n/j/k/s;->o:Lb/r/t;

    const/16 v1, 0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final s()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lc/c/a/n/j/k/s;->k:Lb/r/t;

    return-object v0
.end method

.method public final t()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v0}, Lc/c/a/n/j/k/s;->a(Lc/c/a/n/j/k/s;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setShowLoadingButton(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Lc/c/a/n/j/k/s;->p:Lb/r/r;

    invoke-virtual {p0}, Lc/c/a/n/j/k/s;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method
