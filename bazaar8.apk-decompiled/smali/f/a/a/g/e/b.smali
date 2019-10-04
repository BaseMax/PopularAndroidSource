.class public Lf/a/a/g/e/b;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "InlineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/g/e/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lf/a/a/g/e/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lf/a/a/e/g;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/e/g;",
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/e/b;->c:Lf/a/a/e/g;

    .line 3
    iput-object p2, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    .line 4
    iput p3, p0, Lf/a/a/g/e/b;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 25
    iget-object v0, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iput-object p1, p0, Lf/a/a/g/e/b;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public a(Lf/a/a/e/b/n;)V
    .locals 1

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ux/list/InlineListAdapter$1;

    invoke-direct {v0, p0, p1}, Lir/cafebazaar/inline/ux/list/InlineListAdapter$1;-><init>(Lf/a/a/g/e/b;Lf/a/a/e/b/n;)V

    invoke-virtual {p0, v0}, Lf/a/a/g/e/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lf/a/a/g/e/b$a;I)V
    .locals 1

    .line 24
    iget-object v0, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/a/a/e/b/n;

    iget-object v0, p0, Lf/a/a/g/e/b;->c:Lf/a/a/e/g;

    invoke-virtual {p1}, Lf/a/a/g/e/b$a;->B()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lf/a/a/e/b/n;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lf/a/a/g/e/b;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lf/a/a/g/e/b;->c(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 8
    :goto_0
    iget-object v5, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lf/a/a/g/e/b;->e:I

    mul-int/lit8 v6, v6, 0x5

    sub-int/2addr v6, v4

    const/4 v7, 0x0

    if-le v5, v6, :cond_4

    .line 9
    iget-object v5, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lf/a/a/g/e/b;->e:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    .line 10
    iget-object v9, p0, Lf/a/a/g/e/b;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/RecyclerView$i;->c(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 11
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    .line 12
    iget-object v9, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 13
    :goto_3
    iget-object v6, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 14
    iget-object v9, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    invoke-interface {v9, v6, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-nez v5, :cond_6

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 16
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$a;->d(I)V

    goto :goto_4

    .line 17
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v6, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->b(II)V

    goto :goto_4

    .line 18
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->d()V

    .line 19
    :goto_4
    invoke-virtual {p0}, Lf/a/a/g/e/b;->e()Landroid/view/View;

    move-result-object p1

    if-eqz v3, :cond_7

    .line 20
    new-instance v1, Lf/a/a/g/e/a;

    invoke-direct {v1, p0, v0, p1}, Lf/a/a/g/e/a;-><init>(Lf/a/a/g/e/b;Landroidx/core/widget/NestedScrollView;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_7
    cmpl-float v3, v8, v7

    if-lez v3, :cond_9

    int-to-float v1, v1

    sub-float/2addr v1, v8

    float-to-int v1, v1

    if-ltz v1, :cond_8

    .line 21
    invoke-virtual {v0, v2, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_5

    :cond_8
    const/16 v1, 0x82

    .line 22
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->e(I)Z

    if-eqz p1, :cond_9

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_9
    :goto_5
    return-void
.end method

.method public b(I)I
    .locals 1

    .line 11
    iget-object v0, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/a/e/b/n;

    invoke-virtual {p1}, Lf/a/a/e/b/n;->b()I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lf/a/a/g/e/b;->b(Landroid/view/ViewGroup;I)Lf/a/a/g/e/b$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;I)Lf/a/a/g/e/b$a;
    .locals 2

    .line 6
    iget-object v0, p0, Lf/a/a/g/e/b;->c:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lf/a/a/g/e/b;->c:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    new-instance p2, Lf/a/a/g/e/b$a;

    invoke-direct {p2, p1}, Lf/a/a/g/e/b$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1
    check-cast p1, Lf/a/a/g/e/b$a;

    invoke-virtual {p0, p1, p2}, Lf/a/a/g/e/b;->a(Lf/a/a/g/e/b$a;I)V

    return-void
.end method

.method public b(Lf/a/a/e/b/n;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lf/a/a/g/e/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->e(I)V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/e/b;->g:Landroidx/core/widget/NestedScrollView;

    if-nez v0, :cond_1

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lf/a/a/g/e/b;->g:Landroidx/core/widget/NestedScrollView;

    .line 4
    :cond_1
    iget-object p1, p0, Lf/a/a/g/e/b;->g:Landroidx/core/widget/NestedScrollView;

    return-object p1
.end method

.method public final e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/e/b;->c:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/g/e/b;->c:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
