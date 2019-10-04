.class public Landroidx/appcompat/widget/ActionMenuPresenter;
.super Lb/b/f/a/b;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lb/i/k/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$b;,
        Landroidx/appcompat/widget/ActionMenuPresenter$c;,
        Landroidx/appcompat/widget/ActionMenuPresenter$f;,
        Landroidx/appcompat/widget/ActionMenuPresenter$a;,
        Landroidx/appcompat/widget/ActionMenuPresenter$e;,
        Landroidx/appcompat/widget/ActionMenuPresenter$d;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field public A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

.field public B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

.field public final C:Landroidx/appcompat/widget/ActionMenuPresenter$f;

.field public D:I

.field public k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public final x:Landroid/util/SparseBooleanArray;

.field public y:Landroidx/appcompat/widget/ActionMenuPresenter$e;

.field public z:Landroidx/appcompat/widget/ActionMenuPresenter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lb/b/g;->abc_action_menu_layout:I

    sget v1, Lb/b/g;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lb/b/f/a/b;-><init>(Landroid/content/Context;II)V

    .line 2
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$f;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/ActionMenuPresenter;)Lb/b/f/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    return-object p0
.end method

.method public static synthetic b(Landroidx/appcompat/widget/ActionMenuPresenter;)Lb/b/f/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    return-object p0
.end method

.method public static synthetic c(Landroidx/appcompat/widget/ActionMenuPresenter;)Lb/b/f/a/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    return-object p0
.end method

.method public static synthetic d(Landroidx/appcompat/widget/ActionMenuPresenter;)Lb/b/f/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    return-object p0
.end method

.method public static synthetic e(Landroidx/appcompat/widget/ActionMenuPresenter;)Lb/b/f/a/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    return-object p0
.end method

