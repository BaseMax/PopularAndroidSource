.class public interface abstract Lc/c/a/e/d/r/g;
.super Ljava/lang/Object;
.source "ReviewService.kt"


# virtual methods
.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/GetReviewRequestDto;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/GetReviewRequestDto;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/GetReviewRequestDto;",
            ")",
            "Ll/b<",
            "Lc/c/a/e/d/r/h;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/ReviewRequest"
    .end annotation
.end method

.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/GetSingleReviewRequestDto;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/GetSingleReviewRequestDto;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/GetSingleReviewRequestDto;",
            ")",
            "Ll/b<",
            "Lc/c/a/e/d/r/i;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/SingleReviewRequest"
    .end annotation
.end method
