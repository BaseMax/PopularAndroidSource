.class public Lcom/farsitel/bazaar/widget/TouchImageView$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/widget/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/widget/TouchImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/farsitel/bazaar/widget/TouchImageView;Lc/c/a/o/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/widget/TouchImageView$d;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->n(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->n(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->p(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$State;

    move-result-object v0

    sget-object v2, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    if-ne v0, v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->q(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->r(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->s(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->r(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v0

    :goto_0
    move v3, v0

    .line 6
    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$b;

    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/widget/TouchImageView$b;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;FFFZ)V

    .line 7
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->n(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->n(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->o(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->o(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    new-instance v1, Lcom/farsitel/bazaar/widget/TouchImageView$c;

    float-to-int v2, p3

    float-to-int v3, p4

    invoke-direct {v1, v0, v2, v3}, Lcom/farsitel/bazaar/widget/TouchImageView$c;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;II)V

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$c;)Lcom/farsitel/bazaar/widget/TouchImageView$c;

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->o(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Ljava/lang/Runnable;)V

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performLongClick()Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->n(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->n(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$d;->a:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    move-result p1

    return p1
.end method
