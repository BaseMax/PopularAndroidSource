.class public Lc/d/a/a/l;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lc/d/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/a/p;


# direct methods
.method public constructor <init>(Lc/d/a/a/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v0}, Lc/d/a/a/p;->a(Lc/d/a/a/p;)Lc/d/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v0}, Lc/d/a/a/p;->b(Lc/d/a/a/p;)Lc/d/a/a/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v0}, Lc/d/a/a/p;->b(Lc/d/a/a/p;)Lc/d/a/a/j;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/d/a/a/j;->a(FF)V

    .line 4
    :cond_1
    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v0}, Lc/d/a/a/p;->i(Lc/d/a/a/p;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5
    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v0}, Lc/d/a/a/p;->o(Lc/d/a/a/p;)V

    .line 6
    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v0}, Lc/d/a/a/p;->p(Lc/d/a/a/p;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v1}, Lc/d/a/a/p;->q(Lc/d/a/a/p;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v1}, Lc/d/a/a/p;->a(Lc/d/a/a/p;)Lc/d/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lc/d/a/a/c;->b()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v1}, Lc/d/a/a/p;->r(Lc/d/a/a/p;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8
    iget-object v1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v1}, Lc/d/a/a/p;->s(Lc/d/a/a/p;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    .line 9
    invoke-static {v1}, Lc/d/a/a/p;->s(Lc/d/a/a/p;)I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    cmpl-float v1, p1, v3

    if-gez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    .line 10
    invoke-static {v1}, Lc/d/a/a/p;->s(Lc/d/a/a/p;)I

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    if-ne v1, v2, :cond_3

    cmpg-float p1, p1, v4

    if-lez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    .line 11
    invoke-static {p1}, Lc/d/a/a/p;->t(Lc/d/a/a/p;)I

    move-result p1

    if-nez p1, :cond_4

    cmpl-float p1, p2, v3

    if-gez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    .line 12
    invoke-static {p1}, Lc/d/a/a/p;->t(Lc/d/a/a/p;)I

    move-result p1

    if-ne p1, v2, :cond_7

    cmpg-float p1, p2, v4

    if-gtz p1, :cond_7

    :cond_5
    if-eqz v0, :cond_7

    const/4 p1, 0x0

    .line 13
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 14
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(FFF)V
    .locals 2

    .line 20
    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-virtual {v0}, Lc/d/a/a/p;->l()F

    move-result v0

    iget-object v1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v1}, Lc/d/a/a/p;->c(Lc/d/a/a/p;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 21
    :cond_0
    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v0}, Lc/d/a/a/p;->d(Lc/d/a/a/p;)Lc/d/a/a/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v0}, Lc/d/a/a/p;->d(Lc/d/a/a/p;)Lc/d/a/a/h;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lc/d/a/a/h;->a(FFF)V

    .line 23
    :cond_1
    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {v0}, Lc/d/a/a/p;->i(Lc/d/a/a/p;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 24
    iget-object p1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {p1}, Lc/d/a/a/p;->o(Lc/d/a/a/p;)V

    :cond_2
    return-void
.end method

.method public a(FFFF)V
    .locals 2

    .line 15
    iget-object p1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    new-instance p2, Lc/d/a/a/p$b;

    invoke-static {p1}, Lc/d/a/a/p;->p(Lc/d/a/a/p;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lc/d/a/a/p$b;-><init>(Lc/d/a/a/p;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lc/d/a/a/p;->a(Lc/d/a/a/p;Lc/d/a/a/p$b;)Lc/d/a/a/p$b;

    .line 16
    iget-object p1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {p1}, Lc/d/a/a/p;->u(Lc/d/a/a/p;)Lc/d/a/a/p$b;

    move-result-object p1

    iget-object p2, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {p2}, Lc/d/a/a/p;->p(Lc/d/a/a/p;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lc/d/a/a/p;->a(Lc/d/a/a/p;Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    .line 17
    invoke-static {v0}, Lc/d/a/a/p;->p(Lc/d/a/a/p;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/a/p;->b(Lc/d/a/a/p;Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    .line 18
    invoke-virtual {p1, p2, v0, p3, p4}, Lc/d/a/a/p$b;->a(IIII)V

    .line 19
    iget-object p1, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {p1}, Lc/d/a/a/p;->p(Lc/d/a/a/p;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lc/d/a/a/l;->a:Lc/d/a/a/p;

    invoke-static {p2}, Lc/d/a/a/p;->u(Lc/d/a/a/p;)Lc/d/a/a/p$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
