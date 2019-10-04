.class public Lcab/snapp/snappuikit/SnappImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BORDER_WIDTH:F = 0.0f

.field public static final DEFAULT_RADIUS:F = 0.0f

.field public static final DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

.field public static final TAG:Ljava/lang/String; = "RoundedImageView"

.field static final synthetic a:Z

.field private static final b:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private final c:[F

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/content/res/ColorStateList;

.field private f:F

.field private g:Landroid/graphics/ColorFilter;

.field private h:Z

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:Landroid/widget/ImageView$ScaleType;

.field private p:Landroid/graphics/Shader$TileMode;

.field private q:Landroid/graphics/Shader$TileMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    const-class v0, Lcab/snapp/snappuikit/SnappImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcab/snapp/snappuikit/SnappImageView;->a:Z

    .line 41
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcab/snapp/snappuikit/SnappImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    .line 42
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcab/snapp/snappuikit/SnappImageView;->b:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 53
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    const/high16 p1, -0x1000000

    .line 62
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->e:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcab/snapp/snappuikit/SnappImageView;->f:F

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->g:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappImageView;->h:Z

    .line 67
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappImageView;->j:Z

    .line 68
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappImageView;->k:Z

    .line 69
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappImageView;->l:Z

    .line 73
    sget-object p1, Lcab/snapp/snappuikit/SnappImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->p:Landroid/graphics/Shader$TileMode;

    .line 74
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->q:Landroid/graphics/Shader$TileMode;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcab/snapp/snappuikit/SnappImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 53
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    const/high16 v0, -0x1000000

    .line 62
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/snappuikit/SnappImageView;->e:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lcab/snapp/snappuikit/SnappImageView;->f:F

    const/4 v2, 0x0

    .line 64
    iput-object v2, p0, Lcab/snapp/snappuikit/SnappImageView;->g:Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    .line 65
    iput-boolean v2, p0, Lcab/snapp/snappuikit/SnappImageView;->h:Z

    .line 67
    iput-boolean v2, p0, Lcab/snapp/snappuikit/SnappImageView;->j:Z

    .line 68
    iput-boolean v2, p0, Lcab/snapp/snappuikit/SnappImageView;->k:Z

    .line 69
    iput-boolean v2, p0, Lcab/snapp/snappuikit/SnappImageView;->l:Z

    .line 73
    sget-object v3, Lcab/snapp/snappuikit/SnappImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object v3, p0, Lcab/snapp/snappuikit/SnappImageView;->p:Landroid/graphics/Shader$TileMode;

    .line 74
    iput-object v3, p0, Lcab/snapp/snappuikit/SnappImageView;->q:Landroid/graphics/Shader$TileMode;

    .line 93
    sget-object v3, Lcab/snapp/snappuikit/a$h;->imageViewOptions:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    sget p2, Lcab/snapp/snappuikit/a$h;->imageViewOptions_android_scaleType:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 98
    sget-object v3, Lcab/snapp/snappuikit/SnappImageView;->b:[Landroid/widget/ImageView$ScaleType;

    aget-object p2, v3, p2

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 103
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    :goto_0
    sget p2, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivCornerRadius:I

    .line 107
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 109
    iget-object v3, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    sget v4, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivCornerRadiusTopLeft:I

    .line 110
    invoke-virtual {p1, v4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v2

    .line 111
    iget-object v3, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    sget v4, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivCornerRadiusTopRight:I

    .line 112
    invoke-virtual {p1, v4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 113
    iget-object v3, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    const/4 v4, 0x2

    sget v6, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivCornerRadiusBottomRight:I

    .line 114
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    aput v6, v3, v4

    .line 115
    iget-object v3, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    const/4 v4, 0x3

    sget v6, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivCornerRadiusBottomLeft:I

    .line 116
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    aput v6, v3, v4

    .line 119
    iget-object v3, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 121
    iget-object v7, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    aget v8, v7, v4

    cmpg-float v8, v8, v1

    if-gez v8, :cond_1

    .line 123
    aput v1, v7, v4

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_4

    cmpg-float v3, p2, v1

    if-gez v3, :cond_3

    const/4 p2, 0x0

    .line 137
    :cond_3
    iget-object v3, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    array-length v3, v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    .line 139
    iget-object v6, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    aput p2, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 143
    :cond_4
    sget p2, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivBorderWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcab/snapp/snappuikit/SnappImageView;->f:F

    .line 144
    iget p2, p0, Lcab/snapp/snappuikit/SnappImageView;->f:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_5

    .line 146
    iput v1, p0, Lcab/snapp/snappuikit/SnappImageView;->f:F

    .line 149
    :cond_5
    sget p2, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivBorderColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappImageView;->e:Landroid/content/res/ColorStateList;

    .line 150
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappImageView;->e:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_6

    .line 152
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/SnappImageView;->e:Landroid/content/res/ColorStateList;

    .line 155
    :cond_6
    sget p2, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivMutateBackground:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcab/snapp/snappuikit/SnappImageView;->l:Z

    .line 156
    sget p2, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivOval:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcab/snapp/snappuikit/SnappImageView;->k:Z

    .line 158
    sget p2, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivTileMode:I

    const/4 p3, -0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_7

    .line 161
    invoke-static {p2}, Lcab/snapp/snappuikit/SnappImageView;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 162
    invoke-static {p2}, Lcab/snapp/snappuikit/SnappImageView;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 165
    :cond_7
    sget p2, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivTileModeX:I

    .line 166
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_8

    .line 169
    invoke-static {p2}, Lcab/snapp/snappuikit/SnappImageView;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 172
    :cond_8
    sget p2, Lcab/snapp/snappuikit/a$h;->imageViewOptions_sivTileModeY:I

    .line 173
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_9

    .line 176
    invoke-static {p2}, Lcab/snapp/snappuikit/SnappImageView;->a(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/SnappImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 179
    :cond_9
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    .line 180
    invoke-direct {p0, v5}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 182
    iget-boolean p2, p0, Lcab/snapp/snappuikit/SnappImageView;->l:Z

    if-eqz p2, :cond_a

    .line 185
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappImageView;->d:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static a(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 469
    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 467
    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 465
    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 477
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 485
    :cond_0
    iget v2, p0, Lcab/snapp/snappuikit/SnappImageView;->n:I

    if-eqz v2, :cond_1

    .line 489
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find resource: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcab/snapp/snappuikit/SnappImageView;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lcab/snapp/snappuikit/SnappImageView;->n:I

    .line 498
    :cond_1
    :goto_0
    invoke-static {v1}, Lcab/snapp/snappuikit/a/a;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 540
    :cond_0
    instance-of v0, p1, Lcab/snapp/snappuikit/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 542
    check-cast p1, Lcab/snapp/snappuikit/a/a;

    .line 543
    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/a/a;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lcab/snapp/snappuikit/a/a;

    move-result-object p2

    iget v0, p0, Lcab/snapp/snappuikit/SnappImageView;->f:F

    .line 544
    invoke-virtual {p2, v0}, Lcab/snapp/snappuikit/a/a;->setBorderWidth(F)Lcab/snapp/snappuikit/a/a;

    move-result-object p2

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->e:Landroid/content/res/ColorStateList;

    .line 545
    invoke-virtual {p2, v0}, Lcab/snapp/snappuikit/a/a;->setBorderColor(Landroid/content/res/ColorStateList;)Lcab/snapp/snappuikit/a/a;

    move-result-object p2

    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappImageView;->k:Z

    .line 546
    invoke-virtual {p2, v0}, Lcab/snapp/snappuikit/a/a;->setOval(Z)Lcab/snapp/snappuikit/a/a;

    move-result-object p2

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->p:Landroid/graphics/Shader$TileMode;

    .line 547
    invoke-virtual {p2, v0}, Lcab/snapp/snappuikit/a/a;->setTileModeX(Landroid/graphics/Shader$TileMode;)Lcab/snapp/snappuikit/a/a;

    move-result-object p2

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->q:Landroid/graphics/Shader$TileMode;

    .line 548
    invoke-virtual {p2, v0}, Lcab/snapp/snappuikit/a/a;->setTileModeY(Landroid/graphics/Shader$TileMode;)Lcab/snapp/snappuikit/a/a;

    .line 550
    iget-object p2, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    if-eqz p2, :cond_1

    .line 552
    aget v0, p2, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Lcab/snapp/snappuikit/a/a;->setCornerRadius(FFFF)Lcab/snapp/snappuikit/a/a;

    .line 559
    :cond_1
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->c()V

    return-void

    .line 561
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 564
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 565
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 567
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcab/snapp/snappuikit/SnappImageView;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappImageView;->l:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 512
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcab/snapp/snappuikit/a/a;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->d:Landroid/graphics/drawable/Drawable;

    .line 514
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->d:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/SnappImageView;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappImageView;->o:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcab/snapp/snappuikit/SnappImageView;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappImageView;->h:Z

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 526
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappImageView;->j:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappImageView;->g:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 703
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 711
    :cond_0
    iget v2, p0, Lcab/snapp/snappuikit/SnappImageView;->m:I

    if-eqz v2, :cond_1

    .line 715
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find resource: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcab/snapp/snappuikit/SnappImageView;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 721
    iput v0, p0, Lcab/snapp/snappuikit/SnappImageView;->m:I

    .line 724
    :cond_1
    :goto_0
    invoke-static {v1}, Lcab/snapp/snappuikit/a/a;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 0

    .line 577
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    .line 578
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 240
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 245
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .line 234
    iget v0, p0, Lcab/snapp/snappuikit/SnappImageView;->f:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getCornerRadius(I)F
    .locals 1

    .line 224
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    aget p1, v0, p1

    return p1
.end method

.method public getMaxCornerRadius()F
    .locals 5

    .line 209
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 211
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 584
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->o:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 261
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->p:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 229
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->q:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public isOval()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappImageView;->k:Z

    return v0
.end method

.method public mutateBackground(Z)V
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappImageView;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 452
    :cond_0
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappImageView;->l:Z

    const/4 p1, 0x1

    .line 453
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 454
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    return-void
.end method

.method public mutatesBackground()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappImageView;->l:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 658
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 675
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->d:Landroid/graphics/drawable/Drawable;

    .line 676
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->d:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 696
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 698
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->d:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 664
    iget v0, p0, Lcab/snapp/snappuikit/SnappImageView;->n:I

    if-eq v0, p1, :cond_0

    .line 666
    iput p1, p0, Lcab/snapp/snappuikit/SnappImageView;->n:I

    .line 667
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->d:Landroid/graphics/drawable/Drawable;

    .line 668
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 368
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    .line 379
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->e:Landroid/content/res/ColorStateList;

    .line 380
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    const/4 p1, 0x0

    .line 381
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 382
    iget p1, p0, Lcab/snapp/snappuikit/SnappImageView;->f:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 384
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 355
    iget v0, p0, Lcab/snapp/snappuikit/SnappImageView;->f:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iput p1, p0, Lcab/snapp/snappuikit/SnappImageView;->f:F

    .line 361
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    const/4 p1, 0x0

    .line 362
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 363
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 682
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->g:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 684
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->g:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    .line 685
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappImageView;->j:Z

    .line 686
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappImageView;->h:Z

    .line 687
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->c()V

    .line 688
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 297
    invoke-virtual {p0, p1, p1, p1, p1}, Lcab/snapp/snappuikit/SnappImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadius(FFFF)V
    .locals 6

    .line 330
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    aget v2, v0, v5

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    aget v2, v0, v3

    cmpl-float v2, v2, p4

    if-nez v2, :cond_0

    aget v0, v0, v4

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    aput p1, v0, v1

    .line 339
    aput p2, v0, v5

    .line 340
    aput p3, v0, v4

    .line 341
    aput p4, v0, v3

    .line 343
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    .line 344
    invoke-direct {p0, v1}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 345
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    return-void
.end method

.method public setCornerRadius(IF)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->c:[F

    aget v1, v0, p1

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    return-void

    .line 312
    :cond_0
    aput p2, v0, p1

    .line 314
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    const/4 p1, 0x0

    .line 315
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 316
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 276
    invoke-virtual {p0, p1, p1, p1, p1}, Lcab/snapp/snappuikit/SnappImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadiusDimen(II)V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappuikit/SnappImageView;->setCornerRadius(IF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 630
    iput v0, p0, Lcab/snapp/snappuikit/SnappImageView;->m:I

    .line 631
    invoke-static {p1}, Lcab/snapp/snappuikit/a/a;->fromBitmap(Landroid/graphics/Bitmap;)Lcab/snapp/snappuikit/a/a;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 632
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    .line 633
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 621
    iput v0, p0, Lcab/snapp/snappuikit/SnappImageView;->m:I

    .line 622
    invoke-static {p1}, Lcab/snapp/snappuikit/a/a;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 623
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    .line 624
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 639
    iget v0, p0, Lcab/snapp/snappuikit/SnappImageView;->m:I

    if-eq v0, p1, :cond_0

    .line 641
    iput p1, p0, Lcab/snapp/snappuikit/SnappImageView;->m:I

    .line 642
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 643
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    .line 644
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 651
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 652
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    .line 396
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappImageView;->k:Z

    .line 397
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    const/4 p1, 0x0

    .line 398
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 399
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 590
    sget-boolean v0, Lcab/snapp/snappuikit/SnappImageView;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 592
    :cond_1
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->o:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_2

    .line 594
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->o:Landroid/widget/ImageView$ScaleType;

    .line 596
    sget-object v0, Lcab/snapp/snappuikit/SnappImageView$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 608
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 605
    :pswitch_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 612
    :goto_1
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    const/4 p1, 0x0

    .line 613
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 614
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->p:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 409
    :cond_0
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->p:Landroid/graphics/Shader$TileMode;

    .line 410
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    const/4 p1, 0x0

    .line 411
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 412
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappImageView;->q:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 422
    :cond_0
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappImageView;->q:Landroid/graphics/Shader$TileMode;

    .line 423
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappImageView;->b()V

    const/4 p1, 0x0

    .line 424
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappImageView;->a(Z)V

    .line 425
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappImageView;->invalidate()V

    return-void
.end method
