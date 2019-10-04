.class public final Lc/c/a/n/c/c/a/a/a/f;
.super Lc/c/a/n/c/c/a/c;
.source "HamiAppListViewHolder.kt"


# instance fields
.field public final x:Lc/c/a/n/c/c/a/a/a/b;

.field public final y:Landroidx/databinding/ViewDataBinding;

.field public final z:Lc/c/a/n/c/c/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/n/c/c/a/a<",
            "Lcom/farsitel/bazaar/common/model/page/HamiItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "Lc/c/a/n/c/c/a/a<",
            "Lcom/farsitel/bazaar/common/model/page/HamiItem;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;",
            ")V"
        }
    .end annotation

    const-string v0, "viewDataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3}, Lc/c/a/n/c/c/a/c;-><init>(Landroidx/databinding/ViewDataBinding;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    iput-object p1, p0, Lc/c/a/n/c/c/a/a/a/f;->y:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/c/c/a/a/a/f;->z:Lc/c/a/n/c/c/a/a;

    .line 2
    new-instance p1, Lc/c/a/n/c/c/a/a/a/b;

    .line 3
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/f;->y:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p2

    const-string p3, "viewDataBinding.root"

    invoke-static {p2, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/f;->y:Landroidx/databinding/ViewDataBinding;

    if-eqz p2, :cond_0

    check-cast p2, Lc/c/a/f/xa;

    iget-object v3, p2, Lc/c/a/f/xa;->C:Landroid/widget/FrameLayout;

    const-string p2, "(viewDataBinding as Item\u2026miAppBinding).appRootItem"

    invoke-static {v3, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/f;->y:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lc/c/a/f/xa;

    iget-object v4, p2, Lc/c/a/f/xa;->G:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "viewDataBinding.primaryButton"

    invoke-static {v4, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/f;->y:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lc/c/a/f/xa;

    iget-object v5, p2, Lc/c/a/f/xa;->D:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p2, "viewDataBinding.cancelButton"

    invoke-static {v5, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lc/c/a/n/c/c/a/a/a/f;->y:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lc/c/a/f/xa;

    iget-object v6, p2, Lc/c/a/f/xa;->H:Landroid/widget/ProgressBar;

    const-string p2, "viewDataBinding.progressBar"

    invoke-static {v6, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, p1

    .line 8
    invoke-direct/range {v1 .. v10}, Lc/c/a/n/c/c/a/a/a/b;-><init>(Ljava/lang/ref/WeakReference;Landroid/view/View;Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;ILh/f/b/f;)V

    iput-object p1, p0, Lc/c/a/n/c/c/a/a/a/f;->x:Lc/c/a/n/c/c/a/a/a/b;

    return-void

    .line 9
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListHamiAppBinding"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/c/a/c;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 2
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/VitrinItem$Hami;->getHami()Lcom/farsitel/bazaar/common/model/page/HamiItem;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/f;->y:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/f;->y:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x11

    iget-object v2, p0, Lc/c/a/n/c/c/a/a/a/f;->z:Lc/c/a/n/c/c/a/a;

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/f;->x:Lc/c/a/n/c/c/a/a/a/b;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/n/c/c/a/a/a/b;->c(Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    .line 8
    iget-object p1, p0, Lc/c/a/n/c/c/a/a/a/f;->x:Lc/c/a/n/c/c/a/a/a/b;

    invoke-virtual {p1}, Lc/c/a/n/c/c/a/a/a/b;->m()V

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "item is not hami"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
