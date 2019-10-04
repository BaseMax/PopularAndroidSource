.class final Landroidx/transition/MatrixUtils$1;
.super Landroid/graphics/Matrix;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/MatrixUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method final oops()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final postConcat(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 183
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postRotate(F)Z
    .locals 0

    .line 165
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postRotate(FFF)Z
    .locals 0

    .line 159
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postScale(FF)Z
    .locals 0

    .line 153
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postScale(FFFF)Z
    .locals 0

    .line 147
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postSkew(FF)Z
    .locals 0

    .line 177
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postSkew(FFFF)Z
    .locals 0

    .line 171
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final postTranslate(FF)Z
    .locals 0

    .line 141
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preConcat(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preRotate(F)Z
    .locals 0

    .line 117
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preRotate(FFF)Z
    .locals 0

    .line 111
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preScale(FF)Z
    .locals 0

    .line 105
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preScale(FFFF)Z
    .locals 0

    .line 99
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preSkew(FF)Z
    .locals 0

    .line 129
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preSkew(FFFF)Z
    .locals 0

    .line 123
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final preTranslate(FF)Z
    .locals 0

    .line 93
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final reset()V
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final set(Landroid/graphics/Matrix;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 0

    .line 87
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final setPolyToPoly([FI[FII)Z
    .locals 0

    .line 196
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 0

    .line 189
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    const/4 p1, 0x0

    return p1
.end method

.method public final setRotate(F)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setRotate(FFF)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setScale(FF)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setScale(FFFF)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setSinCos(FF)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setSinCos(FFFF)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setSkew(FF)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setSkew(FFFF)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setTranslate(FF)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public final setValues([F)V
    .locals 0

    .line 202
    invoke-virtual {p0}, Landroidx/transition/MatrixUtils$1;->oops()V

    return-void
.end method
