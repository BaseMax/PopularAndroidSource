.class public Lc/c/a/d/h/b/z;
.super Lc/c/a/d/h/b/y;
.source "ThreeBounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/d/h/b/z$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/d/h/b/y;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lc/c/a/d/h/b/w;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/h/b/y;->a([Lc/c/a/d/h/b/w;)V

    const/4 v0, 0x1

    .line 2
    aget-object v0, p1, v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lc/c/a/d/h/b/w;->a(I)Lc/c/a/d/h/b/w;

    const/4 v0, 0x2

    .line 3
    aget-object p1, p1, v0

    const/16 v0, 0x140

    invoke-virtual {p1, v0}, Lc/c/a/d/h/b/w;->a(I)Lc/c/a/d/h/b/w;

    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/h/b/y;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/w;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v1, v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lc/c/a/d/h/b/y;->r()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int v4, v4, v3

    div-int/lit8 v4, v4, 0x3

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 8
    invoke-virtual {p0, v3}, Lc/c/a/d/h/b/y;->h(I)Lc/c/a/d/h/b/w;

    move-result-object v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    invoke-virtual {v5, v4, v1, v6, v2}, Lc/c/a/d/h/b/w;->a(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t()[Lc/c/a/d/h/b/w;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lc/c/a/d/h/b/w;

    new-instance v1, Lc/c/a/d/h/b/z$a;

    invoke-direct {v1, p0}, Lc/c/a/d/h/b/z$a;-><init>(Lc/c/a/d/h/b/z;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lc/c/a/d/h/b/z$a;

    invoke-direct {v1, p0}, Lc/c/a/d/h/b/z$a;-><init>(Lc/c/a/d/h/b/z;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lc/c/a/d/h/b/z$a;

    invoke-direct {v1, p0}, Lc/c/a/d/h/b/z$a;-><init>(Lc/c/a/d/h/b/z;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
