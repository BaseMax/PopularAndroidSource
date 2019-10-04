.class public final Lc/c/a/n/j/g/h;
.super Lc/c/a/n/c/d/g;
.source "VideoReviewsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/Integer;

.field public final l:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lc/c/a/e/d/r/e;

.field public final n:Lc/c/a/p/I;

.field public final o:Lc/c/a/d/c/b;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/e;Lc/c/a/p/I;Lc/c/a/d/c/b;)V
    .locals 1

    const-string v0, "reviewRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/g/h;->m:Lc/c/a/e/d/r/e;

    iput-object p2, p0, Lc/c/a/n/j/g/h;->n:Lc/c/a/p/I;

    iput-object p3, p0, Lc/c/a/n/j/g/h;->o:Lc/c/a/d/c/b;

    .line 2
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/g/h;->j:Lb/r/t;

    .line 3
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/g/h;->l:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/g/h;)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->h()I

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/g/h;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/j/g/h;)Lc/c/a/e/d/r/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/g/h;->m:Lc/c/a/e/d/r/e;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/j/g/h;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->i()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    const/16 p2, 0x3f2

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3f7

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lc/c/a/n/j/g/h;->k:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/n/j/g/h;->c(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lc/c/a/n/j/g/h;->l()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v4, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsViewModel$makeData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsViewModel$makeData$1;-><init>(Lc/c/a/n/j/g/h;Ljava/lang/String;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->e()Lcom/farsitel/bazaar/core/model/Resource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    .line 4
    new-instance v1, Lcom/farsitel/bazaar/common/model/reviews/ReviewDividerItem;

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/common/model/reviews/ReviewDividerItem;-><init>(IZIILh/f/b/f;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/g/h;->o:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/c/a/n/j/g/h;->n:Lc/c/a/p/I;

    const/4 v1, 0x0

    sget-object v2, Lcom/farsitel/bazaar/data/entity/EntityType;->VIDEO:Lcom/farsitel/bazaar/data/entity/EntityType;

    invoke-virtual {v0, p1, v1, v2}, Lc/c/a/p/I;->a(IZLcom/farsitel/bazaar/data/entity/EntityType;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/j/g/h;->k:Ljava/lang/Integer;

    .line 5
    iget-object p1, p0, Lc/c/a/n/j/g/h;->j:Lb/r/t;

    const/16 v0, 0x3f7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/g/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final j()Lb/r/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/g/h;->j:Lb/r/t;

    return-object v0
.end method

.method public final k()Lb/r/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/g/h;->l:Lb/r/t;

    return-object v0
.end method

.method public final l()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/g/h;->o:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ReviewState$PostComment;->a:Lcom/farsitel/bazaar/core/model/ReviewState$PostComment;

    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/farsitel/bazaar/core/model/Resource;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->g()Lb/r/r;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object v4

    :cond_1
    invoke-direct {v1, v2, v3, v4}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p0, Lc/c/a/n/j/g/h;->j:Lb/r/t;

    const/16 v1, 0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
