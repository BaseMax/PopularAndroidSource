.class public final Lc/c/a/e/d/i/A;
.super Lcom/farsitel/bazaar/data/feature/download/DownloadManager;
.source "VideoDownloadManager.kt"


# instance fields
.field public j:Lc/c/a/c/e/a;

.field public final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/e/g/g;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/lang/Object;

.field public final m:Z

.field public final n:I

.field public final o:Lc/c/a/e/d/h/e/a/c/a;

.field public final p:Lc/c/a/e/d/i/q;

.field public final q:Lc/c/a/e/d/h/e/a/a/n;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/c/a;Lc/c/a/e/d/i/q;Lc/c/a/e/d/h/e/a/a/n;Lc/c/a/e/g/b;Lcom/farsitel/bazaar/data/feature/download/Downloader;Lc/c/a/e/d/i/r;)V
    .locals 1

    const-string v0, "submitDownloadRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileDownloadHelper"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStorage"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadConfig"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkStateHelper"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4, p2, p5, p6}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;-><init>(Lc/c/a/e/g/b;Lc/c/a/e/d/i/q;Lcom/farsitel/bazaar/data/feature/download/Downloader;Lc/c/a/e/d/i/r;)V

    iput-object p1, p0, Lc/c/a/e/d/i/A;->o:Lc/c/a/e/d/h/e/a/c/a;

    iput-object p2, p0, Lc/c/a/e/d/i/A;->p:Lc/c/a/e/d/i/q;

    iput-object p3, p0, Lc/c/a/e/d/i/A;->q:Lc/c/a/e/d/h/e/a/a/n;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/i/A;->l:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lc/c/a/e/d/i/A;->m:Z

    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lc/c/a/e/d/i/A;->n:I

    return-void
.end method

