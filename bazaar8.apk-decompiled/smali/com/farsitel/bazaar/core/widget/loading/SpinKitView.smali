.class public Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;
.super Landroid/widget/ProgressBar;
.source "SpinKitView.java"


# instance fields
.field public a:I

.field public b:Lc/c/a/d/h/b/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    if-eqz p2, :cond_0

    .line 5
    sget-object p3, Lc/c/a/d/h;->SpinKitView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    sget p3, Lc/c/a/d/h;->SpinKitView_loadingColor:I

    sget p4, Lc/c/a/d/b;->c_text_body1:I

    .line 7
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 8
    invoke-static {p1, p3}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->a:I

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->a()V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/d/h/b/z;

    invoke-direct {v0}, Lc/c/a/d/h/b/z;-><init>()V

    .line 2
    iget v1, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->a:I

    invoke-virtual {v0, v1}, Lc/c/a/d/h/b/y;->b(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->setIndeterminateDrawable(Lc/c/a/d/h/b/w;)V

    return-void
.end method

.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->getIndeterminateDrawable()Lc/c/a/d/h/b/w;

    move-result-object v0

    return-object v0
.end method

.method public getIndeterminateDrawable()Lc/c/a/d/h/b/w;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->b:Lc/c/a/d/h/b/w;

    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onScreenStateChanged(I)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->b:Lc/c/a/d/h/b/w;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lc/c/a/d/h/b/w;->stop()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->b:Lc/c/a/d/h/b/w;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->b:Lc/c/a/d/h/b/w;

    invoke-virtual {p1}, Lc/c/a/d/h/b/w;->start()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->a:I

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->b:Lc/c/a/d/h/b/w;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lc/c/a/d/h/b/w;->b(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lc/c/a/d/h/b/w;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/c/a/d/h/b/w;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->setIndeterminateDrawable(Lc/c/a/d/h/b/w;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "this d must be instanceof Sprite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndeterminateDrawable(Lc/c/a/d/h/b/w;)V
    .locals 3

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iput-object p1, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->b:Lc/c/a/d/h/b/w;

    .line 6
    iget-object p1, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->b:Lc/c/a/d/h/b/w;

    invoke-virtual {p1}, Lc/c/a/d/h/b/w;->a()I

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->b:Lc/c/a/d/h/b/w;

    iget v0, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->a:I

    invoke-virtual {p1, v0}, Lc/c/a/d/h/b/w;->b(I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;->b:Lc/c/a/d/h/b/w;

    invoke-virtual {p1}, Lc/c/a/d/h/b/w;->start()V

    :cond_1
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    instance-of v0, p1, Lc/c/a/d/h/b/w;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lc/c/a/d/h/b/w;

    invoke-virtual {p1}, Lc/c/a/d/h/b/w;->stop()V

    :cond_0
    return-void
.end method
