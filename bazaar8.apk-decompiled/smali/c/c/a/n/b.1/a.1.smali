.class public final Lc/c/a/n/b/a;
.super Lc/c/a/n/c/d/a;
.source "AppDetailAdapter.kt"


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

.field public final g:Lc/c/a/n/b/d/a/e$a;

.field public final h:Lc/c/a/n/b/d/a/a$a;

.field public final i:Lc/c/a/n/c/d/o$a;

.field public final j:Lc/c/a/n/b/d/a;

.field public final k:Lc/c/a/n/b/d/i;

.field public final l:Lc/c/a/n/b/d/f;


# direct methods
.method public constructor <init>(Lc/c/a/n/b/d/a/e$a;Lc/c/a/n/b/d/a/a$a;Lc/c/a/n/c/d/o$a;Lc/c/a/n/b/d/a;Lc/c/a/n/b/d/i;Lc/c/a/n/b/d/f;)V
    .locals 1

    const-string v0, "screenshotVideoItemClickListener"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenshotImageItemClickListener"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scrollableViewHolderCommunicator"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoClickListener"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRateChangedListener"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "developerInfoCommunicator"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/b/a;->g:Lc/c/a/n/b/d/a/e$a;

    iput-object p2, p0, Lc/c/a/n/b/a;->h:Lc/c/a/n/b/d/a/a$a;

    iput-object p3, p0, Lc/c/a/n/b/a;->i:Lc/c/a/n/c/d/o$a;

    iput-object p4, p0, Lc/c/a/n/b/a;->j:Lc/c/a/n/b/d/a;

    iput-object p5, p0, Lc/c/a/n/b/a;->k:Lc/c/a/n/b/d/i;

    iput-object p6, p0, Lc/c/a/n/b/a;->l:Lc/c/a/n/b/d/f;

    .line 2
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    iput-object p1, p0, Lc/c/a/n/b/a;->f:Landroidx/recyclerview/widget/RecyclerView$o;

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
    instance-of v0, p1, Lc/c/a/n/b/d/j;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lc/c/a/n/b/d/j;

    iget-object v1, p0, Lc/c/a/n/b/a;->g:Lc/c/a/n/b/d/a/e$a;

    invoke-virtual {v0, v1}, Lc/c/a/n/b/d/j;->a(Lc/c/a/n/b/d/a/e$a;)V

    .line 3
    iget-object v1, p0, Lc/c/a/n/b/a;->h:Lc/c/a/n/b/d/a/a$a;

    invoke-virtual {v0, v1}, Lc/c/a/n/b/d/j;->a(Lc/c/a/n/b/d/a/a$a;)V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/n;I)V

    return-void
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/b/a;->a(Lc/c/a/n/c/d/n;I)V

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
    instance-of v0, p1, Lc/c/a/n/b/d/j;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lc/c/a/n/b/d/j;

    invoke-virtual {v0}, Lc/c/a/n/b/d/j;->E()V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc/c/a/n/b/d/j;->a(Lc/c/a/n/b/d/a/e$a;)V

    .line 5
    invoke-virtual {v0, v1}, Lc/c/a/n/b/d/j;->a(Lc/c/a/n/b/d/a/a$a;)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

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
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->REPORT:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/V;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/V;

    move-result-object p1

    const-string v0, "ItemAppdetailReportBindi\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 5
    new-instance p2, Lc/c/a/n/c/c/a/a/b/b;

    iget-object v0, p0, Lc/c/a/n/b/a;->f:Landroidx/recyclerview/widget/RecyclerView$o;

    const/4 v1, 0x0

    iget-object v2, p0, Lc/c/a/n/b/a;->i:Lc/c/a/n/c/d/o$a;

    invoke-direct {p2, p1, v0, v1, v2}, Lc/c/a/n/c/c/a/a/b/b;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$o;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;Lc/c/a/n/c/d/o$a;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->CHANGE_LOG:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 7
    new-instance p2, Lc/c/a/n/c/d/n;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9
    invoke-static {v0, p1, v1}, Lc/c/a/f/G;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/G;

    move-result-object p1

    const-string v0, "ItemAppdetailChangelogBi\u2026  false\n                )"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_DESCRIPTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 12
    new-instance p2, Lc/c/a/n/c/d/n;

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 14
    invoke-static {v0, p1, v1}, Lc/c/a/f/I;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/I;

    move-result-object p1

    const-string v0, "ItemAppdetailDescription\u2026  false\n                )"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_0

    .line 16
    :cond_3
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_MORE_DESCRIPTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 17
    new-instance p2, Lc/c/a/n/c/d/n;

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 19
    invoke-static {v0, p1, v1}, Lc/c/a/f/O;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/O;

    move-result-object p1

    const-string v0, "ItemAppdetailMoreDescrip\u2026  false\n                )"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_0

    .line 21
    :cond_4
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 22
    new-instance p2, Lc/c/a/n/b/d/d;

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/E;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/E;

    move-result-object p1

    const-string v0, "ItemAppdetailAppInfoBind\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lc/c/a/n/b/a;->j:Lc/c/a/n/b/d/a;

    .line 25
    invoke-direct {p2, p1, v0}, Lc/c/a/n/b/d/d;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/b/d/a;)V

    goto/16 :goto_0

    .line 26
    :cond_5
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->ARTICLE_TITLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 27
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/Z;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Z;

    move-result-object p1

    const-string v0, "ItemArticleTitleBinding.\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_0

    .line 28
    :cond_6
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->ARTICLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 29
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/X;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/X;

    move-result-object p1

    const-string v0, "ItemArticleBinding.infla\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_0

    .line 30
    :cond_7
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->MORE_ARTICLE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 31
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/Pa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Pa;

    move-result-object p1

    const-string v0, "ItemMoreArticleBinding.i\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_0

    .line 32
    :cond_8
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_MY_RATE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 33
    new-instance p2, Lc/c/a/n/b/d/h;

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/Q;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/Q;

    move-result-object p1

    const-string v0, "ItemAppdetailMyRateBindi\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lc/c/a/n/b/a;->k:Lc/c/a/n/b/d/i;

    .line 36
    invoke-direct {p2, p1, v0}, Lc/c/a/n/b/d/h;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/b/d/i;)V

    goto/16 :goto_0

    .line 37
    :cond_9
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->MY_REVIEW:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 38
    new-instance p2, Lc/c/a/n/b/d/e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/mb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/mb;

    move-result-object p1

    const-string v0, "ItemReviewBinding.inflat\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/b/d/e;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_0

    .line 39
    :cond_a
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->REVIEW_ACTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 40
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/ob;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/ob;

    move-result-object p1

    const-string v0, "ItemReviewMoreBinding.in\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto/16 :goto_0

    .line 41
    :cond_b
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->DEVELOPER_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 42
    new-instance p2, Lc/c/a/n/b/d/g;

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/A;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/A;

    move-result-object p1

    const-string v0, "ItemAppDetailDeveloperIn\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lc/c/a/n/b/a;->l:Lc/c/a/n/b/d/f;

    .line 45
    invoke-direct {p2, p1, v0}, Lc/c/a/n/b/d/g;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/b/d/f;)V

    goto/16 :goto_0

    .line 46
    :cond_c
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->SCREEN_SHOT_SECTION:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_d

    .line 47
    new-instance p2, Lc/c/a/n/b/d/j;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 49
    invoke-static {v0, p1, v1}, Lc/c/a/f/C;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/C;

    move-result-object p1

    const-string v0, "ItemAppDetailScreenShotB\u2026  false\n                )"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p2, p1}, Lc/c/a/n/b/d/j;-><init>(Landroidx/databinding/ViewDataBinding;)V

    .line 51
    iget-object p1, p0, Lc/c/a/n/b/a;->h:Lc/c/a/n/b/d/a/a$a;

    invoke-virtual {p2, p1}, Lc/c/a/n/b/d/j;->a(Lc/c/a/n/b/d/a/a$a;)V

    .line 52
    iget-object p1, p0, Lc/c/a/n/b/a;->g:Lc/c/a/n/b/d/a/e$a;

    invoke-virtual {p2, p1}, Lc/c/a/n/b/d/j;->a(Lc/c/a/n/b/d/a/e$a;)V

    goto :goto_0

    .line 53
    :cond_d
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->DIVIDER:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_e

    .line 54
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/K;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/K;

    move-result-object p1

    const-string v0, "ItemAppdetailDividerBind\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_0

    .line 55
    :cond_e
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->REVIEW_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_f

    .line 56
    new-instance p2, Lc/c/a/n/c/d/n;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/T;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/T;

    move-result-object p1

    const-string v0, "ItemAppdetailRateInfoBin\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_0

    .line 57
    :cond_f
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->EDITOR_CHOICE:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_10

    .line 58
    new-instance p2, Lc/c/a/n/c/d/n;

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    invoke-static {v0, p1, v1}, Lc/c/a/f/M;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/M;

    move-result-object p1

    const-string v0, "ItemAppdetailEditorChois\u2026  false\n                )"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    :goto_0
    return-object p2

    .line 62
    :cond_10
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Invalid viewType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/c/d/n;

    invoke-virtual {p0, p1}, Lc/c/a/n/b/a;->b(Lc/c/a/n/c/d/n;)V

    return-void
.end method
