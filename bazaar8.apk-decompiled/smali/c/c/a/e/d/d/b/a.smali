.class public final Lc/c/a/e/d/d/b/a;
.super Ljava/lang/Object;
.source "BookmarkRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/d/b/e;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/d/b/e;)V
    .locals 1

    const-string v0, "bookmarkService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/d/b/a;->a:Lc/c/a/e/d/d/b/e;

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
            "+",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/d/b/a;->a:Lc/c/a/e/d/d/b/e;

    new-instance v1, Lc/c/a/e/d/d/b/g;

    invoke-direct {v1}, Lc/c/a/e/d/d/b/g;-><init>()V

    invoke-interface {v0, v1}, Lc/c/a/e/d/d/b/e;->a(Lc/c/a/e/d/d/b/g;)Ll/b;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/data/feature/bookmark/remote/BookmarkRemoteDataSource$syncBookmark$2;->a:Lcom/farsitel/bazaar/data/feature/bookmark/remote/BookmarkRemoteDataSource$syncBookmark$2;

    invoke-static {v0, v1, p1}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/b/a;->a:Lc/c/a/e/d/d/b/e;

    new-instance v1, Lc/c/a/e/d/d/b/c;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lc/c/a/e/d/d/b/c;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/d/b/e;->a(Lc/c/a/e/d/d/b/c;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/bookmark/remote/BookmarkRemoteDataSource$bookmarkApp$2;->a:Lcom/farsitel/bazaar/data/feature/bookmark/remote/BookmarkRemoteDataSource$bookmarkApp$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/b/a;->a:Lc/c/a/e/d/d/b/e;

    new-instance v1, Lc/c/a/e/d/d/b/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lc/c/a/e/d/d/b/c;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lc/c/a/e/d/d/b/e;->a(Lc/c/a/e/d/d/b/c;)Ll/b;

    move-result-object p1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/bookmark/remote/BookmarkRemoteDataSource$removeBookmark$2;->a:Lcom/farsitel/bazaar/data/feature/bookmark/remote/BookmarkRemoteDataSource$removeBookmark$2;

    invoke-static {p1, v0, p2}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
