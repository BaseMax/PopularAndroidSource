.class public Lc/c/a/n/c/d/n;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "RecyclerViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$w;"
    }
.end annotation


# instance fields
.field public t:Lc/c/a/n/c/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/n/c/d/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final u:Landroidx/databinding/ViewDataBinding;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lc/c/a/n/c/d/n;->u:Landroidx/databinding/ViewDataBinding;

    return-void
.end method


# virtual methods
.method public final B()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/n;->u:Landroidx/databinding/ViewDataBinding;

    return-object v0
.end method

.method public C()V
    .locals 0

    return-void
.end method

.method public D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/n;->u:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x0

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/d/n;->u:Landroidx/databinding/ViewDataBinding;

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/d/n;->u:Landroidx/databinding/ViewDataBinding;

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public final a(Lc/c/a/n/c/d/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/m<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/d/n;->t:Lc/c/a/n/c/d/m;

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/n;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/d/n;->u:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lc/c/a/n/c/d/n;->u:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lc/c/a/n/c/d/n;->t:Lc/c/a/n/c/d/m;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lc/c/a/n/c/d/n;->u:Landroidx/databinding/ViewDataBinding;

    const/16 v1, 0x29

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object p1, p0, Lc/c/a/n/c/d/n;->u:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->g()V

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
