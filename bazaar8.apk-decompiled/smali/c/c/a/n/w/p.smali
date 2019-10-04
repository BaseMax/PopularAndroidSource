.class public final Lc/c/a/n/w/p;
.super Lc/c/a/n/c/d/n;
.source "SearchHistoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/n<",
        "Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final v:Landroidx/databinding/ViewDataBinding;

.field public final w:Lc/c/a/n/w/o;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/w/o;)V
    .locals 1

    const-string v0, "dataBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchHistoryCommunicator"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/w/p;->v:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lc/c/a/n/w/p;->w:Lc/c/a/n/w/o;

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/n;->b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/w/p;->v:Landroidx/databinding/ViewDataBinding;

    iget-object v1, p0, Lc/c/a/n/w/p;->w:Lc/c/a/n/w/o;

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lc/c/a/n/w/p;->v:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lc/c/a/n/w/p;->v:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;->getViewType()I

    move-result p1

    sget-object v1, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;->HISTORY:Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/w/p;->a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V

    return-void
.end method
