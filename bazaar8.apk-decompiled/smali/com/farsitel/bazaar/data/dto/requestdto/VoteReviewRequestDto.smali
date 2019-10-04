.class public final Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;
.super Ljava/lang/Object;
.source "VoteReviewRequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.markReviewRequest"
.end annotation


# instance fields
.field public final isReply:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isReply"
    .end annotation
.end field

.field public final reviewId:I
    .annotation runtime Lc/e/d/a/c;
        value = "reviewId"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;->reviewId:I

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;->type:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;->isReply:Z

    return-void
.end method


# virtual methods
.method public final getReviewId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;->reviewId:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isReply()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;->isReply:Z

    return v0
.end method
