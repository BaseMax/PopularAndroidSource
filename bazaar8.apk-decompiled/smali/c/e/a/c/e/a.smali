.class public Lc/e/a/c/e/a;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Lb/b/f/a/u$a;


# static fields
.field public static final a:[I


# instance fields
.field public final b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:I

.field public g:Z

.field public h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/TextView;

.field public k:I

.field public l:Lb/b/f/a/o;

.field public m:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lc/e/a/c/e/a;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lc/e/a/c/e/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lc/e/a/c/e/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lc/e/a/c/e/a;->k:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lc/e/a/c/h;->design_bottom_navigation_item:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    sget p1, Lc/e/a/c/e;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 8
    sget p1, Lc/e/a/c/d;->design_bottom_navigation_margin:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lc/e/a/c/e/a;->b:I

    .line 9
    sget p1, Lc/e/a/c/f;->icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    .line 10
    sget p1, Lc/e/a/c/f;->smallLabel:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    .line 11
    sget p1, Lc/e/a/c/f;->largeLabel:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    .line 12
    iget-object p1, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lb/i/k/z;->g(Landroid/view/View;I)V

    .line 13
    iget-object p1, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lb/i/k/z;->g(Landroid/view/View;I)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 15
    iget-object p1, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object p2, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lc/e/a/c/e/a;->a(FF)V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2

    sub-float v0, p1, p2

    .line 19
    iput v0, p0, Lc/e/a/c/e/a;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    .line 20
    iput v1, p0, Lc/e/a/c/e/a;->d:F

    mul-float p1, p1, v0

    div-float/2addr p1, p2

    .line 21
    iput p1, p0, Lc/e/a/c/e/a;->e:F

    return-void
.end method

.method public final a(Landroid/view/View;FFI)V
    .locals 0

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 17
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 18
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(Landroid/view/View;II)V
    .locals 1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 14
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Lb/b/f/a/o;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/e/a;->l:Lb/b/f/a/o;

    .line 2
    invoke-virtual {p1}, Lb/b/f/a/o;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lc/e/a/c/e/a;->setCheckable(Z)V

    .line 3
    invoke-virtual {p1}, Lb/b/f/a/o;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lc/e/a/c/e/a;->setChecked(Z)V

    .line 4
    invoke-virtual {p1}, Lb/b/f/a/o;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lc/e/a/c/e/a;->setEnabled(Z)V

    .line 5
    invoke-virtual {p1}, Lb/b/f/a/o;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lc/e/a/c/e/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p1}, Lb/b/f/a/o;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lc/e/a/c/e/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lb/b/f/a/o;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 8
    invoke-virtual {p1}, Lb/b/f/a/o;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 9
    invoke-virtual {p1}, Lb/b/f/a/o;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lb/b/f/a/o;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p2}, Lb/b/g/xa;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lb/b/f/a/o;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemData()Lb/b/f/a/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/e/a;->l:Lb/b/f/a/o;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/e/a;->k:I

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    iget-object v0, p0, Lc/e/a/c/e/a;->l:Lb/b/f/a/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/f/a/o;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/c/e/a;->l:Lb/b/f/a/o;

    invoke-virtual {v0}, Lb/b/f/a/o;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lc/e/a/c/e/a;->a:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 2
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 3
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 4
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 5
    iget v0, p0, Lc/e/a/c/e/a;->f:I

    const/4 v1, -0x1

    const/16 v3, 0x11

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/16 v6, 0x31

    const/4 v7, 0x4

    const/high16 v8, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lc/e/a/c/e/a;->b:I

    invoke-virtual {p0, v0, v1, v3}, Lc/e/a/c/e/a;->a(Landroid/view/View;II)V

    .line 7
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lc/e/a/c/e/a;->b:I

    int-to-float v1, v1

    iget v2, p0, Lc/e/a/c/e/a;->c:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1, v6}, Lc/e/a/c/e/a;->a(Landroid/view/View;II)V

    .line 10
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v8, v8, v5}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    .line 11
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    iget v1, p0, Lc/e/a/c/e/a;->d:F

    invoke-virtual {p0, v0, v1, v1, v7}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    goto/16 :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lc/e/a/c/e/a;->b:I

    invoke-virtual {p0, v0, v1, v6}, Lc/e/a/c/e/a;->a(Landroid/view/View;II)V

    .line 13
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    iget v1, p0, Lc/e/a/c/e/a;->e:F

    invoke-virtual {p0, v0, v1, v1, v7}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    .line 14
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v8, v8, v5}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 15
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lc/e/a/c/e/a;->b:I

    invoke-virtual {p0, v0, v1, v6}, Lc/e/a/c/e/a;->a(Landroid/view/View;II)V

    .line 16
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v8, v8, v5}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lc/e/a/c/e/a;->b:I

    invoke-virtual {p0, v0, v1, v3}, Lc/e/a/c/e/a;->a(Landroid/view/View;II)V

    .line 18
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v4, v4, v7}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    .line 19
    :goto_0
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_5
    iget-boolean v0, p0, Lc/e/a/c/e/a;->g:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 21
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lc/e/a/c/e/a;->b:I

    invoke-virtual {p0, v0, v1, v6}, Lc/e/a/c/e/a;->a(Landroid/view/View;II)V

    .line 22
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v8, v8, v5}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lc/e/a/c/e/a;->b:I

    invoke-virtual {p0, v0, v1, v3}, Lc/e/a/c/e/a;->a(Landroid/view/View;II)V

    .line 24
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v4, v4, v7}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    .line 25
    :goto_1
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 26
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lc/e/a/c/e/a;->b:I

    int-to-float v1, v1

    iget v2, p0, Lc/e/a/c/e/a;->c:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1, v6}, Lc/e/a/c/e/a;->a(Landroid/view/View;II)V

    .line 27
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v8, v8, v5}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    .line 28
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    iget v1, p0, Lc/e/a/c/e/a;->d:F

    invoke-virtual {p0, v0, v1, v1, v7}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    goto :goto_2

    .line 29
    :cond_8
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    iget v1, p0, Lc/e/a/c/e/a;->b:I

    invoke-virtual {p0, v0, v1, v6}, Lc/e/a/c/e/a;->a(Landroid/view/View;II)V

    .line 30
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    iget v1, p0, Lc/e/a/c/e/a;->e:F

    invoke-virtual {p0, v0, v1, v1, v7}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    .line 31
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v8, v8, v5}, Lc/e/a/c/e/a;->a(Landroid/view/View;FFI)V

    .line 32
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Lb/i/k/s;->a(Landroid/content/Context;I)Lb/i/k/s;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lb/i/k/z;->a(Landroid/view/View;Lb/i/k/s;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1}, Lb/i/k/z;->a(Landroid/view/View;Lb/i/k/s;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lb/i/c/a/a;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lc/e/a/c/e/a;->m:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lb/i/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lc/e/a/c/e/a;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/e/a;->m:Landroid/content/res/ColorStateList;

    .line 2
    iget-object p1, p0, Lc/e/a/c/e/a;->l:Lb/b/f/a/o;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/b/f/a/o;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/a/c/e/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lc/e/a/c/e/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lb/i/k/z;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/e/a/c/e/a;->k:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/e/a;->f:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lc/e/a/c/e/a;->f:I

    .line 3
    iget-object p1, p0, Lc/e/a/c/e/a;->l:Lb/b/f/a/o;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lc/e/a/c/e/a;->l:Lb/b/f/a/o;

    invoke-virtual {p1}, Lb/b/f/a/o;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lc/e/a/c/e/a;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/c/e/a;->g:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lc/e/a/c/e/a;->g:Z

    .line 3
    iget-object p1, p0, Lc/e/a/c/e/a;->l:Lb/b/f/a/o;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lc/e/a/c/e/a;->l:Lb/b/f/a/o;

    invoke-virtual {p1}, Lb/b/f/a/o;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lc/e/a/c/e/a;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lb/i/l/j;->e(Landroid/widget/TextView;I)V

    .line 2
    iget-object p1, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/e/a/c/e/a;->a(FF)V

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lb/i/l/j;->e(Landroid/widget/TextView;I)V

    .line 2
    iget-object p1, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/e/a/c/e/a;->a(FF)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/e/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lc/e/a/c/e/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lc/e/a/c/e/a;->l:Lb/b/f/a/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/f/a/o;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
