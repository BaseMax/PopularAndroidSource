.class public final Lc/c/a/n/b/d/h;
.super Lc/c/a/n/b/v;
.source "MyRateViewHolder.kt"


# instance fields
.field public final v:Landroidx/databinding/ViewDataBinding;

.field public final w:Lc/c/a/n/b/d/i;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/b/d/i;)V
    .locals 1

    const-string v0, "viewDataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateChangedListener"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/b/v;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/b/d/h;->v:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/b/d/h;->w:Lc/c/a/n/b/d/i;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/d/h;->v:Landroidx/databinding/ViewDataBinding;

    instance-of v1, v0, Lc/c/a/f/Q;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lc/c/a/f/Q;

    iget-object v0, v0, Lc/c/a/f/Q;->C:Landroid/widget/RatingBar;

    const-string v1, "viewDataBinding.rbPostComment"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 3
    invoke-super {p0}, Lc/c/a/n/c/d/n;->C()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D()V
    .locals 3

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/d/n;->D()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/b/d/h;->v:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/n;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/b/d/h;->v:Landroidx/databinding/ViewDataBinding;

    iget-object v0, p0, Lc/c/a/n/b/d/h;->w:Lc/c/a/n/b/d/i;

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method
