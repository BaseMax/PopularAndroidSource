.class public abstract Lc/c/a/n/c/d/g;
.super Lc/c/a/d/f/p;
.source "BaseRecyclerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/c/d/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Params:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/d/f/p;"
    }
.end annotation


# static fields
.field public static final d:Lc/c/a/n/c/d/g$a;


# instance fields
.field public final e:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field public f:Lcom/farsitel/bazaar/core/model/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Ljava/util/List<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/c/d/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/c/d/g$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/c/d/g;->d:Lc/c/a/n/c/d/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    .line 2
    new-instance v0, Lb/r/r;

    invoke-direct {v0}, Lb/r/r;-><init>()V

    iput-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Ljava/lang/Integer;

    sget-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->DESCRIPTION:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0d00c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lh/a/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/c/d/g;->g:Ljava/util/List;

    const/16 v0, 0x18

    .line 4
    iput v0, p0, Lc/c/a/n/c/d/g;->h:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/LiveData;Lh/f/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TE;>;",
            "Lh/f/a/b<",
            "-TE;+",
            "Ljava/util/List<",
            "+TT;>;>;)V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapFunction"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    new-instance v1, Lc/c/a/n/c/d/h;

    invoke-direct {v1, p0, p2}, Lc/c/a/n/c/d/h;-><init>(Lc/c/a/n/c/d/g;Lh/f/a/b;)V

    invoke-virtual {v0, p1, v1}, Lb/r/r;->a(Landroidx/lifecycle/LiveData;Lb/r/u;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 5

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    .line 2
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/core/model/Resource;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v2, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/farsitel/bazaar/core/model/RecyclerState$ErrorLoadMore;->a:Lcom/farsitel/bazaar/core/model/RecyclerState$ErrorLoadMore;

    .line 3
    :goto_1
    iget-object v4, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4
    :cond_2
    invoke-direct {v1, v2, v3, p1}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/model/Resource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/farsitel/bazaar/core/model/RecyclerState$LoadingLoadMore;->a:Lcom/farsitel/bazaar/core/model/RecyclerState$LoadingLoadMore;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v3, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    iget-object v2, p0, Lc/c/a/n/c/d/g;->f:Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v2, p1}, Lh/a/u;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    iput-object v0, p0, Lc/c/a/n/c/d/g;->f:Lcom/farsitel/bazaar/core/model/Resource;

    .line 7
    iget-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/RecyclerState$SuccessLoadMore;->a:Lcom/farsitel/bazaar/core/model/RecyclerState$SuccessLoadMore;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    .line 9
    :cond_3
    new-instance v0, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v9, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v0

    move-object v10, p1

    invoke-direct/range {v8 .. v13}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    .line 10
    iput-object v0, p0, Lc/c/a/n/c/d/g;->f:Lcom/farsitel/bazaar/core/model/Resource;

    .line 11
    iget-object v1, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    invoke-virtual {v1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 12
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->c(Z)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/g;->f:Lcom/farsitel/bazaar/core/model/Resource;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    iget-object v0, p0, Lc/c/a/n/c/d/g;->f:Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->d(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/model/Resource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/farsitel/bazaar/core/model/RecyclerState$LoadingLoadMore;->a:Lcom/farsitel/bazaar/core/model/RecyclerState$LoadingLoadMore;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    new-instance v8, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v3, Lcom/farsitel/bazaar/core/model/RecyclerState$LoadingLoadMore;->a:Lcom/farsitel/bazaar/core/model/RecyclerState$LoadingLoadMore;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :cond_1
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v8}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->d(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/n/c/d/g;->i:Z

    return-void
.end method

.method public abstract d(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation
.end method

.method public final e()Lcom/farsitel/bazaar/core/model/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/c/a/n/c/d/g;->f:Lcom/farsitel/bazaar/core/model/Resource;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/c/a/n/c/d/g;->f:Lcom/farsitel/bazaar/core/model/Resource;

    .line 2
    iget-object v1, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    new-instance v2, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v3, Lcom/farsitel/bazaar/core/model/ResourceState$UnKnown;->a:Lcom/farsitel/bazaar/core/model/ResourceState$UnKnown;

    invoke-direct {v2, v3, v0, v0}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v1, v2}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/c/d/g;->i:Z

    return v0
.end method

.method public final g()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    return-object v0
.end method

.method public final g()Lb/r/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/r<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/g;->e:Lb/r/r;

    return-object v0
.end method

.method public h()I
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/g;->f:Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 4
    iget-object v4, p0, Lc/c/a/n/c/d/g;->g:Ljava/util/List;

    invoke-interface {v3}, Lcom/farsitel/bazaar/common/model/RecyclerData;->getViewType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/c/d/g;->h:I

    return v0
.end method
