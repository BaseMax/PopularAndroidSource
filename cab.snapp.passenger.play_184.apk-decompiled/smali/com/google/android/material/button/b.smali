.class final Lcom/google/android/material/button/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Z


# instance fields
.field final b:Lcom/google/android/material/button/MaterialButton;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Landroid/graphics/PorterDuff$Mode;

.field j:Landroid/content/res/ColorStateList;

.field k:Landroid/content/res/ColorStateList;

.field l:Landroid/content/res/ColorStateList;

.field final m:Landroid/graphics/Paint;

.field final n:Landroid/graphics/Rect;

.field final o:Landroid/graphics/RectF;

.field p:Landroid/graphics/drawable/GradientDrawable;

.field q:Landroid/graphics/drawable/Drawable;

.field r:Landroid/graphics/drawable/GradientDrawable;

.field s:Landroid/graphics/drawable/Drawable;

.field t:Landroid/graphics/drawable/GradientDrawable;

.field u:Landroid/graphics/drawable/GradientDrawable;

.field v:Landroid/graphics/drawable/GradientDrawable;

.field w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/button/b;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/button/b;->m:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/b;->n:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/b;->o:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/android/material/button/b;->w:Z

    .line 90
    iput-object p1, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7

    .line 206
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/google/android/material/button/b;->c:I

    iget v3, p0, Lcom/google/android/material/button/b;->e:I

    iget v4, p0, Lcom/google/android/material/button/b;->d:I

    iget v5, p0, Lcom/google/android/material/button/b;->f:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 255
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/b;->t:Landroid/graphics/drawable/GradientDrawable;

    .line 256
    iget-object v0, p0, Lcom/google/android/material/button/b;->t:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/google/android/material/button/b;->g:I

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 257
    iget-object v0, p0, Lcom/google/android/material/button/b;->t:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 259
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->a()V

    .line 261
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/b;->u:Landroid/graphics/drawable/GradientDrawable;

    .line 262
    iget-object v0, p0, Lcom/google/android/material/button/b;->u:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/google/android/material/button/b;->g:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 263
    iget-object v0, p0, Lcom/google/android/material/button/b;->u:Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/google/android/material/button/b;->u:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lcom/google/android/material/button/b;->h:I

    iget-object v5, p0, Lcom/google/android/material/button/b;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 266
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/google/android/material/button/b;->t:Landroid/graphics/drawable/GradientDrawable;

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/google/android/material/button/b;->u:Landroid/graphics/drawable/GradientDrawable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/google/android/material/button/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    .line 271
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/button/b;->v:Landroid/graphics/drawable/GradientDrawable;

    .line 272
    iget-object v3, p0, Lcom/google/android/material/button/b;->v:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lcom/google/android/material/button/b;->g:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 273
    iget-object v2, p0, Lcom/google/android/material/button/b;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 275
    new-instance v1, Lcom/google/android/material/button/a;

    iget-object v2, p0, Lcom/google/android/material/button/b;->l:Landroid/content/res/ColorStateList;

    .line 276
    invoke-static {v2}, Lcom/google/android/material/g/a;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/button/b;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/material/button/a;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/google/android/material/button/b;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/material/button/b;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 243
    iget-object v1, p0, Lcom/google/android/material/button/b;->t:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    .line 340
    sget-boolean v0, Lcom/google/android/material/button/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/b;->u:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Lcom/google/android/material/button/b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 344
    :cond_0
    sget-boolean v0, Lcom/google/android/material/button/b;->a:Z

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    :cond_1
    return-void
.end method

