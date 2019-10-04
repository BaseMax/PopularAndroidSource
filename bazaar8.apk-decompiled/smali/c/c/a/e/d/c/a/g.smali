.class public final Lc/c/a/e/d/c/a/g;
.super Ljava/lang/Object;
.source "AppDetailResponseDto.kt"


# instance fields
.field public final inlineDemo:Lc/c/a/e/d/c/a/l;
    .annotation runtime Lc/e/d/a/c;
        value = "inlineDemo"
    .end annotation
.end field

.field public final kashanID:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "kashanID"
    .end annotation
.end field

.field public final minInlinePlatformVersion:I
    .annotation runtime Lc/e/d/a/c;
        value = "minInlinePlatformVersion"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;
    .locals 4

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    iget-object v1, p0, Lc/c/a/e/d/c/a/g;->kashanID:Ljava/lang/String;

    iget v2, p0, Lc/c/a/e/d/c/a/g;->minInlinePlatformVersion:I

    iget-object v3, p0, Lc/c/a/e/d/c/a/g;->inlineDemo:Lc/c/a/e/d/c/a/l;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lc/c/a/e/d/c/a/l;->a()Lcom/farsitel/bazaar/common/model/appdetail/InlineDemo;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;-><init>(Ljava/lang/String;ILcom/farsitel/bazaar/common/model/appdetail/InlineDemo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/e/d/c/a/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/e/d/c/a/g;

    iget-object v1, p0, Lc/c/a/e/d/c/a/g;->kashanID:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/g;->kashanID:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc/c/a/e/d/c/a/g;->minInlinePlatformVersion:I

    iget v3, p1, Lc/c/a/e/d/c/a/g;->minInlinePlatformVersion:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/c/a/g;->inlineDemo:Lc/c/a/e/d/c/a/l;

    iget-object p1, p1, Lc/c/a/e/d/c/a/g;->inlineDemo:Lc/c/a/e/d/c/a/l;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/d/c/a/g;->kashanID:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lc/c/a/e/d/c/a/g;->minInlinePlatformVersion:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/g;->inlineDemo:Lc/c/a/e/d/c/a/l;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/l;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppDetailsInlineDto(kashanID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/g;->kashanID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minInlinePlatformVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/c/a/g;->minInlinePlatformVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inlineDemo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/g;->inlineDemo:Lc/c/a/e/d/c/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
