.class public final Lcom/github/ybq/android/spinkit/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(FF)Landroid/view/animation/Interpolator;
    .locals 2

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 65
    invoke-static {p0, p1}, Lcom/github/ybq/android/spinkit/a/a/d;->create(FF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    invoke-static {p0, p1}, Lcom/github/ybq/android/spinkit/a/a/e;->create(FF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 2

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 83
    invoke-static {p0, p1, p2, p3}, Lcom/github/ybq/android/spinkit/a/a/d;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/github/ybq/android/spinkit/a/a/e;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;
    .locals 2

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 49
    invoke-static {p0}, Lcom/github/ybq/android/spinkit/a/a/d;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/github/ybq/android/spinkit/a/a/e;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method
