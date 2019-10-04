.class public final Lcom/google/android/material/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_EPSILON:F = 1.0E-4f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dist(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    .line 30
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .locals 1

    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/e/a;->dist(FFFF)F

    move-result v0

    .line 67
    invoke-static {p0, p1, p4, p3}, Lcom/google/android/material/e/a;->dist(FFFF)F

    move-result p3

    .line 68
    invoke-static {p0, p1, p4, p5}, Lcom/google/android/material/e/a;->dist(FFFF)F

    move-result p4

    .line 69
    invoke-static {p0, p1, p2, p5}, Lcom/google/android/material/e/a;->dist(FFFF)F

    move-result p0

    cmpl-float p1, v0, p3

    if-lez p1, :cond_0

    cmpl-float p1, v0, p4

    if-lez p1, :cond_0

    cmpl-float p1, v0, p0

    if-lez p1, :cond_0

    return v0

    :cond_0
    cmpl-float p1, p3, p4

    if-lez p1, :cond_1

    cmpl-float p1, p3, p0

    if-lez p1, :cond_1

    return p3

    :cond_1
    cmpl-float p1, p4, p0

    if-lez p1, :cond_2

    return p4

    :cond_2
    return p0
.end method

.method public static geq(FFF)Z
    .locals 0

    add-float/2addr p0, p2

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static lerp(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float v0, v0, p0

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    return v0
.end method
