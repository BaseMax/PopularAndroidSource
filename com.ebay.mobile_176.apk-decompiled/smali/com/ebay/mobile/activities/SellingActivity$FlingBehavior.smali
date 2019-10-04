.class final Lcom/ebay/mobile/activities/SellingActivity$FlingBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "SellingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/SellingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlingBehavior"
.end annotation


# instance fields
.field private isPositive:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/mobile/activities/SellingActivity$1;)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/ebay/mobile/activities/SellingActivity$FlingBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 352
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/ebay/mobile/activities/SellingActivity$FlingBehavior;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 8
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpl-float v1, p5, v0

    if-lez v1, :cond_0

    .line 361
    iget-boolean v1, p0, Lcom/ebay/mobile/activities/SellingActivity$FlingBehavior;->isPositive:Z

    if-eqz v1, :cond_1

    :cond_0
    cmpg-float v1, p5, v0

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/ebay/mobile/activities/SellingActivity$FlingBehavior;->isPositive:Z

    if-eqz v1, :cond_2

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    mul-float p5, p5, v1

    :cond_2
    move v6, p5

    .line 363
    instance-of p5, p3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    if-eqz p5, :cond_3

    cmpg-float p5, v6, v0

    if-gez p5, :cond_3

    .line 364
    check-cast p3, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p3, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    :cond_3
    move-object v4, p3

    .line 365
    instance-of p3, v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_5

    cmpg-float p3, v6, v0

    if-gez p3, :cond_5

    .line 367
    move-object p3, v4

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 368
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 369
    invoke-virtual {p3, p5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    const/4 p5, 0x3

    if-le p3, p5, :cond_4

    const/4 p3, 0x1

    const/4 p6, 0x1

    goto :goto_0

    :cond_4
    const/4 p6, 0x0

    :cond_5
    :goto_0
    move v7, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    .line 372
    invoke-super/range {v1 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 352
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/ebay/mobile/activities/SellingActivity$FlingBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[I)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 379
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    if-lez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 380
    :goto_0
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/SellingActivity$FlingBehavior;->isPositive:Z

    return-void
.end method
