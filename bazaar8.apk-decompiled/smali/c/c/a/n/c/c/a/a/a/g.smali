.class public final Lc/c/a/n/c/c/a/a/a/g;
.super Lc/c/a/n/c/c/a/c;
.source "HamiInlineListViewHolder.kt"


# instance fields
.field public final x:Landroidx/databinding/ViewDataBinding;

.field public final y:Lc/c/a/n/c/c/a/a;
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
    .locals 1
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

    const-string v0, "onPageCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3}, Lc/c/a/n/c/c/a/c;-><init>(Landroidx/databinding/ViewDataBinding;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    iput-object p1, p0, Lc/c/a/n/c/c/a/a/a/g;->x:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/c/c/a/a/a/g;->y:Lc/c/a/n/c/c/a/a;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/g;->x:Landroidx/databinding/ViewDataBinding;

    instance-of v1, v0, Lc/c/a/f/za;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lc/c/a/f/za;

    iget-object v0, v0, Lc/c/a/f/za;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

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
    invoke-super {p0}, Lc/c/a/n/c/c/a/c;->D()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/g;->x:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/g;->x:Landroidx/databinding/ViewDataBinding;

    const/16 v2, 0x11

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
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/g;->x:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/g;->x:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x11

    iget-object v2, p0, Lc/c/a/n/c/c/a/a/a/g;->y:Lc/c/a/n/c/c/a/a;

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/g;->x:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v0

    const-string v1, "viewDataBinding.root"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    new-instance v1, Lf/a/a/e/h;

    new-instance v2, Lir/cafebazaar/inline/ui/Theme;

    invoke-direct {v2}, Lir/cafebazaar/inline/ui/Theme;-><init>()V

    invoke-direct {v1, v0, v2}, Lf/a/a/e/h;-><init>(Landroid/content/Context;Lir/cafebazaar/inline/ui/Theme;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getInlineXML()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lf/a/a/e/s;->a(Lf/a/a/e/h;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lc/c/a/n/c/c/a/a/a/g;->x:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_1

    check-cast v0, Lc/c/a/f/za;

    iget-object v0, v0, Lc/c/a/f/za;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListHamiInlineBinding"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
