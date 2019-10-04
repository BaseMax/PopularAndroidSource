.class public final Lc/c/a/n/j/b/b/a;
.super Lc/c/a/n/c/d/n;
.source "CinemaInfoViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Lc/c/a/n/j/b/a/c;

.field public final w:Landroidx/recyclerview/widget/RecyclerView;

.field public final x:Lc/c/a/f/hc;

.field public final y:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

.field public z:Landroidx/recyclerview/widget/RecyclerView$o;


# direct methods
.method public constructor <init>(Lc/c/a/f/hc;Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoInfoClickListener"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerPool"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/j/b/b/a;->x:Lc/c/a/f/hc;

    iput-object p2, p0, Lc/c/a/n/j/b/b/a;->y:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    iput-object p3, p0, Lc/c/a/n/j/b/b/a;->z:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 2
    new-instance p1, Lc/c/a/n/j/b/a/c;

    iget-object p2, p0, Lc/c/a/n/j/b/b/a;->y:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    invoke-direct {p1, p2}, Lc/c/a/n/j/b/a/c;-><init>(Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;)V

    iput-object p1, p0, Lc/c/a/n/j/b/b/a;->v:Lc/c/a/n/j/b/a/c;

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lc/c/a/e;->genres:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "itemView.genres"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/a/n/j/b/b/a;->w:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    iget-object v1, p0, Lc/c/a/n/j/b/b/a;->x:Lc/c/a/f/hc;

    iget-object v1, v1, Lc/c/a/f/hc;->F:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "viewBinding.videoCoverImage"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 2
    sget-object v0, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    iget-object v1, p0, Lc/c/a/n/j/b/b/a;->x:Lc/c/a/f/hc;

    iget-object v1, v1, Lc/c/a/f/hc;->C:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "viewBinding.ivVideoDetailVideoCover"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/j/b/b/a;->x:Lc/c/a/f/hc;

    iget-object v0, v0, Lc/c/a/f/hc;->F:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/j/b/b/a;->x:Lc/c/a/f/hc;

    iget-object v0, v0, Lc/c/a/f/hc;->C:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-super {p0}, Lc/c/a/n/c/d/n;->C()V

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/b/b/a;->x:Lc/c/a/f/hc;

    iget-object v1, p0, Lc/c/a/n/j/b/b/a;->y:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 2
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->getGenres()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lc/c/a/n/j/b/b/a;->w:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v1, p0, Lc/c/a/n/j/b/b/a;->z:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$o;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 8
    new-instance v3, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v5, "itemView"

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "itemView.context"

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, v2, v2}, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v2, 0x2

    .line 9
    invoke-virtual {v3, v2}, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;->n(I)V

    .line 10
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 11
    iget-object v2, p0, Lc/c/a/n/j/b/b/a;->v:Lc/c/a/n/j/b/a/c;

    invoke-virtual {v2, p1}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 13
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$a;Z)V

    .line 15
    :goto_0
    invoke-static {v0}, Lc/c/a/d/b/k;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 16
    new-instance p1, Lc/c/a/o/a/b;

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800b7

    invoke-static {v1, v2}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 18
    sget-object v2, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v2

    invoke-virtual {v2}, Lc/c/a/e/d/u/a;->w()Z

    move-result v2

    .line 19
    invoke-direct {p1, v1, v2}, Lc/c/a/o/a/b;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    .line 20
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :cond_1
    return-void

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
