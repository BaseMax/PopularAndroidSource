.class public abstract Lc/c/a/n/c/d/o;
.super Lc/c/a/n/c/c/a/c;
.source "ScrollableViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/c/d/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Section::",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ":",
        "Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData<",
        "TSectionItem;>;SectionItem::",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">",
        "Lc/c/a/n/c/c/a/c;"
    }
.end annotation


# instance fields
.field public final A:Landroid/widget/TextView;

.field public final B:Landroid/widget/ImageView;

.field public final C:Landroid/widget/TextView;

.field public final D:Landroid/view/View;

.field public final E:I

.field public F:Landroidx/recyclerview/widget/RecyclerView$n;

.field public final G:Landroid/view/ViewGroup;

.field public final H:Landroidx/recyclerview/widget/RecyclerView$o;

.field public final I:Lc/c/a/n/c/d/o$a;

.field public x:I

.field public y:Lc/c/a/n/c/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/n/c/d/a<",
            "TSectionItem;>;"
        }
    .end annotation
.end field

.field public final z:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$o;Lc/c/a/n/c/d/o$a;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerPool"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc/c/a/f/ub;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/ub;

    move-result-object v0

    const-string v1, "ItemScrollableBinding.in\u2026.context), parent, false)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v0, p4}, Lc/c/a/n/c/c/a/c;-><init>(Landroidx/databinding/ViewDataBinding;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    iput-object p1, p0, Lc/c/a/n/c/d/o;->G:Landroid/view/ViewGroup;

    iput-object p2, p0, Lc/c/a/n/c/d/o;->H:Landroidx/recyclerview/widget/RecyclerView$o;

    iput-object p3, p0, Lc/c/a/n/c/d/o;->I:Lc/c/a/n/c/d/o$a;

    const/16 p1, 0x8

    .line 3
    invoke-static {p1}, Lc/c/a/d/b/i;->a(I)I

    move-result p1

    iput p1, p0, Lc/c/a/n/c/d/o;->x:I

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lc/c/a/e;->scrollableRecyclerView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p3, "itemView.scrollableRecyclerView"

    invoke-static {p1, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/a/n/c/d/o;->z:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lc/c/a/e;->scrollableAction:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string p3, "itemView.scrollableAction"

    invoke-static {p1, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/a/n/c/d/o;->A:Landroid/widget/TextView;

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lc/c/a/e;->scrollableArrow:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    const-string p3, "itemView.scrollableArrow"

    invoke-static {p1, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/a/n/c/d/o;->B:Landroid/widget/ImageView;

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lc/c/a/e;->scrollableLabel:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string p3, "itemView.scrollableLabel"

    invoke-static {p1, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/a/n/c/d/o;->C:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lc/c/a/e;->scrollableTitleContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "itemView.scrollableTitleContainer"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/a/n/c/d/o;->D:Landroid/view/View;

    .line 9
    invoke-static {}, Lc/c/a/c/h/d;->b()I

    move-result p1

    iput p1, p0, Lc/c/a/n/c/d/o;->E:I

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/d/o;)Lc/c/a/n/c/d/o$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/d/o;->I:Lc/c/a/n/c/d/o$a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/c/d/o;Landroidx/recyclerview/widget/RecyclerView$n;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/n/c/d/o;->F:Landroidx/recyclerview/widget/RecyclerView$n;

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/c/d/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/n/c/d/o;->x:I

    return p0
.end method

.method public static final synthetic c(Lc/c/a/n/c/d/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/n/c/d/o;->E:I

    return p0
.end method

.method public static final synthetic d(Lc/c/a/n/c/d/o;)Landroidx/recyclerview/widget/RecyclerView$n;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/c/d/o;->F:Landroidx/recyclerview/widget/RecyclerView$n;

    return-object p0
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/c/a/c;->D()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/n;->B()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public abstract E()Lc/c/a/n/c/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/n/c/d/a<",
            "TSectionItem;>;"
        }
    .end annotation
.end method

.method public final F()Lc/c/a/n/c/d/q;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/c/d/q;

    invoke-direct {v0, p0}, Lc/c/a/n/c/d/q;-><init>(Lc/c/a/n/c/d/o;)V

    return-object v0
.end method

.method public final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/o;->F:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/c/a/n/c/d/o;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/c/a/n/c/d/o;->y:Lc/c/a/n/c/d/a;

    return-void
.end method

.method public final a(ILh/f/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 3
    invoke-interface {p2}, Lh/f/a/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/n;->B()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/c/d/o;->I:Lc/c/a/n/c/d/o$a;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/d/o;->D:Landroid/view/View;

    move-object v1, p1

    check-cast v1, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;

    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/c/d/o;->z:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object v2, p0, Lc/c/a/n/c/d/o;->H:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 8
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 9
    new-instance v2, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const-string v6, "itemView"

    invoke-static {v5, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "itemView.context"

    invoke-static {v5, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getOrientation()I

    move-result v6

    invoke-direct {v2, v5, v6, v4}, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v4, 0x4

    .line 10
    invoke-virtual {v2, v4}, Lcom/farsitel/bazaar/ui/base/recycler/PreloadLinearLayoutManager;->n(I)V

    .line 11
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 12
    iget-object v2, p0, Lc/c/a/n/c/d/o;->y:Lc/c/a/n/c/d/a;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lc/c/a/n/c/d/o;->E()Lc/c/a/n/c/d/a;

    move-result-object v2

    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v4}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    .line 13
    invoke-virtual {p0}, Lc/c/a/n/c/d/o;->F()Lc/c/a/n/c/d/q;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/m;)V

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v4

    if-nez v4, :cond_3

    .line 15
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$a;Z)V

    .line 17
    :goto_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->c()V

    .line 18
    invoke-interface {v1}, Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowData;->getOrientation()I

    move-result v1

    new-instance v2, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/farsitel/bazaar/ui/base/recycler/ScrollableViewHolder$bindData$$inlined$with$lambda$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lc/c/a/n/c/d/o;Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    invoke-virtual {p0, v1, v2}, Lc/c/a/n/c/d/o;->a(ILh/f/a/a;)V

    return-void
.end method
