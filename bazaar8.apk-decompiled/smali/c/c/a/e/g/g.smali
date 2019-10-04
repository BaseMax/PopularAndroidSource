.class public final Lc/c/a/e/g/g;
.super Ljava/lang/Object;
.source "VideoDownloadModel.kt"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

.field public final f:Li/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/p<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Li/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/p<",
            "Lcom/farsitel/bazaar/common/model/DownloadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/farsitel/bazaar/data/model/VideoDownloadStep;Li/a/b/p;Li/a/b/p;)V
    .locals 1
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
            ">;",
            "Lcom/farsitel/bazaar/data/model/VideoDownloadStep;",
            "Li/a/b/p<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;",
            "Li/a/b/p<",
            "Lcom/farsitel/bazaar/common/model/DownloadStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUrl"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverUrl"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDownloadStep"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoProgressInfo"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDownloadState"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/g/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/e/g/g;->b:Ljava/util/List;

    iput-object p3, p0, Lc/c/a/e/g/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lc/c/a/e/g/g;->d:Ljava/util/List;

    iput-object p5, p0, Lc/c/a/e/g/g;->e:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    iput-object p6, p0, Lc/c/a/e/g/g;->f:Li/a/b/p;

    iput-object p7, p0, Lc/c/a/e/g/g;->g:Li/a/b/p;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/farsitel/bazaar/data/model/VideoDownloadStep;Li/a/b/p;Li/a/b/p;ILh/f/b/f;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/data/model/VideoDownloadStep;->COVER:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Li/a/b/p;

    .line 4
    new-instance v1, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    invoke-direct {v1}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;-><init>()V

    .line 5
    invoke-direct {v0, v1}, Li/a/b/p;-><init>(Ljava/lang/Object;)V

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Li/a/b/p;

    .line 7
    sget-object v1, Lcom/farsitel/bazaar/common/model/DownloadStatus;->NONE:Lcom/farsitel/bazaar/common/model/DownloadStatus;

    .line 8
    invoke-direct {v0, v1}, Li/a/b/p;-><init>(Ljava/lang/Object;)V

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lc/c/a/e/g/g;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/farsitel/bazaar/data/model/VideoDownloadStep;Li/a/b/p;Li/a/b/p;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/data/model/VideoDownloadStep;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lc/c/a/e/g/g;->e:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/g;->d:Ljava/util/List;

    return-object v0
.end method

.method public final c()Li/a/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/p<",
            "Lcom/farsitel/bazaar/common/model/DownloadStatus;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/g;->g:Li/a/b/p;

    return-object v0
.end method

.method public final d()Lcom/farsitel/bazaar/data/model/VideoDownloadStep;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/g;->e:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/g/g;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/g/g;

    iget-object v0, p0, Lc/c/a/e/g/g;->a:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/g/g;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/g/g;->b:Ljava/util/List;

    iget-object v1, p1, Lc/c/a/e/g/g;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/g/g;->c:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/g/g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/g/g;->d:Ljava/util/List;

    iget-object v1, p1, Lc/c/a/e/g/g;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/g/g;->e:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    iget-object v1, p1, Lc/c/a/e/g/g;->e:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/g/g;->f:Li/a/b/p;

    iget-object v1, p1, Lc/c/a/e/g/g;->f:Li/a/b/p;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/g/g;->g:Li/a/b/p;

    iget-object p1, p1, Lc/c/a/e/g/g;->g:Li/a/b/p;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Li/a/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/p<",
            "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/g;->f:Li/a/b/p;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/g/g;->b:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/g/g;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/g/g;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/g/g;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/g/g;->d:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/g/g;->e:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/g/g;->f:Li/a/b/p;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/g/g;->g:Li/a/b/p;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoDownloadModel(videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/g;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/g;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoDownloadStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/g;->e:Lcom/farsitel/bazaar/data/model/VideoDownloadStep;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoProgressInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/g;->f:Li/a/b/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoDownloadState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/g/g;->g:Li/a/b/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
