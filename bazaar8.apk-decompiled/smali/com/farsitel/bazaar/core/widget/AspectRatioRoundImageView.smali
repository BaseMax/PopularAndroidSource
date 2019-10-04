.class public final Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;
.super Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;
.source "AspectRatioRoundImageView.kt"


# static fields
.field public static final synthetic d:[Lh/i/i;


# instance fields
.field public e:I

.field public final f:Lh/c;

.field public final g:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "rect"

    const-string v4, "getRect()Landroid/graphics/RectF;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->d:[Lh/i/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/core/widget/AspectRatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x4

    .line 3
    iput p3, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->e:I

    .line 4
    new-instance p3, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView$rect$2;

    invoke-direct {p3, p0}, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView$rect$2;-><init>(Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;)V

    invoke-static {p3}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p3

    iput-object p3, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->f:Lh/c;

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->g:Landroid/graphics/Path;

    if-eqz p2, :cond_0

    .line 6
    sget-object p3, Lc/c/a/d/h;->AspectRatioRoundImageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lc/c/a/d/h;->AspectRatioRoundImageView_roundCorner:I

    iget p3, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->e:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->e:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
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
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getRect()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->f:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->d:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->g:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->e:I

    invoke-static {v2}, Lc/c/a/d/b/i;->a(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->e:I

    invoke-static {v3}, Lc/c/a/d/b/i;->a(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/core/widget/AspectRatioRoundImageView;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
