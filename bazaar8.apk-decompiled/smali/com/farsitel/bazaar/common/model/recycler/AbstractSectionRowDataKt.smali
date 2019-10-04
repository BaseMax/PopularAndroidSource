.class public final Lcom/farsitel/bazaar/common/model/recycler/AbstractSectionRowDataKt;
.super Ljava/lang/Object;
.source "AbstractSectionRowData.kt"


# direct methods
.method public static final mixColor(IIF)I
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p2, p2, p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float v1, v1, p0

    add-float/2addr p2, v1

    float-to-int p0, p2

    .line 4
    invoke-static {v0, v2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method
