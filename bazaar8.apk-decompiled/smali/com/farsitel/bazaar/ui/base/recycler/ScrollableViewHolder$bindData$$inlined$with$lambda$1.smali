.class public final Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ScrollableViewHolder.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/d/o;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $item$inlined:Lcom/farsitel/bazaar/common/model/RecyclerData;

.field public final synthetic $this_with:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lc/c/a/n/c/d/o;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lc/c/a/n/c/d/o;Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->$this_with:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->this$0:Lc/c/a/n/c/d/o;

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->$item$inlined:Lcom/farsitel/bazaar/common/model/RecyclerData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->$this_with:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->$item$inlined:Lcom/farsitel/bazaar/common/model/RecyclerData;

    check-cast v1, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getCurrentPosition()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->$item$inlined:Lcom/farsitel/bazaar/common/model/RecyclerData;

    check-cast v2, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    invoke-interface {v2}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getCurrentPositionOffset()I

    move-result v2

    .line 5
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(II)V

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->this$0:Lc/c/a/n/c/d/o;

    new-instance v1, Lc/c/a/n/c/d/p;

    invoke-direct {v1, p0}, Lc/c/a/n/c/d/p;-><init>(Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;)V

    invoke-static {v0, v1}, Lc/c/a/n/c/d/o;->a(Lc/c/a/n/c/d/o;Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 7
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->$this_with:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->this$0:Lc/c/a/n/c/d/o;

    invoke-static {v1}, Lc/c/a/n/c/d/o;->d(Lc/c/a/n/c/d/o;)Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 8
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->$this_with:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lc/c/a/d/b/k;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->$this_with:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    new-instance v1, Lc/c/a/o/a/c;

    .line 11
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;->this$0:Lc/c/a/n/c/d/o;

    invoke-static {v2}, Lc/c/a/n/c/d/o;->b(Lc/c/a/n/c/d/o;)I

    move-result v2

    const/4 v3, 0x0

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 13
    invoke-direct {v1, v2, v3}, Lc/c/a/o/a/c;-><init>(ILjava/lang/Integer;)V

    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void

    .line 15
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    .line 16
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
