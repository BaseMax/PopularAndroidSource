.class public Lc/c/a/n/c/c/a/b;
.super Lc/c/a/n/c/d/a;
.source "PageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

.field public final g:Landroidx/recyclerview/widget/RecyclerView$o;

.field public final h:Lc/c/a/n/c/d/o$a;

.field public final i:Lc/c/a/n/c/d/o$a;

.field public final j:Lc/c/a/n/c/d/o$a;

.field public final k:Lc/c/a/n/c/c/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/n/c/c/a/a<",
            "Lcom/farsitel/bazaar/common/model/page/HamiItem;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lc/c/a/n/c/c/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/n/c/c/a/a<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lc/c/a/n/c/c/a/a/a/k;

.field public final n:Lc/c/a/n/c/c/a/a/a/j;

.field public final o:Lc/c/a/n/c/c/a/a/a/i;


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
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/c/c/a/b;->h:Lc/c/a/n/c/d/o$a;

    iput-object p2, p0, Lc/c/a/n/c/c/a/b;->i:Lc/c/a/n/c/d/o$a;

    iput-object p3, p0, Lc/c/a/n/c/c/a/b;->j:Lc/c/a/n/c/d/o$a;

    iput-object p4, p0, Lc/c/a/n/c/c/a/b;->k:Lc/c/a/n/c/c/a/a;

    iput-object p5, p0, Lc/c/a/n/c/c/a/b;->l:Lc/c/a/n/c/c/a/a;

    iput-object p6, p0, Lc/c/a/n/c/c/a/b;->m:Lc/c/a/n/c/c/a/a/a/k;

    iput-object p7, p0, Lc/c/a/n/c/c/a/b;->n:Lc/c/a/n/c/c/a/a/a/j;

    iput-object p8, p0, Lc/c/a/n/c/c/a/b;->o:Lc/c/a/n/c/c/a/a/a/i;

    .line 2
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    iput-object p1, p0, Lc/c/a/n/c/c/a/b;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    return-void
.end method

