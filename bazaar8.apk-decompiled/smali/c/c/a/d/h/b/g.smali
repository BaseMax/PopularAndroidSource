.class public Lc/c/a/d/h/b/g;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"


# direct methods
.method public static a(FFFF)Landroid/view/animation/Interpolator;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lc/c/a/d/h/b/h;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lc/c/a/d/h/b/i;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method
