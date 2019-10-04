.class public final Lc/c/a/n/j/b/a/a;
.super Lc/c/a/n/c/d/a;
.source "CinemaPageDetailAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Landroidx/recyclerview/widget/RecyclerView$o;

.field public final g:Lc/c/a/n/j/b/a/d$a;

.field public final h:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

.field public final i:Lc/c/a/n/c/d/o$a;

.field public final j:Lc/c/a/n/j/b/b/d$a;

.field public final k:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;

.field public final l:Lc/c/a/n/c/c/a/a/a/i;


# direct methods
.method public constructor <init>(Lc/c/a/n/j/b/a/d$a;Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Lc/c/a/n/c/d/o$a;Lc/c/a/n/j/b/b/d$a;Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;Lc/c/a/n/c/c/a/a/a/i;)V
    .locals 1

    const-string v0, "onScreenshotImageClicked"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoInfoClickListener"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scrollableViewHolderCommunicator"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crewsPersonClickListener"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/b/a/a;->g:Lc/c/a/n/j/b/a/d$a;

    iput-object p2, p0, Lc/c/a/n/j/b/a/a;->h:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    iput-object p3, p0, Lc/c/a/n/j/b/a/a;->i:Lc/c/a/n/c/d/o$a;

    iput-object p4, p0, Lc/c/a/n/j/b/a/a;->j:Lc/c/a/n/j/b/b/d$a;

    iput-object p5, p0, Lc/c/a/n/j/b/a/a;->k:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;

    iput-object p6, p0, Lc/c/a/n/j/b/a/a;->l:Lc/c/a/n/c/c/a/a/a/i;

    .line 3
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    iput-object p1, p0, Lc/c/a/n/j/b/a/a;->f:Landroidx/recyclerview/widget/RecyclerView$o;

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/n/j/b/a/d$a;Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Lc/c/a/n/c/d/o$a;Lc/c/a/n/j/b/b/d$a;Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;Lc/c/a/n/c/c/a/a/a/i;ILh/f/b/f;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lc/c/a/n/j/b/a/a;-><init>(Lc/c/a/n/j/b/a/d$a;Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Lc/c/a/n/c/d/o$a;Lc/c/a/n/j/b/b/d$a;Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;Lc/c/a/n/c/c/a/a/a/i;)V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/c/d/n;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lc/c/a/n/j/b/b/h;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lc/c/a/n/j/b/b/h;

    iget-object v1, p0, Lc/c/a/n/j/b/a/a;->g:Lc/c/a/n/j/b/a/d$a;

    invoke-virtual {v0, v1}, Lc/c/a/n/j/b/b/h;->a(Lc/c/a/n/j/b/a/d$a;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lc/c/a/n/j/b/b/j;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lc/c/a/n/j/b/b/j;

    iget-object v1, p0, Lc/c/a/n/j/b/a/a;->l:Lc/c/a/n/c/c/a/a/a/i;

    invoke-virtual {v0, v1}, Lc/c/a/n/j/b/b/j;->a(Lc/c/a/n/c/c/a/a/a/i;)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/n;I)V

    return-void
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/j/b/a/a;->a(Lc/c/a/n/c/d/n;I)V

    return-void
.end method

