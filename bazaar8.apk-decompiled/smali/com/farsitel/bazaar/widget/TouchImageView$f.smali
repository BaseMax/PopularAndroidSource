.class public Lcom/farsitel/bazaar/widget/TouchImageView$f;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field public a:Landroid/graphics/PointF;

.field public final synthetic b:Lcom/farsitel/bazaar/widget/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/widget/TouchImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->a:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/farsitel/bazaar/widget/TouchImageView;Lc/c/a/o/d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/widget/TouchImageView$f;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    sget-object p2, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {p1, p2}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->b(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->p(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->p(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/widget/TouchImageView$State;->DRAG:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->p(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/widget/TouchImageView$State;->FLING:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    if-ne v1, v2, :cond_6

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->p(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/widget/TouchImageView$State;->DRAG:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    if-ne v1, v2, :cond_6

    .line 9
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->a:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    .line 10
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v2

    .line 11
    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v2}, Lcom/farsitel/bazaar/widget/TouchImageView;->c(Lcom/farsitel/bazaar/widget/TouchImageView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v6}, Lcom/farsitel/bazaar/widget/TouchImageView;->d(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v6

    invoke-static {v2, v1, v5, v6}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;FFF)F

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v2}, Lcom/farsitel/bazaar/widget/TouchImageView;->e(Lcom/farsitel/bazaar/widget/TouchImageView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v6}, Lcom/farsitel/bazaar/widget/TouchImageView;->f(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;FFF)F

    move-result v2

    .line 13
    iget-object v4, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v4}, Lcom/farsitel/bazaar/widget/TouchImageView;->g(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->h(Lcom/farsitel/bazaar/widget/TouchImageView;)V

    .line 15
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->a:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->a:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 18
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->o(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->o(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a()V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$State;->DRAG:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    .line 21
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->g(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 22
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->i(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->i(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->j(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$e;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 25
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$f;->b:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->j(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$e;

    move-result-object p1

    invoke-interface {p1}, Lcom/farsitel/bazaar/widget/TouchImageView$e;->a()V

    :cond_8
    return v3
.end method
