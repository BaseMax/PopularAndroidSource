.class public Lcom/farsitel/bazaar/widget/TouchImageView$g;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/widget/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/widget/TouchImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/farsitel/bazaar/widget/TouchImageView;Lc/c/a/o/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/widget/TouchImageView$g;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;DFFZ)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->j(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->j(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$e;

    move-result-object p1

    invoke-interface {p1}, Lcom/farsitel/bazaar/widget/TouchImageView$e;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    sget-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->ZOOM:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    sget-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->q(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->q(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->s(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v1

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->s(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result p1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->q(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->r(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->r(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v5, p1

    if-eqz v2, :cond_2

    .line 8
    new-instance p1, Lcom/farsitel/bazaar/widget/TouchImageView$b;

    iget-object v4, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v4}, Lcom/farsitel/bazaar/widget/TouchImageView;->c(Lcom/farsitel/bazaar/widget/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->e(Lcom/farsitel/bazaar/widget/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    const/4 v8, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/farsitel/bazaar/widget/TouchImageView$b;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;FFFZ)V

    .line 9
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$g;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
