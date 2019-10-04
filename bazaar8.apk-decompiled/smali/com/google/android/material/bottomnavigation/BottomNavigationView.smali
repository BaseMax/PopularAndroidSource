.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;
    }
.end annotation


# instance fields
.field public final a:Lb/b/f/a/k;

.field public final b:Lc/e/a/c/e/d;

.field public final c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field public d:Landroid/view/MenuInflater;

.field public e:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

.field public f:Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lc/e/a/c/b;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 5
    new-instance v0, Lc/e/a/c/e/b;

    invoke-direct {v0, p1}, Lc/e/a/c/e/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lb/b/f/a/k;

    .line 6
    new-instance v0, Lc/e/a/c/e/d;

    invoke-direct {v0, p1}, Lc/e/a/c/e/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    .line 7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 8
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(Lc/e/a/c/e/d;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v1, v3}, Lc/e/a/c/e/d;->setPresenter(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lb/b/f/a/k;

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v1, v3}, Lb/b/f/a/k;->a(Lb/b/f/a/t;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lb/b/f/a/k;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(Landroid/content/Context;Lb/b/f/a/k;)V

    .line 15
    sget-object v7, Lc/e/a/c/k;->BottomNavigationView:[I

    sget v9, Lc/e/a/c/j;->Widget_Design_BottomNavigationView:I

    const/4 v1, 0x2

    new-array v10, v1, [I

    sget v1, Lc/e/a/c/k;->BottomNavigationView_itemTextAppearanceInactive:I

    const/4 v3, 0x0

    aput v1, v10, v3

    sget v1, Lc/e/a/c/k;->BottomNavigationView_itemTextAppearanceActive:I

    aput v1, v10, v2

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    .line 16
    invoke-static/range {v5 .. v10}, Lc/e/a/c/l/p;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lb/b/g/pa;

    move-result-object p2

    .line 17
    sget p3, Lc/e/a/c/k;->BottomNavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Lb/b/g/pa;->g(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 18
    iget-object p3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    sget v1, Lc/e/a/c/k;->BottomNavigationView_itemIconTint:I

    invoke-virtual {p2, v1}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p3, v1}, Lc/e/a/c/e/d;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    const v1, 0x1010038

    .line 20
    invoke-virtual {p3, v1}, Lc/e/a/c/e/d;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 21
    invoke-virtual {p3, v1}, Lc/e/a/c/e/d;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 22
    :goto_0
    sget p3, Lc/e/a/c/k;->BottomNavigationView_itemIconSize:I

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lc/e/a/c/d;->design_bottom_navigation_icon_size:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 24
    invoke-virtual {p2, p3, v1}, Lb/b/g/pa;->c(II)I

    move-result p3

    .line 25
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 26
    sget p3, Lc/e/a/c/k;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {p2, p3}, Lb/b/g/pa;->g(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 27
    sget p3, Lc/e/a/c/k;->BottomNavigationView_itemTextAppearanceInactive:I

    .line 28
    invoke-virtual {p2, p3, v3}, Lb/b/g/pa;->g(II)I

    move-result p3

    .line 29
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 30
    :cond_1
    sget p3, Lc/e/a/c/k;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {p2, p3}, Lb/b/g/pa;->g(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 31
    sget p3, Lc/e/a/c/k;->BottomNavigationView_itemTextAppearanceActive:I

    .line 32
    invoke-virtual {p2, p3, v3}, Lb/b/g/pa;->g(II)I

    move-result p3

    .line 33
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 34
    :cond_2
    sget p3, Lc/e/a/c/k;->BottomNavigationView_itemTextColor:I

    invoke-virtual {p2, p3}, Lb/b/g/pa;->g(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 35
    sget p3, Lc/e/a/c/k;->BottomNavigationView_itemTextColor:I

    invoke-virtual {p2, p3}, Lb/b/g/pa;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 36
    :cond_3
    sget p3, Lc/e/a/c/k;->BottomNavigationView_elevation:I

    invoke-virtual {p2, p3}, Lb/b/g/pa;->g(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 37
    sget p3, Lc/e/a/c/k;->BottomNavigationView_elevation:I

    .line 38
    invoke-virtual {p2, p3, v3}, Lb/b/g/pa;->c(II)I

    move-result p3

    int-to-float p3, p3

    .line 39
    invoke-static {p0, p3}, Lb/i/k/z;->a(Landroid/view/View;F)V

    .line 40
    :cond_4
    sget p3, Lc/e/a/c/k;->BottomNavigationView_labelVisibilityMode:I

    const/4 v1, -0x1

    .line 41
    invoke-virtual {p2, p3, v1}, Lb/b/g/pa;->e(II)I

    move-result p3

    .line 42
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 43
    sget p3, Lc/e/a/c/k;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    .line 44
    invoke-virtual {p2, p3, v2}, Lb/b/g/pa;->a(IZ)Z

    move-result p3

    .line 45
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 46
    sget p3, Lc/e/a/c/k;->BottomNavigationView_itemBackground:I

    invoke-virtual {p2, p3, v3}, Lb/b/g/pa;->g(II)I

    move-result p3

    .line 47
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v1, p3}, Lc/e/a/c/e/d;->setItemBackgroundRes(I)V

    .line 48
    sget p3, Lc/e/a/c/k;->BottomNavigationView_menu:I

    invoke-virtual {p2, p3}, Lb/b/g/pa;->g(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 49
    sget p3, Lc/e/a/c/k;->BottomNavigationView_menu:I

    invoke-virtual {p2, p3, v3}, Lb/b/g/pa;->g(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a(I)V

    .line 50
    :cond_5
    invoke-virtual {p2}, Lb/b/g/pa;->a()V

    .line 51
    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-ge p2, p3, :cond_6

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a(Landroid/content/Context;)V

    .line 54
    :cond_6
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lb/b/f/a/k;

    new-instance p2, Lc/e/a/c/e/f;

    invoke-direct {p2, p0}, Lc/e/a/c/e/f;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-virtual {p1, p2}, Lb/b/f/a/k;->a(Lb/b/f/a/k$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/b/f/g;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/f/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Landroid/view/MenuInflater;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b(Z)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lb/b/f/a/k;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b(Z)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 6
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    sget v1, Lc/e/a/c/c;->design_bottom_navigation_shadow_color:I

    .line 8
    invoke-static {p1, v1}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lc/e/a/c/d;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p1, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public getMaxItemCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lb/b/f/a/k;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lb/b/f/a/k;

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lb/b/f/a/k;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->c:Landroid/os/Bundle;

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lb/b/f/a/k;

    iget-object v2, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lb/b/f/a/k;->f(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/e/d;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/e/d;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->b()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/e/d;->setItemHorizontalTranslationEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/e/d;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/e/d;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/e/d;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/e/d;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/e/d;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0}, Lc/e/a/c/e/d;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Lc/e/a/c/e/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/e/d;->setLabelVisibilityMode(I)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lb/b/f/a/k;

    invoke-virtual {v0, p1}, Lb/b/f/a/k;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lb/b/f/a/k;

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lb/b/f/a/k;->a(Landroid/view/MenuItem;Lb/b/f/a/t;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
