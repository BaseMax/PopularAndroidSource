.class public final Lc/c/a/e/d/k/a;
.super Ljava/lang/Object;
.source "InlineRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/k/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/k/e;)V
    .locals 1

    const-string v0, "inlineService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/k/a;->a:Lc/c/a/e/d/k/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/k/a;->a:Lc/c/a/e/d/k/e;

    sget-object v1, Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto;->Companion:Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto$Companion;

    invoke-virtual {v1, p1}, Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto$Companion;->fromInlineRelayService(Lcom/farsitel/bazaar/common/model/inline/InlineRelayService;)Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/c/a/e/d/k/e;->a(Lcom/farsitel/bazaar/data/dto/requestdto/InlineReplyServiceRequestDto;)Ll/b;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/farsitel/bazaar/data/feature/inline/InlineRemoteDataSource$replyService$2;->a:Lcom/farsitel/bazaar/data/feature/inline/InlineRemoteDataSource$replyService$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->b(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/common/model/inline/InlineAppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/e/d/k/a;->a:Lc/c/a/e/d/k/e;

    invoke-interface {p1, v0}, Lc/c/a/e/d/k/e;->a(Lcom/farsitel/bazaar/data/dto/requestdto/GetInlineAppInfoRequestDto;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/inline/InlineRemoteDataSource$getInlineAppInfo$2;->a:Lcom/farsitel/bazaar/data/feature/inline/InlineRemoteDataSource$getInlineAppInfo$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
