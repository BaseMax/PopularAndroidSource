.class public final Lc/c/a/e/d/h/d/a/a/i;
.super Ljava/lang/Object;
.source "ResponseDto.kt"


# instance fields
.field public final shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;
    .annotation runtime Lc/e/d/a/c;
        value = "shortInfo"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "title"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;
    .locals 3

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/i;->title:Ljava/lang/String;

    iget-object v2, p0, Lc/c/a/e/d/h/d/a/a/i;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;->toShortInfo()Lcom/farsitel/bazaar/common/model/ShortInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ShortInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/h/d/a/a/i;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/h/d/a/a/i;

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/i;->title:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/d/a/a/i;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/i;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    iget-object p1, p1, Lc/c/a/e/d/h/d/a/a/i;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

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

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/i;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/a/a/i;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayedVideoDetailDto(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/i;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shortInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/i;->shortInfo:Lcom/farsitel/bazaar/data/dto/responsedto/ShortInfoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
