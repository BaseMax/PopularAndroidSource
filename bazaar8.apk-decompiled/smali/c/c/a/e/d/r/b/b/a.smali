.class public interface abstract Lc/c/a/e/d/r/b/b/a;
.super Ljava/lang/Object;
.source "CommentService.kt"


# virtual methods
.method public abstract a(Lc/c/a/e/d/r/a/b/c;)Ll/b;
    .param p1    # Lc/c/a/e/d/r/a/b/c;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/e/d/r/a/b/c;",
            ")",
            "Ll/b<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/ReportCommentResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/ReportSpamReviewRequest"
    .end annotation
.end method

.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/SubmitReviewRequest;",
            ")",
            "Ll/b<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/PostCommentResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/SubmitReviewRequest"
    .end annotation
.end method

.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/VoteReviewRequestDto;",
            ")",
            "Ll/b<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/VoteCommentResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/MarkReviewRequest"
    .end annotation
.end method
