.class public final Lc/c/a/e/d/r/i;
.super Ljava/lang/Object;
.source "ReviewDto.kt"


# instance fields
.field public final appName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "appName"
    .end annotation
.end field

.field public final icon:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "icon"
    .end annotation
.end field

.field public final review:Lc/c/a/e/d/r/b;
    .annotation runtime Lc/e/d/a/c;
        value = "review"
    .end annotation
.end field


# virtual methods
.method public final a()Lc/c/a/e/g/a;
    .locals 4

    .line 1
    new-instance v0, Lc/c/a/e/g/a;

    iget-object v1, p0, Lc/c/a/e/d/r/i;->review:Lc/c/a/e/d/r/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lc/c/a/e/d/r/b;->a(Lc/c/a/e/d/r/b;Ljava/lang/Long;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/e/d/r/i;->appName:Ljava/lang/String;

    iget-object v3, p0, Lc/c/a/e/d/r/i;->icon:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lc/c/a/e/g/a;-><init>(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/r/i;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/r/i;

    iget-object v0, p0, Lc/c/a/e/d/r/i;->review:Lc/c/a/e/d/r/b;

    iget-object v1, p1, Lc/c/a/e/d/r/i;->review:Lc/c/a/e/d/r/b;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/r/i;->appName:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/r/i;->appName:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/r/i;->icon:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/r/i;->icon:Ljava/lang/String;

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

    iget-object v0, p0, Lc/c/a/e/d/r/i;->review:Lc/c/a/e/d/r/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/e/d/r/b;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/r/i;->appName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/r/i;->icon:Ljava/lang/String;

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

    const-string v1, "SingleReviewResponseDto(review="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/i;->review:Lc/c/a/e/d/r/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/i;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/i;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
