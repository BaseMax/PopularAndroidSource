.class public final Lc/c/a/n/j/b/c/b;
.super Lc/c/a/d/f/p;
.source "PlayInfoViewModel.kt"


# instance fields
.field public d:Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

.field public final e:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Li/a/ra;

.field public g:Ljava/lang/String;

.field public final h:Lc/c/a/e/d/h/e/a;

.field public final i:Lc/c/a/e/d/h/d/a/a;

.field public final j:Lc/c/a/e/d/h/e/a/a/n;

.field public final k:Lc/c/a/e/d/n/b;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a;Lc/c/a/e/d/h/d/a/a;Lc/c/a/e/d/h/e/a/a/n;Lc/c/a/e/d/n/b;)V
    .locals 1

    const-string v0, "videoDetailRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeDetailRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStorage"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playedVideoRepository"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/b/c/b;->h:Lc/c/a/e/d/h/e/a;

    iput-object p2, p0, Lc/c/a/n/j/b/c/b;->i:Lc/c/a/e/d/h/d/a/a;

    iput-object p3, p0, Lc/c/a/n/j/b/c/b;->j:Lc/c/a/e/d/h/e/a/a/n;

    iput-object p4, p0, Lc/c/a/n/j/b/c/b;->k:Lc/c/a/e/d/n/b;

    .line 2
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/b/c/b;->e:Lc/c/a/c/h/g;

    .line 3
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/j/b/c/b;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/b/c/b;)Lc/c/a/e/d/h/d/a/a;
    .locals 0

    .line 3
    iget-object p0, p0, Lc/c/a/n/j/b/c/b;->i:Lc/c/a/e/d/h/d/a/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/b/c/b;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/j/b/c/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/b/c/b;Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/j/b/c/b;->a(Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/b/c/b;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/j/b/c/b;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/j/b/c/b;)Lcom/farsitel/bazaar/common/model/PlayedVideoModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/b/c/b;->d:Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/j/b/c/b;)Lc/c/a/e/d/n/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/b/c/b;->k:Lc/c/a/e/d/n/b;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/n/j/b/c/b;)Lc/c/a/e/d/h/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/b/c/b;->h:Lc/c/a/e/d/h/e/a;

    return-object p0
.end method

.method public static final synthetic e(Lc/c/a/n/j/b/c/b;)Lc/c/a/e/d/h/e/a/a/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/b/c/b;->j:Lc/c/a/e/d/h/e/a/a/n;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const-string v1, "videoId"

    invoke-static {v2, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, Lc/c/a/n/j/b/c/b;->j:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {v1, v2}, Lc/c/a/e/d/h/e/a/a/n;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 10
    iget-object v3, v0, Lc/c/a/n/j/b/c/b;->j:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {v3, v2}, Lc/c/a/e/d/h/e/a/a/n;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 12
    sget-object v6, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v7, "Load video from cache"

    invoke-static/range {v6 .. v11}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 13
    sget-object v4, Lcom/farsitel/bazaar/common/model/VideoPurchaseState;->BOUGHT:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v1, "cachedVideo.path"

    invoke-static {v6, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 15
    new-instance v1, Lc/c/a/c/d/c$h;

    invoke-direct {v1}, Lc/c/a/c/d/c$h;-><init>()V

    const/4 v9, 0x1

    invoke-static {v1, v5, v9, v5}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 16
    new-instance v10, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    const/4 v1, 0x3

    invoke-direct {v10, v5, v5, v1, v5}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;ILh/f/b/f;)V

    .line 17
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    array-length v5, v1

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_0

    aget-object v12, v1, v11

    .line 20
    new-instance v13, Lcom/farsitel/bazaar/common/model/VideoSubtitle;

    const-string v14, "it"

    invoke-static {v12, v14}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "it.name"

    invoke-static {v14, v15}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    const-string v15, "Uri.fromFile(it)"

    invoke-static {v12, v15}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v13, v14, v12}, Lcom/farsitel/bazaar/common/model/VideoSubtitle;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object v11, v3

    goto :goto_1

    :cond_1
    move-object v11, v5

    :goto_1
    const/16 v12, 0x18

    const/4 v13, 0x0

    .line 21
    new-instance v14, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v11

    move-object v8, v10

    move v10, v12

    move-object v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;ILh/f/b/f;)V

    goto :goto_2

    .line 22
    :cond_2
    sget-object v15, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    const-string v16, "Video not exists in cache"

    invoke-static/range {v15 .. v20}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    move-object v14, v5

    :goto_2
    return-object v14
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;
    .locals 18

    .line 23
    sget-object v2, Lcom/farsitel/bazaar/common/model/VideoPurchaseState;->BOUGHT:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    .line 24
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v0, "cachedVideo.path"

    invoke-static {v3, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v8

    .line 26
    new-instance v7, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {v7, v0, v0, v1, v0}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;ILh/f/b/f;)V

    .line 27
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 30
    new-instance v9, Lcom/farsitel/bazaar/common/model/VideoSubtitle;

    const-string v10, "it"

    invoke-static {v6, v10}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "it.name"

    invoke-static {v10, v11}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v11, "Uri.fromFile(it)"

    invoke-static {v6, v11}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v10, v6}, Lcom/farsitel/bazaar/common/model/VideoSubtitle;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v0

    const/16 v9, 0x18

    const/4 v10, 0x0

    .line 31
    new-instance v11, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;ILh/f/b/f;)V

    .line 32
    sget-object v12, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPlayInfoModel loaded from disk, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v11
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;Ljava/lang/String;)V
    .locals 12

    const-string v0, "playedVideoModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p3, p0, Lc/c/a/n/j/b/c/b;->g:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lc/c/a/n/j/b/c/b;->f:Li/a/ra;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Li/a/ra$a;->a(Li/a/ra;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 7
    :cond_0
    iput-object p1, p0, Lc/c/a/n/j/b/c/b;->d:Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v6 .. v11}, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$getPlayInfo$1;-><init>(Lc/c/a/n/j/b/c/b;Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;Ljava/lang/String;Lh/c/b;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/j/b/c/b;->f:Li/a/ra;

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;)V
    .locals 8

    .line 34
    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoViewModel$successPlayInfo$1;-><init>(Lc/c/a/n/j/b/c/b;Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;Lh/c/b;)V

    invoke-virtual {p0, v0}, Lc/c/a/d/f/p;->a(Lh/f/a/b;)V

    .line 35
    iget-object v0, p0, Lc/c/a/n/j/b/c/b;->e:Lc/c/a/c/h/g;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 8

    .line 33
    iget-object v0, p0, Lc/c/a/n/j/b/c/b;->e:Lc/c/a/c/h/g;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/b/c/b;->e:Lc/c/a/c/h/g;

    return-object v0
.end method
