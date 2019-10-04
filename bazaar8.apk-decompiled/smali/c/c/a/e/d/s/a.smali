.class public final Lc/c/a/e/d/s/a;
.super Ljava/lang/Object;
.source "SearchPredictionRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/b/e;

.field public final b:Lc/c/a/e/d/s/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/b/e;Lc/c/a/e/d/s/e;)V
    .locals 1

    const-string v0, "requestPropertiesDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchPredictionService"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/s/a;->a:Lc/c/a/e/b/e;

    iput-object p2, p0, Lc/c/a/e/d/s/a;->b:Lc/c/a/e/d/s/e;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lc/c/a/e/d/s/a;->b:Lc/c/a/e/d/s/e;

    new-instance v1, Lcom/farsitel/bazaar/data/dto/requestdto/EmptyRequestSingleDto;

    invoke-direct {v1}, Lcom/farsitel/bazaar/data/dto/requestdto/EmptyRequestSingleDto;-><init>()V

    invoke-interface {v0, v1}, Lc/c/a/e/d/s/e;->a(Lcom/farsitel/bazaar/data/dto/requestdto/EmptyRequestSingleDto;)Ll/b;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$clear$2;->a:Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$clear$2;

    invoke-static {v0, v1, p1}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/data/entity/SearchPrediction;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/s/a;->b:Lc/c/a/e/d/s/e;

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/data/dto/requestdto/SearchPredictionParam;

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/data/dto/requestdto/SearchPredictionParam;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Lc/c/a/e/d/s/e;->a(Lcom/farsitel/bazaar/data/dto/requestdto/SearchPredictionParam;)Ll/b;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$predict$2;->a:Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$predict$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;-><init>(Lc/c/a/e/d/s/a;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/e/d/s/a;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lc/c/a/e/d/s/a;->b:Lc/c/a/e/d/s/e;

    new-instance v2, Lcom/farsitel/bazaar/data/dto/requestdto/RemovePredictionParam;

    invoke-direct {v2, p1}, Lcom/farsitel/bazaar/data/dto/requestdto/RemovePredictionParam;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lc/c/a/e/d/s/e;->a(Lcom/farsitel/bazaar/data/dto/requestdto/RemovePredictionParam;)Ll/b;

    move-result-object p2

    sget-object v2, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$2;->a:Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$2;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/search/SearchPredictionRemoteDataSource$remove$1;->label:I

    invoke-static {p2, v2, v0}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
