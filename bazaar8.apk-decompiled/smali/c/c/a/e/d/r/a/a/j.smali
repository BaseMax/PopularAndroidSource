.class public final Lc/c/a/e/d/r/a/a/j;
.super Ljava/lang/Object;
.source "CommentActionLocalDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/r/a/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/a/a/a;)V
    .locals 1

    const-string v0, "commentActionDao"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/r/a/a/j;->a:Lc/c/a/e/d/r/a/a/a;

    return-void
.end method

.method public static synthetic a(Lc/c/a/e/d/r/a/a/j;ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 1
    sget-object p4, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lc/c/a/e/d/r/a/a/j;->a(ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lc/c/a/e/d/r/a/a/l;
    .locals 1

    .line 15
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/j;->a:Lc/c/a/e/d/r/a/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/r/a/a/a;->a(I)Lc/c/a/e/d/r/a/a/l;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 16
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/j;->a:Lc/c/a/e/d/r/a/a/a;

    invoke-interface {v0}, Lc/c/a/e/d/r/a/a/a;->a()V

    return-void
.end method

.method public final a(ILcom/farsitel/bazaar/data/entity/CommentAction;)V
    .locals 1

    const-string v0, "commentAction"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lc/c/a/e/d/r/a/a/i;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lc/c/a/e/d/r/a/a/j;->a(I)Lc/c/a/e/d/r/a/a/l;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lc/c/a/e/d/r/a/a/j;->b(I)Lc/c/a/e/d/r/a/a/l;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 13
    sget-object p2, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->SENT:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-virtual {p1, p2}, Lc/c/a/e/d/r/a/a/l;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    .line 14
    iget-object p2, p0, Lc/c/a/e/d/r/a/a/j;->a:Lc/c/a/e/d/r/a/a/a;

    invoke-interface {p2, p1}, Lc/c/a/e/d/r/a/a/a;->b(Lc/c/a/e/d/r/a/a/l;)V

    :cond_2
    return-void
.end method

.method public final a(ILcom/farsitel/bazaar/data/entity/CommentAction;ZLcom/farsitel/bazaar/data/entity/EntityType;)V
    .locals 10

    const-string v0, "commentAction"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/e/d/r/a/a/l;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x21

    const/4 v9, 0x0

    move-object v1, v0

    move v3, p1

    move v4, p3

    .line 5
    invoke-direct/range {v1 .. v9}, Lc/c/a/e/d/r/a/a/l;-><init>(Ljava/lang/Long;IZILjava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILh/f/b/f;)V

    .line 6
    sget-object p3, Lc/c/a/e/d/r/a/a/i;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lc/c/a/e/d/r/a/a/j;->a:Lc/c/a/e/d/r/a/a/a;

    invoke-interface {p2, p1}, Lc/c/a/e/d/r/a/a/a;->b(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Lc/c/a/e/d/r/a/a/j;->a:Lc/c/a/e/d/r/a/a/a;

    invoke-interface {p2, p1}, Lc/c/a/e/d/r/a/a/a;->d(I)V

    .line 9
    :goto_0
    iget-object p1, p0, Lc/c/a/e/d/r/a/a/j;->a:Lc/c/a/e/d/r/a/a/a;

    invoke-interface {p1, v0}, Lc/c/a/e/d/r/a/a/a;->a(Lc/c/a/e/d/r/a/a/l;)V

    return-void
.end method

.method public final b(I)Lc/c/a/e/d/r/a/a/l;
    .locals 1

    .line 6
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/j;->a:Lc/c/a/e/d/r/a/a/a;

    invoke-interface {v0, p1}, Lc/c/a/e/d/r/a/a/a;->c(I)Lc/c/a/e/d/r/a/a/l;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/CommentActionEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/r/a/a/j;->a:Lc/c/a/e/d/r/a/a/a;

    sget-object v1, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->PENDING:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-interface {v0, v1}, Lc/c/a/e/d/r/a/a/a;->a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Ljava/util/List;

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
    check-cast v2, Lc/c/a/e/d/r/a/a/l;

    .line 5
    invoke-static {v2}, Lc/c/a/e/d/r/a/a/h;->a(Lc/c/a/e/d/r/a/a/l;)Lcom/farsitel/bazaar/data/entity/CommentActionEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
