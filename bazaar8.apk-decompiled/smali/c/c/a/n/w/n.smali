.class public final Lc/c/a/n/w/n;
.super Lc/c/a/n/c/d/a;
.source "SearchHistoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lc/c/a/n/w/o;


# direct methods
.method public constructor <init>(Lc/c/a/n/w/o;)V
    .locals 1

    const-string v0, "searchHistoryCommunicator"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/w/n;->f:Lc/c/a/n/w/o;

    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;->HISTORY:Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;->NONE:Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    :goto_0
    new-instance p2, Lc/c/a/n/w/p;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc/c/a/f/wb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/wb;

    move-result-object p1

    const-string v0, "ItemSearchHistoryBinding\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/w/n;->f:Lc/c/a/n/w/o;

    .line 5
    invoke-direct {p2, p1, v0}, Lc/c/a/n/w/p;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/w/o;)V

    return-object p2

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
