.class public abstract Lc/c/a/n/c/d/a/g;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "FabScrollListener.kt"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public final c:I

.field public final d:F

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_floatingButton"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput p3, p0, Lc/c/a/n/c/d/a/g;->f:I

    .line 2
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lc/c/a/n/c/d/a/g;->a:Ljava/lang/ref/WeakReference;

    .line 3
    sget-object p2, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    iput-object p2, p0, Lc/c/a/n/c/d/a/g;->b:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    .line 4
    invoke-static {}, Lc/c/a/c/h/d;->b()I

    move-result p2

    iput p2, p0, Lc/c/a/n/c/d/a/g;->c:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07006e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lc/c/a/n/c/d/a/g;->d:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 3
    iget v0, p0, Lc/c/a/n/c/d/a/g;->d:F

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 20
    iput p1, p0, Lc/c/a/n/c/d/a/g;->f:I

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 12
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc/c/a/n/c/d/a/g;->e:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 13
    iput-boolean v1, p0, Lc/c/a/n/c/d/a/g;->e:Z

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lc/c/a/n/c/d/a/g;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 15
    :cond_0
    iget v0, p0, Lc/c/a/n/c/d/a/g;->f:I

    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->f()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->i()V

    if-eqz p1, :cond_2

    .line 17
    iget v0, p0, Lc/c/a/n/c/d/a/g;->d:F

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/n/c/d/a/g;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 18
    iput-boolean v1, p0, Lc/c/a/n/c/d/a/g;->e:Z

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 6
    iget p2, p0, Lc/c/a/n/c/d/a/g;->f:I

    add-int/2addr p2, p3

    iput p2, p0, Lc/c/a/n/c/d/a/g;->f:I

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->G()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lc/c/a/n/c/d/a/g;->f:I

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/a/g;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/d/a/g;->b:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/a/g;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lc/c/a/n/c/d/a/g;->e:Z

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/c/d/a/g;->c:I

    return v0
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    .line 5
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public final c()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/a/g;->b:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-object v0
.end method

.method public final d()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/a/g;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/c/d/a/g;->e:Z

    return v0
.end method

.method public abstract f()I
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/a/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract h()Z
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/a/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method
