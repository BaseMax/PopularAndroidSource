.class final Lcab/snapp/snappuikit/SnappFloatingActionButton$b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappuikit/SnappFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:F


# direct methods
.method private constructor <init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V
    .locals 4

    .line 1478
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1473
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->b:Landroid/graphics/Paint;

    .line 1474
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->c:Landroid/graphics/Paint;

    .line 2484
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2485
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2486
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2488
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->c:Landroid/graphics/Paint;

    invoke-static {}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b()Landroid/graphics/Xfermode;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2490
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2492
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget v0, v0, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    int-to-float v0, v0

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget v1, v1, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    int-to-float v1, v1

    iget-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget v2, v2, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    int-to-float v2, v2

    iget-object v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iget v3, v3, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2495
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->g(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->d:F

    .line 2497
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b(Lcab/snapp/snappuikit/SnappFloatingActionButton;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->h(Lcab/snapp/snappuikit/SnappFloatingActionButton;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2499
    iget p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->d:F

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->d:F

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;B)V
    .locals 0

    .line 1471
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1506
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->i(Lcab/snapp/snappuikit/SnappFloatingActionButton;)F

    move-result v0

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->j(Lcab/snapp/snappuikit/SnappFloatingActionButton;)F

    move-result v1

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->d:F

    iget-object v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1507
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->i(Lcab/snapp/snappuikit/SnappFloatingActionButton;)F

    move-result v0

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {v1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->j(Lcab/snapp/snappuikit/SnappFloatingActionButton;)F

    move-result v1

    iget v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->d:F

    iget-object v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

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
