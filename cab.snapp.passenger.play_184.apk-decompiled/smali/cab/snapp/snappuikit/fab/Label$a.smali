.class final Lcab/snapp/snappuikit/fab/Label$a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappuikit/fab/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/fab/Label;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Lcab/snapp/snappuikit/fab/Label;)V
    .locals 4

    .line 395
    iput-object p1, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 391
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcab/snapp/snappuikit/fab/Label$a;->b:Landroid/graphics/Paint;

    .line 392
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcab/snapp/snappuikit/fab/Label$a;->c:Landroid/graphics/Paint;

    .line 1401
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappuikit/fab/Label;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1402
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label$a;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1403
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label$a;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v0}, Lcab/snapp/snappuikit/fab/Label;->b(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1405
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label$a;->c:Landroid/graphics/Paint;

    invoke-static {}, Lcab/snapp/snappuikit/fab/Label;->a()Landroid/graphics/Xfermode;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1407
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/fab/Label;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1409
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label$a;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v0}, Lcab/snapp/snappuikit/fab/Label;->c(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v1}, Lcab/snapp/snappuikit/fab/Label;->d(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v2}, Lcab/snapp/snappuikit/fab/Label;->e(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v3}, Lcab/snapp/snappuikit/fab/Label;->f(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcab/snapp/snappuikit/fab/Label;B)V
    .locals 0

    .line 389
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/fab/Label$a;-><init>(Lcab/snapp/snappuikit/fab/Label;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 416
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    .line 417
    invoke-static {v1}, Lcab/snapp/snappuikit/fab/Label;->c(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v1

    iget-object v2, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v2}, Lcab/snapp/snappuikit/fab/Label;->d(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    .line 418
    invoke-static {v2}, Lcab/snapp/snappuikit/fab/Label;->c(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v2

    iget-object v3, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v3}, Lcab/snapp/snappuikit/fab/Label;->e(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    .line 419
    invoke-static {v3}, Lcab/snapp/snappuikit/fab/Label;->g(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    .line 420
    invoke-static {v4}, Lcab/snapp/snappuikit/fab/Label;->h(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 423
    iget-object v1, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v1}, Lcab/snapp/snappuikit/fab/Label;->i(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v2}, Lcab/snapp/snappuikit/fab/Label;->i(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcab/snapp/snappuikit/fab/Label$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 424
    iget-object v1, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v1}, Lcab/snapp/snappuikit/fab/Label;->i(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcab/snapp/snappuikit/fab/Label$a;->a:Lcab/snapp/snappuikit/fab/Label;

    invoke-static {v2}, Lcab/snapp/snappuikit/fab/Label;->i(Lcab/snapp/snappuikit/fab/Label;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcab/snapp/snappuikit/fab/Label$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