.method public b(Lc/c/a/n/c/d/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 2
    instance-of v0, p1, Lc/c/a/n/c/d/o;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lc/c/a/n/c/d/o;

    invoke-virtual {p1}, Lc/c/a/n/c/d/o;->G()V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 3
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

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Lc/c/a/n/c/c/a/a/b/b;

    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    iget-object v2, p0, Lc/c/a/n/c/c/a/b;->h:Lc/c/a/n/c/d/o$a;

    invoke-direct {p2, p1, v0, v1, v2}, Lc/c/a/n/c/c/a/a/b/b;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$o;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;Lc/c/a/n/c/d/o$a;)V

    goto/16 :goto_3

    .line 4
    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_VIDEO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_SERIAL:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 7
    :goto_0
    new-instance p2, Lc/c/a/n/c/c/a/a/b/d;

    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    iget-object v2, p0, Lc/c/a/n/c/c/a/b;->i:Lc/c/a/n/c/d/o$a;

    invoke-direct {p2, p1, v0, v1, v2}, Lc/c/a/n/c/c/a/a/b/d;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$o;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;Lc/c/a/n/c/d/o$a;)V

    goto/16 :goto_3

    .line 8
    :cond_3
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_PROMO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 9
    new-instance p2, Lc/c/a/n/c/c/a/a/b/f;

    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    iget-object v2, p0, Lc/c/a/n/c/c/a/b;->j:Lc/c/a/n/c/d/o$a;

    invoke-direct {p2, p1, v0, v1, v2}, Lc/c/a/n/c/c/a/a/b/f;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$o;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;Lc/c/a/n/c/d/o$a;)V

    goto/16 :goto_3

    .line 10
    :cond_4
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_HAMI_INLINE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    const-string v1, "ItemListHamiInlineBindin\u2026.context), parent, false)"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_5

    .line 11
    new-instance p2, Lc/c/a/n/c/c/a/a/a/g;

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/za;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/za;

    move-result-object p1

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->k:Lc/c/a/n/c/c/a/a;

    .line 14
    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 15
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/c/c/a/a/a/g;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto/16 :goto_3

    .line 16
    :cond_5
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_HAMI_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_HAMI_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 18
    :goto_1
    new-instance p2, Lc/c/a/n/c/c/a/a/a/f;

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/xa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/xa;

    move-result-object p1

    const-string v0, "ItemListHamiAppBinding.i\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->k:Lc/c/a/n/c/c/a/a;

    .line 21
    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 22
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/c/c/a/a/a/f;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto/16 :goto_3

    .line 23
    :cond_7
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_INLINE_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_8

    goto :goto_2

    .line 24
    :cond_8
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->LIST_INLINE_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 25
    :goto_2
    new-instance p2, Lc/c/a/n/c/c/a/a/a/h;

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/Ba;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Ba;

    move-result-object p1

    const-string v0, "ItemListInlineAppBinding\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->k:Lc/c/a/n/c/c/a/a;

    .line 28
    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 29
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/c/c/a/a/a/h;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto/16 :goto_3

    .line 30
    :cond_9
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_APP:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 31
    new-instance p2, Lc/c/a/n/c/c/a/a/a/d;

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/pa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/pa;

    move-result-object p1

    const-string v0, "ItemListAppBinding.infla\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->l:Lc/c/a/n/c/c/a/a;

    .line 34
    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 35
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/c/c/a/a/a/d;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto/16 :goto_3

    .line 36
    :cond_a
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_APP_MINI:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 37
    new-instance p2, Lc/c/a/n/c/c/a/a/a/c;

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/Da;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Da;

    move-result-object p1

    const-string v0, "ItemListMiniAppBinding.i\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->l:Lc/c/a/n/c/c/a/a;

    .line 40
    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 41
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/c/c/a/a/a/c;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto/16 :goto_3

    .line 42
    :cond_b
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_VIDEO:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 43
    new-instance p2, Lc/c/a/n/c/c/a/a/a/n;

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/Ja;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Ja;

    move-result-object p1

    const-string v0, "ItemListVideoBinding.inf\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->m:Lc/c/a/n/c/c/a/a/a/k;

    .line 46
    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 47
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/c/c/a/a/a/n;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a/a/k;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto/16 :goto_3

    .line 48
    :cond_c
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_SERIAL:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_d

    .line 49
    new-instance p2, Lc/c/a/n/c/c/a/a/a/m;

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/Ha;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Ha;

    move-result-object p1

    const-string v0, "ItemListSerialBinding.in\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->n:Lc/c/a/n/c/c/a/a/a/j;

    .line 52
    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 53
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/c/c/a/a/a/m;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a/a/j;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto/16 :goto_3

    .line 54
    :cond_d
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->LIST_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_e

    .line 55
    new-instance p2, Lc/c/a/n/c/c/a/a/a/e;

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/va;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/va;

    move-result-object p1

    const-string v0, "ItemListEpisodeBinding.i\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->o:Lc/c/a/n/c/c/a/a/a/i;

    .line 58
    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 59
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/c/c/a/a/a/e;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a/a/i;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto/16 :goto_3

    .line 60
    :cond_e
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_HAMI_INLINE:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_f

    .line 61
    new-instance p2, Lc/c/a/n/c/c/a/a/a/g;

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/za;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/za;

    move-result-object p1

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->k:Lc/c/a/n/c/c/a/a;

    .line 64
    iget-object v1, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 65
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/c/c/a/a/a/g;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/c/c/a/a;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto/16 :goto_3

    .line 66
    :cond_f
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_PROMO:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_10

    .line 67
    new-instance p2, Lc/c/a/n/c/c/a/a/a/l;

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/Fa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Fa;

    move-result-object p1

    const-string v0, "ItemListPromoBinding.inf\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lc/c/a/n/c/c/a/b;->f:Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;

    .line 70
    invoke-direct {p2, p1, v0}, Lc/c/a/n/c/c/a/a/a/l;-><init>(Landroidx/databinding/ViewDataBinding;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    goto :goto_3

    .line 71
    :cond_10
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_CATEGORY_ITEM:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_11

    .line 72
    new-instance p2, Lc/c/a/n/c/d/n;

    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/ra;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/ra;

    move-result-object p1

    const-string v0, "ItemListCategoryBinding.\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_3

    .line 75
    :cond_11
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/PageItemType;->LIST_CATEGORY_HEADER:Lcom/farsitel/bazaar/common/model/page/PageItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_12

    .line 76
    new-instance p2, Lc/c/a/n/c/d/n;

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/ta;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/ta;

    move-result-object p1

    const-string v0, "ItemListCategoryHeaderBi\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_3

    .line 79
    :cond_12
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->DESCRIPTION:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_13

    .line 80
    new-instance p2, Lc/c/a/n/c/d/n;

    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lc/c/a/f/Xa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Xa;

    move-result-object p1

    const-string v0, "ItemPageDescriptionBindi\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    :goto_3
    return-object p2

    .line 83
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/a/b;->b(Lc/c/a/n/c/d/n;)V

    return-void
.end method
