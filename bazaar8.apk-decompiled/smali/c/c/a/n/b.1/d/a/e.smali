.class public final Lc/c/a/n/b/d/a/e;
.super Lc/c/a/n/b/d/a/d;
.source "ScreenshotVideoItemViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/b/d/a/e$a;
    }
.end annotation


# instance fields
.field public final v:Landroidx/databinding/ViewDataBinding;

.field public final w:Lc/c/a/n/b/d/a/e$a;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/b/d/a/e$a;)V
    .locals 1

    const-string v0, "viewDataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/b/d/a/d;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/b/d/a/e;->v:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/b/d/a/e;->w:Lc/c/a/n/b/d/a/e$a;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/d/a/e;->v:Landroidx/databinding/ViewDataBinding;

    instance-of v1, v0, Lc/c/a/f/sb;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    check-cast v0, Lc/c/a/f/sb;

    iget-object v0, v0, Lc/c/a/f/sb;->C:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "viewDataBinding.ivThumbRowScreenshotVideo"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/b/d/a/e;->v:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lc/c/a/f/sb;

    iget-object v0, v0, Lc/c/a/f/sb;->C:Landroidx/appcompat/widget/AppCompatImageView;

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
    invoke-super {p0}, Lc/c/a/n/c/d/n;->D()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/b/d/a/e;->v:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/n;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/b/d/a/e;->v:Landroidx/databinding/ViewDataBinding;

    iget-object v0, p0, Lc/c/a/n/b/d/a/e;->w:Lc/c/a/n/b/d/a/e$a;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/b/d/a/e;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;)V

    return-void
.end method
