.class final Lcab/snapp/snappuikit/SnappFloatingActionButton$a;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappuikit/SnappFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;Landroid/graphics/drawable/shapes/Shape;)V
    .locals 2

    .line 1450
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 1451
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1452
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget p2, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    iget v1, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->b:I

    .line 1453
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d:I

    iget v0, p1, Lcab/snapp/snappuikit/SnappFloatingActionButton;->f:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, p2

    :cond_1
    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->c:I

    .line 1455
    invoke-static {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->b(Lcab/snapp/snappuikit/SnappFloatingActionButton;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1457
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->b:I

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->b:I

    .line 1458
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->c:I

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->c(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->c:I

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;Landroid/graphics/drawable/shapes/Shape;B)V
    .locals 0

    .line 1440
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;-><init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;Landroid/graphics/drawable/shapes/Shape;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1465
    iget v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->b:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->c:I

    iget-object v2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {v2}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->d(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I

    move-result v2

    iget v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->b:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 1466
    invoke-static {v3}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->e(Lcab/snapp/snappuikit/SnappFloatingActionButton;)I

    move-result v3

    iget v4, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->c:I

    sub-int/2addr v3, v4

    .line 1465
    invoke-virtual {p0, v0, v1, v2, v3}, Lcab/snapp/snappuikit/SnappFloatingActionButton$a;->setBounds(IIII)V

    .line 1467
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
