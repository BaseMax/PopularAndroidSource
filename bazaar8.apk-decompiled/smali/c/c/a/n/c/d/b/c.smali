.class public final Lc/c/a/n/c/d/b/c;
.super Lc/c/a/n/c/d/n;
.source "MoreViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Lc/c/a/f/La;

.field public final w:Lc/c/a/n/c/b/a;


# direct methods
.method public constructor <init>(Lc/c/a/f/La;Lc/c/a/n/c/b/a;)V
    .locals 1

    const-string v0, "itemBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/c/d/b/c;->v:Lc/c/a/f/La;

    iput-object p2, p0, Lc/c/a/n/c/d/b/c;->w:Lc/c/a/n/c/b/a;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/d/b/c;)Lc/c/a/n/c/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/d/b/c;->w:Lc/c/a/n/c/b/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->b()Lcom/farsitel/bazaar/ui/base/recycler/loadmore/State;

    move-result-object v0

    sget-object v1, Lc/c/a/n/c/d/b/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "itemBinding.refresh"

    const-string v3, "itemBinding.loading"

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v6, "itemBinding.errorText"

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lc/c/a/n/c/d/b/c;->v:Lc/c/a/f/La;

    iget-object p1, p1, Lc/c/a/f/La;->A:Landroid/widget/TextView;

    invoke-static {p1, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lc/c/a/n/c/d/b/c;->v:Lc/c/a/f/La;

    iget-object p1, p1, Lc/c/a/f/La;->C:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lc/c/a/n/c/d/b/c;->v:Lc/c/a/f/La;

    iget-object p1, p1, Lc/c/a/f/La;->B:Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lc/c/a/n/c/d/b/c;->v:Lc/c/a/f/La;

    iget-object v0, v0, Lc/c/a/f/La;->A:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lc/c/a/n/c/d/b/c;->v:Lc/c/a/f/La;

    iget-object v1, v1, Lc/c/a/f/La;->A:Landroid/widget/TextView;

    invoke-static {v1, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v7, "itemBinding.errorText.context"

    invoke-static {v1, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;->a()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-static {v1, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lc/c/a/n/c/d/b/c;->v:Lc/c/a/f/La;

    iget-object p1, p1, Lc/c/a/f/La;->A:Landroid/widget/TextView;

    invoke-static {p1, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lc/c/a/n/c/d/b/c;->v:Lc/c/a/f/La;

    iget-object p1, p1, Lc/c/a/f/La;->B:Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lc/c/a/n/c/d/b/c;->v:Lc/c/a/f/La;

    iget-object p1, p1, Lc/c/a/f/La;->C:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lc/c/a/n/c/d/b/c;->v:Lc/c/a/f/La;

    iget-object p1, p1, Lc/c/a/f/La;->C:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lc/c/a/n/c/d/b/b;

    invoke-direct {v0, p0}, Lc/c/a/n/c/d/b/b;-><init>(Lc/c/a/n/c/d/b/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/b/c;->a(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;)V

    return-void
.end method
