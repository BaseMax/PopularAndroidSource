.class public final Lc/c/a/n/h/c;
.super Lc/c/a/d/f/p;
.source "CategoryViewModel.kt"


# instance fields
.field public final d:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lc/c/a/e/d/g/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/g/a;)V
    .locals 1

    const-string v0, "categoryRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/h/c;->e:Lc/c/a/e/d/g/a;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/h/c;->d:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/h/c;)Lc/c/a/e/d/g/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/h/c;->e:Lc/c/a/e/d/g/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/h/c;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/h/c;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/h/c;Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/h/c;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 4

    .line 16
    iget-object v0, p0, Lc/c/a/n/h/c;->d:Lb/r/t;

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;

    const/16 v3, 0x44

    invoke-direct {v2, v3}, Lcom/farsitel/bazaar/common/model/categroy/CategoryDividerItem;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;

    .line 8
    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;->getGame()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lc/c/a/n/h/c;->d:Lb/r/t;

    new-instance v2, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v3, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    new-instance v4, Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;

    invoke-direct {v4, v1, v0}, Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {p1, v2}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/h/c;->d:Lb/r/t;

    return-object v0
.end method

.method public final f()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/c/a/n/h/c;->d:Lb/r/t;

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

    .line 2
    :goto_0
    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    new-instance v5, Lcom/farsitel/bazaar/ui/category/CategoryViewModel$loadData$1;

    invoke-direct {v5, p0, v1}, Lcom/farsitel/bazaar/ui/category/CategoryViewModel$loadData$1;-><init>(Lc/c/a/n/h/c;Lh/c/b;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    :cond_2
    :goto_1
    return-void
.end method
