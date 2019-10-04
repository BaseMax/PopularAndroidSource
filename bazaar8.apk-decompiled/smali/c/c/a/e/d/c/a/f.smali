.class public final Lc/c/a/e/d/c/a/f;
.super Ljava/lang/Object;
.source "AppDetailResponseDto.kt"


# instance fields
.field public final defaultSortTypeChoice:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "defaultSortTypeChoice"
    .end annotation
.end field

.field public final sortTypeChoices:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "sortTypeChoices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/c/a/r;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/c/a/f;->sortTypeChoices:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lc/c/a/e/d/c/a/r;

    .line 5
    invoke-virtual {v2}, Lc/c/a/e/d/c/a/r;->a()Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    iget-object v0, p0, Lc/c/a/e/d/c/a/f;->defaultSortTypeChoice:Ljava/lang/String;

    new-instance v2, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    invoke-direct {v2, v1, v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/c/a/f;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/c/a/f;

    iget-object v0, p0, Lc/c/a/e/d/c/a/f;->sortTypeChoices:Ljava/util/List;

    iget-object v1, p1, Lc/c/a/e/d/c/a/f;->sortTypeChoices:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/c/a/f;->defaultSortTypeChoice:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/c/a/f;->defaultSortTypeChoice:Ljava/lang/String;

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

    iget-object v0, p0, Lc/c/a/e/d/c/a/f;->sortTypeChoices:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/f;->defaultSortTypeChoice:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppDetailsCommentDto(sortTypeChoices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/f;->sortTypeChoices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSortTypeChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/f;->defaultSortTypeChoice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
