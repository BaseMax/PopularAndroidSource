.class public Lc/b/a/c/d/e/c;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Lc/b/a/c/d/e/g$b;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/d/e/c$a;
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/d/e/c$a;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/b/a/b/a;Lc/b/a/c/i;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/b/a;",
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/c/d/e/c$a;

    new-instance v8, Lc/b/a/c/d/e/g;

    .line 2
    invoke-static {p1}, Lc/b/a/e;->b(Landroid/content/Context;)Lc/b/a/e;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lc/b/a/c/d/e/g;-><init>(Lc/b/a/e;Lc/b/a/b/a;IILc/b/a/c/i;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lc/b/a/c/d/e/c$a;-><init>(Lc/b/a/c/d/e/g;)V

    .line 3
    invoke-direct {p0, v0}, Lc/b/a/c/d/e/c;-><init>(Lc/b/a/c/d/e/c$a;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/d/e/c$a;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/b/a/c/d/e/c;->e:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lc/b/a/c/d/e/c;->g:I

    .line 7
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/b/a/c/d/e/c$a;

    iput-object p1, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->b()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->stop()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->g()I

    move-result v0

    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 7
    iget v0, p0, Lc/b/a/c/d/e/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/b/a/c/d/e/c;->f:I

    .line 8
    :cond_1
    iget v0, p0, Lc/b/a/c/d/e/c;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lc/b/a/c/d/e/c;->f:I

    if-lt v1, v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->stop()V

    :cond_2
    return-void
.end method

.method public a(Lc/b/a/c/i;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/i<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0, p1, p2}, Lc/b/a/c/d/e/g;->a(Lc/b/a/c/i;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0}, Lc/b/a/c/d/e/g;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/b/a/c/d/e/c;->j:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/c/d/e/c;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/b/a/c/d/e/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lc/b/a/c/d/e/c;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    .line 3
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->d()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/b/a/c/d/e/c;->h:Z

    .line 5
    :cond_1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0}, Lc/b/a/c/d/e/g;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->d()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->h()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0}, Lc/b/a/c/d/e/g;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0}, Lc/b/a/c/d/e/g;->f()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0}, Lc/b/a/c/d/e/g;->d()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0}, Lc/b/a/c/d/e/g;->i()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0}, Lc/b/a/c/d/e/g;->k()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final h()Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc/b/a/c/d/e/c;->i:Landroid/graphics/Paint;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/c/d/e/c;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0}, Lc/b/a/c/d/e/g;->j()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/c/d/e/c;->b:Z

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/c/d/e/c;->d:Z

    .line 2
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0}, Lc/b/a/c/d/e/g;->a()V

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/b/a/c/d/e/c;->f:I

    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/b/a/c/d/e/c;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lc/b/a/i/i;->a(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0}, Lc/b/a/c/d/e/g;->f()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lc/b/a/c/d/e/c;->b:Z

    if-nez v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lc/b/a/c/d/e/c;->b:Z

    .line 6
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0, p0}, Lc/b/a/c/d/e/g;->a(Lc/b/a/c/d/e/g$b;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/b/a/c/d/e/c;->b:Z

    .line 2
    iget-object v0, p0, Lc/b/a/c/d/e/c;->a:Lc/b/a/c/d/e/c$a;

    iget-object v0, v0, Lc/b/a/c/d/e/c$a;->a:Lc/b/a/c/d/e/g;

    invoke-virtual {v0, p0}, Lc/b/a/c/d/e/g;->b(Lc/b/a/c/d/e/g$b;)V

    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lc/b/a/c/d/e/c;->h:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->h()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->h()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/b/a/c/d/e/c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lc/b/a/i/i;->a(ZLjava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lc/b/a/c/d/e/c;->e:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->m()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lc/b/a/c/d/e/c;->c:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->l()V

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/c/d/e/c;->c:Z

    .line 2
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->k()V

    .line 3
    iget-boolean v0, p0, Lc/b/a/c/d/e/c;->e:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->l()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/b/a/c/d/e/c;->c:Z

    .line 2
    invoke-virtual {p0}, Lc/b/a/c/d/e/c;->m()V

    return-void
.end method
