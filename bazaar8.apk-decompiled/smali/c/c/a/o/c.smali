.class public final Lc/c/a/o/c;
.super Ljava/lang/Object;
.source "TabLayoutSelectedListener.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$c;


# instance fields
.field public a:Landroidx/viewpager/widget/ViewPager$f;

.field public b:Landroid/content/Context;

.field public c:Lcom/google/android/material/tabs/TabLayout;

.field public final d:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const-string v0, "tabLayout"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewPager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/o/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/o/c;->c:Lcom/google/android/material/tabs/TabLayout;

    iput-object p3, p0, Lc/c/a/o/c;->d:Landroidx/viewpager/widget/ViewPager;

    .line 2
    new-instance p1, Lc/c/a/o/b;

    invoke-direct {p1, p0}, Lc/c/a/o/b;-><init>(Lc/c/a/o/c;)V

    iput-object p1, p0, Lc/c/a/o/c;->a:Landroidx/viewpager/widget/ViewPager$f;

    .line 3
    iget-object p1, p0, Lc/c/a/o/c;->a:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lc/c/a/o/c;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lc/c/a/o/c;Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/o/c;->d(Lcom/google/android/material/tabs/TabLayout$f;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/material/tabs/TabLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/o/c;->c:Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method public a(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/o/c;->a:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lc/c/a/o/c;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$f;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/c/a/o/c;->a:Landroidx/viewpager/widget/ViewPager$f;

    return-void
.end method

.method public b(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/o/c;->d(Lcom/google/android/material/tabs/TabLayout$f;)V

    return-void
.end method

.method public c(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public final d(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/c/a/o/c;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 2
    iget-object v3, p0, Lc/c/a/o/c;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->c(I)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result v5

    iget-object v6, p0, Lc/c/a/o/c;->c:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    invoke-static {v3, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f11011e

    goto :goto_2

    :cond_2
    const v3, 0x7f110101

    .line 6
    :goto_2
    invoke-static {v4, v3}, Lb/i/l/j;->e(Landroid/widget/TextView;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.appcompat.widget.AppCompatTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method
