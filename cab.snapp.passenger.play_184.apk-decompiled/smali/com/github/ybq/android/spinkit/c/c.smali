.class public final Lcom/github/ybq/android/spinkit/c/c;
.super Lcom/github/ybq/android/spinkit/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/c/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8

    .line 33
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/c/c;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/c/c;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 38
    rem-int/lit8 v3, v2, 0x3

    .line 39
    div-int/lit8 v4, v2, 0x3

    .line 40
    iget v5, p1, Landroid/graphics/Rect;->left:I

    mul-int v3, v3, v0

    add-int/2addr v5, v3

    .line 41
    iget v3, p1, Landroid/graphics/Rect;->top:I

    mul-int v4, v4, v1

    add-int/2addr v3, v4

    .line 42
    invoke-virtual {p0, v2}, Lcom/github/ybq/android/spinkit/c/c;->getChildAt(I)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v4

    add-int v6, v5, v0

    add-int v7, v3, v1

    .line 43
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/github/ybq/android/spinkit/b/f;->setDrawBounds(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCreateChild()[Lcom/github/ybq/android/spinkit/b/f;
    .locals 7

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 18
    fill-array-data v1, :array_0

    new-array v2, v0, [Lcom/github/ybq/android/spinkit/c/c$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 25
    new-instance v5, Lcom/github/ybq/android/spinkit/c/c$a;

    invoke-direct {v5, p0, v3}, Lcom/github/ybq/android/spinkit/c/c$a;-><init>(Lcom/github/ybq/android/spinkit/c/c;B)V

    aput-object v5, v2, v4

    .line 26
    aget-object v5, v2, v4

    aget v6, v1, v4

    invoke-virtual {v5, v6}, Lcom/github/ybq/android/spinkit/c/c$a;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/b/f;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    nop

    :array_0
    .array-data 4
        0xc8
        0x12c
        0x190
        0x64
        0xc8
        0x12c
        0x0
        0x64
        0xc8
    .end array-data
.end method
