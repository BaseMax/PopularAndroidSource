.class public abstract Lc/c/a/d/h/b/w;
.super Landroid/graphics/drawable/Drawable;
.source "Sprite.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field public static final a:Landroid/graphics/Rect;

.field public static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/d/h/b/w;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:Landroid/graphics/Rect;

.field public C:Landroid/graphics/Camera;

.field public D:Landroid/graphics/Matrix;

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:F

.field public y:F

.field public z:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lc/c/a/d/h/b/w;->a:Landroid/graphics/Rect;

    .line 2
    new-instance v0, Lc/c/a/d/h/b/n;

    const-string v1, "rotateX"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->b:Landroid/util/Property;

    .line 3
    new-instance v0, Lc/c/a/d/h/b/o;

    const-string v1, "rotate"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->c:Landroid/util/Property;

    .line 4
    new-instance v0, Lc/c/a/d/h/b/p;

    const-string v1, "rotateY"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->d:Landroid/util/Property;

    .line 5
    new-instance v0, Lc/c/a/d/h/b/q;

    const-string v1, "translateX"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->e:Landroid/util/Property;

    .line 6
    new-instance v0, Lc/c/a/d/h/b/r;

    const-string v1, "translateY"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->f:Landroid/util/Property;

    .line 7
    new-instance v0, Lc/c/a/d/h/b/s;

    const-string v1, "translateXPercentage"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->g:Landroid/util/Property;

    .line 8
    new-instance v0, Lc/c/a/d/h/b/t;

    const-string v1, "translateYPercentage"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->h:Landroid/util/Property;

    .line 9
    new-instance v0, Lc/c/a/d/h/b/u;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->i:Landroid/util/Property;

    .line 10
    new-instance v0, Lc/c/a/d/h/b/v;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->j:Landroid/util/Property;

    .line 11
    new-instance v0, Lc/c/a/d/h/b/l;

    const-string v1, "scale"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->k:Landroid/util/Property;

    .line 12
    new-instance v0, Lc/c/a/d/h/b/m;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lc/c/a/d/h/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/d/h/b/w;->l:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lc/c/a/d/h/b/w;->m:F

    .line 3
    iput v0, p0, Lc/c/a/d/h/b/w;->n:F

    .line 4
    iput v0, p0, Lc/c/a/d/h/b/w;->o:F

    const/16 v0, 0xff

    .line 5
    iput v0, p0, Lc/c/a/d/h/b/w;->A:I

    .line 6
    sget-object v0, Lc/c/a/d/h/b/w;->a:Landroid/graphics/Rect;

    iput-object v0, p0, Lc/c/a/d/h/b/w;->B:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lc/c/a/d/h/b/w;->C:Landroid/graphics/Camera;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc/c/a/d/h/b/w;->D:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 11
    div-int/lit8 v0, v0, 0x2

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, v1, v0

    sub-int v4, p1, v0

    add-int/2addr v1, v0

    add-int/2addr p1, v0

    invoke-direct {v2, v3, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public a(I)Lc/c/a/d/h/b/w;
    .locals 0

    .line 2
    iput p1, p0, Lc/c/a/d/h/b/w;->r:I

    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/d/h/b/w;->p:F

    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lc/c/a/d/h/b/w;->B:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->b()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/w;->a(F)V

    .line 5
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->b()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/w;->b(F)V

    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;)V
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/c/a/d/h/b/w;->B:Landroid/graphics/Rect;

    return-object v0
.end method

.method public b(F)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/d/h/b/w;->q:F

    return-void
.end method

.method public abstract b(I)V
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 3

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lc/c/a/d/h/b/w;->a(IIII)V

    return-void
.end method

.method public c()F
    .locals 1

    .line 5
    iget v0, p0, Lc/c/a/d/h/b/w;->p:F

    return v0
.end method

.method public c(F)V
    .locals 0

    .line 2
    iput p1, p0, Lc/c/a/d/h/b/w;->m:F

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/w;->d(F)V

    .line 4
    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/w;->e(F)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/d/h/b/w;->w:I

    return-void
