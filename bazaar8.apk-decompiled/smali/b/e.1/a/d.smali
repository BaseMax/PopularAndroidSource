.class public Lb/e/a/d;
.super Ljava/lang/Object;
.source "CardViewApi21Impl.java"

# interfaces
.implements Lb/e/a/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/e/a/g;)F
    .locals 0

    .line 8
    invoke-interface {p1}, Lb/e/a/g;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lb/e/a/g;F)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lb/e/a/d;->i(Lb/e/a/g;)Lb/e/a/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/e/a/i;->a(F)V

    return-void
.end method

.method public a(Lb/e/a/g;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    .line 1
    new-instance p2, Lb/e/a/i;

    invoke-direct {p2, p3, p4}, Lb/e/a/i;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 2
    invoke-interface {p1, p2}, Lb/e/a/g;->a(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-interface {p1}, Lb/e/a/g;->d()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 5
    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    .line 6
    invoke-virtual {p0, p1, p6}, Lb/e/a/d;->c(Lb/e/a/g;F)V

    return-void
.end method

.method public a(Lb/e/a/g;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lb/e/a/d;->i(Lb/e/a/g;)Lb/e/a/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/e/a/i;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public b(Lb/e/a/g;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/e/a/d;->i(Lb/e/a/g;)Lb/e/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lb/e/a/i;->c()F

    move-result p1

    return p1
.end method

.method public b(Lb/e/a/g;F)V
    .locals 0

    .line 2
    invoke-interface {p1}, Lb/e/a/g;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public c(Lb/e/a/g;)V
    .locals 1

    .line 5
    invoke-virtual {p0, p1}, Lb/e/a/d;->d(Lb/e/a/g;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lb/e/a/d;->c(Lb/e/a/g;F)V

    return-void
.end method

.method public c(Lb/e/a/g;F)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lb/e/a/d;->i(Lb/e/a/g;)Lb/e/a/i;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lb/e/a/g;->b()Z

    move-result v1

    invoke-interface {p1}, Lb/e/a/g;->a()Z

    move-result v2

    .line 3
    invoke-virtual {v0, p2, v1, v2}, Lb/e/a/i;->a(FZZ)V

    .line 4
    invoke-virtual {p0, p1}, Lb/e/a/d;->j(Lb/e/a/g;)V

    return-void
.end method

.method public d(Lb/e/a/g;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/e/a/d;->i(Lb/e/a/g;)Lb/e/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lb/e/a/i;->b()F

    move-result p1

    return p1
.end method

.method public e(Lb/e/a/g;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/e/a/d;->i(Lb/e/a/g;)Lb/e/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lb/e/a/i;->a()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public f(Lb/e/a/g;)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lb/e/a/d;->b(Lb/e/a/g;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public g(Lb/e/a/g;)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lb/e/a/d;->b(Lb/e/a/g;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public h(Lb/e/a/g;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lb/e/a/d;->d(Lb/e/a/g;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lb/e/a/d;->c(Lb/e/a/g;F)V

    return-void
.end method

.method public final i(Lb/e/a/g;)Lb/e/a/i;
    .locals 0

    .line 1
    invoke-interface {p1}, Lb/e/a/g;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lb/e/a/i;

    return-object p1
.end method

.method public j(Lb/e/a/g;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lb/e/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0, v0, v0, v0}, Lb/e/a/g;->a(IIII)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lb/e/a/d;->d(Lb/e/a/g;)F

    move-result v0

    .line 4
    invoke-virtual {p0, p1}, Lb/e/a/d;->b(Lb/e/a/g;)F

    move-result v1

    .line 5
    invoke-interface {p1}, Lb/e/a/g;->a()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lb/e/a/j;->a(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 7
    invoke-interface {p1}, Lb/e/a/g;->a()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lb/e/a/j;->b(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 9
    invoke-interface {p1, v2, v0, v2, v0}, Lb/e/a/g;->a(IIII)V

    return-void
.end method
