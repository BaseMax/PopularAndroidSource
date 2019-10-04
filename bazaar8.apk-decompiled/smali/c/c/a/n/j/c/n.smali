.class public final Lc/c/a/n/j/c/n;
.super Lc/c/a/d/f/p;
.source "VideoDownloadViewModel.kt"


# instance fields
.field public final d:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;

.field public final k:Lc/c/a/e/d/h/e/a/a;

.field public final l:Landroid/content/Context;

.field public final m:Lc/c/a/e/d/h/e/a/a/n;

.field public final n:Lc/c/a/b/d/o;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/a;Landroid/content/Context;Lc/c/a/e/d/h/e/a/a/n;Lc/c/a/b/d/o;)V
    .locals 1

    const-string v0, "downloadRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStorage"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoManager"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/c/n;->k:Lc/c/a/e/d/h/e/a/a;

    iput-object p2, p0, Lc/c/a/n/j/c/n;->l:Landroid/content/Context;

    iput-object p3, p0, Lc/c/a/n/j/c/n;->m:Lc/c/a/e/d/h/e/a/a/n;

    iput-object p4, p0, Lc/c/a/n/j/c/n;->n:Lc/c/a/b/d/o;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/c/n;->d:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/c/n;)Lc/c/a/e/d/h/e/a/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/j/c/n;->k:Lc/c/a/e/d/h/e/a/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/c/n;Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/j/c/n;->a(Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/c/n;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/j/c/n;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/c/n;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lc/c/a/n/j/c/n;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;
    .locals 16

    move-object/from16 v0, p0

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->b()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->getSubtitles()Ljava/util/List;

    move-result-object v4

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->getCoverVideo()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual/range {p2 .. p2}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->getVideoDownloadItemModels()Ljava/util/List;

    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;

    .line 37
    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->getUrl()Ljava/util/List;

    move-result-object v6

    .line 39
    iget-object v8, v0, Lc/c/a/n/j/c/n;->i:Ljava/lang/String;

    .line 40
    iget-object v9, v0, Lc/c/a/n/j/c/n;->h:Ljava/lang/String;

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;->c()Ljava/lang/String;

    move-result-object v10

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->getPurchaseState()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v11

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->getExpireTime()J

    move-result-wide v12

    .line 44
    invoke-virtual/range {p2 .. p2}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->getReferrer()Ljava/lang/String;

    move-result-object v14

    .line 45
    new-instance v15, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    move-object v1, v15

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v14}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;JLjava/lang/String;)V

    return-object v15

    .line 46
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Collection contains no element matching the predicate."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;)V
    .locals 9

    .line 11
    iput-object p1, p0, Lc/c/a/n/j/c/n;->j:Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;

    .line 12
    iget-object v0, p0, Lc/c/a/n/j/c/n;->g:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;->getInfo()Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->getVideoDownloadItemModels()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;

    .line 15
    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc/c/a/n/j/c/n;->g:Ljava/lang/String;

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 16
    :goto_0
    move-object v0, v2

    check-cast v0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 17
    iget-object v2, p0, Lc/c/a/n/j/c/n;->l:Landroid/content/Context;

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lc/c/a/n/j/e/a;->a(Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;Landroid/content/Context;J)Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/n/j/c/n;->a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;)V

    .line 18
    sget-object v0, Lcom/farsitel/bazaar/core/model/VideoDownloadState$Dismiss;->a:Lcom/farsitel/bazaar/core/model/VideoDownloadState$Dismiss;

    goto :goto_2

    .line 19
    :cond_3
    sget-object v0, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    :goto_2
    move-object v3, v0

    .line 20
    iget-object v0, p0, Lc/c/a/n/j/c/n;->d:Lb/r/t;

    new-instance v8, Lcom/farsitel/bazaar/core/model/Resource;

    .line 21
    iget-object v2, p0, Lc/c/a/n/j/c/n;->l:Landroid/content/Context;

    .line 22
    iget-object v4, p0, Lc/c/a/n/j/c/n;->e:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 23
    iget-object v1, p0, Lc/c/a/n/j/c/n;->m:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {v1}, Lc/c/a/e/d/h/e/a/a/n;->a()J

    move-result-wide v5

    .line 24
    invoke-static {p1, v2, v4, v5, v6}, Lc/c/a/n/j/e/a;->a(Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    .line 25
    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v8}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string p1, "videoName"

    .line 26
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 4

    .line 27
    iget-object v0, p0, Lc/c/a/n/j/c/n;->d:Lb/r/t;

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v1, v2, v3, p1}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;)V
    .locals 5

    const-string v0, "qualityItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lc/c/a/n/j/c/n;->n:Lc/c/a/b/d/o;

    .line 29
    iget-object v1, p0, Lc/c/a/n/j/c/n;->j:Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;->getInfo()Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;

    move-result-object v1

    iget-object v3, p0, Lc/c/a/n/j/c/n;->f:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lc/c/a/n/j/c/n;->e:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, v1, v3, v4}, Lc/c/a/n/j/c/n;->a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lc/c/a/b/d/o;->a(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V

    return-void

    :cond_0
    const-string p1, "videoName"

    .line 31
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "videoId"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lc/c/a/n/j/c/n;->e:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lc/c/a/n/j/c/n;->f:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lc/c/a/n/j/c/n;->h:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lc/c/a/n/j/c/n;->i:Ljava/lang/String;

    .line 9
    iget-object p2, p0, Lc/c/a/n/j/c/n;->d:Lb/r/t;

    new-instance p3, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object p4, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, v0}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {p2, p3}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 10
    new-instance v4, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;

    invoke-direct {v4, p0, p1, p5, v0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadViewModel$getVideoDownloadQuality$1;-><init>(Lc/c/a/n/j/c/n;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/c/n;->d:Lb/r/t;

    return-object v0
.end method
