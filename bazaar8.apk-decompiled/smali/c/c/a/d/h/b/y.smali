.class public abstract Lc/c/a/d/h/b/y;
.super Lc/c/a/d/h/b/w;
.source "SpriteContainer.java"


# instance fields
.field public E:[Lc/c/a/d/h/b/w;

.field public F:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/h/b/w;-><init>()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/h/b/y;->t()[Lc/c/a/d/h/b/w;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/d/h/b/y;->E:[Lc/c/a/d/h/b/w;

    .line 3
    invoke-virtual {p0}, Lc/c/a/d/h/b/y;->s()V

    .line 4
    iget-object v0, p0, Lc/c/a/d/h/b/y;->E:[Lc/c/a/d/h/b/w;

    invoke-virtual {p0, v0}, Lc/c/a/d/h/b/y;->a([Lc/c/a/d/h/b/w;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/d/h/b/y;->F:I

    return v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public varargs a([Lc/c/a/d/h/b/w;)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iput p1, p0, Lc/c/a/d/h/b/y;->F:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lc/c/a/d/h/b/y;->r()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lc/c/a/d/h/b/y;->h(I)Lc/c/a/d/h/b/w;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc/c/a/d/h/b/w;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 5

    .line 4
    iget-object v0, p0, Lc/c/a/d/h/b/y;->E:[Lc/c/a/d/h/b/w;

    if-eqz v0, :cond_0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 7
    invoke-virtual {v3, p1}, Lc/c/a/d/h/b/w;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/h/b/w;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/y;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public h(I)Lc/c/a/d/h/b/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/h/b/y;->E:[Lc/c/a/d/h/b/w;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/h/b/y;->E:[Lc/c/a/d/h/b/w;

    invoke-static {v0}, Lc/c/a/d/h/b/a;->a([Lc/c/a/d/h/b/w;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lc/c/a/d/h/b/w;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/h/b/w;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lc/c/a/d/h/b/y;->E:[Lc/c/a/d/h/b/w;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p()Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/h/b/y;->E:[Lc/c/a/d/h/b/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/d/h/b/y;->E:[Lc/c/a/d/h/b/w;

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/d/h/b/w;->start()V

    .line 2
    iget-object v0, p0, Lc/c/a/d/h/b/y;->E:[Lc/c/a/d/h/b/w;

    invoke-static {v0}, Lc/c/a/d/h/b/a;->b([Lc/c/a/d/h/b/w;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/d/h/b/w;->stop()V

    .line 2
    iget-object v0, p0, Lc/c/a/d/h/b/y;->E:[Lc/c/a/d/h/b/w;

    invoke-static {v0}, Lc/c/a/d/h/b/a;->c([Lc/c/a/d/h/b/w;)V

    return-void
.end method

.method public abstract t()[Lc/c/a/d/h/b/w;
.end method
