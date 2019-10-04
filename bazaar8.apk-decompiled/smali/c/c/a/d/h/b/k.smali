.class public abstract Lc/c/a/d/h/b/k;
.super Lc/c/a/d/h/b/w;
.source "ShapeSprite.java"


# instance fields
.field public E:Landroid/graphics/Paint;

.field public F:I

.field public G:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/c/a/d/h/b/w;-><init>()V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lc/c/a/d/h/b/k;->b(I)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc/c/a/d/h/b/k;->E:Landroid/graphics/Paint;

    .line 4
    iget-object v0, p0, Lc/c/a/d/h/b/k;->E:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lc/c/a/d/h/b/k;->E:Landroid/graphics/Paint;

    iget v1, p0, Lc/c/a/d/h/b/k;->F:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/k;->G:I

    return v0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/d/h/b/k;->E:Landroid/graphics/Paint;

    iget v1, p0, Lc/c/a/d/h/b/k;->F:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lc/c/a/d/h/b/k;->E:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lc/c/a/d/h/b/k;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/d/h/b/k;->G:I

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/h/b/k;->r()V

    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->getAlpha()I

    move-result v0

    shr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    .line 2
    iget v1, p0, Lc/c/a/d/h/b/k;->G:I

    ushr-int/lit8 v2, v1, 0x18

    mul-int v2, v2, v0

    shr-int/lit8 v0, v2, 0x8

    shl-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 3
    iput v0, p0, Lc/c/a/d/h/b/k;->F:I

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/h/b/w;->setAlpha(I)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/h/b/k;->r()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/h/b/k;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
