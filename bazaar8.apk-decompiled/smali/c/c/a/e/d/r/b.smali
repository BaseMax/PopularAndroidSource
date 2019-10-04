.class public final Lc/c/a/e/d/r/b;
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

.field public final likeCount:I
    .annotation runtime Lc/e/d/a/c;
        value = "likes"
    .end annotation
.end field

.field public final rate:I
    .annotation runtime Lc/e/d/a/c;
        value = "rate"
    .end annotation
.end field

.field public final reply:Lc/c/a/e/d/r/a;
    .annotation runtime Lc/e/d/a/c;
        value = "reply"
    .end annotation
.end field

.field public final totalCount:I
    .annotation runtime Lc/e/d/a/c;
        value = "total"
    .end annotation
.end field

.field public final user:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "user"
    .end annotation
.end field

.field public final versionCode:I
    .annotation runtime Lc/e/d/a/c;
        value = "versionCode"
    .end annotation
.end field

.field public final voteStatus:I
    .annotation runtime Lc/e/d/a/c;
        value = "likedByMe"
    .end annotation
.end field


# direct methods
.method public static synthetic a(Lc/c/a/e/d/r/b;Ljava/lang/Long;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/e/d/r/b;->a(Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    new-instance v18, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 2
    iget v2, v0, Lc/c/a/e/d/r/b;->id:I

    iget-object v3, v0, Lc/c/a/e/d/r/b;->user:Ljava/lang/String;

    iget v1, v0, Lc/c/a/e/d/r/b;->rate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lc/c/a/e/d/r/b;->comment:Ljava/lang/String;

    iget-object v6, v0, Lc/c/a/e/d/r/b;->date:Ljava/lang/String;

    .line 3
    iget v1, v0, Lc/c/a/e/d/r/b;->likeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4
    iget v1, v0, Lc/c/a/e/d/r/b;->totalCount:I

    iget v8, v0, Lc/c/a/e/d/r/b;->likeCount:I

    sub-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 5
    iget v1, v0, Lc/c/a/e/d/r/b;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 6
    iget-object v1, v0, Lc/c/a/e/d/r/b;->reply:Lc/c/a/e/d/r/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/e/d/r/a;->a()Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 7
    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->Companion:Lcom/farsitel/bazaar/common/model/reviews/VoteState$Companion;

    iget v10, v0, Lc/c/a/e/d/r/b;->voteStatus:I

    invoke-virtual {v1, v10}, Lcom/farsitel/bazaar/common/model/reviews/VoteState$Companion;->fromVoteStatus(I)Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    move-result-object v15

    const/16 v16, 0x1c00

    const/16 v17, 0x0

    move-object/from16 v1, v18

    move-object/from16 v10, p1

    .line 8
    invoke-direct/range {v1 .. v17}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;ILh/f/b/f;)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_7

    instance-of v1, p1, Lc/c/a/e/d/r/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast p1, Lc/c/a/e/d/r/b;

    iget v1, p0, Lc/c/a/e/d/r/b;->id:I

    iget v3, p1, Lc/c/a/e/d/r/b;->id:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    iget-object v1, p0, Lc/c/a/e/d/r/b;->user:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/r/b;->user:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/r/b;->rate:I

    iget v3, p1, Lc/c/a/e/d/r/b;->rate:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    iget-object v1, p0, Lc/c/a/e/d/r/b;->comment:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/r/b;->comment:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lc/c/a/e/d/r/b;->date:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/r/b;->date:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/r/b;->likeCount:I

    iget v3, p1, Lc/c/a/e/d/r/b;->likeCount:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/r/b;->totalCount:I

    iget v3, p1, Lc/c/a/e/d/r/b;->totalCount:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/r/b;->versionCode:I

    iget v3, p1, Lc/c/a/e/d/r/b;->versionCode:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_6

    iget-object v1, p0, Lc/c/a/e/d/r/b;->reply:Lc/c/a/e/d/r/a;

    iget-object v3, p1, Lc/c/a/e/d/r/b;->reply:Lc/c/a/e/d/r/a;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lc/c/a/e/d/r/b;->voteStatus:I

    iget p1, p1, Lc/c/a/e/d/r/b;->voteStatus:I

    if-ne v1, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    return v2

    :cond_7
    :goto_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lc/c/a/e/d/r/b;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/r/b;->user:Ljava/lang/String;

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

    iget v1, p0, Lc/c/a/e/d/r/b;->rate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/r/b;->comment:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/r/b;->date:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/r/b;->likeCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/r/b;->totalCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/r/b;->versionCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/e/d/r/b;->reply:Lc/c/a/e/d/r/a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lc/c/a/e/d/r/a;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/e/d/r/b;->voteStatus:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReviewDto(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/r/b;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/b;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/r/b;->rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/b;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/b;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", likeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/r/b;->likeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/r/b;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/r/b;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/r/b;->reply:Lc/c/a/e/d/r/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voteStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/r/b;->voteStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
