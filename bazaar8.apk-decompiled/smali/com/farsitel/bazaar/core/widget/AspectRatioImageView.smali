.class public Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "AspectRatioImageView.kt"


# instance fields
.field public c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 3
    iput p3, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;->c:F

    if-eqz p2, :cond_0

    .line 4
    sget-object p3, Lc/c/a/d/h;->AspectRatioImageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lc/c/a/d/h;->AspectRatioImageView_ratio:I

    iget p3, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;->c:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;->c:F

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    int-to-float p2, p1

    .line 4
    iget v0, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;->c:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_0

    :cond_1
    int-to-float p1, p2

    .line 5
    iget v0, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;->c:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setAspectRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;->c:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
