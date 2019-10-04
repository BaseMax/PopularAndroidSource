.class public Lc/c/a/o/b/e;
.super Ljava/lang/Object;
.source "PersianCalendarUtils.java"


# direct methods
.method public static a(DD)J
    .locals 2

    div-double v0, p0, p2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double p2, p2, v0

    sub-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static a(I)Z
    .locals 6

    int-to-long v0, p0

    const-wide/16 v2, 0x1da

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v4, 0x40a6080000000000L    # 2820.0

    .line 1
    invoke-static {v0, v1, v4, v5}, Lc/c/a/o/b/e;->a(DD)J

    move-result-wide v0

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4043000000000000L    # 38.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    const-wide v2, 0x4085500000000000L    # 682.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x40a6000000000000L    # 2816.0

    invoke-static {v0, v1, v2, v3}, Lc/c/a/o/b/e;->a(DD)J

    move-result-wide v0

    const-wide/16 v2, 0x2aa

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
