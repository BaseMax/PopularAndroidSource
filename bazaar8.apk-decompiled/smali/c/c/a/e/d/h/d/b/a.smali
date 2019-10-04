.class public final Lc/c/a/e/d/h/d/b/a;
.super Ljava/lang/Object;
.source "ResponseDto.kt"


# instance fields
.field public final cover:Lc/c/a/e/d/h/b/a/a;
    .annotation runtime Lc/e/d/a/c;
        value = "cover"
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "description"
    .end annotation
.end field

.field public final episodeIdentifier:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "episodeIdentifier"
    .end annotation
.end field

.field public final episodeIndex:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "episodeIndex"
    .end annotation
.end field

.field public final fullName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "fullName"
    .end annotation
.end field

.field public final identifier:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "identifier"
    .end annotation
.end field

.field public final price:Ljava/lang/Long;
    .annotation runtime Lc/e/d/a/c;
        value = "price"
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrerList"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "title"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;
    .locals 15

    .line 1
    new-instance v14, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->cover:Lc/c/a/e/d/h/b/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/e/d/h/b/a/a;->d()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    .line 3
    iget-object v2, p0, Lc/c/a/e/d/h/d/b/a;->description:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lc/c/a/e/d/h/d/b/a;->episodeIdentifier:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lc/c/a/e/d/h/d/b/a;->episodeIndex:Ljava/lang/Integer;

    .line 6
    iget-object v5, p0, Lc/c/a/e/d/h/d/b/a;->fullName:Ljava/lang/String;

    .line 7
    iget-object v6, p0, Lc/c/a/e/d/h/d/b/a;->identifier:Ljava/lang/String;

    .line 8
    iget-object v7, p0, Lc/c/a/e/d/h/d/b/a;->title:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->price:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0x0

    :goto_1
    const/4 v10, 0x0

    .line 10
    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->referrer:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v11, v0

    const/16 v12, 0x100

    const/4 v13, 0x0

    move-object v0, v14

    .line 11
    invoke-direct/range {v0 .. v13}, Lcom/farsitel/bazaar/common/model/cinema/SeriesEpisodeItem;-><init>(Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;ILh/f/b/f;)V

    return-object v14
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/h/d/b/a;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/h/d/b/a;

    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->cover:Lc/c/a/e/d/h/b/a/a;

    iget-object v1, p1, Lc/c/a/e/d/h/d/b/a;->cover:Lc/c/a/e/d/h/b/a/a;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->description:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/d/b/a;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->episodeIdentifier:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/d/b/a;->episodeIdentifier:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->episodeIndex:Ljava/lang/Integer;

    iget-object v1, p1, Lc/c/a/e/d/h/d/b/a;->episodeIndex:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->fullName:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/d/b/a;->fullName:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->identifier:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/d/b/a;->identifier:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->price:Ljava/lang/Long;

    iget-object v1, p1, Lc/c/a/e/d/h/d/b/a;->price:Ljava/lang/Long;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->title:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/d/b/a;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->referrer:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/h/d/b/a;->referrer:Ljava/lang/String;

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

    iget-object v0, p0, Lc/c/a/e/d/h/d/b/a;->cover:Lc/c/a/e/d/h/b/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/e/d/h/b/a/a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/b/a;->description:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/b/a;->episodeIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/b/a;->episodeIndex:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/b/a;->fullName:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/b/a;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/b/a;->price:Ljava/lang/Long;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/b/a;->title:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/b/a;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpisodeDto(cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/b/a;->cover:Lc/c/a/e/d/h/b/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/b/a;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/b/a;->episodeIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/b/a;->episodeIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fullName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/b/a;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/b/a;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/b/a;->price:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/b/a;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/b/a;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
