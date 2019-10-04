.class public final Lc/c/a/e/d/h/b/a/a;
.super Ljava/lang/Object;
.source "ThumbnailDto.kt"


# instance fields
.field public final thumbnailUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "thumbnailUrl"
    .end annotation
.end field

.field public final type:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "type"
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "url"
    .end annotation
.end field


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/b/a/a;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/b/a/a;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final c()Lcom/farsitel/bazaar/common/model/cinema/CinemaBigScreenshotItem;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/b/a/a;->thumbnailUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lc/c/a/e/d/h/b/a/a;->type:Ljava/lang/Integer;

    invoke-static {v2}, Lc/c/a/e/d/h/e/b/i;->a(Ljava/lang/Integer;)Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    move-result-object v2

    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;->IMAGE:Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    if-ne v2, v3, :cond_1

    .line 3
    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaBigScreenshotItem;

    .line 4
    iget-object v2, p0, Lc/c/a/e/d/h/b/a/a;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    .line 5
    invoke-direct {v1, v2, v0, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaBigScreenshotItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-object v1
.end method

.method public final d()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/b/a/a;->thumbnailUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lc/c/a/e/d/h/b/a/a;->type:Ljava/lang/Integer;

    invoke-static {v2}, Lc/c/a/e/d/h/e/b/i;->a(Ljava/lang/Integer;)Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    move-result-object v2

    sget-object v3, Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;->IMAGE:Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    if-ne v2, v3, :cond_1

    .line 3
    new-instance v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    .line 4
    iget-object v2, p0, Lc/c/a/e/d/h/b/a/a;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    .line 5
    invoke-direct {v1, v2, v0, v3}, Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-object v1
.end method

.method public final e()Lcom/farsitel/bazaar/common/model/cinema/TrailerCoverItem;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/h/b/a/a;->type:Ljava/lang/Integer;

    invoke-static {v0}, Lc/c/a/e/d/h/e/b/i;->a(Ljava/lang/Integer;)Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;->VIDEO:Lcom/farsitel/bazaar/common/model/cinema/ThumbnailType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/b/a/a;->thumbnailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/c/a/e/d/h/b/a/a;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Lcom/farsitel/bazaar/common/model/cinema/TrailerCoverItem;

    invoke-direct {v2, v0, v1}, Lcom/farsitel/bazaar/common/model/cinema/TrailerCoverItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/h/b/a/a;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/h/b/a/a;

    iget-object v0, p0, Lc/c/a/e/d/h/b/a/a;->thumbnailUrl:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/b/a/a;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/b/a/a;->type:Ljava/lang/Integer;

    iget-object v1, p1, Lc/c/a/e/d/h/b/a/a;->type:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/b/a/a;->url:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/h/b/a/a;->url:Ljava/lang/String;

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

    iget-object v0, p0, Lc/c/a/e/d/h/b/a/a;->thumbnailUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/b/a/a;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/b/a/a;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnailDto(thumbnailUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/b/a/a;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/b/a/a;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/b/a/a;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
