.class public Lf/a/a/e/b/b/a/a;
.super Landroid/widget/FrameLayout;
.source "MaxHeightFrameLayout.java"


# instance fields
.field public final a:I

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xf0

    .line 2
    iput p1, p0, Lf/a/a/e/b/b/a/a;->a:I

    .line 3
    iput p1, p0, Lf/a/a/e/b/b/a/a;->b:I

    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lf/a/a/e/b/b/a/a;->b:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget p2, p0, Lf/a/a/e/b/b/a/a;->b:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/a/a/e/b/b/a/a;->b:I

    return-void
.end method
