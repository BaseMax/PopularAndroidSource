.class public final Lc/c/a/e/d/r/a;
.super Ljava/lang/Object;
.source "ReviewDto.kt"


# instance fields
.field public final comment:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "comment"
    .end annotation
.end field

.field public final date:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "date"
    .end annotation
.end field

.field public final id:I
    .annotation runtime Lc/e/d/a/c;
        value = "id"
    .end annotation
.end field

.field public final likes:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "likes"
    .end annotation
.end field

.field public final total:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "total"
    .end annotation
.end field

.field public final user:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "user"
    .end annotation
.end field

.field public final voteStatus:I
    .annotation runtime Lc/e/d/a/c;
        value = "likedByMe"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;
    .locals 10

    .line 1
    new-instance v8, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    .line 2
    iget v1, p0, Lc/c/a/e/d/r/a;->id:I

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/r/a;->user:Ljava/lang/String;

    const-string v2, ""

    if-eqz v0, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 4
    :goto_0
    iget-object v4, p0, Lc/c/a/e/d/r/a;->comment:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lc/c/a/e/d/r/a;->likes:Ljava/lang/Integer;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 6
    :goto_1
    iget-object v0, p0, Lc/c/a/e/d/r/a;->total:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lc/c/a/e/d/r/a;->likes:Ljava/lang/Integer;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_3
    sub-int v5, v0, v5

    .line 7
    iget-object v0, p0, Lc/c/a/e/d/r/a;->date:Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v7, v0

    goto :goto_3

    :cond_4
    move-object v7, v2

    .line 8
    :goto_3
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->Companion:Lcom/farsitel/bazaar/common/model/reviews/VoteState$Companion;

    iget v2, p0, Lc/c/a/e/d/r/a;->voteStatus:I

    invoke-virtual {v0, v2}, Lcom/farsitel/bazaar/common/model/reviews/VoteState$Companion;->fromVoteStatus(I)Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    move-result-object v9

    move-object v0, v8

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    move-object v6, v7

    move-object v7, v9

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lc/c/a/e/d/r/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/c/a/e/d/r/a;

    iget v1, p0, Lc/c/a/e/d/r/a;->id:I

    iget v3, p1, Lc/c/a/e/d/r/a;->id:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/r/a;->user:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/r/a;->user:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/r/a;->comment:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/r/a;->comment:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/r/a;->likes:Ljava/lang/Integer;

    iget-object v3, p1, Lc/c/a/e/d/r/a;->likes:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/r/a;->total:Ljava/lang/Integer;

    iget-object v3, p1, Lc/c/a/e/d/r/a;->total:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/r/a;->date:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/r/a;->date:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lc/c/a/e/d/r/a;->voteStatus:I

    iget p1, p1, Lc/c/a/e/d/r/a;->voteStatus:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lc/c/a/e/d/r/a;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/r/a;->user:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/r/a;->comment:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/r/a;->likes:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/r/a;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/r/a;->date:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/r/a;->voteStatus:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplyReviewDto(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/r/a;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/a;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/a;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", likes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/a;->likes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/a;->total:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/a;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", voteStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/r/a;->voteStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
