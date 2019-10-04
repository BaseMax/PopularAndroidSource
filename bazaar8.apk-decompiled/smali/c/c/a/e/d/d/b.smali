.class public final Lc/c/a/e/d/d/b;
.super Ljava/lang/Object;
.source "BookmarkRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/d/a/l;

.field public final b:Lc/c/a/e/d/d/b/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/d/a/l;Lc/c/a/e/d/d/b/a;)V
    .locals 1

    const-string v0, "bookmarkLocalDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookmarkRemoteDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/d/b;->a:Lc/c/a/e/d/d/a/l;

    iput-object p2, p0, Lc/c/a/e/d/d/b;->b:Lc/c/a/e/d/d/b/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;-><init>(Lc/c/a/e/d/d/b;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/d/b;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lc/c/a/e/d/d/b;->a:Lc/c/a/e/d/d/a/l;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/d/a/l;->a(Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;)V

    .line 6
    iget-object p2, p0, Lc/c/a/e/d/d/b;->b:Lc/c/a/e/d/d/b/a;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$bookmarkApp$1;->label:I

    invoke-virtual {p2, v2, v0}, Lc/c/a/e/d/d/b/a;->a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 7
    :goto_1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either;

    const/4 v1, 0x0

    invoke-static {v1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrDefault(Lcom/farsitel/bazaar/data/entity/Either;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    iget-object p2, v0, Lc/c/a/e/d/d/b;->a:Lc/c/a/e/d/d/a/l;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Lc/c/a/e/d/d/a/l;->a(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 9
    :cond_4
    invoke-static {v1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 10
    iget-object p1, p0, Lc/c/a/e/d/d/b;->a:Lc/c/a/e/d/d/a/l;

    invoke-virtual {p1}, Lc/c/a/e/d/d/a/l;->b()Landroidx/lifecycle/LiveData;

    move-result-object p1

    sget-object v0, Lc/c/a/e/d/d/a;->a:Lc/c/a/e/d/d/a;

    invoke-static {p1, v0}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lc/c/a/e/d/d/b;->a:Lc/c/a/e/d/d/a/l;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/d/a/l;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 11
    iget-object v0, p0, Lc/c/a/e/d/d/b;->a:Lc/c/a/e/d/d/a/l;

    invoke-virtual {v0}, Lc/c/a/e/d/d/a/l;->a()V

    return-void
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;-><init>(Lc/c/a/e/d/d/b;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/d/b;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/c/a/e/d/d/b;->b:Lc/c/a/e/d/d/b/a;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$syncBookmarks$1;->label:I

    invoke-virtual {p1, v0}, Lc/c/a/e/d/d/b/a;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    move-object v1, p1

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 17
    invoke-static {v1}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrNull(Lcom/farsitel/bazaar/data/entity/Either;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lc/c/a/e/d/d/b;->a:Lc/c/a/e/d/d/a/l;

    invoke-virtual {v0, v1}, Lc/c/a/e/d/d/a/l;->a(Ljava/util/List;)V

    :cond_4
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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;-><init>(Lc/c/a/e/d/d/b;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/d/b;

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
    iget-object p2, p0, Lc/c/a/e/d/d/b;->a:Lc/c/a/e/d/d/a/l;

    invoke-virtual {p2, p1}, Lc/c/a/e/d/d/a/l;->b(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lc/c/a/e/d/d/b;->b:Lc/c/a/e/d/d/b/a;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/bookmark/BookmarkRepository$removeBookmark$1;->label:I

    invoke-virtual {p2, p1, v0}, Lc/c/a/e/d/d/b/a;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either;

    const/4 v1, 0x0

    invoke-static {v1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/farsitel/bazaar/data/entity/EitherKt;->getOrDefault(Lcom/farsitel/bazaar/data/entity/Either;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    iget-object p2, v0, Lc/c/a/e/d/d/b;->a:Lc/c/a/e/d/d/a/l;

    invoke-virtual {p2, p1, v1}, Lc/c/a/e/d/d/a/l;->a(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 8
    :cond_4
    invoke-static {v1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lc/c/a/e/d/d/b;->a:Lc/c/a/e/d/d/a/l;

    invoke-virtual {v0}, Lc/c/a/e/d/d/a/l;->c()Ljava/util/List;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Lc/c/a/e/d/d/a/j;

    .line 13
    invoke-virtual {v2}, Lc/c/a/e/d/d/a/j;->h()Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
