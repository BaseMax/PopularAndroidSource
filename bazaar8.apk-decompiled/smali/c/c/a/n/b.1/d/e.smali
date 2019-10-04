.class public final Lc/c/a/n/b/d/e;
.super Lc/c/a/n/b/v;
.source "AppReviewViewHolder.kt"


# instance fields
.field public final v:Landroidx/databinding/ViewDataBinding;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .locals 1

    const-string v0, "viewDataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/b/v;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/b/d/e;->v:Landroidx/databinding/ViewDataBinding;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/d/n;->D()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/b/d/e;->v:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/d/e;->v:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->getReviewItem()Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-result-object p1

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method
