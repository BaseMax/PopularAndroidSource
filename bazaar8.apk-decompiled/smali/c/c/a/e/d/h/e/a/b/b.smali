.class public final Lc/c/a/e/d/h/e/a/b/b;
.super Ljava/lang/Object;
.source "ResponseDto.kt"


# instance fields
.field public coverVideo:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "coverUrl"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "description"
    .end annotation
.end field

.field public expireTime:Ljava/lang/Long;
    .annotation runtime Lc/e/d/a/c;
        value = "expirationTime"
    .end annotation
.end field

.field public purchaseState:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;
    .annotation runtime Lc/e/d/a/c;
        value = "buyInfo"
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrerList"
    .end annotation
.end field

.field public remainingDownloadCount:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "remainingDownloads"
    .end annotation
.end field

.field public subtitles:Ljava/util/List;
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

.field public videoDownloadItemModels:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "downloadFiles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/h/e/a/b/d;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;
    .locals 10

    .line 1
    iget-object v1, p0, Lc/c/a/e/d/h/e/a/b/b;->coverVideo:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lc/c/a/e/d/h/e/a/b/b;->expireTime:Ljava/lang/Long;

    .line 3
    iget-object v3, p0, Lc/c/a/e/d/h/e/a/b/b;->description:Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lc/c/a/e/d/h/e/a/b/b;->remainingDownloadCount:Ljava/lang/Integer;

    .line 5
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->videoDownloadItemModels:Ljava/util/List;

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 8
    check-cast v7, Lc/c/a/e/d/h/e/a/b/d;

    .line 9
    invoke-virtual {v7}, Lc/c/a/e/d/h/e/a/b/d;->a()Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->subtitles:Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    .line 11
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 13
    check-cast v6, Lc/c/a/e/d/h/b/a/c;

    .line 14
    invoke-virtual {v6}, Lc/c/a/e/d/h/b/a/c;->a()Lcom/farsitel/bazaar/common/model/VideoSubtitle;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v6, v8

    goto :goto_2

    :cond_2
    move-object v6, v7

    .line 15
    :goto_2
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->purchaseState:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;->f()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v0

    move-object v7, v0

    .line 16
    :cond_3
    iget-object v8, p0, Lc/c/a/e/d/h/e/a/b/b;->referrer:Ljava/lang/String;

    .line 17
    new-instance v9, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/h/e/a/b/b;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/h/e/a/b/b;

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->coverVideo:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/e/a/b/b;->coverVideo:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->expireTime:Ljava/lang/Long;

    iget-object v1, p1, Lc/c/a/e/d/h/e/a/b/b;->expireTime:Ljava/lang/Long;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->description:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/e/a/b/b;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->remainingDownloadCount:Ljava/lang/Integer;

    iget-object v1, p1, Lc/c/a/e/d/h/e/a/b/b;->remainingDownloadCount:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->videoDownloadItemModels:Ljava/util/List;

    iget-object v1, p1, Lc/c/a/e/d/h/e/a/b/b;->videoDownloadItemModels:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->subtitles:Ljava/util/List;

    iget-object v1, p1, Lc/c/a/e/d/h/e/a/b/b;->subtitles:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->purchaseState:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    iget-object v1, p1, Lc/c/a/e/d/h/e/a/b/b;->purchaseState:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->referrer:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/h/e/a/b/b;->referrer:Ljava/lang/String;

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

    iget-object v0, p0, Lc/c/a/e/d/h/e/a/b/b;->coverVideo:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/a/b/b;->expireTime:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/a/b/b;->description:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/a/b/b;->remainingDownloadCount:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/a/b/b;->videoDownloadItemModels:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/a/b/b;->subtitles:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/a/b/b;->purchaseState:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/a/b/b;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadQualityResponseDto(coverVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/b/b;->coverVideo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/b/b;->expireTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/b/b;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remainingDownloadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/b/b;->remainingDownloadCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoDownloadItemModels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/b/b;->videoDownloadItemModels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/b/b;->subtitles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/b/b;->purchaseState:Lcom/farsitel/bazaar/data/feature/cinema/common/remote/VideoPurchaseStateDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/b/b;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
