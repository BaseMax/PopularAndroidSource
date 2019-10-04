.class public Lc/e/a/c/i/c;
.super Landroid/widget/FrameLayout;
.source "CircularRevealFrameLayout.java"

# interfaces
.implements Lc/e/a/c/i/f;


# instance fields
.field public final a:Lc/e/a/c/i/d;


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/c;->a:Lc/e/a/c/i/d;

    invoke-virtual {v0}, Lc/e/a/c/i/d;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/c;->a:Lc/e/a/c/i/d;

    invoke-virtual {v0}, Lc/e/a/c/i/d;->b()V

    const/4 v0, 0x0

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/c;->a:Lc/e/a/c/i/d;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lc/e/a/c/i/d;->a(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/c;->a:Lc/e/a/c/i/d;

    invoke-virtual {v0}, Lc/e/a/c/i/d;->c()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    throw v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/c;->a:Lc/e/a/c/i/d;

    invoke-virtual {v0}, Lc/e/a/c/i/d;->d()I

    const/4 v0, 0x0

    throw v0
.end method

.method public getRevealInfo()Lc/e/a/c/i/f$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/c;->a:Lc/e/a/c/i/d;

    invoke-virtual {v0}, Lc/e/a/c/i/d;->e()Lc/e/a/c/i/f$d;

    const/4 v0, 0x0

    throw v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/c;->a:Lc/e/a/c/i/d;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->isOpaque()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lc/e/a/c/i/d;->f()Z

    const/4 v0, 0x0

    throw v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/c;->a:Lc/e/a/c/i/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/i/d;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/c;->a:Lc/e/a/c/i/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/i/d;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setRevealInfo(Lc/e/a/c/i/f$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/i/c;->a:Lc/e/a/c/i/d;

    invoke-virtual {v0, p1}, Lc/e/a/c/i/d;->a(Lc/e/a/c/i/f$d;)V

    const/4 p1, 0x0

    throw p1
.end method
