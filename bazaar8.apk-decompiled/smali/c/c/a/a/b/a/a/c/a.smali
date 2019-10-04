.class public final Lc/c/a/a/b/a/a/c/a;
.super Ljava/lang/Object;
.source "ActionLogRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/u/a;

.field public b:Ljava/lang/String;

.field public final c:Lc/c/a/e/b/e;

.field public final d:Lc/c/a/e/b/a;

.field public final e:Lc/c/a/e/b/c;

.field public final f:Lc/c/a/a/b/a/a/c/b/a;

.field public final g:Lc/c/a/e/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/b/e;Lc/c/a/e/b/a;Lc/c/a/e/b/c;Lc/c/a/a/b/a/a/c/b/a;Lc/c/a/e/d/a/a;Landroid/content/Context;)V
    .locals 1

    const-string v0, "requestPropertiesDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceDisplayInfoDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoDataSource"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/b/a/a/c/a;->c:Lc/c/a/e/b/e;

    iput-object p2, p0, Lc/c/a/a/b/a/a/c/a;->d:Lc/c/a/e/b/a;

    iput-object p3, p0, Lc/c/a/a/b/a/a/c/a;->e:Lc/c/a/e/b/c;

    iput-object p4, p0, Lc/c/a/a/b/a/a/c/a;->f:Lc/c/a/a/b/a/a/c/b/a;

    iput-object p5, p0, Lc/c/a/a/b/a/a/c/a;->g:Lc/c/a/e/d/a/a;

    .line 2
    sget-object p1, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {p1, p6}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/b/a/a/c/a;->a:Lc/c/a/e/d/u/a;

    .line 3
    iget-object p1, p0, Lc/c/a/a/b/a/a/c/a;->a:Lc/c/a/e/d/u/a;

    invoke-virtual {p1}, Lc/c/a/e/d/u/a;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/b/a/a/c/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/a/b/a/a/c/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/a/b/a/a/c/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lc/c/a/a/b/a/a/c/a/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/a/b/a/a/a/a;",
            ">;)",
            "Lc/c/a/a/b/a/a/c/a/d;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lc/c/a/a/b/a/a/c/a;->c:Lc/c/a/e/b/e;

    invoke-virtual {v0}, Lc/c/a/e/b/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a;->b:Ljava/lang/String;

    .line 15
    new-instance v9, Lc/c/a/a/b/a/a/c/a/a;

    .line 16
    iget-object v2, p0, Lc/c/a/a/b/a/a/c/a;->d:Lc/c/a/e/b/a;

    invoke-virtual {v2}, Lc/c/a/e/b/a;->a()Z

    move-result v3

    .line 17
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Build.MODEL"

    invoke-static {v4, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lc/c/a/a/b/a/a/c/a;->e:Lc/c/a/e/b/c;

    invoke-virtual {v2}, Lc/c/a/e/b/c;->d()I

    move-result v2

    int-to-float v5, v2

    .line 19
    iget-object v2, p0, Lc/c/a/a/b/a/a/c/a;->e:Lc/c/a/e/b/c;

    invoke-virtual {v2}, Lc/c/a/e/b/c;->h()I

    move-result v2

    int-to-float v6, v2

    .line 20
    iget-object v2, p0, Lc/c/a/a/b/a/a/c/a;->g:Lc/c/a/e/d/a/a;

    invoke-virtual {v2}, Lc/c/a/e/d/a/a;->d()I

    move-result v7

    .line 21
    iget-object v2, p0, Lc/c/a/a/b/a/a/c/a;->e:Lc/c/a/e/b/c;

    invoke-virtual {v2}, Lc/c/a/e/b/c;->a()Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    .line 22
    invoke-direct/range {v2 .. v8}, Lc/c/a/a/b/a/a/c/a/a;-><init>(ZLjava/lang/String;FFILjava/lang/String;)V

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    check-cast v3, Lc/c/a/a/b/a/a/a/a;

    .line 26
    invoke-virtual {v3}, Lc/c/a/a/b/a/a/a/a;->i()Lc/c/a/a/b/a/a/c/a/c;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 28
    new-instance p1, Lc/c/a/a/b/a/a/c/a/b;

    invoke-direct {p1, v9, v2, v3, v4}, Lc/c/a/a/b/a/a/c/a/b;-><init>(Lc/c/a/a/b/a/a/c/a/a;Ljava/util/List;J)V

    .line 29
    new-instance v2, Lc/c/a/a/b/a/a/c/a/d;

    invoke-direct {v2, v0, v1, p1}, Lc/c/a/a/b/a/a/c/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lc/c/a/a/b/a/a/c/a/b;)V

    return-object v2
.end method

.method public final a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/a/b/a/a/a/a;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;

    iget v1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;-><init>(Lc/c/a/a/b/a/a/c/a;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    iget-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/a/b/a/a/c/a;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iget-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/a/b/a/a/c/a;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lc/c/a/a/b/a/a/c/a;->f:Lc/c/a/a/b/a/a/c/b/a;

    invoke-virtual {p0, p1}, Lc/c/a/a/b/a/a/c/a;->a(Ljava/util/List;)Lc/c/a/a/b/a/a/c/a/d;

    move-result-object v2

    invoke-interface {p2, v2}, Lc/c/a/a/b/a/a/c/b/a;->a(Lc/c/a/a/b/a/a/c/a/d;)Ll/b;

    move-result-object p2

    .line 8
    new-instance v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$result$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$result$1;-><init>(Lc/c/a/a/b/a/a/c/a;)V

    iput-object p0, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->label:I

    invoke-static {p2, v2, v0}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 9
    :goto_1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either;

    .line 10
    instance-of v4, p2, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v4, :cond_6

    move-object v4, p2

    check-cast v4, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/16 v5, 0x26c

    if-ne v4, v5, :cond_6

    .line 11
    iput-object v2, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/remote/ActionLogRemoteDataSource$sendActions$1;->label:I

    invoke-virtual {v2, p1, v0}, Lc/c/a/a/b/a/a/c/a;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 12
    :cond_5
    :goto_2
    check-cast p2, Lcom/farsitel/bazaar/data/entity/Either;

    :cond_6
    return-object p2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/a/b/a/a/c/a;->a:Lc/c/a/e/d/u/a;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/u/a;->b(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lc/c/a/a/b/a/a/c/a;->b:Ljava/lang/String;

    return-void
.end method
