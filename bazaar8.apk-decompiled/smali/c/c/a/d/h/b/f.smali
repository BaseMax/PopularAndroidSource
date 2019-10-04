.class public Lc/c/a/d/h/b/f;
.super Ljava/lang/Object;
.source "KeyFrameInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public a:Landroid/animation/TimeInterpolator;

.field public b:[F


# direct methods
.method public varargs constructor <init>(Landroid/animation/TimeInterpolator;[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/d/h/b/f;->a:Landroid/animation/TimeInterpolator;

    .line 3
    iput-object p2, p0, Lc/c/a/d/h/b/f;->b:[F

    return-void
.end method

.method public static varargs a([F)Lc/c/a/d/h/b/f;
    .locals 3

    .line 1
    new-instance v0, Lc/c/a/d/h/b/f;

    invoke-static {}, Lc/c/a/d/h/b/c;->a()Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [F

    invoke-direct {v0, v1, v2}, Lc/c/a/d/h/b/f;-><init>(Landroid/animation/TimeInterpolator;[F)V

    .line 2
    invoke-virtual {v0, p0}, Lc/c/a/d/h/b/f;->b([F)V

    return-object v0
.end method


# virtual methods
.method public varargs b([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/d/h/b/f;->b:[F

    return-void
.end method

.method public declared-synchronized getInterpolation(F)F
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/c/a/d/h/b/f;->b:[F

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :cond_0
    iget-object v2, p0, Lc/c/a/d/h/b/f;->b:[F

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lc/c/a/d/h/b/f;->b:[F

    aget v2, v2, v0

    .line 4
    iget-object v3, p0, Lc/c/a/d/h/b/f;->b:[F

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    sub-float v4, v3, v2

    cmpl-float v5, p1, v2

    if-ltz v5, :cond_0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    sub-float/2addr p1, v2

    div-float/2addr p1, v4

    .line 5
    iget-object v0, p0, Lc/c/a/d/h/b/f;->a:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float p1, p1, v4

    add-float/2addr v2, p1

    monitor-exit p0

    return v2

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Lc/c/a/d/h/b/f;->a:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
