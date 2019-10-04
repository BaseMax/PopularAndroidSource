.class public final Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;
.super Ljava/lang/Object;
.source "ReviewItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final _dislikeCount:Ljava/lang/Integer;

.field public final _likeCount:Ljava/lang/Integer;

.field public final appVersionCode:Ljava/lang/Long;

.field public final comment:Ljava/lang/String;

.field public final date:Ljava/lang/String;

.field public dislikeCount:Ljava/lang/Integer;

.field public final id:I

.field public likeCount:Ljava/lang/Integer;

.field public final rate:Ljava/lang/Integer;

.field public final replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

.field public replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

.field public final showLikeDislike:Z

.field public final showRate:Z

.field public final showReplyVote:Z

.field public final showReport:Z

.field public final user:Ljava/lang/String;

.field public final versionCode:Ljava/lang/Integer;

.field public final viewType:I

.field public voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;)V
    .locals 1

    const-string v0, "comment"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voteState"

    invoke-static {p14, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->id:I

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->user:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->rate:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->comment:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->date:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_likeCount:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_dislikeCount:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->versionCode:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->appVersionCode:Ljava/lang/Long;

    iput-object p10, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    iput-boolean p11, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showLikeDislike:Z

    iput-boolean p12, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReport:Z

    iput-boolean p13, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showRate:Z

    iput-object p14, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItemViewType;->REVIEW_ITEM:Lcom/farsitel/bazaar/common/model/reviews/ReviewItemViewType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->viewType:I

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showLikeDislike:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReport:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReplyVote:Z

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_likeCount:Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object p2, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne p1, p2, :cond_2

    move-object p1, p3

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_likeCount:Ljava/lang/Integer;

    :goto_2
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->likeCount:Ljava/lang/Integer;

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_dislikeCount:Ljava/lang/Integer;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object p2, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne p1, p2, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    iget-object p3, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_dislikeCount:Ljava/lang/Integer;

    :goto_4
    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->dislikeCount:Ljava/lang/Integer;

    .line 6
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getVoteState()Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    move-result-object p1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;ILh/f/b/f;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    move/from16 v14, p11

    :goto_0
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    move/from16 v15, p12

    :goto_1
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    move/from16 v16, p13

    :goto_2
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    move-object/from16 v17, v0

    goto :goto_3

    :cond_3
    move-object/from16 v17, p14

    :goto_3
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v3 .. v17}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;)V

    return-void
.end method

.method private final component9()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->appVersionCode:Ljava/lang/Long;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->user:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->rate:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->comment:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->date:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_likeCount:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_dislikeCount:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->versionCode:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->appVersionCode:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showLikeDislike:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReport:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showRate:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p14

    :goto_d
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->copy(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;)Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addDownVote()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->removeUpVote()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->dislikeCount:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->dislikeCount:Ljava/lang/Integer;

    .line 5
    :cond_2
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    iput-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-void
.end method

.method public final addReplyDownVote()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->removeReplyUpVote()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getDislikeCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->setDislikeCount(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    .line 5
    :cond_2
    :goto_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->setReplyVoteState(Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V

    return-void
.end method

.method public final addReplyUpVote()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->removeReplyDownVote()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getLikes()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->setLikes(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    .line 5
    :cond_2
    :goto_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->setReplyVoteState(Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V

    return-void
.end method

.method public final addUpVote()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->removeDownVote()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->likeCount:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->likeCount:Ljava/lang/Integer;

    .line 5
    :cond_2
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    iput-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-void
.end method

.method public final commentOnOldVersion()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->appVersionCode:Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->versionCode:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->id:I

    return v0
.end method

.method public final component10()Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    return-object v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showLikeDislike:Z

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReport:Z

    return v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showRate:Z

    return v0
.end method

.method public final component14()Lcom/farsitel/bazaar/common/model/reviews/VoteState;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->rate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_likeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_dislikeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->versionCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;)Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;
    .locals 16

    const-string v0, "comment"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voteState"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-object v1, v0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;-><init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->id:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->id:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->user:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->user:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->rate:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->rate:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->comment:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->comment:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->date:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->date:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_likeCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_likeCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_dislikeCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_dislikeCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->versionCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->versionCode:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->appVersionCode:Ljava/lang/Long;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->appVersionCode:Ljava/lang/Long;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showLikeDislike:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showLikeDislike:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReport:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReport:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showRate:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showRate:Z

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getDislikeCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->dislikeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->id:I

    return v0
.end method

.method public final getLikeCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->likeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRate()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->rate:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getReplyItem()Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    return-object v0
.end method

.method public final getReplyVoteState()Lcom/farsitel/bazaar/common/model/reviews/VoteState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-object v0
.end method

.method public final getShowLikeDislike()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showLikeDislike:Z

    return v0
.end method

.method public final getShowRate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showRate:Z

    return v0
.end method

.method public final getShowReplyVote()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReplyVote:Z

    return v0
.end method

.method public final getShowReport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReport:Z

    return v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->versionCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->viewType:I

    return v0
.end method

.method public final getVoteState()Lcom/farsitel/bazaar/common/model/reviews/VoteState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-object v0
.end method

.method public final get_dislikeCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_dislikeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final get_likeCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_likeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->user:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->rate:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->comment:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->date:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_likeCount:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_dislikeCount:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->versionCode:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->appVersionCode:Ljava/lang/Long;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showLikeDislike:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :cond_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReport:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :cond_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showRate:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :cond_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :cond_c
    add-int/2addr v0, v2

    return v0
.end method

.method public final isDisliked()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLiked()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReplyDisliked()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReplyLiked()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final removeDownVote()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->dislikeCount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->dislikeCount:Ljava/lang/Integer;

    .line 3
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    iput-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-void
.end method

.method public final removeReplyDownVote()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getDislikeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->setDislikeCount(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->setReplyVoteState(Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V

    return-void
.end method

.method public final removeReplyUpVote()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getLikes()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->setLikes(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->setReplyVoteState(Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V

    return-void
.end method

.method public final removeUpVote()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->likeCount:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->likeCount:Ljava/lang/Integer;

    .line 3
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    iput-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-void
.end method

.method public final setDislikeCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->dislikeCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setLikeCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->likeCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setReplyVoteState(Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->setVoteState(Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyVoteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-void
.end method

.method public final setVoteState(Lcom/farsitel/bazaar/common/model/reviews/VoteState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReviewItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->rate:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _likeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_likeCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _dislikeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->_dislikeCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->versionCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->appVersionCode:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replyItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->replyItem:Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showLikeDislike="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showLikeDislike:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->showRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", voteState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->voteState:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
