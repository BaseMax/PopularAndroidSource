.class public abstract Lcom/github/ybq/android/spinkit/b/g;
.super Lcom/github/ybq/android/spinkit/b/f;
.source "SourceFile"


# instance fields
.field private b:[Lcom/github/ybq/android/spinkit/b/f;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/f;-><init>()V

    .line 19
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/g;->onCreateChild()[Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->b:[Lcom/github/ybq/android/spinkit/b/f;

    .line 1025
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->b:[Lcom/github/ybq/android/spinkit/b/f;

    if-eqz v0, :cond_0

    .line 1026
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1027
    invoke-virtual {v3, p0}, Lcom/github/ybq/android/spinkit/b/f;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->b:[Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/b/g;->onChildCreated([Lcom/github/ybq/android/spinkit/b/f;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->draw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->drawChild(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;)V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->b:[Lcom/github/ybq/android/spinkit/b/f;

    if-eqz v0, :cond_0

    .line 65
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 67
    invoke-virtual {v3, p1}, Lcom/github/ybq/android/spinkit/b/f;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChildAt(I)Lcom/github/ybq/android/spinkit/b/f;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->b:[Lcom/github/ybq/android/spinkit/b/f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object p1, v0, p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->b:[Lcom/github/ybq/android/spinkit/b/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/github/ybq/android/spinkit/b/g;->c:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->b:[Lcom/github/ybq/android/spinkit/b/f;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a/a;->isRunning([Lcom/github/ybq/android/spinkit/b/f;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/github/ybq/android/spinkit/b/f;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/f;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 80
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->b:[Lcom/github/ybq/android/spinkit/b/f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 81
    invoke-virtual {v3, p1}, Lcom/github/ybq/android/spinkit/b/f;->setBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs onChildCreated([Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 0

    return-void
.end method

.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onCreateChild()[Lcom/github/ybq/android/spinkit/b/f;
.end method

.method public setColor(I)V
    .locals 2

    .line 46
    iput p1, p0, Lcom/github/ybq/android/spinkit/b/g;->c:I

    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/b/g;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/b/g;->getChildAt(I)Lcom/github/ybq/android/spinkit/b/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/github/ybq/android/spinkit/b/f;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/github/ybq/android/spinkit/b/f;->start()V

    .line 88
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->b:[Lcom/github/ybq/android/spinkit/b/f;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a/a;->start([Lcom/github/ybq/android/spinkit/b/f;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/github/ybq/android/spinkit/b/f;->stop()V

    .line 94
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/b/g;->b:[Lcom/github/ybq/android/spinkit/b/f;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/a/a;->stop([Lcom/github/ybq/android/spinkit/b/f;)V

    return-void
.end method
