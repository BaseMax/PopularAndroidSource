.class public final Lc/c/a/n/k/a;
.super Lc/c/a/n/c/c/a/b;
.source "EditorChoiceAdapter.kt"


# direct methods
.method public constructor <init>(Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/c/a/a;Lc/c/a/n/c/c/a/a;Lc/c/a/n/c/c/a/a/a/k;Lc/c/a/n/c/c/a/a/a/j;Lc/c/a/n/c/c/a/a/a/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/o$a;",
            "Lc/c/a/n/c/d/o$a;",
            "Lc/c/a/n/c/d/o$a;",
            "Lc/c/a/n/c/c/a/a<",
            "Lcom/farsitel/bazaar/common/model/page/HamiItem;",
            ">;",
            "Lc/c/a/n/c/c/a/a<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem;",
            ">;",
            "Lc/c/a/n/c/c/a/a/a/k;",
            "Lc/c/a/n/c/c/a/a/a/j;",
            "Lc/c/a/n/c/c/a/a/a/i;",
            ")V"
        }
    .end annotation

    const-string v0, "onAppScrollListener"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onVideoScrollListener"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPromoScrollListener"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPageHamiCommunicator"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPageListAppCommunicator"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onVideoListViewHolderCommunicator"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSerialViewHolderCommunicator"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEpisodeViewHolderCommunicator"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p8}, Lc/c/a/n/c/c/a/b;-><init>(Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/c/a/a;Lc/c/a/n/c/c/a/a;Lc/c/a/n/c/c/a/a/a/k;Lc/c/a/n/c/c/a/a/a/j;Lc/c/a/n/c/c/a/a/a/i;)V

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
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->EDITOR_CHOICE_HEADER:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    new-instance p2, Lc/c/a/n/c/d/n;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc/c/a/f/la;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/la;

    move-result-object p1

    const-string v0, "ItemEditorChoiceHeaderBi\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/c/a/b;->c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;

    move-result-object p2

    :goto_0
    return-object p2
.end method
