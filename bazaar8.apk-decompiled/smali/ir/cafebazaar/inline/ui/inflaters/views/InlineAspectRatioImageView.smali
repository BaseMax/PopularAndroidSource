.class public Lir/cafebazaar/inline/ui/inflaters/views/InlineAspectRatioImageView;
.super Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;
.source "InlineAspectRatioImageView.java"


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 6
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/views/InlineAspectRatioImageView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 4
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/views/InlineAspectRatioImageView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/views/InlineAspectRatioImageView;->d:I

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    iget v2, p0, Lir/cafebazaar/inline/ui/inflaters/views/InlineAspectRatioImageView;->d:I

    mul-int v0, v0, v2

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;->onMeasure(II)V

    .line 4
    invoke-super {p0, p1, p2}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;->onMeasure(II)V

    return-void
.end method

.method public setWidthPercent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/views/InlineAspectRatioImageView;->d:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
