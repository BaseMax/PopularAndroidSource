.class public final Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;
.super Ljava/lang/Object;
.source "ReviewItem.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final comment:Ljava/lang/String;

.field public final date:Ljava/lang/String;

.field public dislikeCount:I

.field public final id:I

.field public likes:I

.field public final user:Ljava/lang/String;

.field public voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voteState"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->id:I

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->user:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->comment:Ljava/lang/String;

    iput p4, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->likes:I

    iput p5, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->dislikeCount:I

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->date:Ljava/lang/String;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/farsitel/bazaar/common/model/reviews/VoteState;ILh/f/b/f;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/farsitel/bazaar/common/model/reviews/VoteState;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->id:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->user:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->comment:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->likes:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->dislikeCount:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->date:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move-object p4, p9

    move-object p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->copy(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/farsitel/bazaar/common/model/reviews/VoteState;)Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->id:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->likes:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->dislikeCount:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/farsitel/bazaar/common/model/reviews/VoteState;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/farsitel/bazaar/common/model/reviews/VoteState;)Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;
    .locals 9

    const-string v0, "user"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    move-object v4, p3

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    move-object v7, p6

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voteState"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    move-object v1, v0

    move v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->id:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->id:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->user:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->user:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->comment:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->comment:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->likes:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->likes:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->dislikeCount:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->dislikeCount:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->date:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->date:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getDislikeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->dislikeCount:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->id:I

    return v0
.end method

.method public final getLikes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->likes:I

    return v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final getVoteState()Lcom/farsitel/bazaar/common/model/reviews/VoteState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->user:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->comment:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->likes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->dislikeCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->date:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final setDislikeCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->dislikeCount:I

    return-void
.end method

.method public final setLikes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->likes:I

    return-void
.end method

.method public final setVoteState(Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplyReviewItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", likes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->likes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dislikeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->dislikeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", voteState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
