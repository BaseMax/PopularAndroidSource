.class public final Lc/c/a/i/a;
.super Ljava/lang/Object;
.source "BottomNavigationViewExt.kt"


# direct methods
.method public static final a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;IZ)V
    .locals 8

    const-string v0, "$this$setupBadge"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Lc/e/a/c/e/d;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3
    check-cast p1, Lc/e/a/c/e/a;

    const/4 v0, -0x1

    .line 4
    invoke-static {p1}, Lb/i/k/E;->a(Landroid/view/ViewGroup;)Lh/j/d;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Lh/j/d;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_1

    check-cast v5, Landroid/view/View;

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    const v7, 0x7f0a00b4

    if-ne v5, v7, :cond_0

    move v0, v4

    :cond_0
    move v4, v6

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    if-ltz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d012a

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a0257

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string p1, "itemView.getChildAt(item\u2026(R.id.notificationsBadge)"

    invoke-static {p0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    .line 11
    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 12
    :cond_5
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationItemView"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_6
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationMenuView"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method