.end method

.method public d()F
    .locals 1

    .line 3
    iget v0, p0, Lc/c/a/d/h/b/w;->q:F

    return v0
.end method

.method public d(F)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/d/h/b/w;->n:F

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lc/c/a/d/h/b/w;->s:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->k()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->l()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->m()I

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->n()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->i()F

    move-result v0

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->j()F

    move-result v1

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->c()F

    move-result v2

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->d()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 7
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->c()F

    move-result v1

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->d()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->f()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->g()I

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :cond_2
    iget-object v0, p0, Lc/c/a/d/h/b/w;->C:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 10
    iget-object v0, p0, Lc/c/a/d/h/b/w;->C:Landroid/graphics/Camera;

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 11
    iget-object v0, p0, Lc/c/a/d/h/b/w;->C:Landroid/graphics/Camera;

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 12
    iget-object v0, p0, Lc/c/a/d/h/b/w;->C:Landroid/graphics/Camera;

    iget-object v1, p0, Lc/c/a/d/h/b/w;->D:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 13
    iget-object v0, p0, Lc/c/a/d/h/b/w;->D:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->c()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->d()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 14
    iget-object v0, p0, Lc/c/a/d/h/b/w;->D:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->c()F

    move-result v1

    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->d()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 15
    iget-object v0, p0, Lc/c/a/d/h/b/w;->C:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 16
    iget-object v0, p0, Lc/c/a/d/h/b/w;->D:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 17
    :cond_3
    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/w;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/w;->w:I

    return v0
.end method

.method public e(F)V
    .locals 0

    .line 2
    iput p1, p0, Lc/c/a/d/h/b/w;->o:F

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 3
    iput p1, p0, Lc/c/a/d/h/b/w;->t:I

    return-void
.end method

.method public f()I
    .locals 1

    .line 3
    iget v0, p0, Lc/c/a/d/h/b/w;->s:I

    return v0
.end method

.method public f(F)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/d/h/b/w;->x:F

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lc/c/a/d/h/b/w;->u:I

    return-void
.end method

.method public g()I
    .locals 1

    .line 3
    iget v0, p0, Lc/c/a/d/h/b/w;->t:I

    return v0
.end method

.method public g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/d/h/b/w;->y:F

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 2
    iput p1, p0, Lc/c/a/d/h/b/w;->v:I

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/w;->A:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/w;->m:F

    return v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/w;->n:F

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lc/c/a/d/h/b/a;->a(Landroid/animation/ValueAnimator;)Z

    move-result v0

    return v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/w;->o:F

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/w;->u:I

    return v0
.end method

.method public l()F
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/w;->x:F

    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/w;->v:I

    return v0
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/w;->y:F

    return v0
.end method

.method public o()Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->p()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    iget v1, p0, Lc/c/a/d/h/b/w;->r:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 6
    :cond_1
    iget-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/w;->b(Landroid/graphics/Rect;)V

    return-void
.end method

.method public abstract p()Landroid/animation/ValueAnimator;
.end method

.method public q()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lc/c/a/d/h/b/w;->m:F

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/c/a/d/h/b/w;->s:I

    .line 3
    iput v0, p0, Lc/c/a/d/h/b/w;->t:I

    .line 4
    iput v0, p0, Lc/c/a/d/h/b/w;->u:I

    .line 5
    iput v0, p0, Lc/c/a/d/h/b/w;->v:I

    .line 6
    iput v0, p0, Lc/c/a/d/h/b/w;->w:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lc/c/a/d/h/b/w;->x:F

    .line 8
    iput v0, p0, Lc/c/a/d/h/b/w;->y:F

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/d/h/b/w;->A:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lc/c/a/d/h/b/a;->b(Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->o()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {v0}, Lc/c/a/d/h/b/a;->a(Landroid/animation/Animator;)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lc/c/a/d/h/b/a;->b(Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3
    iget-object v0, p0, Lc/c/a/d/h/b/w;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 4
    invoke-virtual {p0}, Lc/c/a/d/h/b/w;->q()V

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
