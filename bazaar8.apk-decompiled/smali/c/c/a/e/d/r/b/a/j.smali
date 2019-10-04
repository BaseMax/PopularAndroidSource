.class public final Lc/c/a/e/d/r/b/a/j;
.super Ljava/lang/Object;
.source "PostCommentLocalDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/r/b/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/b/a/a;)V
    .locals 1

    const-string v0, "commentDao"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/b/a/j;->a:Lc/c/a/e/d/r/b/a/a;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/j;->a:Lc/c/a/e/d/r/b/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/r/b/a/a;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    sget-object v0, Lc/c/a/e/d/r/b/a/i;->a:Lc/c/a/e/d/r/b/a/i;

    invoke-static {p1, v0}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations.map(comm\u2026  it?.rate ?: 0\n        }"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/j;->a:Lc/c/a/e/d/r/b/a/a;

    invoke-interface {v0}, Lc/c/a/e/d/r/b/a/a;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;)V
    .locals 12

    const-string v0, "entityId"

    move-object v3, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x41

    const/4 v11, 0x0

    move-object v1, v0

    move-wide/from16 v4, p4

    move-object v6, p3

    move v7, p2

    invoke-direct/range {v1 .. v11}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;-><init>(Ljava/lang/Long;Ljava/lang/String;JLjava/lang/String;ILcom/farsitel/bazaar/data/entity/EntityType;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILh/f/b/f;)V

    move-object v1, p0

    .line 2
    iget-object v2, v1, Lc/c/a/e/d/r/b/a/j;->a:Lc/c/a/e/d/r/b/a/a;

    invoke-interface {v2, v0}, Lc/c/a/e/d/r/b/a/a;->b(Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/j;->a:Lc/c/a/e/d/r/b/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/r/b/a/a;->b(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->getRate()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/CommentEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/j;->a:Lc/c/a/e/d/r/b/a/a;

    sget-object v1, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->PENDING:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-interface {v0, v1}, Lc/c/a/e/d/r/b/a/a;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    .line 5
    invoke-static {v2}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntityKt;->toCommentEntity(Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;)Lcom/farsitel/bazaar/data/entity/CommentEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/j;->a:Lc/c/a/e/d/r/b/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/r/b/a/a;->b(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->SENT:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;->setEntityDatabaseStatus(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/r/b/a/j;->a:Lc/c/a/e/d/r/b/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/r/b/a/a;->a(Lcom/farsitel/bazaar/data/entity/LocalCommentEntity;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lc/c/a/e/d/r/b/a/j;->a:Lc/c/a/e/d/r/b/a/a;

    return-void
.end method