.method public static synthetic f(Landroidx/appcompat/widget/ActionMenuPresenter;)Lb/b/f/a/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .line 85
    iget-object v0, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 87
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 88
    instance-of v5, v4, Lb/b/f/a/u$a;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lb/b/f/a/u$a;

    .line 89
    invoke-interface {v5}, Lb/b/f/a/u$a;->getItemData()Lb/b/f/a/o;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public a(Lb/b/f/a/o;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 33
    invoke-virtual {p1}, Lb/b/f/a/o;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lb/b/f/a/o;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lb/b/f/a/b;->a(Lb/b/f/a/o;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    :cond_1
    invoke-virtual {p1}, Lb/b/f/a/o;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 39
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 40
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public a(Landroid/content/Context;Lb/b/f/a/k;)V
    .locals 4

    .line 2
    invoke-super {p0, p1, p2}, Lb/b/f/a/b;->a(Landroid/content/Context;Lb/b/f/a/k;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 4
    invoke-static {p1}, Lb/b/f/a;->a(Landroid/content/Context;)Lb/b/f/a;

    move-result-object p1

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Z

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lb/b/f/a;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:Z

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lb/b/f/a;->b()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    .line 9
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lb/b/f/a;->c()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:I

    .line 11
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    .line 12
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_4

    .line 14
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v2, p0, Lb/b/f/a/b;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 15
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 19
    :cond_3
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 20
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 21
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 22
    :cond_5
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 23
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 24
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:I

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 25
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-nez p1, :cond_0

    .line 26
    iget-object p1, p0, Lb/b/f/a/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lb/b/f/a;->a(Landroid/content/Context;)Lb/b/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/a;->c()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:I

    .line 27
    :cond_0
    iget-object p1, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Lb/b/f/a/k;->c(Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 32
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .line 138
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 140
    iget p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->a:I

    if-lez p1, :cond_1

    .line 141
    iget-object v0, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    invoke-virtual {v0, p1}, Lb/b/f/a/k;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lb/b/f/a/A;

    .line 143
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Lb/b/f/a/A;)Z

    :cond_1
    return-void
.end method

.method public a(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 1

    .line 144
    iput-object p1, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    .line 145
    iget-object v0, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->a(Lb/b/f/a/k;)V

    return-void
.end method

.method public a(Lb/b/f/a/k;Z)V
    .locals 0

    .line 136
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    .line 137
    invoke-super {p0, p1, p2}, Lb/b/f/a/b;->a(Lb/b/f/a/k;Z)V

    return-void
.end method

.method public a(Lb/b/f/a/o;Lb/b/f/a/u$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-interface {p2, p1, v0}, Lb/b/f/a/u$a;->a(Lb/b/f/a/o;I)V

    .line 42
    iget-object p1, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 43
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 44
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Lb/b/f/a/k$b;)V

    .line 45
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$b;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    .line 47
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 49
    invoke-super {p0, p1}, Lb/b/f/a/b;->a(Z)V

    .line 50
    iget-object p1, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 51
    iget-object p1, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lb/b/f/a/k;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 54
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/a/o;

    invoke-virtual {v3}, Lb/b/f/a/o;->a()Lb/i/k/b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v3, p0}, Lb/i/k/b;->a(Lb/i/k/b$a;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p1}, Lb/b/f/a/k;->j()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 58
    :goto_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 60
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/a/o;

    invoke-virtual {p1}, Lb/b/f/a/o;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 61
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez p1, :cond_5

    .line 62
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v0, p0, Lb/b/f/a/b;->a:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 63
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 64
    iget-object v0, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    .line 65
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    :cond_6
    iget-object p1, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 67
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->c()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 68
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    if-ne p1, v0, :cond_8

    .line 69
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    :cond_8
    :goto_3
    iget-object p1, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public a()Z
    .locals 20

    move-object/from16 v0, p0

    .line 90
    iget-object v1, v0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Lb/b/f/a/k;->n()Ljava/util/ArrayList;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    const/4 v4, 0x0

    .line 93
    :goto_0
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:I

    .line 94
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    .line 95
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 96
    iget-object v8, v0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    check-cast v8, Landroid/view/ViewGroup;

    move v12, v5

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 97
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/b/f/a/o;

    .line 98
    invoke-virtual {v14}, Lb/b/f/a/o;->k()Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 99
    :cond_1
    invoke-virtual {v14}, Lb/b/f/a/o;->j()Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    .line 100
    :goto_2
    iget-boolean v13, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Z

    if-eqz v13, :cond_3

    invoke-virtual {v14}, Lb/b/f/a/o;->isActionViewExpanded()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v12, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 101
    :cond_4
    iget-boolean v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    if-eqz v5, :cond_6

    if-nez v9, :cond_5

    add-int/2addr v11, v10

    if-le v11, v12, :cond_6

    :cond_5
    add-int/lit8 v12, v12, -0x1

    :cond_6
    sub-int/2addr v12, v10

    .line 102
    iget-object v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/util/SparseBooleanArray;

    .line 103
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 104
    iget-boolean v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    if-eqz v9, :cond_7

    .line 105
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:I

    div-int v10, v6, v9

    .line 106
    rem-int v11, v6, v9

    .line 107
    div-int/2addr v11, v10

    add-int/2addr v9, v11

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    move v11, v6

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v6, v4, :cond_1b

    .line 108
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb/b/f/a/o;

    .line 109
    invoke-virtual {v15}, Lb/b/f/a/o;->k()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 110
    invoke-virtual {v0, v15, v2, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Lb/b/f/a/o;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 111
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    if-eqz v2, :cond_8

    .line 112
    invoke-static {v13, v9, v10, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v2

    sub-int/2addr v10, v2

    goto :goto_5

    .line 113
    :cond_8
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    .line 114
    :goto_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v11, v2

    if-nez v14, :cond_9

    goto :goto_6

    :cond_9
    move v2, v14

    .line 115
    :goto_6
    invoke-virtual {v15}, Lb/b/f/a/o;->getGroupId()I

    move-result v13

    if-eqz v13, :cond_a

    const/4 v14, 0x1

    .line 116
    invoke-virtual {v5, v13, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_7

    :cond_a
    const/4 v14, 0x1

    .line 117
    :goto_7
    invoke-virtual {v15, v14}, Lb/b/f/a/o;->d(Z)V

    move v14, v2

    move/from16 v17, v4

    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 118
    :cond_b
    invoke-virtual {v15}, Lb/b/f/a/o;->j()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 119
    invoke-virtual {v15}, Lb/b/f/a/o;->getGroupId()I

    move-result v2

    .line 120
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-gtz v12, :cond_c

    if-eqz v13, :cond_e

    :cond_c
    if-lez v11, :cond_e

    .line 121
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    if-eqz v3, :cond_d

    if-lez v10, :cond_e

    :cond_d
    const/4 v3, 0x1

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_14

    move/from16 v18, v3

    move/from16 v17, v4

    const/4 v3, 0x0

    .line 122
    invoke-virtual {v0, v15, v3, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Lb/b/f/a/o;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 123
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    .line 124
    invoke-static {v4, v9, v10, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v19

    sub-int v10, v10, v19

    if-nez v19, :cond_f

    const/4 v3, 0x0

    goto :goto_a

    :cond_f
    move/from16 v3, v18

    :goto_a
    move/from16 v18, v3

    goto :goto_b

    .line 125
    :cond_10
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    .line 126
    :goto_b
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v11, v3

    if-nez v14, :cond_11

    move v14, v3

    .line 127
    :cond_11
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    if-eqz v3, :cond_12

    if-ltz v11, :cond_13

    goto :goto_c

    :cond_12
    add-int v3, v11, v14

    if-lez v3, :cond_13

    :goto_c
    const/4 v3, 0x1

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    :goto_d
    and-int v3, v18, v3

    goto :goto_e

    :cond_14
    move/from16 v18, v3

    move/from16 v17, v4

    :goto_e
    if-eqz v3, :cond_15

    if-eqz v2, :cond_15

    const/4 v4, 0x1

    .line 128
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_10

    :cond_15
    if-eqz v13, :cond_18

    const/4 v4, 0x0

    .line 129
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v6, :cond_18

    .line 130
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lb/b/f/a/o;

    .line 131
    invoke-virtual {v13}, Lb/b/f/a/o;->getGroupId()I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 132
    invoke-virtual {v13}, Lb/b/f/a/o;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 v12, v12, 0x1

    :cond_16
    const/4 v0, 0x0

    .line 133
    invoke-virtual {v13, v0}, Lb/b/f/a/o;->d(Z)V

    :cond_17
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_f

    :cond_18
    :goto_10
    if-eqz v3, :cond_19

    add-int/lit8 v12, v12, -0x1

    .line 134
    :cond_19
    invoke-virtual {v15, v3}, Lb/b/f/a/o;->d(Z)V

    goto/16 :goto_8

    :cond_1a
    move/from16 v17, v4

    const/4 v0, 0x0

    .line 135
    invoke-virtual {v15, v0}, Lb/b/f/a/o;->d(Z)V

    :goto_11
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_1b
    const/4 v2, 0x1

    return v2
.end method

.method public a(ILb/b/f/a/o;)Z
    .locals 0

    .line 48
    invoke-virtual {p2}, Lb/b/f/a/o;->h()Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Lb/b/f/a/b;->a(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public a(Lb/b/f/a/A;)Z
    .locals 7

    .line 73
    invoke-virtual {p1}, Lb/b/f/a/k;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 74
    :goto_0
    invoke-virtual {v0}, Lb/b/f/a/A;->t()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    if-eq v2, v3, :cond_1

    .line 75
    invoke-virtual {v0}, Lb/b/f/a/A;->t()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lb/b/f/a/A;

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Lb/b/f/a/A;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 77
    :cond_2
    invoke-virtual {p1}, Lb/b/f/a/A;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:I

    .line 78
    invoke-virtual {p1}, Lb/b/f/a/k;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    .line 79
    invoke-virtual {p1, v3}, Lb/b/f/a/k;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 80
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    :cond_4
    :goto_2
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$a;

    iget-object v3, p0, Lb/b/f/a/b;->b:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$a;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Lb/b/f/a/A;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 82
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    invoke-virtual {v0, v1}, Lb/b/f/a/s;->a(Z)V

    .line 83
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, Lb/b/f/a/s;->f()V

    .line 84
    invoke-super {p0, p1}, Lb/b/f/a/b;->a(Lb/b/f/a/A;)Z

    return v4
.end method

.method public b()Landroid/os/Parcelable;
    .locals 2

    .line 6
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 7
    iget v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:I

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->a:I

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;)Lb/b/f/a/u;
    .locals 1

    .line 3
    iget-object v0, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    .line 4
    invoke-super {p0, p1}, Lb/b/f/a/b;->b(Landroid/view/ViewGroup;)Lb/b/f/a/u;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    :cond_0
    return-object p1
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Z

    return-void
.end method

.method public d()Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->f()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->g()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Z
    .locals 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    if-eqz v2, :cond_0

    .line 3
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lb/b/f/a/s;->b()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/f/a/s;->b()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/f/a/s;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/f/a/k;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$e;

    iget-object v3, p0, Lb/b/f/a/b;->b:Landroid/content/Context;

    iget-object v4, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    iget-object v5, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/ActionMenuPresenter$e;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Lb/b/f/a/k;Landroid/view/View;Z)V

    .line 4
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$c;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$e;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 5
    iget-object v0, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 6
    invoke-super {p0, v0}, Lb/b/f/a/b;->a(Lb/b/f/a/A;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
