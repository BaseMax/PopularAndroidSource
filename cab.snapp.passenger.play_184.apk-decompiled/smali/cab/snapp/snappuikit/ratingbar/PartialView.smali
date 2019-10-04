.class Lcab/snapp/snappuikit/ratingbar/PartialView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->c:I

    .line 19
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->d:I

    .line 24
    iput p3, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->c:I

    .line 25
    iput p4, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->d:I

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setTag(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0, p5, p5, p5, p5}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setPadding(IIII)V

    .line 29
    invoke-direct {p0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->c:I

    .line 19
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->d:I

    .line 34
    invoke-direct {p0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->c:I

    .line 19
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->d:I

    .line 39
    invoke-direct {p0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 43
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->c:I

    const/4 v2, -0x2

    if-nez v1, :cond_0

    const/4 v1, -0x2

    :cond_0
    iget v3, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->d:I

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 47
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    .line 48
    iget-object v1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    iget-object v1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->b:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->b:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    iget-object v1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {p0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setEmpty()V

    return-void
.end method


# virtual methods
.method public setEmpty()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 91
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v1, 0x800005

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 73
    iget-object p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFilled()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 78
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setFilledDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 59
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v1, 0x800003

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 64
    iget-object p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPartialFilled(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    rem-float/2addr p1, v0

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/16 v0, 0x2710

    if-nez p1, :cond_0

    const/16 p1, 0x2710

    .line 85
    :cond_0
    iget-object v1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 86
    iget-object v1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->b:Landroid/widget/ImageView;

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setStarHeight(I)V
    .locals 1

    .line 104
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->d:I

    .line 106
    iget-object p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 107
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->d:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setStarWidth(I)V
    .locals 1

    .line 95
    iput p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->c:I

    .line 97
    iget-object p1, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 98
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->c:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/PartialView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
