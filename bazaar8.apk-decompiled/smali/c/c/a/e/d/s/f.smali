.class public final Lc/c/a/e/d/s/f;
.super Ljava/lang/Object;
.source "SearchRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/b/e;

.field public final b:Lc/c/a/e/d/s/j;


# direct methods
.method public constructor <init>(Lc/c/a/e/b/e;Lc/c/a/e/d/s/j;)V
    .locals 1

    const-string v0, "requestPropertiesDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchService"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/s/f;->a:Lc/c/a/e/b/e;

    iput-object p2, p0, Lc/c/a/e/d/s/f;->b:Lc/c/a/e/d/s/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;
    .locals 7

    .line 3
    new-instance v6, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/s/f;->a:Lc/c/a/e/b/e;

    invoke-virtual {v0}, Lc/c/a/e/b/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Lc/c/a/c/b/i;->g(Ljava/lang/String;)Lc/e/d/m;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILc/e/d/m;)V

    return-object v6
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/data/entity/SearchItems;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/s/f;->b:Lc/c/a/e/d/s/j;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/c/a/e/d/s/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/c/a/e/d/s/j;->a(Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;)Ll/b;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/farsitel/bazaar/data/feature/search/SearchRemoteDataSource$search$2;->a:Lcom/farsitel/bazaar/data/feature/search/SearchRemoteDataSource$search$2;

    invoke-static {p1, p2, p5}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
