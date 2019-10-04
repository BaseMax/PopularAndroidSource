.class public interface abstract Lc/c/a/e/d/k/e;
.super Ljava/lang/Object;
.source "InlineService.kt"


# virtual methods
.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;",
            ")",
            "Ll/b<",
            "Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoReplyDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/getInlineAppInfoRequest"
    .end annotation
.end method

.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto;",
            ")",
            "Ll/b<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/InlineRelayServiceResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/inlineRelayServiceRequest"
    .end annotation
.end method
