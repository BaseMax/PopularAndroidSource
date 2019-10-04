.class public final Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;
.super Lc/c/a/n/c/d/f;
.source "ReviewsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/f<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;",
        "Lc/c/a/n/u/q;",
        ">;"
    }
.end annotation


# instance fields
.field public Aa:Ljava/util/HashMap;

.field public wa:I

.field public xa:Z

.field public ya:Lc/c/a/n/u/o;

.field public final za:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/f;-><init>()V

    const v0, 0x7f0d005b

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->wa:I

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->za:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Lc/c/a/d/d/c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Qa()Lc/c/a/d/d/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;IZ)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->a(IZ)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Lc/c/a/n/u/q;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/u/q;

    return-object p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->za:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic e(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->sb()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->Aa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/ReviewsScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/ReviewsScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/ReviewsScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/ReviewsScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->Ua()Lc/c/a/n/u/e;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/u/e;
    .locals 3

    .line 2
    new-instance v0, Lc/c/a/n/u/e;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->qb()Lc/c/a/n/u/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->rb()Lc/c/a/n/u/l;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/c/a/n/u/e;-><init>(Lc/c/a/n/u/b;Lc/c/a/n/u/c;)V

    return-object v0
.end method

.method public Xa()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->wa:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->ya:Lc/c/a/n/u/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/u/o;->b()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "reviewsFragmentArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->Za()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lc/c/a/f/o;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/o;

    move-result-object p1

    .line 5
    iget-object p3, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->ya:Lc/c/a/n/u/o;

    const/4 v0, 0x0

    const-string v1, "reviewsFragmentArgs"

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lc/c/a/n/u/o;->c()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object p3

    const/16 v2, 0x35

    invoke-virtual {p1, v2, p3}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const/16 p3, 0xc

    .line 6
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->ya:Lc/c/a/n/u/o;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc/c/a/n/u/o;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p3

    const-string v0, "root"

    invoke-static {p3, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p2}, Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 8
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lc/c/a/d/f/o;->b(Landroid/view/View;)V

    const-string p2, "FragmentMoreReviewBindin\u2026ErrorView(root)\n        }"

    .line 9
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 19
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    .line 20
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/u/q;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/n/u/q;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .line 21
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/u/q;

    invoke-virtual {v0, p1, p2}, Lc/c/a/n/u/q;->b(IZ)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f1001f7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->m()V

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
    .locals 3

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/d;->c(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 13
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getReplyItem()Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const v1, 0x7f0d0110

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f0d0111

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const-string v1, "popupView"

    .line 16
    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc/c/a/i/f;->a(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p1

    const v1, 0x7f0a02c3

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lc/c/a/n/u/m;

    invoke-direct {v2, p0, p2, p1}, Lc/c/a/n/u/m;-><init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a02c4

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lc/c/a/n/u/n;

    invoke-direct {v1, p0, p2, p1}, Lc/c/a/n/u/n;-><init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public ab()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->xa:Z

    return v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/u/o;->a:Lc/c/a/n/u/o$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/u/o$a;->a(Landroid/os/Bundle;)Lc/c/a/n/u/o;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->ya:Lc/c/a/n/u/o;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Lc/c/a/n/c/d/f;->c(Landroid/view/View;)V

    .line 5
    sget p1, Lc/c/a/e;->reviewToolbarBackButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    new-instance v0, Lc/c/a/n/u/f;

    invoke-direct {v0, p0}, Lc/c/a/n/u/f;-><init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget p1, Lc/c/a/e;->reviewFloatingButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lc/c/a/n/u/g;

    invoke-direct {v0, p0}, Lc/c/a/n/u/g;-><init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->ya:Lc/c/a/n/u/o;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/c/a/n/u/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 10
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    .line 11
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 12
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 14
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "reviewsFragmentArgs"

    .line 15
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->Aa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->Aa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->Aa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->Aa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;
    .locals 5

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->ya:Lc/c/a/n/u/o;

    const/4 v2, 0x0

    const-string v3, "reviewsFragmentArgs"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/n/u/o;->b()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v4, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->ya:Lc/c/a/n/u/o;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lc/c/a/n/u/o;->b()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "getString(toolbarTitleResourceId)"

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {v0, v1, v2, p1}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->jb()Lc/c/a/n/u/q;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/u/q;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/u/q;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/u/q;

    .line 5
    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment$makeViewModel$$inlined$createViewModel$lambda$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment$makeViewModel$$inlined$createViewModel$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 6
    invoke-virtual {v0}, Lc/c/a/n/u/q;->j()Lb/r/t;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/u/h;

    invoke-direct {v3, p0}, Lc/c/a/n/u/h;-><init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 7
    invoke-virtual {v0}, Lc/c/a/n/u/q;->m()Lb/r/r;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/u/i;

    invoke-direct {v3, p0}, Lc/c/a/n/u/i;-><init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 8
    invoke-virtual {v0}, Lc/c/a/n/u/q;->l()Lc/c/a/c/h/g;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    const-string v3, "viewLifecycleOwner"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lc/c/a/n/u/j;

    invoke-direct {v3, p0}, Lc/c/a/n/u/j;-><init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V

    invoke-virtual {v1, v2, v3}, Lc/c/a/c/h/g;->a(Lb/r/k;Lb/r/u;)V

    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/f;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->La()V

    return-void
.end method

.method public final qb()Lc/c/a/n/u/k;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/u/k;

    invoke-direct {v0, p0}, Lc/c/a/n/u/k;-><init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V

    return-object v0
.end method

.method public final rb()Lc/c/a/n/u/l;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/u/l;

    invoke-direct {v0, p0}, Lc/c/a/n/u/l;-><init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V

    return-object v0
.end method

.method public final sb()V
    .locals 6

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ha:Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;

    .line 2
    new-instance v1, Lc/c/a/n/b/b/a;

    .line 3
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->ya:Lc/c/a/n/u/o;

    const/4 v3, 0x0

    const-string v4, "reviewsFragmentArgs"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lc/c/a/n/u/o;->b()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v5, p0, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->ya:Lc/c/a/n/u/o;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lc/c/a/n/u/o;->b()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->getAppVersion()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v4

    check-cast v4, Lc/c/a/n/u/q;

    invoke-virtual {v4}, Lc/c/a/n/u/q;->k()I

    move-result v4

    const v5, 0x7f10023a

    .line 6
    invoke-virtual {p0, v5}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v5

    .line 7
    invoke-direct {v1, v2, v3, v4, v5}, Lc/c/a/n/b/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;->a(Lc/c/a/n/b/b/a;)Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v1

    const-string v2, "postFragment"

    invoke-virtual {v0, v1, v2}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    .line 11
    :cond_1
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3
.end method
