.class public final Lcom/farsitel/bazaar/common/model/reviews/VoteState$Companion;
.super Ljava/lang/Object;
.source "ReviewItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/common/model/reviews/VoteState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/common/model/reviews/VoteState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromVoteStatus(I)Lcom/farsitel/bazaar/common/model/reviews/VoteState;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->DOWN_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->UP_VOTE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/farsitel/bazaar/common/model/reviews/VoteState;->NONE:Lcom/farsitel/bazaar/common/model/reviews/VoteState;

    :goto_0
    return-object p1
.end method
