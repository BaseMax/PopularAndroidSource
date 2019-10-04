.class public final Lc/c/a/n/c/c/a/a/a/n;
.super Lc/c/a/n/c/c/a/c;
.source "VideoListViewHolder.kt"


# instance fields
.field public final x:Landroidx/databinding/ViewDataBinding;

.field public final y:Lc/c/a/n/c/c/a/a/a/k;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a/a/k;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 1

    const-string v0, "viewDataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onVideoListViewHolderCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3}, Lc/c/a/n/c/c/a/c;-><init>(Landroidx/databinding/ViewDataBinding;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    iput-object p1, p0, Lc/c/a/n/c/c/a/a/a/n;->x:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/c/c/a/a/a/n;->y:Lc/c/a/n/c/c/a/a/a/k;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/n;->x:Landroidx/databinding/ViewDataBinding;

    instance-of v1, v0, Lc/c/a/f/Ja;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    check-cast v0, Lc/c/a/f/Ja;

    iget-object v0, v0, Lc/c/a/f/Ja;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "viewDataBinding.videoCover"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/n;->x:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lc/c/a/f/Ja;

    iget-object v0, v0, Lc/c/a/f/Ja;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-super {p0}, Lc/c/a/n/c/d/n;->C()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D()V
    .locals 3

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/c/a/c;->D()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/n;->x:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/n;->x:Landroidx/databinding/ViewDataBinding;

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/c/a/c;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/n;->x:Landroidx/databinding/ViewDataBinding;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/n;->y:Lc/c/a/n/c/c/a/a/a/k;

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/n;->x:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/n;->x:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    check-cast v0, Lc/c/a/f/Ja;

    iget-object v0, v0, Lc/c/a/f/Ja;->F:Lcom/farsitel/bazaar/widget/LoadingButton;

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object p1

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/n;->x:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lc/c/a/f/Ja;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v1

    const-string v2, "viewDataBinding.root"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "viewDataBinding.root.context"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getPrimaryButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListVideoBinding"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
