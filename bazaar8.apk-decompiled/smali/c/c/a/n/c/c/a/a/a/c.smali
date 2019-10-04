.class public final Lc/c/a/n/c/c/a/a/a/c;
.super Lc/c/a/n/c/c/a/c;
.source "AppListMiniAppViewHolder.kt"


# instance fields
.field public final x:Lc/c/a/n/c/c/a/a/a/b;

.field public final y:Landroidx/databinding/ViewDataBinding;

.field public final z:Lc/c/a/n/c/c/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/n/c/c/a/a<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "Lc/c/a/n/c/c/a/a<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;",
            ")V"
        }
    .end annotation

    const-string v0, "viewDataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPageAppListCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3}, Lc/c/a/n/c/c/a/c;-><init>(Landroidx/databinding/ViewDataBinding;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    iput-object p1, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/c/c/a/a/a/c;->z:Lc/c/a/n/c/c/a/a;

    .line 2
    new-instance p1, Lc/c/a/n/c/c/a/a/a/b;

    .line 3
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p2

    const-string p3, "viewDataBinding.root"

    invoke-static {p2, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    if-eqz p2, :cond_0

    check-cast p2, Lc/c/a/f/Da;

    iget-object v3, p2, Lc/c/a/f/Da;->F:Landroid/widget/FrameLayout;

    const-string p2, "(viewDataBinding as Item\u2026niAppBinding).appRootItem"

    invoke-static {v3, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lc/c/a/f/Da;

    iget-object v4, p2, Lc/c/a/f/Da;->J:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "viewDataBinding.primaryButton"

    invoke-static {v4, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lc/c/a/f/Da;

    iget-object v5, p2, Lc/c/a/f/Da;->G:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p2, "viewDataBinding.cancelButton"

    invoke-static {v5, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lc/c/a/f/Da;

    iget-object v6, p2, Lc/c/a/f/Da;->K:Landroid/widget/ProgressBar;

    const-string p2, "viewDataBinding.progressBar"

    invoke-static {v6, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    move-object p3, p2

    check-cast p3, Lc/c/a/f/Da;

    iget-object v7, p3, Lc/c/a/f/Da;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    check-cast p2, Lc/c/a/f/Da;

    iget-object v8, p2, Lc/c/a/f/Da;->D:Lcom/farsitel/bazaar/widget/NoDiscountTextView;

    move-object v1, p1

    .line 10
    invoke-direct/range {v1 .. v8}, Lc/c/a/n/c/c/a/a/a/b;-><init>(Ljava/lang/ref/WeakReference;Landroid/view/View;Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lc/c/a/n/c/c/a/a/a/c;->x:Lc/c/a/n/c/c/a/a/a/b;

    return-void

    .line 11
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListMiniAppBinding"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    instance-of v1, v0, Lc/c/a/f/Da;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    check-cast v0, Lc/c/a/f/Da;

    iget-object v0, v0, Lc/c/a/f/Da;->O:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "viewDataBinding.screenshotImageView1"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 3
    sget-object v0, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lc/c/a/f/Da;

    iget-object v1, v1, Lc/c/a/f/Da;->P:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "viewDataBinding.screenshotImageView2"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 4
    sget-object v0, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lc/c/a/f/Da;

    iget-object v1, v1, Lc/c/a/f/Da;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "viewDataBinding.screenshotImageView3"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 5
    sget-object v0, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lc/c/a/f/Da;

    iget-object v1, v1, Lc/c/a/f/Da;->B:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "viewDataBinding.appIcon"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;)V

    .line 6
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lc/c/a/f/Da;

    iget-object v0, v0, Lc/c/a/f/Da;->O:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lc/c/a/f/Da;

    iget-object v0, v0, Lc/c/a/f/Da;->P:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lc/c/a/f/Da;

    iget-object v0, v0, Lc/c/a/f/Da;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lc/c/a/f/Da;

    iget-object v0, v0, Lc/c/a/f/Da;->B:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-super {p0}, Lc/c/a/n/c/d/n;->C()V

    return-void

    .line 11
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
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    const/16 v2, 0x13

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
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/c;->y:Landroidx/databinding/ViewDataBinding;

    iget-object v1, p0, Lc/c/a/n/c/c/a/a/a/c;->z:Lc/c/a/n/c/c/a/a;

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/c;->x:Lc/c/a/n/c/c/a/a/a/b;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/n/c/c/a/a/a/b;->c(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    .line 5
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/c;->x:Lc/c/a/n/c/c/a/a/a/b;

    invoke-virtual {p1}, Lc/c/a/n/c/c/a/a/a/b;->m()V

    return-void
.end method
