.class public final Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;
.super Lc/c/a/n/c/d/f;
.source "VideoReviewsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/f<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Ljava/lang/String;",
        "Lc/c/a/n/j/g/h;",
        ">;"
    }
.end annotation


# instance fields
.field public wa:Z

.field public xa:I

.field public ya:Lc/c/a/n/j/g/g;

.field public za:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/f;-><init>()V

    const v0, 0x7f0d005b

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->xa:I

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->g(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;)Lc/c/a/n/j/g/h;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/j/g/h;

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->rb()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->za:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/VideoReviewsScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/VideoReviewsScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/VideoReviewsScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/VideoReviewsScreen;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/c/d/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/n/c/d/a<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/u/e;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->qb()Lc/c/a/n/j/g/e;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lc/c/a/n/u/e;-><init>(Lc/c/a/n/u/b;Lc/c/a/n/u/c;ILh/f/b/f;)V

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
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->xa:I

    return v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->Za()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Za()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->ya:Lc/c/a/n/j/g/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/j/g/g;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "reviewsFragmentArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lc/c/a/f/o;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/o;

    move-result-object p1

    .line 5
    iget-object p3, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->ya:Lc/c/a/n/j/g/g;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lc/c/a/n/j/g/g;->b()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object p3

    const/16 v0, 0x35

    invoke-virtual {p1, v0, p3}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const/16 p3, 0xc

    const/4 v0, 0x1

    .line 6
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

    :cond_0
    const-string p1, "reviewsFragmentArgs"

    .line 10
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 16
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    .line 17
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/g/h;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/n/j/g/h;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
    .locals 4

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/d;->c(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0110

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "popupView"

    .line 13
    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc/c/a/i/f;->a(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    const p1, 0x7f0a02c3

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lc/c/a/n/j/g/f;

    invoke-direct {v0, p0, p2, v1}, Lc/c/a/n/j/g/f;-><init>(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;Landroid/widget/PopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public ab()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->wa:Z

    return v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 8

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/j/g/g;->a:Lc/c/a/n/j/g/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "arguments!!"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/j/g/g$a;->a(Landroid/os/Bundle;)Lc/c/a/n/j/g/g;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->ya:Lc/c/a/n/j/g/g;

    .line 4
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/VideoReviewVisit;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->Za()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->ya:Lc/c/a/n/j/g/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/j/g/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lcom/farsitel/bazaar/analytics/model/what/VideoReviewVisit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "reviewsFragmentArgs"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1}, Lc/c/a/n/c/d/f;->c(Landroid/view/View;)V

    .line 7
    sget p1, Lc/c/a/e;->reviewToolbarBackButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    new-instance v0, Lc/c/a/n/j/g/a;

    invoke-direct {v0, p0}, Lc/c/a/n/j/g/a;-><init>(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget p1, Lc/c/a/e;->reviewFloatingButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v0, "reviewFloatingButton"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060117

    .line 10
    invoke-static {v0, v1}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 11
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    sget p1, Lc/c/a/e;->reviewFloatingButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lc/c/a/n/j/g/b;

    invoke-direct {v0, p0}, Lc/c/a/n/j/g/b;-><init>(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 15
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    .line 16
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 17
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 19
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->za:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->za:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->za:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->za:Ljava/util/HashMap;

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
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->ya:Lc/c/a/n/j/g/g;

    const/4 v2, 0x0

    const-string v3, "reviewsFragmentArgs"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/n/j/g/g;->b()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->ya:Lc/c/a/n/j/g/g;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lc/c/a/n/j/g/g;->b()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;->a()Ljava/lang/String;

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

.method public final g(I)V
    .locals 7

    .line 1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/ReportVideoReviewButtonClick;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->Za()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->ya:Lc/c/a/n/j/g/g;

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lc/c/a/n/j/g/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/farsitel/bazaar/analytics/model/what/ReportVideoReviewButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/j/g/h;

    invoke-virtual {v0, p1}, Lc/c/a/n/j/g/h;->c(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f1001f7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->m()V

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v6

    :cond_1
    const-string p1, "reviewsFragmentArgs"

    .line 4
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v6
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->jb()Lc/c/a/n/j/g/h;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/j/g/h;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/j/g/h;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/j/g/h;

    .line 5
    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment$makeViewModel$$inlined$createViewModel$lambda$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment$makeViewModel$$inlined$createViewModel$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 6
    invoke-virtual {v0}, Lc/c/a/n/j/g/h;->j()Lb/r/t;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/g/c;

    invoke-direct {v3, p0}, Lc/c/a/n/j/g/c;-><init>(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 7
    invoke-virtual {v0}, Lc/c/a/n/j/g/h;->k()Lb/r/t;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/j/g/d;

    invoke-direct {v3, p0}, Lc/c/a/n/j/g/d;-><init>(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/f;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->La()V

    return-void
.end method

.method public final qb()Lc/c/a/n/j/g/e;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/j/g/e;

    invoke-direct {v0, p0}, Lc/c/a/n/j/g/e;-><init>(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;)V

    return-object v0
.end method

.method public final rb()V
    .locals 8

    .line 1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/PostVideoReviewButtonClick;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->Za()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->ya:Lc/c/a/n/j/g/g;

    const/4 v6, 0x0

    const-string v7, "reviewsFragmentArgs"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lc/c/a/n/j/g/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/farsitel/bazaar/analytics/model/what/PostVideoReviewButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;->Fa:Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment$a;

    .line 3
    new-instance v1, Lc/c/a/n/j/g/a/a;

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->ya:Lc/c/a/n/j/g/g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc/c/a/n/j/g/g;->a()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->Za()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f10023a

    .line 6
    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v4

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lc/c/a/n/j/g/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment$a;->a(Lc/c/a/n/j/g/a/a;)Lcom/farsitel/bazaar/ui/cinema/reviews/post/PostVideoCommentFragment;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v1

    const-string v2, "postVideoReview"

    invoke-virtual {v0, v1, v2}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-static {v7}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v6

    .line 11
    :cond_1
    invoke-static {v7}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v6
.end method
