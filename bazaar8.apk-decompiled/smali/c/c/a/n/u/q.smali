.class public final Lc/c/a/n/u/q;
.super Lc/c/a/n/c/d/g;
.source "ReviewsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;",
        ">;"
    }
.end annotation


# instance fields
.field public j:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

.field public final k:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Boolean;

.field public o:Ljava/lang/Integer;

.field public final p:Lb/r/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Lh/h;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public final s:Lc/c/a/e/d/r/e;

.field public final t:Lc/c/a/p/I;

.field public final u:Lc/c/a/d/c/b;

.field public final v:Lc/c/a/b/d/b;

.field public final w:Lc/c/a/e/d/c/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/e;Lc/c/a/p/I;Lc/c/a/d/c/b;Lc/c/a/b/d/b;Lc/c/a/e/d/c/a;)V
    .locals 1

    const-string v0, "getReviewRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appManager"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDetailRepository"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/u/q;->s:Lc/c/a/e/d/r/e;

    iput-object p2, p0, Lc/c/a/n/u/q;->t:Lc/c/a/p/I;

    iput-object p3, p0, Lc/c/a/n/u/q;->u:Lc/c/a/d/c/b;

    iput-object p4, p0, Lc/c/a/n/u/q;->v:Lc/c/a/b/d/b;

    iput-object p5, p0, Lc/c/a/n/u/q;->w:Lc/c/a/e/d/c/a;

    .line 2
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/u/q;->k:Lb/r/t;

    .line 3
    new-instance p1, Lb/r/r;

    invoke-direct {p1}, Lb/r/r;-><init>()V

    iput-object p1, p0, Lc/c/a/n/u/q;->p:Lb/r/r;

    .line 4
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/u/q;->q:Lc/c/a/c/h/g;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/u/q;)Lc/c/a/e/d/c/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/u/q;->w:Lc/c/a/e/d/c/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/u/q;I)V
    .locals 0

    .line 3
    iput p1, p0, Lc/c/a/n/u/q;->r:I

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/u/q;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/u/q;)Lc/c/a/e/d/r/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/u/q;->s:Lc/c/a/e/d/r/e;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/u/q;)Lb/r/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/u/q;->p:Lb/r/r;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/n/u/q;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->h()I

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lc/c/a/n/u/q;)Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/u/q;->j:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "reviewActionItem"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic f(Lc/c/a/n/u/q;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->i()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lc/c/a/n/u/q;->l:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    goto :goto_0

    :cond_0
    const/16 p2, 0x3f2

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3f7

    if-eq p1, p2, :cond_1

    .line 19
    iget-object p2, p0, Lc/c/a/n/u/q;->l:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 20
    iget-object p3, p0, Lc/c/a/n/u/q;->o:Ljava/lang/Integer;

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 21
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 22
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lc/c/a/n/u/q;->a(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto :goto_0

    .line 23
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lc/c/a/n/u/q;->b(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto :goto_0

    .line 24
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lc/c/a/n/u/q;->c(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto :goto_0

    .line 25
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lc/c/a/n/u/q;->d(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lc/c/a/n/u/q;->m:Ljava/lang/Integer;

    .line 27
    iget-object p2, p0, Lc/c/a/n/u/q;->n:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 28
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 29
    invoke-virtual {p0, p1, p2}, Lc/c/a/n/u/q;->b(IZ)V

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Lc/c/a/n/u/q;->n()V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IZ)V
    .locals 2

    .line 31
    iget-object v0, p0, Lc/c/a/n/u/q;->t:Lc/c/a/p/I;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lc/c/a/p/I;->a(IZZ)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lc/c/a/n/u/q;->j:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    .line 5
    new-instance v4, Lcom/farsitel/bazaar/ui/reviews/ReviewsViewModel$makeData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsViewModel$makeData$1;-><init>(Lc/c/a/n/u/q;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V
    .locals 3

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lc/c/a/n/u/q;->v:Lc/c/a/b/d/b;

    iget-object v1, p0, Lc/c/a/n/u/q;->j:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/d/b;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lc/c/a/n/u/q;->q:Lc/c/a/c/h/g;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lc/c/a/n/u/q;->u:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->isReplyDisliked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->removeReplyDownVote()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->addReplyDownVote()V

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getReplyItem()Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getId()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/u/q;->a(IZ)V

    .line 12
    iget-object p1, p0, Lc/c/a/n/u/q;->p:Lb/r/r;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    .line 14
    :cond_3
    iput-object p1, p0, Lc/c/a/n/u/q;->l:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/u/q;->o:Ljava/lang/Integer;

    .line 16
    iget-object p1, p0, Lc/c/a/n/u/q;->k:Lb/r/t;

    const/16 p2, 0x3f6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    const-string p1, "reviewActionItem"

    .line 17
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final b(IZ)V
    .locals 7

    .line 18
    iget-object v0, p0, Lc/c/a/n/u/q;->u:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p0, Lc/c/a/n/u/q;->t:Lc/c/a/p/I;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lc/c/a/p/I;->a(Lc/c/a/p/I;IZLcom/farsitel/bazaar/data/entity/EntityType;ILjava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lc/c/a/n/u/q;->n:Ljava/lang/Boolean;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/u/q;->m:Ljava/lang/Integer;

    .line 22
    iget-object p1, p0, Lc/c/a/n/u/q;->k:Lb/r/t;

    const/16 p2, 0x3f7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V
    .locals 2

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lc/c/a/n/u/q;->v:Lc/c/a/b/d/b;

    iget-object v1, p0, Lc/c/a/n/u/q;->j:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/d/b;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lc/c/a/n/u/q;->q:Lc/c/a/c/h/g;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lc/c/a/n/u/q;->u:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->isDisliked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->removeDownVote()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->addDownVote()V

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getId()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/u/q;->a(IZ)V

    .line 13
    iget-object p1, p0, Lc/c/a/n/u/q;->p:Lb/r/r;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_2
    iput-object p1, p0, Lc/c/a/n/u/q;->l:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/u/q;->o:Ljava/lang/Integer;

    .line 16
    iget-object p1, p0, Lc/c/a/n/u/q;->k:Lb/r/t;

    const/16 p2, 0x3f5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_3
    const-string p1, "reviewActionItem"

    .line 17
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
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

.method public final c(IZ)V
    .locals 2

    .line 14
    iget-object v0, p0, Lc/c/a/n/u/q;->t:Lc/c/a/p/I;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lc/c/a/p/I;->a(IZZ)V

    return-void
.end method

.method public final c(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V
    .locals 3

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/u/q;->v:Lc/c/a/b/d/b;

    iget-object v1, p0, Lc/c/a/n/u/q;->j:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/d/b;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lc/c/a/n/u/q;->q:Lc/c/a/c/h/g;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lc/c/a/n/u/q;->u:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->isReplyLiked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->removeReplyUpVote()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->addReplyUpVote()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getReplyItem()Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getId()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/u/q;->c(IZ)V

    .line 8
    iget-object p1, p0, Lc/c/a/n/u/q;->p:Lb/r/r;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    .line 10
    :cond_3
    iput-object p1, p0, Lc/c/a/n/u/q;->l:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/u/q;->o:Ljava/lang/Integer;

    .line 12
    iget-object p1, p0, Lc/c/a/n/u/q;->k:Lb/r/t;

    const/16 p2, 0x3f4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    const-string p1, "reviewActionItem"

    .line 13
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final d(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V
    .locals 2

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/u/q;->v:Lc/c/a/b/d/b;

    iget-object v1, p0, Lc/c/a/n/u/q;->j:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/b/d/b;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lc/c/a/n/u/q;->q:Lc/c/a/c/h/g;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lc/c/a/n/u/q;->u:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->isLiked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->removeUpVote()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->addUpVote()V

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getId()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/u/q;->c(IZ)V

    .line 9
    iget-object p1, p0, Lc/c/a/n/u/q;->p:Lb/r/r;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    iput-object p1, p0, Lc/c/a/n/u/q;->l:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/u/q;->o:Ljava/lang/Integer;

    .line 12
    iget-object p1, p0, Lc/c/a/n/u/q;->k:Lb/r/t;

    const/16 p2, 0x3f3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_3
    const-string p1, "reviewActionItem"

    .line 13
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/u/q;->a(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)V

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
    iget-object v0, p0, Lc/c/a/n/u/q;->k:Lb/r/t;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/u/q;->r:I

    return v0
.end method

.method public final l()Lc/c/a/c/h/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/c/h/g<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/q;->q:Lc/c/a/c/h/g;

    return-object v0
.end method

.method public final m()Lb/r/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/r/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/q;->p:Lb/r/r;

    return-object v0
.end method

.method public final n()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/q;->u:Lc/c/a/d/c/b;

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
    iget-object v0, p0, Lc/c/a/n/u/q;->k:Lb/r/t;

    const/16 v1, 0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
