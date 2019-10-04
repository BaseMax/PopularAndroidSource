.class public final Lc/c/a/e/d/h/c/b/a;
.super Ljava/lang/Object;
.source "VideoReviewsResponseDto.kt"


# instance fields
.field public final authorName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "authorName"
    .end annotation
.end field

.field public final body:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "body"
    .end annotation
.end field

.field public final commentId:I
    .annotation runtime Lc/e/d/a/c;
        value = "commentId"
    .end annotation
.end field

.field public final createdAt:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "createdAt"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    new-instance v18, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-object/from16 v1, v18

    .line 2
    iget v2, v0, Lc/c/a/e/d/h/c/b/a;->commentId:I

    .line 3
    iget-object v3, v0, Lc/c/a/e/d/h/c/b/a;->authorName:Ljava/lang/String;

    .line 4
    iget-object v5, v0, Lc/c/a/e/d/h/c/b/a;->body:Ljava/lang/String;

    .line 5
    iget-object v6, v0, Lc/c/a/e/d/h/c/b/a;->createdAt:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x2800

    const/16 v17, 0x0

    .line 6
    invoke-direct/range {v1 .. v17}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;ILh/f/b/f;)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/e/d/h/c/b/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/e/d/h/c/b/a;

    iget v1, p0, Lc/c/a/e/d/h/c/b/a;->commentId:I

    iget v3, p1, Lc/c/a/e/d/h/c/b/a;->commentId:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/h/c/b/a;->authorName:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/h/c/b/a;->authorName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/h/c/b/a;->body:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/h/c/b/a;->body:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/h/c/b/a;->createdAt:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/h/c/b/a;->createdAt:Ljava/lang/String;

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

    iget v0, p0, Lc/c/a/e/d/h/c/b/a;->commentId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/h/c/b/a;->authorName:Ljava/lang/String;

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

    iget-object v1, p0, Lc/c/a/e/d/h/c/b/a;->body:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/h/c/b/a;->createdAt:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCommentDto(commentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/h/c/b/a;->commentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", authorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/c/b/a;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/c/b/a;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/c/b/a;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
