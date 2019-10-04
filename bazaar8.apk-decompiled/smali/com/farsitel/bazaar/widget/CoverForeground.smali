.class public final Lcom/farsitel/bazaar/widget/CoverForeground;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "CoverForeground.kt"


# instance fields
.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:I

.field public final h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/widget/CoverForeground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/widget/CoverForeground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 7
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/CoverForeground;->e:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, -0x1

    .line 9
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iput-object p1, p0, Lcom/farsitel/bazaar/widget/CoverForeground;->f:Landroid/graphics/Paint;

    .line 12
    invoke-static {}, Lc/c/a/c/h/d;->b()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/widget/CoverForeground;->g:I

    .line 13
    new-instance p1, Landroid/graphics/RectF;

    int-to-float p3, p3

    .line 14
    iget v0, p0, Lcom/farsitel/bazaar/widget/CoverForeground;->g:I

    int-to-float v1, v0

    mul-float p3, p3, v1

    const/16 v1, 0x11

    int-to-float v1, v1

    mul-float p3, p3, v1

    const/16 v2, 0x50

    int-to-float v2, v2

    div-float/2addr p3, v2

    mul-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    const/4 v4, 0x4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v5, v0

    int-to-float v6, v0

    mul-float v6, v6, v1

    div-float/2addr v6, v2

    add-float/2addr v5, v6

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 15
    invoke-direct {p1, p3, v3, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/farsitel/bazaar/widget/CoverForeground;->h:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/widget/CoverForeground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/farsitel/bazaar/widget/CoverForeground;->g:I

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/farsitel/bazaar/widget/CoverForeground;->f:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3
    iget-object v8, p0, Lcom/farsitel/bazaar/widget/CoverForeground;->h:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/farsitel/bazaar/widget/CoverForeground;->e:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/high16 v10, 0x43340000    # 180.0f

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method