.method public b(Lc/c/a/n/c/d/n;)V
    .locals 2
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

    .line 2
    instance-of v0, p1, Lc/c/a/n/j/b/b/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lc/c/a/n/j/b/b/h;

    invoke-virtual {v0, v1}, Lc/c/a/n/j/b/b/h;->a(Lc/c/a/n/j/b/a/d$a;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lc/c/a/n/j/b/b/j;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p1

    check-cast v0, Lc/c/a/n/j/b/b/j;

    invoke-virtual {v0, v1}, Lc/c/a/n/j/b/b/j;->a(Lc/c/a/n/c/c/a/a/a/i;)V

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 4
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
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->CINEMA_INFO:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 4
    new-instance p2, Lc/c/a/n/j/b/b/a;

    .line 5
    invoke-static {v0, p1, v2}, Lc/c/a/f/hc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/hc;

    move-result-object p1

    const-string v0, "ItemVideoDetailVideoInfo\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lc/c/a/n/j/b/a/a;->h:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    .line 7
    iget-object v1, p0, Lc/c/a/n/j/b/a/a;->f:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 8
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/j/b/b/a;-><init>(Lc/c/a/f/hc;Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;Landroidx/recyclerview/widget/RecyclerView$o;)V

    goto/16 :goto_1

    .line 9
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->CREWS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 10
    new-instance p2, Lc/c/a/n/j/b/b/d;

    .line 11
    iget-object v1, p0, Lc/c/a/n/j/b/a/a;->f:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 12
    invoke-static {v0, p1, v2}, Lc/c/a/f/Ob;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Ob;

    move-result-object p1

    const-string v0, "ItemVideoDetailCrewsBind\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lc/c/a/n/j/b/a/a;->j:Lc/c/a/n/j/b/b/d$a;

    .line 14
    invoke-direct {p2, v1, p1, v0}, Lc/c/a/n/j/b/b/d;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;Lc/c/a/f/Ob;Lc/c/a/n/j/b/b/d$a;)V

    goto/16 :goto_1

    .line 15
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DESCRIPTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 16
    new-instance p2, Lc/c/a/n/c/d/n;

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 18
    invoke-static {v0, p1, v2}, Lc/c/a/f/fc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/fc;

    move-result-object p1

    const-string v0, "ItemVideoDetailVideoDesc\u2026lse\n                    )"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_1

    .line 20
    :cond_2
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->LOADING_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 21
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/Ub;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Ub;

    move-result-object p1

    const-string v0, "ItemVideoDetailProgressB\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_1

    .line 22
    :cond_3
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->DIVIDER:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 23
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/ja;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/ja;

    move-result-object p1

    const-string v0, "ItemDividerBinding.infla\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_1

    .line 24
    :cond_4
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->OTHER_INFO_TITLE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v3, "ItemVideoDetailOtherInfo\u2026(inflater, parent, false)"

    if-ne p2, v1, :cond_5

    .line 25
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/Sb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Sb;

    move-result-object p1

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_1

    .line 26
    :cond_5
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->OTHER_INFO_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_6

    .line 27
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/Qb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Qb;

    move-result-object p1

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_1

    .line 28
    :cond_6
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SCREEN_SHOT:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_7

    .line 29
    new-instance p2, Lc/c/a/n/j/b/b/h;

    .line 30
    iget-object v1, p0, Lc/c/a/n/j/b/a/a;->f:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 31
    invoke-static {v0, p1, v2}, Lc/c/a/f/lc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/lc;

    move-result-object p1

    const-string v0, "ItemVideoDetailVideoScre\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p2, v1, p1}, Lc/c/a/n/j/b/b/h;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;Lc/c/a/f/lc;)V

    .line 33
    iget-object p1, p0, Lc/c/a/n/j/b/a/a;->g:Lc/c/a/n/j/b/a/d$a;

    invoke-virtual {p2, p1}, Lc/c/a/n/j/b/b/h;->a(Lc/c/a/n/j/b/a/d$a;)V

    goto/16 :goto_1

    .line 34
    :cond_7
    sget-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_VIDEO:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_8

    goto :goto_0

    .line 35
    :cond_8
    sget-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_SERIAL:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_9

    .line 36
    :goto_0
    new-instance p2, Lc/c/a/n/c/c/a/a/b/d;

    iget-object v0, p0, Lc/c/a/n/j/b/a/a;->f:Landroidx/recyclerview/widget/RecyclerView$o;

    iget-object v1, p0, Lc/c/a/n/j/b/a/a;->i:Lc/c/a/n/c/d/o$a;

    invoke-direct {p2, p1, v0, v3, v1}, Lc/c/a/n/c/c/a/a/b/d;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$o;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;Lc/c/a/n/c/d/o$a;)V

    goto/16 :goto_1

    .line 37
    :cond_9
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_a

    .line 38
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/Yb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Yb;

    move-result-object p1

    const-string v0, "ItemVideoDetailSeriesSea\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_1

    .line 39
    :cond_a
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_SINGLE_SEASON_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_b

    .line 40
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/_b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/_b;

    move-result-object p1

    const-string v0, "ItemVideoDetailSeriesSin\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_1

    .line 41
    :cond_b
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_c

    .line 42
    new-instance p2, Lc/c/a/n/j/b/b/e;

    .line 43
    invoke-static {v0, p1, v2}, Lc/c/a/f/da;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/da;

    move-result-object p1

    const-string v0, "ItemCinemaEpisodeBinding\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lc/c/a/n/j/b/a/a;->k:Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;

    .line 45
    invoke-direct {p2, p1, v0}, Lc/c/a/n/j/b/b/e;-><init>(Lc/c/a/f/da;Lcom/farsitel/bazaar/common/model/cinema/EpisodeItemClickListener;)V

    goto/16 :goto_1

    .line 46
    :cond_c
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->RETRY_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_d

    .line 47
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/kb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/kb;

    move-result-object p1

    const-string v0, "ItemRetryBinding.inflate(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_1

    .line 48
    :cond_d
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->SERIES_EPISODE_SEE_MORE_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_e

    .line 49
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/fa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/fa;

    move-result-object p1

    const-string v0, "ItemCinemaEpisodeSeeMore\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_1

    .line 50
    :cond_e
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->VIDEO_ACTIONS:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_f

    .line 51
    new-instance p2, Lc/c/a/n/j/k/a/b;

    .line 52
    invoke-static {v0, p1, v2}, Lc/c/a/f/bc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/bc;

    move-result-object p1

    const-string v0, "ItemVideoDetailVideoActi\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lc/c/a/n/j/b/a/a;->h:Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;

    .line 54
    invoke-direct {p2, p1, v0}, Lc/c/a/n/j/k/a/b;-><init>(Lc/c/a/f/bc;Lcom/farsitel/bazaar/common/model/cinema/VideoInfoClickListener;)V

    goto/16 :goto_1

    .line 55
    :cond_f
    sget-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->LIST_EPISODE:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_10

    .line 56
    new-instance p2, Lc/c/a/n/j/b/b/j;

    .line 57
    invoke-static {v0, p1, v2}, Lc/c/a/f/ha;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/ha;

    move-result-object p1

    const-string v0, "ItemCinemaSeasonEpisodeB\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p2, p1}, Lc/c/a/n/j/b/b/j;-><init>(Lc/c/a/f/ha;)V

    .line 59
    iget-object p1, p0, Lc/c/a/n/j/b/a/a;->l:Lc/c/a/n/c/c/a/a/a/i;

    invoke-virtual {p2, p1}, Lc/c/a/n/j/b/b/j;->a(Lc/c/a/n/c/c/a/a/a/i;)V

    goto :goto_1

    .line 60
    :cond_10
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->REVIEW_TITLE:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_11

    .line 61
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/xc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/xc;

    move-result-object p1

    const-string v0, "ItemVideoReviewTitleBind\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_1

    .line 62
    :cond_11
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->REVIEW_ITEM:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_12

    .line 63
    new-instance p2, Lc/c/a/n/j/b/b/l;

    invoke-static {v0, p1, v2}, Lc/c/a/f/mb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/mb;

    move-result-object p1

    const-string v0, "ItemReviewBinding.inflate(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p2, p1, v3, v0, v3}, Lc/c/a/n/j/b/b/l;-><init>(Lc/c/a/f/mb;Lc/c/a/n/u/b;ILh/f/b/f;)V

    goto :goto_1

    .line 64
    :cond_12
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->REVIEW_ACTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_13

    .line 65
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/vc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/vc;

    move-result-object p1

    const-string v0, "ItemVideoReviewMoreBindi\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_1

    .line 66
    :cond_13
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->ADD_REVIEW:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_14

    .line 67
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-static {v0, p1, v2}, Lc/c/a/f/Gb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Gb;

    move-result-object p1

    const-string v0, "ItemVideoAddReviewBindin\u2026(inflater, parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    :goto_1
    return-object p2

    .line 68
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid viewType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/b/a/a;->b(Lc/c/a/n/c/d/n;)V

    return-void
.end method
