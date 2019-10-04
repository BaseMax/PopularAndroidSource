.class public final Lc/c/a/n/c/d/p;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "ScrollableViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/d/p;->a:Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p2

    if-eqz p2, :cond_5

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->H()I

    move-result v0

    .line 3
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object p2

    .line 4
    iget-object v1, p0, Lc/c/a/n/c/d/p;->a:Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;

    iget-object v1, v1, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->$item$inlined:Lcom/farsitel/bazaar/common/model/RecyclerData;

    check-cast v1, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    invoke-static {p2}, Lb/b/g/Da;->a(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc/c/a/n/c/d/p;->a:Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;

    iget-object v2, v2, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->this$0:Lc/c/a/n/c/d/o;

    invoke-static {v2}, Lc/c/a/n/c/d/o;->c(Lc/c/a/n/c/d/o;)I

    move-result v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-interface {v1, v3}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->setCurrentPositionOffset(I)V

    .line 6
    iget-object p1, p0, Lc/c/a/n/c/d/p;->a:Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;

    iget-object p1, p1, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->$item$inlined:Lcom/farsitel/bazaar/common/model/RecyclerData;

    check-cast p1, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    invoke-interface {p1, v0}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->setCurrentPosition(I)V

    return-void

    .line 7
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
