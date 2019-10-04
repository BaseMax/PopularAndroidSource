.class public Lc/c/a/n/c/c/a/c;
.super Lc/c/a/n/c/d/n;
.source "PageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Landroidx/databinding/ViewDataBinding;

.field public final w:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 1

    const-string v0, "viewDataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/c/c/a/c;->v:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/c/c/a/c;->w:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/d/n;->D()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/a/c;->v:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x0

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/a/c;->v:Landroidx/databinding/ViewDataBinding;

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/n;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/c/c/a/c;->v:Landroidx/databinding/ViewDataBinding;

    iget-object v0, p0, Lc/c/a/n/c/c/a/c;->w:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    const/16 v1, 0x15

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lc/c/a/n/c/c/a/c;->v:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method
