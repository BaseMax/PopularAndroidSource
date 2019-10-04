.class public final Lc/c/a/e/d/d/a/l;
.super Ljava/lang/Object;
.source "BookmarkLocalDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/d/a/a;)V
    .locals 1

    const-string v0, "bookmarkDao"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/d/a/a;->b(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    sget-object v0, Lc/c/a/e/d/d/a/k;->a:Lc/c/a/e/d/d/a/k;

    invoke-static {p1, v0}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 37
    iget-object v0, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    invoke-interface {v0}, Lc/c/a/e/d/d/a/a;->a()V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;)V
    .locals 12

    const-string v0, "bookmarkModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/a/e/d/d/a/a;->a(Ljava/lang/String;)Lc/c/a/e/d/d/a/j;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3
    sget-object v8, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->BOOKMARK:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    .line 4
    sget-object v9, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->PENDING:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    .line 5
    invoke-static/range {v2 .. v11}, Lc/c/a/e/d/d/a/j;->a(Lc/c/a/e/d/d/a/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILjava/lang/Object;)Lc/c/a/e/d/d/a/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    .line 7
    new-instance v11, Lc/c/a/e/d/d/a/j;

    .line 8
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getAppName()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    .line 11
    sget-object v7, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->BOOKMARK:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    .line 12
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPrice()I

    move-result v5

    .line 13
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPriceString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, v11

    .line 14
    invoke-direct/range {v1 .. v10}, Lc/c/a/e/d/d/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILh/f/b/f;)V

    .line 15
    invoke-interface {v0, v11}, Lc/c/a/e/d/d/a/a;->a(Lc/c/a/e/d/d/a/j;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    invoke-interface {p1, v0}, Lc/c/a/e/d/d/a/a;->b(Lc/c/a/e/d/d/a/j;)V

    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/d/a/a;->a(Ljava/lang/String;)Lc/c/a/e/d/d/a/j;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {v0}, Lc/c/a/e/d/d/a/j;->a()Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->BOOKMARK:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    if-eq v1, v2, :cond_1

    :cond_0
    if-nez p2, :cond_3

    invoke-virtual {v0}, Lc/c/a/e/d/d/a/j;->a()Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->REMOVE:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 34
    sget-object p1, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->SENT:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/d/a/j;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    .line 35
    iget-object p1, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    invoke-interface {p1, v0}, Lc/c/a/e/d/d/a/a;->b(Lc/c/a/e/d/d/a/j;)V

    goto :goto_0

    .line 36
    :cond_2
    iget-object p2, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    invoke-interface {p2, p1}, Lc/c/a/e/d/d/a/a;->c(Ljava/lang/String;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookmarkModels"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 20
    check-cast v2, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    .line 21
    new-instance v11, Lc/c/a/e/d/d/a/j;

    .line 22
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getAppName()Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPrice()I

    move-result v7

    .line 26
    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;->getPriceString()Ljava/lang/String;

    move-result-object v8

    .line 27
    sget-object v9, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->BOOKMARK:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    .line 28
    sget-object v10, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->SENT:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-object v3, v11

    .line 29
    invoke-direct/range {v3 .. v10}, Lc/c/a/e/d/d/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    .line 30
    invoke-interface {v1, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v0, v1}, Lc/c/a/e/d/d/a/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lc/c/a/e/d/d/a/j;",
            ">;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc/c/a/e/d/d/a/a$a;->a(Lc/c/a/e/d/d/a/a;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 11

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/d/a/a;->a(Ljava/lang/String;)Lc/c/a/e/d/d/a/j;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2
    sget-object v8, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->PENDING:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    .line 3
    sget-object v7, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->REMOVE:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    .line 4
    invoke-static/range {v1 .. v10}, Lc/c/a/e/d/d/a/j;->a(Lc/c/a/e/d/d/a/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILjava/lang/Object;)Lc/c/a/e/d/d/a/j;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/d/a/a;->b(Lc/c/a/e/d/d/a/j;)V

    :cond_0
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/c/a/e/d/d/a/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/l;->a:Lc/c/a/e/d/d/a/a;

    sget-object v1, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->PENDING:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-interface {v0, v1}, Lc/c/a/e/d/d/a/a;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
