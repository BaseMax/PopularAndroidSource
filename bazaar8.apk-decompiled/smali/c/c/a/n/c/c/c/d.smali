.class public abstract Lc/c/a/n/c/c/c/d;
.super Lc/c/a/d/f/p;
.source "BasePageContainerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/d/f/p;"
    }
.end annotation


# instance fields
.field public final d:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    .line 2
    new-instance v0, Lb/r/r;

    invoke-direct {v0}, Lb/r/r;-><init>()V

    iput-object v0, p0, Lc/c/a/n/c/c/c/d;->d:Lb/r/r;

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/BaseTabPage;)V
    .locals 17

    const-string v0, "page"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lc/c/a/n/c/c/c/d;->d:Lb/r/r;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/entity/BaseTabPage;->getPages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2
    new-instance v3, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v6, Lcom/farsitel/bazaar/core/model/PageContainerState$SinglePage;->a:Lcom/farsitel/bazaar/core/model/PageContainerState$SinglePage;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/entity/BaseTabPage;->getPages()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v3, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v12, Lcom/farsitel/bazaar/core/model/PageContainerState$MultiPage;->a:Lcom/farsitel/bazaar/core/model/PageContainerState$MultiPage;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/entity/BaseTabPage;->getPages()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    .line 4
    :goto_0
    invoke-virtual {v2, v3}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 5

    const-string v0, "errorModel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/c/c/c/d;->d:Lb/r/r;

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    .line 6
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

    .line 7
    :goto_1
    iget-object v4, p0, Lc/c/a/n/c/c/c/d;->d:Lb/r/r;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 8
    :cond_2
    invoke-direct {v1, v2, v3, p1}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/c/d;->d:Lb/r/r;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/c/a/n/c/c/c/d;->d:Lb/r/r;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    iget-object v0, p0, Lc/c/a/n/c/c/c/d;->d:Lb/r/r;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/d;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public abstract c(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/c/d;->d:Lb/r/r;

    return-object v0
.end method
