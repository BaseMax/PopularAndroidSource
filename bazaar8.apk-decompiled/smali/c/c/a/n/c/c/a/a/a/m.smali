.class public final Lc/c/a/n/c/c/a/a/a/m;
.super Lc/c/a/n/c/c/a/c;
.source "SerialListViewHolder.kt"


# instance fields
.field public final x:Landroidx/databinding/ViewDataBinding;

.field public final y:Lc/c/a/n/c/c/a/a/a/j;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a/a/j;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 1

    const-string v0, "viewDataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSerialListViewHolderCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3}, Lc/c/a/n/c/c/a/c;-><init>(Landroidx/databinding/ViewDataBinding;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    iput-object p1, p0, Lc/c/a/n/c/c/a/a/a/m;->x:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/c/c/a/a/a/m;->y:Lc/c/a/n/c/c/a/a/a/j;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/m;->x:Landroidx/databinding/ViewDataBinding;

    instance-of v1, v0, Lc/c/a/f/Ha;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    check-cast v0, Lc/c/a/f/Ha;

    iget-object v0, v0, Lc/c/a/f/Ha;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "viewDataBinding.serialCover"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/m;->x:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lc/c/a/f/Ha;

    iget-object v0, v0, Lc/c/a/f/Ha;->B:Landroidx/appcompat/widget/AppCompatImageView;

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
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/m;->x:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/m;->x:Landroidx/databinding/ViewDataBinding;

    const/16 v2, 0x2c

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
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/m;->x:Landroidx/databinding/ViewDataBinding;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/m;->y:Lc/c/a/n/c/c/a/a/a/j;

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Serial;

    const/16 v1, 0x2c

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/m;->x:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Serial;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Serial;->getSerial()Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/m;->x:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
