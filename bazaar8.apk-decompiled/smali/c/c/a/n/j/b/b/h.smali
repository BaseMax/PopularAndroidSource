.class public final Lc/c/a/n/j/b/b/h;
.super Lc/c/a/n/c/d/n;
.source "ScreenshotsViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/j/b/b/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# static fields
.field public static final v:Lc/c/a/n/j/b/b/h$a;


# instance fields
.field public w:Lc/c/a/n/j/b/a/d$a;

.field public final x:Landroidx/recyclerview/widget/RecyclerView$o;

.field public final y:Lc/c/a/f/lc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/j/b/b/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/j/b/b/h$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/j/b/b/h;->v:Lc/c/a/n/j/b/b/h$a;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$o;Lc/c/a/f/lc;)V
    .locals 1

    const-string v0, "sharedPool"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/j/b/b/h;->x:Landroidx/recyclerview/widget/RecyclerView$o;

    iput-object p2, p0, Lc/c/a/n/j/b/b/h;->y:Lc/c/a/f/lc;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 2

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Z)V

    const/16 p1, 0x9

    .line 4
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k(I)V

    .line 5
    new-instance p1, Lc/c/a/n/j/b/b/i;

    invoke-direct {p1}, Lc/c/a/n/j/b/b/i;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    return-object v0
.end method

.method public final a(Lc/c/a/n/j/b/a/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/n/j/b/b/h;->w:Lc/c/a/n/j/b/a/d$a;

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/b/b/h;->y:Lc/c/a/f/lc;

    .line 2
    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v2

    const-string v3, "root"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "root.context"

    invoke-static {v2, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070079

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 5
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 6
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 7
    iget-object v0, v0, Lc/c/a/f/lc;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc/c/a/n/j/b/b/h;->a(Landroid/content/Context;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 10
    new-instance v1, Lc/c/a/n/j/b/a/d;

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;

    iget-object v2, p0, Lc/c/a/n/j/b/b/h;->w:Lc/c/a/n/j/b/a/d$a;

    invoke-direct {v1, p1, v2}, Lc/c/a/n/j/b/a/d;-><init>(Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;Lc/c/a/n/j/b/a/d$a;)V

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/ScreenshotsItem;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 15
    iget-object p1, p0, Lc/c/a/n/j/b/b/h;->x:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
