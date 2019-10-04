.class public Lcab/snapp/snappuikit/SnappFloatingActionMenu;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappuikit/SnappFloatingActionMenu$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private G:I

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:I

.field private J:Landroid/view/animation/Interpolator;

.field private K:Landroid/view/animation/Interpolator;

.field private L:Z

.field private M:Z

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:Landroid/graphics/Typeface;

.field private S:Z

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/view/animation/Animation;

.field private V:Landroid/view/animation/Animation;

.field private W:Landroid/view/animation/Animation;

.field private a:Landroid/animation/AnimatorSet;

.field private aa:Landroid/view/animation/Animation;

.field private ab:Z

.field private ac:Z

.field private ad:I

.field private ae:Lcab/snapp/snappuikit/SnappFloatingActionMenu$a;

.field private af:Landroid/animation/ValueAnimator;

.field private ag:Landroid/animation/ValueAnimator;

.field private ah:I

.field private ai:I

.field private aj:Landroid/content/Context;

.field private ak:Ljava/lang/String;

.field private al:Z

.field private b:Landroid/animation/AnimatorSet;

.field private c:Landroid/animation/AnimatorSet;

.field private d:I

.field private e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/content/res/ColorStateList;

.field private t:F

.field private u:I

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    .line 56
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 58
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->d:I

    .line 61
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->g:I

    .line 62
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->h:I

    .line 66
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->l:Landroid/os/Handler;

    .line 69
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p3, v1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->o:I

    .line 70
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p3, v2}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->p:I

    .line 71
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->q:I

    .line 72
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v2}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->r:I

    .line 75
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {p3, v2}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->u:I

    .line 82
    iput v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->B:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 83
    iput p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->C:F

    .line 84
    iput v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->D:F

    const/4 p3, 0x1

    .line 92
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->L:Z

    .line 99
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->S:Z

    .line 1667
    sget-object v1, Lcab/snapp/snappuikit/a$h;->floatingActionMenu:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1668
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famButtonSpacing:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->d:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->d:I

    .line 1669
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsMargin:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->g:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->g:I

    .line 1670
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsPosition:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    .line 1671
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famFabShowAnimation:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez v1, :cond_0

    sget v1, Lcab/snapp/snappuikit/a$a;->fab_slide_in_from_right:I

    goto :goto_0

    :cond_0
    sget v1, Lcab/snapp/snappuikit/a$a;->fab_slide_in_from_left:I

    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->m:I

    .line 1673
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsHideAnimation:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez v1, :cond_1

    sget v1, Lcab/snapp/snappuikit/a$a;->fab_slide_out_to_right:I

    goto :goto_1

    :cond_1
    sget v1, Lcab/snapp/snappuikit/a$a;->fab_slide_out_to_left:I

    :goto_1
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->n:I

    .line 1675
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsPaddingTop:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->o:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->o:I

    .line 1676
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsPaddingRight:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->p:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->p:I

    .line 1677
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsPaddingBottom:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->q:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->q:I

    .line 1678
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsPaddingLeft:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->r:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->r:I

    .line 1679
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->s:Landroid/content/res/ColorStateList;

    .line 1681
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->s:Landroid/content/res/ColorStateList;

    const/4 v1, -0x1

    if-nez p2, :cond_2

    .line 1683
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->s:Landroid/content/res/ColorStateList;

    .line 1685
    :cond_2
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsTextSize:I

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcab/snapp/snappuikit/a$c;->fab_labels_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->t:F

    .line 1686
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsCornerRadius:I

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->u:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->u:I

    .line 1687
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsShowShadow:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->v:Z

    .line 1688
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsColorNormal:I

    const v3, -0xcccccd

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->w:I

    .line 1689
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsColorPressed:I

    const v3, -0xbbbbbc

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->x:I

    .line 1690
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsColorRipple:I

    const v3, 0x66ffffff

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->y:I

    .line 1691
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famShowShadow:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->z:Z

    .line 1692
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famShadowColor:I

    const/high16 v3, 0x66000000

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->A:I

    .line 1693
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famShadowRadius:I

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->B:F

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->B:F

    .line 1694
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famShadowXOffset:I

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->C:F

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->C:F

    .line 1695
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famShadowYOffset:I

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->D:F

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->D:F

    .line 1696
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famColorNormal:I

    const v3, -0x25bcca

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->E:I

    .line 1697
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famColorPressed:I

    const v3, -0x18afbd

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->F:I

    .line 1698
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famColorRipple:I

    const v3, -0x66000001

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->G:I

    .line 1699
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famAnimationDelayPerItem:I

    const/16 v3, 0x32

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->I:I

    .line 1700
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->H:Landroid/graphics/drawable/Drawable;

    .line 1701
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->H:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_3

    .line 1703
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcab/snapp/snappuikit/a$d;->fab_add:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->H:Landroid/graphics/drawable/Drawable;

    .line 1705
    :cond_3
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsSingleLine:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->M:Z

    .line 1706
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsEllipsize:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->N:I

    .line 1707
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsMaxLines:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->O:I

    .line 1708
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famFabMode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->P:I

    .line 1709
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsStyle:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->Q:I

    .line 1710
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsCustomFont:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1713
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1715
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->R:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    :cond_4
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famOpenDirection:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ad:I

    .line 1723
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famBackgroundColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ah:I

    .line 1725
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famFabLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1727
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->al:Z

    .line 1728
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famFabLabel:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ak:Ljava/lang/String;

    .line 1731
    :cond_5
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsPadding:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1733
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famLabelsPadding:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 1796
    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->o:I

    .line 1797
    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->p:I

    .line 1798
    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->q:I

    .line 1799
    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->r:I

    .line 1737
    :cond_6
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->J:Landroid/view/animation/Interpolator;

    .line 1738
    new-instance p2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->K:Landroid/view/animation/Interpolator;

    .line 1739
    new-instance p2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->Q:I

    invoke-direct {p2, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->aj:Landroid/content/Context;

    .line 2761
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ah:I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    .line 2762
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ah:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 2763
    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ah:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 2764
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ah:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v2, v6, v2

    aput p2, v6, p3

    .line 2766
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->af:Landroid/animation/ValueAnimator;

    .line 2767
    iget-object v6, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->af:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2768
    iget-object v6, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->af:Landroid/animation/ValueAnimator;

    new-instance v9, Lcab/snapp/snappuikit/SnappFloatingActionMenu$7;

    invoke-direct {v9, p0, v1, v3, v4}, Lcab/snapp/snappuikit/SnappFloatingActionMenu$7;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;III)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v5, [I

    aput p2, v6, v2

    aput v2, v6, p3

    .line 2777
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ag:Landroid/animation/ValueAnimator;

    .line 2778
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ag:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2779
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ag:Landroid/animation/ValueAnimator;

    new-instance v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu$8;

    invoke-direct {v6, p0, v1, v3, v4}, Lcab/snapp/snappuikit/SnappFloatingActionMenu$8;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;III)V

    invoke-virtual {p2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2804
    new-instance p2, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 2806
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->z:Z

    iput-boolean v1, p2, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b:Z

    if-eqz v1, :cond_7

    .line 2809
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->B:F

    invoke-static {v1, v3}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p2, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    .line 2810
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->C:F

    invoke-static {v1, v3}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p2, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    .line 2811
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->D:F

    invoke-static {v1, v3}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p2, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    .line 2813
    :cond_7
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->E:I

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->F:I

    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->G:I

    .line 3162
    iput v1, p2, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g:I

    .line 3163
    iput v3, p2, Lcab/snapp/snappuikit/SnappFloatingActionButton;->h:I

    .line 3164
    iput v4, p2, Lcab/snapp/snappuikit/SnappFloatingActionButton;->i:I

    .line 2814
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->A:I

    iput v1, p2, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c:I

    .line 2815
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->P:I

    iput v1, p2, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a:I

    .line 2816
    invoke-virtual {p2}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a()V

    .line 2817
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ak:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setLabelText(Ljava/lang/String;)V

    .line 2819
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    .line 2820
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2822
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2823
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->addView(Landroid/view/View;)V

    .line 3832
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ad:I

    const/high16 v1, 0x43070000    # 135.0f

    const/high16 v3, -0x3cf90000    # -135.0f

    if-nez p2, :cond_a

    .line 3834
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez p2, :cond_8

    const/high16 p2, -0x3cf90000    # -135.0f

    goto :goto_2

    :cond_8
    const/high16 p2, 0x43070000    # 135.0f

    .line 3835
    :goto_2
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez v4, :cond_c

    :cond_9
    const/high16 v1, -0x3cf90000    # -135.0f

    goto :goto_4

    .line 3839
    :cond_a
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez p2, :cond_b

    const/high16 p2, 0x43070000    # 135.0f

    goto :goto_3

    :cond_b
    const/high16 p2, -0x3cf90000    # -135.0f

    .line 3840
    :goto_3
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez v4, :cond_9

    .line 3843
    :cond_c
    :goto_4
    iget-object v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    new-array v4, v5, [F

    aput p2, v4, v2

    aput v0, v4, p3

    const-string p2, "rotation"

    invoke-static {v3, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 3850
    iget-object v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    new-array v5, v5, [F

    aput v0, v5, v2

    aput v1, v5, p3

    invoke-static {v4, p2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 3857
    iget-object p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3858
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3860
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->J:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3861
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->K:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3863
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3864
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4750
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famFabShowAnimation:I

    sget p3, Lcab/snapp/snappuikit/a$a;->fab_scale_up:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4751
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    .line 4752
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->W:Landroid/view/animation/Animation;

    .line 4754
    sget p2, Lcab/snapp/snappuikit/a$h;->floatingActionMenu_famFabHideAnimation:I

    sget p3, Lcab/snapp/snappuikit/a$a;->fab_scale_down:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4755
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    .line 4756
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->aa:Landroid/view/animation/Animation;

    .line 1745
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catch_0
    move-exception p1

    .line 1720
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unable to load specified custom font: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw p3

    :goto_6
    goto :goto_5
.end method

.method static synthetic a(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Landroid/view/animation/Animation;
    .locals 0

    .line 39
    iget-object p0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->V:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private a(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V
    .locals 6

    .line 906
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLabelText()Ljava/lang/String;

    move-result-object v0

    .line 908
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 913
    :cond_0
    new-instance v1, Lcab/snapp/snappuikit/fab/Label;

    iget-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->aj:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcab/snapp/snappuikit/fab/Label;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 914
    invoke-virtual {v1, v2}, Lcab/snapp/snappuikit/fab/Label;->setClickable(Z)V

    .line 915
    invoke-virtual {v1, p1}, Lcab/snapp/snappuikit/fab/Label;->setFab(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    .line 916
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->m:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcab/snapp/snappuikit/fab/Label;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 917
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->n:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcab/snapp/snappuikit/fab/Label;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 919
    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->Q:I

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 921
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->Q:I

    invoke-virtual {v1, v3, v5}, Lcab/snapp/snappuikit/fab/Label;->setTextAppearance(Landroid/content/Context;I)V

    .line 922
    invoke-virtual {v1, v4}, Lcab/snapp/snappuikit/fab/Label;->setShowShadow(Z)V

    .line 923
    invoke-virtual {v1, v2}, Lcab/snapp/snappuikit/fab/Label;->setUsingStyle(Z)V

    goto :goto_0

    .line 927
    :cond_1
    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->w:I

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->x:I

    iget v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->y:I

    invoke-virtual {v1, v2, v3, v5}, Lcab/snapp/snappuikit/fab/Label;->setColors(III)V

    .line 928
    iget-boolean v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->v:Z

    invoke-virtual {v1, v2}, Lcab/snapp/snappuikit/fab/Label;->setShowShadow(Z)V

    .line 929
    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->u:I

    invoke-virtual {v1, v2}, Lcab/snapp/snappuikit/fab/Label;->setCornerRadius(I)V

    .line 930
    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->N:I

    if-lez v2, :cond_2

    .line 932
    invoke-direct {p0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->setLabelEllipsize(Lcab/snapp/snappuikit/fab/Label;)V

    .line 934
    :cond_2
    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->O:I

    invoke-virtual {v1, v2}, Lcab/snapp/snappuikit/fab/Label;->setMaxLines(I)V

    .line 935
    invoke-virtual {v1}, Lcab/snapp/snappuikit/fab/Label;->updateBackground()V

    .line 937
    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->t:F

    invoke-virtual {v1, v4, v2}, Lcab/snapp/snappuikit/fab/Label;->setTextSize(IF)V

    .line 938
    iget-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcab/snapp/snappuikit/fab/Label;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 940
    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->r:I

    .line 941
    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->o:I

    .line 942
    iget-boolean v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->v:Z

    if-eqz v4, :cond_3

    .line 944
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowXOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 945
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowYOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 948
    :cond_3
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->r:I

    iget v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->o:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcab/snapp/snappuikit/fab/Label;->setPadding(IIII)V

    .line 955
    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->O:I

    if-ltz v2, :cond_4

    iget-boolean v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->M:Z

    if-eqz v2, :cond_5

    .line 957
    :cond_4
    iget-boolean v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->M:Z

    invoke-virtual {v1, v2}, Lcab/snapp/snappuikit/fab/Label;->setSingleLine(Z)V

    .line 961
    :cond_5
    :goto_0
    iget-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->R:Landroid/graphics/Typeface;

    if-eqz v2, :cond_6

    .line 963
    invoke-virtual {v1, v2}, Lcab/snapp/snappuikit/fab/Label;->setTypeface(Landroid/graphics/Typeface;)V

    .line 965
    :cond_6
    invoke-virtual {v1, v0}, Lcab/snapp/snappuikit/fab/Label;->setText(Ljava/lang/CharSequence;)V

    .line 966
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcab/snapp/snappuikit/fab/Label;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->addView(Landroid/view/View;)V

    .line 969
    sget v0, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappuikit/SnappFloatingActionMenu;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 993
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hide(Z)V

    if-eqz p1, :cond_0

    .line 998
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->aa:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1000
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 1001
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ab:Z

    :cond_1
    return-void
.end method

.method private a()Z
    .locals 1

    .line 791
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ah:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Z
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ab:Z

    return v0
.end method

.method static synthetic b(Lcab/snapp/snappuikit/SnappFloatingActionMenu;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->j:Z

    return p1
.end method

.method static synthetic c(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Lcab/snapp/snappuikit/SnappFloatingActionButton;
    .locals 0

    .line 39
    iget-object p0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Lcab/snapp/snappuikit/SnappFloatingActionMenu$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ae:Lcab/snapp/snappuikit/SnappFloatingActionMenu$a;

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->L:Z

    return p0
.end method

.method private setLabelEllipsize(Lcab/snapp/snappuikit/fab/Label;)V
    .locals 2

    .line 974
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->N:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void

    .line 983
    :cond_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void

    .line 980
    :cond_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void

    .line 977
    :cond_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method public addMenuButton(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V
    .locals 1

    .line 337
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->addView(Landroid/view/View;I)V

    .line 338
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    .line 339
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    return-void
.end method

.method public addMenuButton(Lcab/snapp/snappuikit/SnappFloatingActionButton;I)V
    .locals 1

    .line 351
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    add-int/lit8 v0, v0, -0x2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    move p2, v0

    .line 361
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->addView(Landroid/view/View;I)V

    .line 362
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    .line 363
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1232
    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return p1
.end method

.method public close(Z)V
    .locals 8

    .line 594
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 596
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ag:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 601
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->S:Z

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 605
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 610
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 617
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 619
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 620
    instance-of v4, v3, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 624
    check-cast v3, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 625
    iget-object v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->l:Landroid/os/Handler;

    new-instance v5, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;

    invoke-direct {v5, p0, v3, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu$5;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;Lcab/snapp/snappuikit/SnappFloatingActionButton;Z)V

    int-to-long v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->I:I

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    :cond_4
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->l:Landroid/os/Handler;

    new-instance v0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$6;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu$6;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)V

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->I:I

    mul-int v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 6225
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 7219
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .line 1213
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAnimationDelayPerItem()I
    .locals 1

    .line 149
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->I:I

    return v0
.end method

.method public getIconToggleAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .line 164
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getMenuButtonColorNormal()I
    .locals 1

    .line 179
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->E:I

    return v0
.end method

.method public getMenuButtonColorPressed()I
    .locals 1

    .line 184
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->F:I

    return v0
.end method

.method public getMenuButtonColorRipple()I
    .locals 1

    .line 189
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->G:I

    return v0
.end method

.method public getMenuButtonLabelText()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuIconView()Landroid/widget/ImageView;
    .locals 1

    .line 159
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideMenu(Z)V
    .locals 4

    .line 409
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isMenuHidden()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ab:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ab:Z

    .line 412
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->close(Z)V

    .line 415
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->l:Landroid/os/Handler;

    new-instance v1, Lcab/snapp/snappuikit/SnappFloatingActionMenu$1;

    invoke-direct {v1, p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu$1;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;Z)V

    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->I:I

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    mul-int p1, p1, v2

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 432
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->V:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const/4 p1, 0x4

    .line 434
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->setVisibility(I)V

    const/4 p1, 0x0

    .line 435
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ab:Z

    :cond_2
    return-void
.end method

.method public hideMenuButton(Z)V
    .locals 4

    .line 474
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ab:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ab:Z

    .line 477
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->close(Z)V

    .line 480
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->l:Landroid/os/Handler;

    new-instance v1, Lcab/snapp/snappuikit/SnappFloatingActionMenu$2;

    invoke-direct {v1, p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu$2;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;Z)V

    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->I:I

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    mul-int p1, p1, v2

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 490
    :cond_0
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a(Z)V

    :cond_1
    return-void
.end method

.method public isAnimated()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->L:Z

    return v0
.end method

.method public isIconAnimated()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->S:Z

    return v0
.end method

.method public isMenuButtonHidden()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isMenuHidden()Z
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->j:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1203
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 1204
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->bringChildToFront(Landroid/view/View;)V

    .line 1205
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->bringChildToFront(Landroid/view/View;)V

    .line 1206
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    const/4 v0, 0x0

    .line 5874
    :goto_0
    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    if-ge v0, v1, :cond_1

    .line 5877
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    if-eq v1, v2, :cond_0

    .line 5882
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 5884
    sget v2, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {v1, v2}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5889
    invoke-direct {p0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    .line 5891
    iget-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    if-ne v1, v2, :cond_0

    .line 5893
    new-instance v1, Lcab/snapp/snappuikit/SnappFloatingActionMenu$9;

    invoke-direct {v1, p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu$9;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)V

    invoke-virtual {v2, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 1110
    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez p1, :cond_0

    sub-int/2addr p4, p2

    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->f:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    .line 1111
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->f:I

    div-int/lit8 p1, p1, 0x2

    .line 1112
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getPaddingLeft()I

    move-result p2

    add-int p4, p1, p2

    .line 1113
    :goto_0
    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ad:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    sub-int/2addr p5, p3

    .line 1115
    iget-object p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 1116
    invoke-virtual {p3}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    goto :goto_2

    .line 1117
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getPaddingTop()I

    move-result p5

    .line 1118
    :goto_2
    iget-object p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {p3}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p4, p3

    .line 1120
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p3

    iget-object v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 1121
    invoke-virtual {v3}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p5

    .line 1120
    invoke-virtual {v1, p3, p5, v2, v3}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->layout(IIII)V

    .line 1123
    iget-object p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p4, p3

    .line 1124
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p5

    iget-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1126
    iget-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p3

    iget-object v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    .line 1127
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 1126
    invoke-virtual {v2, p3, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    if-eqz p1, :cond_3

    .line 1129
    iget-object p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 1130
    invoke-virtual {p3}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p5, p3

    iget p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->d:I

    add-int/2addr p5, p3

    .line 1133
    :cond_3
    iget p3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    sub-int/2addr p3, p2

    :goto_3
    if-ltz p3, :cond_e

    .line 1135
    invoke-virtual {p0, p3}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1137
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    if-eq p2, v1, :cond_d

    .line 1142
    move-object v1, p2

    check-cast v1, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 1144
    invoke-virtual {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    .line 1149
    invoke-virtual {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    if-eqz p1, :cond_4

    .line 1150
    invoke-virtual {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p5, v3

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->d:I

    sub-int/2addr p5, v3

    .line 1152
    :cond_4
    iget-object v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    if-eq v1, v3, :cond_5

    .line 1154
    invoke-virtual {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 1155
    invoke-virtual {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p5

    .line 1154
    invoke-virtual {v1, v2, p5, v3, v4}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->layout(IIII)V

    .line 1157
    iget-boolean v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->k:Z

    if-nez v2, :cond_5

    .line 1159
    invoke-virtual {v1, v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hide(Z)V

    .line 1163
    :cond_5
    sget v2, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {v1, v2}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_b

    .line 1166
    iget-boolean v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->al:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->f:I

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredWidth()I

    move-result v3

    :goto_4
    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->g:I

    add-int/2addr v3, v4

    .line 1167
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez v4, :cond_7

    sub-int v3, p4, v3

    goto :goto_5

    :cond_7
    add-int/2addr v3, p4

    .line 1171
    :goto_5
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez v4, :cond_8

    .line 1172
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    goto :goto_6

    .line 1173
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    .line 1175
    :goto_6
    iget v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez v5, :cond_9

    move v5, v4

    goto :goto_7

    :cond_9
    move v5, v3

    .line 1179
    :goto_7
    iget v6, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ai:I

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    move v3, v4

    .line 1183
    :goto_8
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->h:I

    sub-int v4, p5, v4

    invoke-virtual {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getMeasuredHeight()I

    move-result v1

    .line 1184
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    .line 1186
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v2, v5, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1188
    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->k:Z

    if-nez v1, :cond_b

    const/4 v1, 0x4

    .line 1190
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    if-eqz p1, :cond_c

    .line 1194
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->d:I

    sub-int/2addr p5, p2

    goto :goto_9

    .line 1196
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p5, p2

    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->d:I

    add-int/2addr p5, p2

    :cond_d
    :goto_9
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_3

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15

    move-object v6, p0

    const/4 v7, 0x0

    .line 1047
    iput v7, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->f:I

    .line 1050
    iget-object v1, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/4 v8, 0x0

    .line 1052
    :goto_0
    iget v0, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    const/16 v9, 0x8

    if-ge v8, v0, :cond_1

    .line 1054
    invoke-virtual {p0, v8}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1056
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_0

    iget-object v0, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    if-eq v10, v0, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move/from16 v2, p1

    move/from16 v4, p2

    .line 1061
    invoke-virtual/range {v0 .. v5}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1062
    iget v0, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->f:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->f:I

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 1065
    :goto_1
    iget v1, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    const/4 v2, 0x1

    if-ge v8, v1, :cond_5

    .line 1068
    invoke-virtual {p0, v8}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1070
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v9, :cond_4

    iget-object v3, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    if-eq v1, v3, :cond_4

    .line 1075
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/lit8 v11, v3, 0x0

    .line 1076
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v12, v0, v3

    .line 1078
    sget v0, Lcab/snapp/snappuikit/a$f;->fab_label:I

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcab/snapp/snappuikit/fab/Label;

    if-eqz v13, :cond_3

    .line 1081
    iget v0, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->f:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget-boolean v3, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->al:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    :goto_2
    div-int v14, v0, v2

    .line 1082
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v13}, Lcab/snapp/snappuikit/fab/Label;->calculateShadowWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->g:I

    add-int/2addr v0, v1

    add-int v3, v0, v14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move/from16 v4, p2

    .line 1083
    invoke-virtual/range {v0 .. v5}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1084
    invoke-virtual {v13}, Lcab/snapp/snappuikit/fab/Label;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v11, v0

    add-int/2addr v11, v14

    .line 1085
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    :cond_3
    move v0, v12

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1089
    :cond_5
    iget v1, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->f:I

    iget v3, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->g:I

    add-int/2addr v10, v3

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    .line 1091
    iget v3, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->d:I

    iget v4, v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    sub-int/2addr v4, v2

    mul-int v3, v3, v4

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getPaddingTop()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getPaddingBottom()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    int-to-double v2, v0

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    .line 5869
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    double-to-int v0, v4

    .line 1094
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 1096
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getSuggestedMinimumWidth()I

    move-result v1

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getDefaultSize(II)I

    move-result v1

    .line 1099
    :cond_6
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_7

    .line 1101
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getSuggestedMinimumHeight()I

    move-result v0

    move/from16 v2, p2

    invoke-static {v0, v2}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getDefaultSize(II)I

    move-result v0

    .line 1104
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1023
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ac:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1032
    :cond_0
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->L:Z

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->close(Z)V

    const/4 v0, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isOpened()Z

    move-result v0

    :goto_0
    return v0

    .line 1039
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public open(Z)V
    .locals 9

    .line 521
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_5

    .line 523
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->af:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 528
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->S:Z

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 532
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 537
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 543
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->k:Z

    .line 544
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ltz v1, :cond_4

    .line 546
    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 547
    instance-of v5, v4, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 551
    check-cast v4, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 552
    iget-object v5, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->l:Landroid/os/Handler;

    new-instance v6, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;

    invoke-direct {v6, p0, v4, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu$3;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;Lcab/snapp/snappuikit/SnappFloatingActionButton;Z)V

    int-to-long v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 573
    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->I:I

    add-int/2addr v3, v4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 577
    :cond_4
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->l:Landroid/os/Handler;

    new-instance v1, Lcab/snapp/snappuikit/SnappFloatingActionMenu$4;

    invoke-direct {v1, p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu$4;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)V

    add-int/2addr v2, v0

    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->I:I

    mul-int v2, v2, v0

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public removeAllMenuButtons()V
    .locals 4

    const/4 v0, 0x1

    .line 368
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->close(Z)V

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 371
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 373
    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 374
    iget-object v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    if-eq v2, v3, :cond_0

    instance-of v3, v2, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    if-eqz v3, :cond_0

    .line 376
    check-cast v2, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 381
    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->removeMenuButton(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeMenuButton(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V
    .locals 1

    .line 344
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getLabelView()Lcab/snapp/snappuikit/fab/Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->removeView(Landroid/view/View;)V

    .line 345
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->removeView(Landroid/view/View;)V

    .line 346
    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->i:I

    return-void
.end method

.method public setAnimated(Z)V
    .locals 7

    .line 228
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->L:Z

    .line 229
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 230
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setAnimationDelayPerItem(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->I:I

    return-void
.end method

.method public setClosedOnTouchOutside(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ac:Z

    return-void
.end method

.method public setIconAnimated(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->S:Z

    return-void
.end method

.method public setIconAnimationCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconAnimationOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconToggleAnimatorSet(Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->c:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setMenuButtonColorNormal(I)V
    .locals 1

    .line 272
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->E:I

    .line 273
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setMenuButtonColorNormalResId(I)V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->E:I

    .line 279
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setColorNormalResId(I)V

    return-void
.end method

.method public setMenuButtonColorPressed(I)V
    .locals 1

    .line 284
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->F:I

    .line 285
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setMenuButtonColorPressedResId(I)V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->F:I

    .line 291
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setColorPressedResId(I)V

    return-void
.end method

.method public setMenuButtonColorRipple(I)V
    .locals 1

    .line 296
    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->G:I

    .line 297
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setColorRipple(I)V

    return-void
.end method

.method public setMenuButtonColorRippleResId(I)V
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->G:I

    .line 303
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setColorRippleResId(I)V

    return-void
.end method

.method public setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 261
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->V:Landroid/view/animation/Animation;

    .line 262
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setMenuButtonLabelText(Ljava/lang/String;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setLabelText(Ljava/lang/String;)V

    return-void
.end method

.method public setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 255
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->U:Landroid/view/animation/Animation;

    .line 256
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuButtonLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMenuToggleListener(Lcab/snapp/snappuikit/SnappFloatingActionMenu$a;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->ae:Lcab/snapp/snappuikit/SnappFloatingActionMenu$a;

    return-void
.end method

.method public showMenu(Z)V
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isMenuHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->U:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x0

    .line 398
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showMenuButton(Z)V
    .locals 1

    .line 460
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5007
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5009
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->show(Z)V

    if-eqz p1, :cond_0

    .line 5012
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->W:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5014
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->T:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public toggle(Z)V
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->close(Z)V

    return-void

    .line 515
    :cond_0
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->open(Z)V

    return-void
.end method

.method public toggleMenu(Z)V
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isMenuHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->showMenu(Z)V

    return-void

    .line 448
    :cond_0
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->hideMenu(Z)V

    return-void
.end method

.method public toggleMenuButton(Z)V
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->isMenuButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->showMenuButton(Z)V

    return-void

    .line 503
    :cond_0
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->hideMenuButton(Z)V

    return-void
.end method
