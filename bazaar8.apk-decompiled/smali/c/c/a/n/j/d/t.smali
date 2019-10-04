.class public final Lc/c/a/n/j/d/t;
.super Lc/c/a/n/j/h/a;
.source "EpisodeDetailViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/j/h/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic j:[Lh/i/i;


# instance fields
.field public final A:Landroid/content/Context;

.field public final B:Lc/c/a/e/d/h/d/a/a;

.field public final C:Lc/c/a/e/d/h/e/a/c;

.field public final D:Lc/c/a/b/d/o;

.field public final E:Lc/c/a/b/d/m;

.field public final F:Lc/c/a/d/c/b;

.field public final k:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lh/c;

.field public final m:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final o:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
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

.field public q:Ljava/lang/String;

.field public r:Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

.field public s:Ljava/lang/String;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:Li/a/ra;

.field public w:Ljava/lang/Integer;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/n/j/d/t;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "episodePurchasedLiveData"

    const-string v4, "getEpisodePurchasedLiveData()Landroidx/lifecycle/LiveData;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/n/j/d/t;->j:[Lh/i/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/h/d/a/a;Lc/c/a/e/d/h/e/a/c;Lc/c/a/b/d/o;Lc/c/a/b/d/m;Lc/c/a/d/c/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeDetailRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDownloadedRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoManager"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentManager"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/j/h/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/d/t;->A:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/n/j/d/t;->B:Lc/c/a/e/d/h/d/a/a;

    iput-object p3, p0, Lc/c/a/n/j/d/t;->C:Lc/c/a/e/d/h/e/a/c;

    iput-object p4, p0, Lc/c/a/n/j/d/t;->D:Lc/c/a/b/d/o;

    iput-object p5, p0, Lc/c/a/n/j/d/t;->E:Lc/c/a/b/d/m;

    iput-object p6, p0, Lc/c/a/n/j/d/t;->F:Lc/c/a/d/c/b;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/d/t;->k:Lb/r/t;

    .line 3
    new-instance p1, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$episodePurchasedLiveData$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$episodePurchasedLiveData$2;-><init>(Lc/c/a/n/j/d/t;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/j/d/t;->l:Lh/c;

    .line 4
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/d/t;->m:Lb/r/t;

    .line 5
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/d/t;->n:Lb/r/r;

    .line 6
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/d/t;->o:Lb/r/r;

    .line 7
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/d/t;->p:Lb/r/r;

    .line 8
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/j/d/t;->t:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/d/t;->u:Ljava/util/HashSet;

    .line 10
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->i()I

    move-result p1

    iput p1, p0, Lc/c/a/n/j/d/t;->y:I

    .line 11
    iget-object p1, p0, Lc/c/a/n/j/d/t;->n:Lb/r/r;

    iget-object p2, p0, Lc/c/a/n/j/d/t;->E:Lc/c/a/b/d/m;

    invoke-virtual {p2}, Lc/c/a/b/d/m;->a()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance p3, Lc/c/a/n/j/d/q;

    invoke-direct {p3, p0}, Lc/c/a/n/j/d/q;-><init>(Lc/c/a/n/j/d/t;)V

    invoke-virtual {p1, p2, p3}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 15
    iget-object p1, p0, Lc/c/a/n/j/d/t;->t:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/d/t;)Ljava/util/HashSet;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/j/d/t;->u:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->b(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/d/t;Ljava/util/List;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->f(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/j/d/t;Ljava/util/List;ZILjava/lang/Object;)V
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
    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->p()Landroidx/lifecycle/LiveData;

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
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/j/d/t;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/d/t;Lkotlin/Pair;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->a(Lkotlin/Pair;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/j/d/t;)Lc/c/a/e/d/h/d/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/d/t;->B:Lc/c/a/e/d/h/d/a/a;

    return-object p0
.end method

.method public static synthetic b(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 7
    iget-object p1, p0, Lc/c/a/n/j/d/t;->t:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->d(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->b(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic c(Lc/c/a/n/j/d/t;)Lb/r/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/d/t;->o:Lb/r/r;

    return-object p0
.end method

.method public static synthetic c(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 2
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
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->g(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic d(Lc/c/a/n/j/d/t;)Lb/r/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/d/t;->p:Lb/r/r;

    return-object p0
.end method

.method public static final synthetic e(Lc/c/a/n/j/d/t;)Lc/c/a/b/d/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/d/t;->E:Lc/c/a/b/d/m;

    return-object p0
.end method

.method public static final synthetic f(Lc/c/a/n/j/d/t;)Lc/c/a/e/d/h/e/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/d/t;->C:Lc/c/a/e/d/h/e/a/c;

    return-object p0
.end method

.method public static final synthetic g(Lc/c/a/n/j/d/t;)Lc/c/a/b/d/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/d/t;->D:Lc/c/a/b/d/o;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;
    .locals 18

    const-string v0, "item"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    move-object/from16 v3, p0

    .line 53
    invoke-static {v3, v0, v2, v0}, Lc/c/a/n/j/d/t;->b(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 54
    new-instance v17, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getId()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getName()Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;->getMainUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v7, v0

    .line 58
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getEpisodeIndex()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lc/c/a/n/j/d/t;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/farsitel/bazaar/common/model/PlayedVideoType;->EPISODE:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v15, 0x100

    const/16 v16, 0x0

    move-object/from16 v4, v17

    .line 59
    invoke-direct/range {v4 .. v16}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJILh/f/b/f;)V

    return-object v17

    .line 60
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;
    .locals 18

    const-string v0, "item"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    move-object/from16 v3, p0

    .line 45
    invoke-static {v3, v0, v2, v0}, Lc/c/a/n/j/d/t;->b(Lc/c/a/n/j/d/t;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 46
    new-instance v17, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEpisodeId()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getName()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;->getMainUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v7, v0

    .line 50
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getEpisodeIdx()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lc/c/a/n/j/d/t;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lcom/farsitel/bazaar/common/model/PlayedVideoType;->EPISODE:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v15, 0x100

    const/16 v16, 0x0

    move-object/from16 v4, v17

    .line 51
    invoke-direct/range {v4 .. v16}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJILh/f/b/f;)V

    return-object v17

    .line 52
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0
.end method

.method public final a(ILjava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 34
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    if-eqz v0, :cond_1

    .line 35
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->e(Ljava/util/List;)I

    move-result v0

    .line 28
    invoke-virtual {p0, v0, p1}, Lc/c/a/n/j/d/t;->a(ILjava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;->getItems()Ljava/util/List;

    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 31
    check-cast v5, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    .line 32
    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v5

    if-ne v5, p2, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_2
    if-ltz v4, :cond_3

    const/4 p2, 0x0

    .line 33
    invoke-static {v1, p2, v4, v6, p2}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;->copy$default(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;Ljava/util/List;IILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0x3f2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->v()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lc/c/a/n/j/d/t;->k:Lb/r/t;

    invoke-virtual {v0, p1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lc/c/a/n/j/d/t;->w:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 37
    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/j/d/t;->w:Ljava/lang/Integer;

    .line 38
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->i()I

    move-result v0

    iput v0, p0, Lc/c/a/n/j/d/t;->y:I

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lc/c/a/n/j/d/t;->d(I)V

    .line 40
    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/g;->c(Z)V

    .line 41
    iget-object v0, p0, Lc/c/a/n/j/d/t;->t:Ljava/util/List;

    invoke-static {v0}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lc/c/a/n/j/d/t;->a(Ljava/util/List;I)Ljava/util/List;

    iput-object v0, p0, Lc/c/a/n/j/d/t;->t:Ljava/util/List;

    .line 42
    iget-object p1, p0, Lc/c/a/n/j/d/t;->t:Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    .line 44
    iget-object p1, p0, Lc/c/a/n/j/d/t;->r:Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "params"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;)V
    .locals 8

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lc/c/a/n/j/d/t;->r:Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    .line 8
    iget-object v0, p0, Lc/c/a/n/j/d/t;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$makeData$1;-><init>(Lc/c/a/n/j/d/t;Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;Lh/c/b;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->h()I

    move-result p1

    iget v0, p0, Lc/c/a/n/j/d/t;->y:I

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lc/c/a/n/j/d/t;->q:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->j()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/j/d/t;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p1, "seriesId"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lc/c/a/n/j/d/t;->a(Lkotlin/Pair;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 62
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_2

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 63
    instance-of v4, v2, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    if-eqz v4, :cond_0

    .line 64
    check-cast v2, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getShowLoadingButton()Z

    move-result v4

    .line 65
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v5

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEpisodeId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->setShowLoadingButton(Z)V

    .line 66
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getShowLoadingButton()Z

    move-result v2

    if-eq v4, v2, :cond_1

    .line 67
    iget-object v2, p0, Lc/c/a/n/j/d/t;->p:Lb/r/r;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 68
    :cond_0
    instance-of v4, v2, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    if-eqz v4, :cond_1

    .line 69
    check-cast v2, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getShowLoadingButton()Z

    move-result v4

    .line 70
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setShowLoadingButton(Z)V

    .line 71
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getShowLoadingButton()Z

    move-result v2

    if-eq v4, v2, :cond_1

    .line 72
    iget-object v2, p0, Lc/c/a/n/j/d/t;->p:Lb/r/r;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    move v1, v3

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {}, Lh/a/l;->b()V

    const/4 p1, 0x0

    throw p1

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 10

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/j/d/t;->w:Ljava/lang/Integer;

    .line 19
    iget-object v0, p0, Lc/c/a/n/j/d/t;->v:Li/a/ra;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Li/a/ra$a;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 20
    :cond_0
    iget v0, p0, Lc/c/a/n/j/d/t;->y:I

    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->h()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->i()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 21
    new-instance v9, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$getEpisodes$1;

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$getEpisodes$1;-><init>(Lc/c/a/n/j/d/t;Ljava/lang/String;IILh/c/b;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v8

    move-object v3, v9

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/j/d/t;->v:Li/a/ra;

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
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setBought(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lkotlin/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;)V"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 23
    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->h()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lc/c/a/n/j/d/t;->d(I)V

    .line 24
    invoke-virtual {p1}, Lkotlin/Pair;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lc/c/a/n/j/d/t;->y:I

    .line 25
    invoke-virtual {p0, v0}, Lc/c/a/n/j/d/t;->g(Ljava/util/List;)V

    .line 26
    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
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

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v7, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/cinema/VideoDividerItem;-><init>(IZIILh/f/b/f;)V

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_10

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v2

    .line 15
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

    .line 16
    :goto_1
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DIVIDER:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_f

    .line 17
    :goto_2
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_SEE_MORE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 18
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 19
    :cond_2
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 20
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 21
    :cond_3
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SINGLE_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 22
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 23
    :cond_4
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_5

    .line 24
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 25
    :cond_5
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SCREEN_SHOT:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 26
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 27
    :cond_6
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->CREWS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_7

    .line 28
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 29
    :cond_7
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->OTHER_INFO_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_8

    if-eqz v3, :cond_8

    .line 30
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 31
    :cond_8
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->LOADING_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_9

    .line 32
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 33
    :cond_9
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->RETRY_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_a

    .line 34
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 35
    :cond_a
    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DESCRIPTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_c

    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SCREEN_SHOT:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-nez v3, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_c

    :goto_3
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 36
    :cond_c
    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->ADD_REVIEW:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_d

    .line 37
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 38
    :cond_d
    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->REVIEW_ACTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_e

    .line 39
    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40
    :cond_e
    :goto_4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 41
    :cond_f
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_10
    return-object v0
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->l()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setVideoState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 6
    invoke-virtual {p0, v0}, Lc/c/a/n/j/d/t;->b(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lc/c/a/n/j/d/t;->s:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "episodeId"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 10
    new-instance v3, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$registerOnProgressChange$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailViewModel$registerOnProgressChange$1;-><init>(Lc/c/a/n/j/d/t;Ljava/lang/String;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

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

    .line 6
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

    .line 7
    instance-of v2, v2, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 8
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

.method public final c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lc/c/a/n/j/d/t;->x:I

    return-void
.end method

.method public final c(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/j/d/t;->D:Lc/c/a/b/d/o;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/b/d/i;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "seriesId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->j()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/j/d/t;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final d(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)",
            "Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;"
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
    instance-of v2, v2, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

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
    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    if-nez v1, :cond_3

    move-object p1, v0

    :cond_3
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    return-object p1
.end method

.method public d(I)V
    .locals 0

    .line 4
    iput p1, p0, Lc/c/a/n/j/d/t;->z:I

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->a(Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lc/c/a/n/j/d/t;->s:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)I"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 4
    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v3

    sget-object v4, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v2

    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SINGLE_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_3
    return v1
.end method

.method public final f(Ljava/util/List;)V
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

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->d(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeInfoItem;->getSeriesId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lc/c/a/n/j/d/t;->q:Ljava/lang/String;

    .line 4
    :cond_0
    iput-object p1, p0, Lc/c/a/n/j/d/t;->t:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-static {p0, p1, v0, v1, v2}, Lc/c/a/n/j/d/t;->a(Lc/c/a/n/j/d/t;Ljava/util/List;ZILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->c(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/n/j/d/t;->b(Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;)V

    .line 7
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lc/c/a/n/j/d/t;->g(Ljava/util/List;)V

    .line 9
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lc/c/a/n/j/d/t;->r:Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->c(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "params"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final g(Ljava/util/List;)V
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

    .line 2
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

    .line 3
    instance-of v3, v1, Lcom/farsitel/bazaar/common/model/PurchasableEntity;

    if-eqz v3, :cond_0

    .line 4
    check-cast v1, Lcom/farsitel/bazaar/common/model/PurchasableEntity;

    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/PurchasableEntity;->isBought()Z

    move-result v3

    .line 5
    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/common/Entity;->getEntityId()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lc/c/a/n/j/d/t;->u:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 7
    invoke-interface {v1, v4}, Lcom/farsitel/bazaar/common/model/PurchasableEntity;->setBought(Z)V

    .line 8
    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/PurchasableEntity;->isBought()Z

    move-result v1

    if-eq v3, v1, :cond_0

    .line 9
    iget-object v1, p0, Lc/c/a/n/j/d/t;->p:Lb/r/r;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_0
    move v0, v2

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/j/d/t;->z:I

    return v0
.end method

.method public j()I
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/t;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lc/c/a/n/j/d/t;->x:I

    .line 2
    :goto_0
    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v4

    if-ne v4, v0, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    check-cast v2, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->k()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lh/a/u;->g(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;->getIndex()I

    move-result v1

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_6
    return v0
.end method

.method public k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/t;->t:Ljava/util/List;

    invoke-static {v0}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lc/c/a/n/j/d/t;->e(Ljava/util/List;)I

    move-result v1

    .line 3
    invoke-virtual {p0, v1, v0}, Lc/c/a/n/j/d/t;->a(ILjava/util/List;)Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/SeriesSeasonsItem;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final l()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/t;->D:Lc/c/a/b/d/o;

    iget-object v1, p0, Lc/c/a/n/j/d/t;->s:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lc/c/a/b/d/o;->l(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "episodeId"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final m()Lb/r/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/r<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/t;->n:Lb/r/r;

    return-object v0
.end method

.method public final n()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/t;->t:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 4
    instance-of v2, v2, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/t;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "episodeId"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final p()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/n/j/d/t;->l:Lh/c;

    sget-object v1, Lc/c/a/n/j/d/t;->j:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final q()Lb/r/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/r<",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/t;->o:Lb/r/r;

    return-object v0
.end method

.method public final r()Lb/r/t;
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
    iget-object v0, p0, Lc/c/a/n/j/d/t;->m:Lb/r/t;

    return-object v0
.end method

.method public final s()Lb/r/r;
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
    iget-object v0, p0, Lc/c/a/n/j/d/t;->p:Lb/r/r;

    return-object v0
.end method

.method public final t()Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/t;->r:Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "params"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/j/d/t;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/d/t;->F:Lc/c/a/d/c/b;

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
    iget-object v0, p0, Lc/c/a/n/j/d/t;->m:Lb/r/t;

    const/16 v1, 0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final w()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lc/c/a/n/j/d/t;->k:Lb/r/t;

    return-object v0
.end method

.method public final x()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v3, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 3
    instance-of v5, v3, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getShowLoadingButton()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->setShowLoadingButton(Z)V

    .line 5
    iget-object v3, p0, Lc/c/a/n/j/d/t;->p:Lb/r/r;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_0
    instance-of v5, v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    if-eqz v5, :cond_1

    check-cast v3, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->getShowLoadingButton()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaActionsItem;->setShowLoadingButton(Z)V

    .line 8
    iget-object v3, p0, Lc/c/a/n/j/d/t;->p:Lb/r/r;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    move v2, v4

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lh/a/l;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    return-void
.end method
