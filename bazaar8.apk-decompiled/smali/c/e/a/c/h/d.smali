.class public Lc/e/a/c/h/d;
.super Lc/e/a/c/l/h;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/c/h/d$d;,
        Lc/e/a/c/h/d$a;,
        Lc/e/a/c/h/d$b;,
        Lc/e/a/c/h/d$c;
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:Z

.field public g:Lc/e/a/c/h/d$c;

.field public final h:Lc/e/a/c/h/d$a;

.field public i:Lc/e/a/c/h/d$d;

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lc/e/a/c/h/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lc/e/a/c/b;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc/e/a/c/h/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lc/e/a/c/l/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lc/e/a/c/h/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/e/a/c/h/d$a;-><init>(Lc/e/a/c/h/d;Lc/e/a/c/h/c;)V

    iput-object v0, p0, Lc/e/a/c/h/d;->h:Lc/e/a/c/h/d$a;

    .line 5
    new-instance v0, Lc/e/a/c/h/d$d;

    invoke-direct {v0, p0, v1}, Lc/e/a/c/h/d$d;-><init>(Lc/e/a/c/h/d;Lc/e/a/c/h/c;)V

    iput-object v0, p0, Lc/e/a/c/h/d;->i:Lc/e/a/c/h/d$d;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lc/e/a/c/h/d;->j:I

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lc/e/a/c/h/d;->k:Z

    .line 8
    sget-object v4, Lc/e/a/c/k;->ChipGroup:[I

    sget v6, Lc/e/a/c/j;->Widget_MaterialComponents_ChipGroup:I

    new-array v7, v1, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 9
    invoke-static/range {v2 .. v7}, Lc/e/a/c/l/p;->c(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget p2, Lc/e/a/c/k;->ChipGroup_chipSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 11
    sget p3, Lc/e/a/c/k;->ChipGroup_chipSpacingHorizontal:I

    .line 12
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 13
    invoke-virtual {p0, p3}, Lc/e/a/c/h/d;->setChipSpacingHorizontal(I)V

    .line 14
    sget p3, Lc/e/a/c/k;->ChipGroup_chipSpacingVertical:I

    .line 15
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 16
    invoke-virtual {p0, p2}, Lc/e/a/c/h/d;->setChipSpacingVertical(I)V

    .line 17
    sget p2, Lc/e/a/c/k;->ChipGroup_singleLine:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lc/e/a/c/l/h;->setSingleLine(Z)V

    .line 18
    sget p2, Lc/e/a/c/k;->ChipGroup_singleSelection:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lc/e/a/c/h/d;->setSingleSelection(Z)V

    .line 19
    sget p2, Lc/e/a/c/k;->ChipGroup_checkedChip:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    .line 20
    iput p2, p0, Lc/e/a/c/h/d;->j:I

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    iget-object p1, p0, Lc/e/a/c/h/d;->i:Lc/e/a/c/h/d$d;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/c/h/d;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lc/e/a/c/h/d;->setCheckedId(I)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/c/h/d;IZ)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/e/a/c/h/d;->a(IZ)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/c/h/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/e/a/c/h/d;->k:Z

    return p0
.end method

.method public static synthetic b(Lc/e/a/c/h/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/c/h/d;->j:I

    return p0
.end method

.method public static synthetic c(Lc/e/a/c/h/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/e/a/c/h/d;->f:Z

    return p0
.end method

.method public static synthetic d(Lc/e/a/c/h/d;)Lc/e/a/c/h/d$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/c/h/d;->h:Lc/e/a/c/h/d$a;

    return-object p0
.end method

.method private setCheckedId(I)V
    .locals 2

    .line 1
    iput p1, p0, Lc/e/a/c/h/d;->j:I

    .line 2
    iget-object v0, p0, Lc/e/a/c/h/d;->g:Lc/e/a/c/h/d$c;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lc/e/a/c/h/d;->f:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p0, p1}, Lc/e/a/c/h/d$c;->a(Lc/e/a/c/h/d;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lc/e/a/c/h/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lc/e/a/c/h/d;->k:Z

    .line 7
    check-cast p1, Lc/e/a/c/h/a;

    invoke-virtual {p1, p2}, Lc/e/a/c/h/a;->setChecked(Z)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lc/e/a/c/h/d;->k:Z

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lc/e/a/c/h/a;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lc/e/a/c/h/a;

    .line 3
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget v1, p0, Lc/e/a/c/h/d;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lc/e/a/c/h/d;->f:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2}, Lc/e/a/c/h/d;->a(IZ)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lc/e/a/c/h/d;->setCheckedId(I)V

    .line 7
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/e/a/c/h/d;->k:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lc/e/a/c/h/a;

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lc/e/a/c/h/a;

    invoke-virtual {v2, v0}, Lc/e/a/c/h/a;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean v0, p0, Lc/e/a/c/h/d;->k:Z

    const/4 v0, -0x1

    .line 8
    invoke-direct {p0, v0}, Lc/e/a/c/h/d;->setCheckedId(I)V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lc/e/a/c/h/d$b;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/c/h/d$b;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lc/e/a/c/h/d$b;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/c/h/d$b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc/e/a/c/h/d$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lc/e/a/c/h/d$b;

    invoke-direct {v0, p1}, Lc/e/a/c/h/d$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/c/h/d;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc/e/a/c/h/d;->j:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getChipSpacingHorizontal()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/h/d;->d:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/h/d;->e:I

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    iget v0, p0, Lc/e/a/c/h/d;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lc/e/a/c/h/d;->a(IZ)V

    .line 4
    iget v0, p0, Lc/e/a/c/h/d;->j:I

    invoke-direct {p0, v0}, Lc/e/a/c/h/d;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/c/h/d;->setChipSpacingHorizontal(I)V

    .line 2
    invoke-virtual {p0, p1}, Lc/e/a/c/h/d;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/h/d;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lc/e/a/c/h/d;->d:I

    .line 3
    invoke-virtual {p0, p1}, Lc/e/a/c/l/h;->setItemSpacing(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lc/e/a/c/h/d;->setChipSpacingHorizontal(I)V

    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lc/e/a/c/h/d;->setChipSpacing(I)V

    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/c/h/d;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lc/e/a/c/h/d;->e:I

    .line 3
    invoke-virtual {p0, p1}, Lc/e/a/c/l/h;->setLineSpacing(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lc/e/a/c/h/d;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlexWrap(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListener(Lc/e/a/c/h/d$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/h/d;->g:Lc/e/a/c/h/d$c;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/d;->i:Lc/e/a/c/h/d$d;

    invoke-static {v0, p1}, Lc/e/a/c/h/d$d;->a(Lc/e/a/c/h/d$d;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowDividerVertical(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSingleLine(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lc/e/a/c/l/h;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lc/e/a/c/h/d;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/c/h/d;->f:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lc/e/a/c/h/d;->f:Z

    .line 3
    invoke-virtual {p0}, Lc/e/a/c/h/d;->b()V

    :cond_0
    return-void
.end method