.method public static final synthetic a(Lc/c/a/e/d/i/A;)Lc/c/a/e/d/h/e/a/c/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/e/d/i/A;->o:Lc/c/a/e/d/h/e/a/c/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/e/d/i/A;Ljava/lang/String;)Li/a/b/t;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d(Ljava/lang/String;)Li/a/b/t;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/e/d/i/A;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloadStatus;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/i/A;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/e/d/i/A;Ljava/lang/String;)Li/a/b/t;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e(Ljava/lang/String;)Li/a/b/t;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/e/d/i/A;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/e/d/i/A;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/i/A;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/e/d/i/A;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/i/A;->e()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {p0, p1, v0}, Lc/c/a/e/d/i/A;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lc/c/a/e/g/g;)V
    .locals 7

    .line 30
    invoke-virtual {p2}, Lc/c/a/e/g/g;->d()Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    move-result-object v0

    sget-object v1, Lc/c/a/e/d/i/z;->c:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "invalid state"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 31
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/data/entity/EntityType;->SUBTITLE:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {p0, p1, v0}, Lc/c/a/e/d/i/A;->b(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_2
    sget-object v0, Lcom/farsitel/bazaar/data/entity/EntityType;->COVER:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {p0, p1, v0}, Lc/c/a/e/d/i/A;->b(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;

    move-result-object v0

    .line 34
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 35
    invoke-virtual {p2}, Lc/c/a/e/g/g;->d()Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    move-result-object v5

    sget-object v6, Lc/c/a/e/d/i/z;->d:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v4, :cond_6

    if-eq v5, v3, :cond_4

    if-eq v5, v2, :cond_3

    .line 36
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_4
    iget-object v1, p0, Lc/c/a/e/d/i/A;->q:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {v1, p1}, Lc/c/a/e/d/h/e/a/a/n;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 38
    invoke-virtual {p2}, Lc/c/a/e/g/g;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lc/c/a/e/g/g;->b()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/common/model/VideoSubtitle;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/VideoSubtitle;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    .line 39
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :cond_6
    iget-object p2, p0, Lc/c/a/e/d/i/A;->q:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/h/e/a/a/n;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 41
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_7

    .line 42
    invoke-static {v0, v1}, Lc/c/a/c/b/d;->b(Ljava/io/File;Ljava/io/File;)Z

    :cond_7
    return-void

    .line 43
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "temp file not exists to move "

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloadStatus;)V
    .locals 6

    .line 46
    new-instance v3, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$videoDownloadFailed$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$videoDownloadFailed$1;-><init>(Lc/c/a/e/d/i/A;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloadStatus;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)V
    .locals 7

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-super {p0, p1, p2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)V

    .line 17
    :try_start_0
    iget-object p2, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/e/g/g;

    if-eqz p2, :cond_5

    .line 18
    invoke-virtual {p2}, Lc/c/a/e/g/g;->d()Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    move-result-object v0

    sget-object v1, Lc/c/a/e/d/i/z;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "videoDownloadModel"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-ne v0, p2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 19
    :try_start_1
    new-instance v4, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;

    const/4 p2, 0x0

    invoke-direct {v4, p2, p0, p1}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1;-><init>(Lh/c/b;Lc/c/a/e/d/i/A;Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    .line 20
    invoke-virtual {p0, p1}, Lc/c/a/e/d/i/A;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p2

    .line 21
    :cond_1
    invoke-static {p2, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/i/A;->a(Ljava/lang/String;Lc/c/a/e/g/g;)V

    .line 22
    invoke-virtual {p2}, Lc/c/a/e/g/g;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/VideoSubtitle;

    .line 23
    :cond_2
    invoke-virtual {p2}, Lc/c/a/e/g/g;->b()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 24
    iget-object p2, p0, Lc/c/a/e/d/i/A;->q:Lc/c/a/e/d/h/e/a/a/n;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/h/e/a/a/n;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 25
    :cond_3
    invoke-virtual {p0, p1}, Lc/c/a/e/d/i/A;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-static {p2, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/i/A;->a(Ljava/lang/String;Lc/c/a/e/g/g;)V

    .line 27
    sget-object v0, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->SUBTITLE:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {p2, v0}, Lc/c/a/e/g/g;->a(Lcom/farsitel/bazaar/data/model/VideoDownloadStep;)V

    .line 28
    invoke-virtual {p0, p1}, Lc/c/a/e/d/i/A;->k(Ljava/lang/String;)Lh/h;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    invoke-virtual {p0, p1}, Lc/c/a/e/d/i/A;->a(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUrl"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverUrl"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lc/c/a/e/g/g;

    if-eqz p4, :cond_0

    invoke-static {p4}, Lh/a/u;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v5, p4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x70

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lc/c/a/e/g/g;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/farsitel/bazaar/data/model/VideoDownloadStep;Li/a/b/p;Li/a/b/p;ILh/f/b/f;)V

    .line 5
    iget-object p2, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lc/c/a/e/d/i/A;->q:Lc/c/a/e/d/h/e/a/a/n;

    .line 7
    invoke-virtual {p0, p1}, Lc/c/a/e/d/i/A;->e(Ljava/lang/String;)Li/a/b/t;

    move-result-object p3

    const/4 p4, 0x1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 8
    :goto_1
    invoke-virtual {p2, p1, p3}, Lc/c/a/e/d/h/e/a/a/n;->a(Ljava/lang/String;Z)Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    move-result-object p2

    sget-object p3, Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;->EXISTS:Lcom/farsitel/bazaar/common/model/ui/CinemaFileState;

    if-ne p2, p3, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lc/c/a/e/d/i/A;->l(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object p2, p0, Lc/c/a/e/d/i/A;->l:Ljava/lang/Object;

    monitor-enter p2

    .line 11
    :try_start_0
    iget-object p3, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result p3

    if-ne p3, p4, :cond_3

    .line 12
    invoke-virtual {p0, p1}, Lc/c/a/e/d/i/A;->k(Ljava/lang/String;)Lh/h;

    .line 13
    invoke-virtual {p0, p1}, Lc/c/a/e/d/i/A;->j(Ljava/lang/String;)V

    .line 14
    :cond_3
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p2

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public final b(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/io/File;
    .locals 2

    .line 5
    iget-object v0, p0, Lc/c/a/e/d/i/A;->p:Lc/c/a/e/d/i/q;

    iget-boolean v1, p0, Lc/c/a/e/d/i/A;->m:Z

    invoke-virtual {v0, p1, p2, v1}, Lc/c/a/e/d/i/q;->a(Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->b(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/farsitel/bazaar/common/model/DownloadStatus;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    invoke-virtual {p0, p1, v0}, Lc/c/a/e/d/i/A;->a(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/DownloadStatus;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Li/a/b/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/a/b/t<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v4, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$getProgressPublishSubject$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$getProgressPublishSubject$1;-><init>(Lc/c/a/e/d/i/A;Ljava/lang/String;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    .line 3
    iget-object v1, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/g/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/e/g/g;->f()Li/a/b/p;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li/a/b/p;->b()Li/a/b/t;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public e(Ljava/lang/String;)Li/a/b/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/a/b/t<",
            "Lcom/farsitel/bazaar/common/model/DownloadStatus;",
            ">;"
        }
    .end annotation

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e(Ljava/lang/String;)Li/a/b/t;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/g/g;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lc/c/a/e/g/g;->c()Li/a/b/p;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Li/a/b/p;->b()Li/a/b/t;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final e()V
    .locals 3

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/i/A;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "videoDownloadModelHolder.values"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lh/a/u;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/g;

    invoke-virtual {v1}, Lc/c/a/e/g/g;->e()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v1}, Lc/c/a/e/d/i/A;->k(Ljava/lang/String;)Lh/h;

    .line 9
    invoke-virtual {p0, v1}, Lc/c/a/e/d/i/A;->j(Ljava/lang/String;)V

    .line 10
    :cond_0
    sget-object v1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public g(Ljava/lang/String;)V
    .locals 5

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->g(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/i/A;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "videoDownloadModelHolder.values"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lh/a/u;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/g;

    invoke-virtual {v1}, Lc/c/a/e/g/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    .line 5
    :cond_0
    iget-object v1, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/g;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/e/g/g;->f()Li/a/b/p;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3, v2}, Li/a/b/x$a;->a(Li/a/b/x;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 6
    :cond_1
    iget-object v1, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {p0}, Lc/c/a/e/d/i/A;->e()V

    .line 8
    :cond_2
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/g/g;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lc/c/a/e/g/g;->b()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v2, :cond_3

    invoke-virtual {v0}, Lc/c/a/e/g/g;->b()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/common/model/VideoSubtitle;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/VideoSubtitle;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3
    sget-object v2, Lcom/farsitel/bazaar/data/entity/EntityType;->SUBTITLE:Lcom/farsitel/bazaar/data/entity/EntityType;

    .line 4
    invoke-virtual {v0}, Lc/c/a/e/g/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/VideoSubtitle;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/VideoSubtitle;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    iget-boolean v9, p0, Lc/c/a/e/d/i/A;->m:Z

    const/4 v10, 0x0

    const/16 v11, 0x280

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 6
    invoke-static/range {v0 .. v12}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljavax/crypto/Cipher;IZZILjava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v4

    .line 8
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v4

    .line 9
    :cond_3
    sget-object v2, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->VIDEO:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v0, v2}, Lc/c/a/e/g/g;->a(Lcom/farsitel/bazaar/data/model/VideoDownloadStep;)V

    .line 10
    invoke-virtual {p0, p1}, Lc/c/a/e/d/i/A;->k(Ljava/lang/String;)Lh/h;

    :cond_4
    :goto_1
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$listenOnDownloadVideo$1;-><init>(Lc/c/a/e/d/i/A;Ljava/lang/String;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final k(Ljava/lang/String;)Lh/h;
    .locals 15

    move-object v13, p0

    .line 1
    iget-object v0, v13, Lc/c/a/e/d/i/A;->k:Ljava/util/LinkedHashMap;

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/g/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lc/c/a/e/g/g;->d()Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    move-result-object v2

    sget-object v3, Lc/c/a/e/d/i/z;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/farsitel/bazaar/data/entity/EntityType;->VIDEO:Lcom/farsitel/bazaar/data/entity/EntityType;

    .line 4
    invoke-virtual {v0}, Lc/c/a/e/g/g;->g()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    iget-object v0, v13, Lc/c/a/e/d/i/A;->j:Lc/c/a/c/e/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/c/e/a;->d()Ljavax/crypto/Cipher;

    move-result-object v7

    .line 6
    iget-boolean v9, v13, Lc/c/a/e/d/i/A;->m:Z

    .line 7
    iget v8, v13, Lc/c/a/e/d/i/A;->n:I

    const/4 v10, 0x0

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    .line 8
    invoke-static/range {v0 .. v12}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljavax/crypto/Cipher;IZZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "aesCrypt"

    .line 9
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lc/c/a/e/d/i/A;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    sget-object v2, Lcom/farsitel/bazaar/data/entity/EntityType;->COVER:Lcom/farsitel/bazaar/data/entity/EntityType;

    .line 12
    invoke-virtual {v0}, Lc/c/a/e/g/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 13
    iget-boolean v9, v13, Lc/c/a/e/d/i/A;->m:Z

    const/4 v10, 0x0

    const/16 v11, 0x280

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    .line 14
    invoke-static/range {v0 .. v12}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljavax/crypto/Cipher;IZZILjava/lang/Object;)V

    .line 15
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lc/c/a/e/d/i/A;->j(Ljava/lang/String;)V

    .line 16
    sget-object v1, Lh/h;->a:Lh/h;

    :cond_4
    return-object v1
.end method

.method public final l(Ljava/lang/String;)V
    .locals 12

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v5, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$1;

    invoke-direct {v5, p0, p1}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$1;-><init>(Lc/c/a/e/d/i/A;Ljava/lang/String;)V

    .line 2
    new-instance v4, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2;

    invoke-direct {v4, p0, p1}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2;-><init>(Lc/c/a/e/d/i/A;Ljava/lang/String;)V

    .line 3
    new-instance v9, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$3;-><init>(Lc/c/a/e/d/i/A;Ljava/lang/String;Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$2;Lcom/farsitel/bazaar/data/feature/download/VideoDownloadManager$submitDownload$1;Lh/c/b;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method
