.class public Lcom/farsitel/bazaar/widget/TouchImageView$c;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/farsitel/bazaar/widget/TouchImageView$a;

.field public b:I

.field public c:I

.field public final synthetic d:Lcom/farsitel/bazaar/widget/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/widget/TouchImageView;II)V
    .locals 11

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->d:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->FLING:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$a;

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->l(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/farsitel/bazaar/widget/TouchImageView$a;-><init>(Lcom/farsitel/bazaar/widget/TouchImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a:Lcom/farsitel/bazaar/widget/TouchImageView$a;

    .line 4
    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->g(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->m(Lcom/farsitel/bazaar/widget/TouchImageView;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 5
    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->m(Lcom/farsitel/bazaar/widget/TouchImageView;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-int v0, v0

    .line 6
    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->m(Lcom/farsitel/bazaar/widget/TouchImageView;)[F

    move-result-object v1

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v10, v1

    .line 7
    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->d(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->c(Lcom/farsitel/bazaar/widget/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 8
    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->c(Lcom/farsitel/bazaar/widget/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->d(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    move v6, v1

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v6, v0

    move v7, v6

    .line 9
    :goto_0
    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->f(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->e(Lcom/farsitel/bazaar/widget/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 10
    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->e(Lcom/farsitel/bazaar/widget/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lcom/farsitel/bazaar/widget/TouchImageView;->f(Lcom/farsitel/bazaar/widget/TouchImageView;)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    move v8, v1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    move v8, v10

    move v9, v8

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a:Lcom/farsitel/bazaar/widget/TouchImageView$a;

    move v2, v0

    move v3, v10

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/farsitel/bazaar/widget/TouchImageView$a;->a(IIIIIIII)V

    .line 12
    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->b:I

    .line 13
    iput v10, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a:Lcom/farsitel/bazaar/widget/TouchImageView$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->d:Lcom/farsitel/bazaar/widget/TouchImageView;

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Lcom/farsitel/bazaar/widget/TouchImageView$State;)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a:Lcom/farsitel/bazaar/widget/TouchImageView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/TouchImageView$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->d:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->j(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->d:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->j(Lcom/farsitel/bazaar/widget/TouchImageView;)Lcom/farsitel/bazaar/widget/TouchImageView$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/farsitel/bazaar/widget/TouchImageView$e;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a:Lcom/farsitel/bazaar/widget/TouchImageView$a;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/widget/TouchImageView$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a:Lcom/farsitel/bazaar/widget/TouchImageView$a;

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a:Lcom/farsitel/bazaar/widget/TouchImageView$a;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/widget/TouchImageView$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a:Lcom/farsitel/bazaar/widget/TouchImageView$a;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/widget/TouchImageView$a;->b()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->a:Lcom/farsitel/bazaar/widget/TouchImageView$a;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/widget/TouchImageView$a;->c()I

    move-result v1

    .line 8
    iget v2, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->b:I

    sub-int v2, v0, v2

    .line 9
    iget v3, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->c:I

    sub-int v3, v1, v3

    .line 10
    iput v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->b:I

    .line 11
    iput v1, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->c:I

    .line 12
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->d:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->g(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->d:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->h(Lcom/farsitel/bazaar/widget/TouchImageView;)V

    .line 14
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->d:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0}, Lcom/farsitel/bazaar/widget/TouchImageView;->g(Lcom/farsitel/bazaar/widget/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 15
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/TouchImageView$c;->d:Lcom/farsitel/bazaar/widget/TouchImageView;

    invoke-static {v0, p0}, Lcom/farsitel/bazaar/widget/TouchImageView;->a(Lcom/farsitel/bazaar/widget/TouchImageView;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