.method public final loadFromAttributes(Landroid/content/res/TypedArray;)V
    .locals 9

    .line 94
    sget v0, Lcom/google/android/material/a$k;->MaterialButton_android_insetLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/b;->c:I

    .line 95
    sget v0, Lcom/google/android/material/a$k;->MaterialButton_android_insetRight:I

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/b;->d:I

    .line 97
    sget v0, Lcom/google/android/material/a$k;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/b;->e:I

    .line 98
    sget v0, Lcom/google/android/material/a$k;->MaterialButton_android_insetBottom:I

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/b;->f:I

    .line 101
    sget v0, Lcom/google/android/material/a$k;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/b;->g:I

    .line 102
    sget v0, Lcom/google/android/material/a$k;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/b;->h:I

    .line 104
    sget v0, Lcom/google/android/material/a$k;->MaterialButton_backgroundTintMode:I

    const/4 v2, -0x1

    .line 106
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 105
    invoke-static {v0, v3}, Lcom/google/android/material/internal/l;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/b;->i:Landroid/graphics/PorterDuff$Mode;

    .line 107
    iget-object v0, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 109
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/android/material/a$k;->MaterialButton_backgroundTint:I

    .line 108
    invoke-static {v0, p1, v3}, Lcom/google/android/material/f/a;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    .line 110
    iget-object v0, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/android/material/a$k;->MaterialButton_strokeColor:I

    .line 111
    invoke-static {v0, p1, v3}, Lcom/google/android/material/f/a;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/b;->k:Landroid/content/res/ColorStateList;

    .line 113
    iget-object v0, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/google/android/material/a$k;->MaterialButton_rippleColor:I

    .line 114
    invoke-static {v0, p1, v3}, Lcom/google/android/material/f/a;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/button/b;->l:Landroid/content/res/ColorStateList;

    .line 117
    iget-object p1, p0, Lcom/google/android/material/button/b;->m:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object p1, p0, Lcom/google/android/material/button/b;->m:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/material/button/b;->h:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object p1, p0, Lcom/google/android/material/button/b;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/button/b;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    .line 121
    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object p1, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p1

    .line 126
    iget-object v0, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v0

    .line 127
    iget-object v3, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    .line 128
    iget-object v4, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v4

    .line 131
    iget-object v5, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    sget-boolean v6, Lcom/google/android/material/button/b;->a:Z

    if-eqz v6, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/google/android/material/button/b;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 1183
    :cond_1
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/GradientDrawable;

    .line 1184
    iget-object v6, p0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/GradientDrawable;

    iget v7, p0, Lcom/google/android/material/button/b;->g:I

    int-to-float v7, v7

    const v8, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1185
    iget-object v6, p0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1187
    iget-object v6, p0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v6}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/material/button/b;->q:Landroid/graphics/drawable/Drawable;

    .line 1188
    iget-object v6, p0, Lcom/google/android/material/button/b;->q:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    invoke-static {v6, v7}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1189
    iget-object v6, p0, Lcom/google/android/material/button/b;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v6, :cond_2

    .line 1190
    iget-object v7, p0, Lcom/google/android/material/button/b;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v7, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1193
    :cond_2
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v6, p0, Lcom/google/android/material/button/b;->r:Landroid/graphics/drawable/GradientDrawable;

    .line 1194
    iget-object v6, p0, Lcom/google/android/material/button/b;->r:Landroid/graphics/drawable/GradientDrawable;

    iget v7, p0, Lcom/google/android/material/button/b;->g:I

    int-to-float v7, v7

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1195
    iget-object v6, p0, Lcom/google/android/material/button/b;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1197
    iget-object v2, p0, Lcom/google/android/material/button/b;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/b;->s:Landroid/graphics/drawable/Drawable;

    .line 1198
    iget-object v2, p0, Lcom/google/android/material/button/b;->s:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/google/android/material/button/b;->l:Landroid/content/res/ColorStateList;

    invoke-static {v2, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1200
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/google/android/material/button/b;->q:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v1

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/google/android/material/button/b;->s:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v1

    invoke-direct {v2, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v2}, Lcom/google/android/material/button/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    .line 131
    :goto_1
    invoke-virtual {v5, v1}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v1, p0, Lcom/google/android/material/button/b;->b:Lcom/google/android/material/button/MaterialButton;

    iget v2, p0, Lcom/google/android/material/button/b;->c:I

    add-int/2addr p1, v2

    iget v2, p0, Lcom/google/android/material/button/b;->e:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/material/button/b;->d:I

    add-int/2addr v3, v2

    iget v2, p0, Lcom/google/android/material/button/b;->f:I

    add-int/2addr v4, v2

    invoke-static {v1, p1, v0, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method
