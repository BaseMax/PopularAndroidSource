.class public interface abstract Lc/c/a/e/d/s/e;
.super Ljava/lang/Object;
.source "SearchPredictionService.kt"


# virtual methods
.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/EmptyRequestSingleDto;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/EmptyRequestSingleDto;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/EmptyRequestSingleDto;",
            ")",
            "Ll/b<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/ClearHistoryRequest"
    .end annotation
.end method

.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/RemovePredictionParam;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/RemovePredictionParam;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/RemovePredictionParam;",
            ")",
            "Ll/b<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/RemoveHistoryRequest"
    .end annotation
.end method

.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/SearchPredictionParam;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/SearchPredictionParam;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/SearchPredictionParam;",
            ")",
            "Ll/b<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/SearchPredictionResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/PredictionRequest"
    .end annotation
.end method
