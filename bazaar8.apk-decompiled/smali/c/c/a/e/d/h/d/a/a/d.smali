.class public final Lc/c/a/e/d/h/d/a/a/d;
.super Ljava/lang/Object;
.source "ResponseDto.kt"


# instance fields
.field public final buyInfo:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;
    .annotation runtime Lc/e/d/a/c;
        value = "buyInfo"
    .end annotation
.end field

.field public final playedVideoDetails:Lc/c/a/e/d/h/d/a/a/i;
    .annotation runtime Lc/e/d/a/c;
        value = "details"
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrerList"
    .end annotation
.end field

.field public final refreshData:Lc/c/a/e/d/h/e/b/g;
    .annotation runtime Lc/e/d/a/c;
        value = "refreshData"
    .end annotation
.end field

.field public final subtitles:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "subtitles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/h/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final videoUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "videoUrl"
    .end annotation
.end field

.field public final watermarkUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "watermarkUrl"
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;
    .locals 10

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->buyInfo:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;->f()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v3

    .line 2
    iget-object v4, p0, Lc/c/a/e/d/h/d/a/a/d;->videoUrl:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->refreshData:Lc/c/a/e/d/h/e/b/g;

    invoke-virtual {v0}, Lc/c/a/e/d/h/e/b/g;->a()Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    move-result-object v6

    .line 4
    iget-object v5, p0, Lc/c/a/e/d/h/d/a/a/d;->watermarkUrl:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->subtitles:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lc/c/a/e/d/h/b/a/c;

    .line 9
    invoke-virtual {v2}, Lc/c/a/e/d/h/b/a/c;->a()Lcom/farsitel/bazaar/common/model/VideoSubtitle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v7, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v7, v0

    .line 10
    :goto_1
    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->playedVideoDetails:Lc/c/a/e/d/h/d/a/a/i;

    invoke-virtual {v0}, Lc/c/a/e/d/h/d/a/a/i;->a()Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    move-result-object v8

    .line 11
    iget-object v9, p0, Lc/c/a/e/d/h/d/a/a/d;->referrer:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/h/d/a/a/d;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/h/d/a/a/d;

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->videoUrl:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/d/a/a/d;->videoUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->watermarkUrl:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/d/a/a/d;->watermarkUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->refreshData:Lc/c/a/e/d/h/e/b/g;

    iget-object v1, p1, Lc/c/a/e/d/h/d/a/a/d;->refreshData:Lc/c/a/e/d/h/e/b/g;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->subtitles:Ljava/util/List;

    iget-object v1, p1, Lc/c/a/e/d/h/d/a/a/d;->subtitles:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->buyInfo:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    iget-object v1, p1, Lc/c/a/e/d/h/d/a/a/d;->buyInfo:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->playedVideoDetails:Lc/c/a/e/d/h/d/a/a/i;

    iget-object v1, p1, Lc/c/a/e/d/h/d/a/a/d;->playedVideoDetails:Lc/c/a/e/d/h/d/a/a/i;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->referrer:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/h/d/a/a/d;->referrer:Ljava/lang/String;

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

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/d;->videoUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/a/a/d;->watermarkUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/a/a/d;->refreshData:Lc/c/a/e/d/h/e/b/g;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lc/c/a/e/d/h/e/b/g;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/a/a/d;->subtitles:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/a/a/d;->buyInfo:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/a/a/d;->playedVideoDetails:Lc/c/a/e/d/h/d/a/a/i;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lc/c/a/e/d/h/d/a/a/i;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/a/a/d;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpisodePlayInfoResponseDto(videoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/d;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", watermarkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/d;->watermarkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/d;->refreshData:Lc/c/a/e/d/h/e/b/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/d;->subtitles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/d;->buyInfo:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playedVideoDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/d;->playedVideoDetails:Lc/c/a/e/d/h/d/a/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/d;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
