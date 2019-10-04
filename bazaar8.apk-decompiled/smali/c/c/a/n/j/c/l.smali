.class public final Lc/c/a/n/j/c/l;
.super Lc/c/a/n/c/d/g;
.source "VideoDownloadListViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lb/r/r;
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

.field public final l:Lc/c/a/e/d/h/e/a/c;

.field public final m:Lc/c/a/e/d/h/e/a/a/n;

.field public final n:Lc/c/a/b/d/o;

.field public final o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/c;Lc/c/a/e/d/h/e/a/a/n;Lc/c/a/b/d/o;Landroid/content/Context;)V
    .locals 1

    const-string v0, "videoDownloadedRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStorage"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/c/l;->l:Lc/c/a/e/d/h/e/a/c;

    iput-object p2, p0, Lc/c/a/n/j/c/l;->m:Lc/c/a/e/d/h/e/a/a/n;

    iput-object p3, p0, Lc/c/a/n/j/c/l;->n:Lc/c/a/b/d/o;

    iput-object p4, p0, Lc/c/a/n/j/c/l;->o:Landroid/content/Context;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/c/l;->j:Lb/r/t;

    .line 3
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/c/l;->k:Lb/r/r;

    .line 4
    iget-object p1, p0, Lc/c/a/n/j/c/l;->k:Lb/r/r;

    iget-object p2, p0, Lc/c/a/n/j/c/l;->n:Lc/c/a/b/d/o;

    invoke-virtual {p2}, Lc/c/a/b/d/i;->c()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance p3, Lc/c/a/n/j/c/k;

    invoke-direct {p3, p0}, Lc/c/a/n/j/c/k;-><init>(Lc/c/a/n/j/c/l;)V

    invoke-virtual {p1, p2, p3}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/c/l;)Lb/r/t;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/j/c/l;->j:Lb/r/t;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/c/l;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/j/c/l;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/c/l;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/j/c/l;->a(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/c/l;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/j/c/l;)Lb/r/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/c/l;->k:Lb/r/r;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/j/c/l;)Lc/c/a/e/d/h/e/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/c/l;->l:Lc/c/a/e/d/h/e/a/c;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/n/j/c/l;)Lc/c/a/b/d/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/c/l;->n:Lc/c/a/b/d/o;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lc/c/a/n/j/c/l;->o:Landroid/content/Context;

    const-class v2, Lcom/farsitel/bazaar/app/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {v1, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "STOP"

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;",
            ">;>;)V"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$handleVideoDownloaded$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$handleVideoDownloaded$1;-><init>(Lc/c/a/n/j/c/l;)V

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/c/d/g;->a(Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v4, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$makeData$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$makeData$1;-><init>(Lc/c/a/n/j/c/l;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 7

    .line 27
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 28
    new-instance v4, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p1, p2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$registerOnProgressChange$1;-><init>(Lc/c/a/n/j/c/l;Ljava/lang/String;Lh/c/b;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 8
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

    .line 10
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_3

    check-cast v2, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    .line 12
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityId()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v6

    .line 14
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 15
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eqz v4, :cond_0

    if-eq v4, v6, :cond_2

    .line 16
    invoke-virtual {v2, v4}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 17
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lc/c/a/n/j/c/l;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 18
    iget-object v2, p0, Lc/c/a/n/j/c/l;->j:Lb/r/t;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "WTF, we check contain"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    sget-object v5, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v6, v5, :cond_2

    .line 21
    iget-object v5, p0, Lc/c/a/n/j/c/l;->n:Lc/c/a/b/d/o;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc/c/a/b/d/o;->l(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v5

    .line 22
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v6

    if-eq v6, v5, :cond_2

    .line 23
    invoke-virtual {v2, v5}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 24
    invoke-virtual {v2, v4}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->setProgressInfo(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    .line 25
    iget-object v2, p0, Lc/c/a/n/j/c/l;->j:Lb/r/t;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    move v1, v3

    goto :goto_0

    .line 26
    :cond_3
    invoke-static {}, Lh/a/l;->b()V

    throw v4

    :cond_4
    return-void
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;

    .line 6
    iget-object v2, p0, Lc/c/a/n/j/c/l;->n:Lc/c/a/b/d/o;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/c/a/b/d/o;->l(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lc/c/a/n/j/c/l;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)V

    .line 8
    iget-object v3, p0, Lc/c/a/n/j/c/l;->m:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc/c/a/e/d/h/e/a/a/n;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "videoStorage.getBazaarCo\u2026yVideoId(it.videoId).path"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Lc/c/a/n/j/c/l;->m:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc/c/a/e/d/h/e/a/a/n;->f(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lc/c/a/n/j/c/l;->o:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lc/c/a/c/b/f;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v1, v3, v4, v2}, Lc/c/a/n/j/e/b;->a(Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getNeedToSubmitDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/c/a/n/j/c/l;->c(Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v0}, Lh/a/r;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lh/a/u;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$onDeleteClicked$1;-><init>(Lc/c/a/n/j/c/l;Ljava/lang/String;Lh/c/b;)V

    invoke-virtual {p0, v0}, Lc/c/a/d/f/p;->a(Lh/f/a/b;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6

    .line 2
    new-instance v3, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$submitVideoDownload$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListViewModel$submitVideoDownload$1;-><init>(Lc/c/a/n/j/c/l;Ljava/lang/String;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/c/l;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public final j()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lc/c/a/n/j/c/l;->j:Lb/r/t;

    return-object v0
.end method

.method public final k()Lb/r/r;
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
    iget-object v0, p0, Lc/c/a/n/j/c/l;->k:Lb/r/r;

    return-object v0
.end method
