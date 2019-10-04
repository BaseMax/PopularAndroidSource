.class public Lcom/getkeepsafe/taptargetview/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:Z

.field B:F

.field final a:Ljava/lang/CharSequence;

.field final b:Ljava/lang/CharSequence;

.field c:F

.field d:I

.field e:Landroid/graphics/Rect;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Landroid/graphics/Typeface;

.field h:Landroid/graphics/Typeface;

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:Ljava/lang/Integer;

.field o:Ljava/lang/Integer;

.field p:Ljava/lang/Integer;

.field q:Ljava/lang/Integer;

.field r:Ljava/lang/Integer;

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method private constructor <init>(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 189
    invoke-direct {p0, p2, p3}, Lcom/getkeepsafe/taptargetview/c;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 194
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->e:Landroid/graphics/Rect;

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null bounds or title"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f75c28f    # 0.96f

    .line 47
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->c:F

    const/16 v0, 0x2c

    .line 48
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->d:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->i:I

    .line 57
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->j:I

    .line 59
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->k:I

    .line 61
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->l:I

    .line 63
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->m:I

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/c;->n:Ljava/lang/Integer;

    .line 67
    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/c;->o:Ljava/lang/Integer;

    .line 68
    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/c;->p:Ljava/lang/Integer;

    .line 69
    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/c;->q:Ljava/lang/Integer;

    .line 70
    iput-object v1, p0, Lcom/getkeepsafe/taptargetview/c;->r:Ljava/lang/Integer;

    .line 72
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->s:I

    .line 74
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->t:I

    const/16 v1, 0x14

    .line 77
    iput v1, p0, Lcom/getkeepsafe/taptargetview/c;->u:I

    const/16 v1, 0x12

    .line 78
    iput v1, p0, Lcom/getkeepsafe/taptargetview/c;->v:I

    .line 79
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->w:I

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/c;->x:Z

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/c;->y:Z

    .line 83
    iput-boolean v1, p0, Lcom/getkeepsafe/taptargetview/c;->z:Z

    .line 84
    iput-boolean v0, p0, Lcom/getkeepsafe/taptargetview/c;->A:Z

    const v0, 0x3f0a3d71    # 0.54f

    .line 85
    iput v0, p0, Lcom/getkeepsafe/taptargetview/c;->B:F

    if-eqz p1, :cond_0

    .line 202
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->a:Ljava/lang/CharSequence;

    .line 203
    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/c;->b:Ljava/lang/CharSequence;

    return-void

    .line 199
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null title"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Landroid/content/Context;II)I
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 500
    :cond_0
    invoke-static {p0, p1}, Lcom/getkeepsafe/taptargetview/e;->b(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 489
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/c;->forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object p0

    return-object p0
.end method

.method public static forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    .line 185
    new-instance v0, Lcom/getkeepsafe/taptargetview/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/getkeepsafe/taptargetview/c;-><init>(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarMenuItem(Landroid/widget/Toolbar;ILjava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-static {p0, p1, p2, v0}, Lcom/getkeepsafe/taptargetview/c;->forToolbarMenuItem(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarMenuItem(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    .line 165
    new-instance v0, Lcom/getkeepsafe/taptargetview/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/getkeepsafe/taptargetview/d;-><init>(Landroid/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarMenuItem(Landroidx/appcompat/widget/Toolbar;ILjava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, p1, p2, v0}, Lcom/getkeepsafe/taptargetview/c;->forToolbarMenuItem(Landroidx/appcompat/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarMenuItem(Landroidx/appcompat/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    .line 153
    new-instance v0, Lcom/getkeepsafe/taptargetview/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/getkeepsafe/taptargetview/d;-><init>(Landroidx/appcompat/widget/Toolbar;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarNavigationIcon(Landroid/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/c;->forToolbarNavigationIcon(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarNavigationIcon(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 2

    .line 141
    new-instance v0, Lcom/getkeepsafe/taptargetview/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/getkeepsafe/taptargetview/d;-><init>(Landroid/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarNavigationIcon(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/c;->forToolbarNavigationIcon(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarNavigationIcon(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 2

    .line 130
    new-instance v0, Lcom/getkeepsafe/taptargetview/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/getkeepsafe/taptargetview/d;-><init>(Landroidx/appcompat/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarOverflow(Landroid/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/c;->forToolbarOverflow(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarOverflow(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 2

    .line 119
    new-instance v0, Lcom/getkeepsafe/taptargetview/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/getkeepsafe/taptargetview/d;-><init>(Landroid/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forToolbarOverflow(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/c;->forToolbarOverflow(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object p0

    return-object p0
.end method

.method public static forToolbarOverflow(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 2

    .line 102
    new-instance v0, Lcom/getkeepsafe/taptargetview/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/getkeepsafe/taptargetview/d;-><init>(Landroidx/appcompat/widget/Toolbar;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static forView(Landroid/view/View;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/c;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;

    move-result-object p0

    return-object p0
.end method

.method public static forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    .line 175
    new-instance v0, Lcom/getkeepsafe/taptargetview/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/getkeepsafe/taptargetview/f;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bounds()Landroid/graphics/Rect;
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/c;->e:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Requesting bounds that are not set! Make sure your target is ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelable(Z)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 382
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/c;->y:Z

    return-object p0
.end method

.method public descriptionTextAlpha(F)Lcom/getkeepsafe/taptargetview/c;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 339
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->B:F

    return-object p0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Given an invalid alpha value: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public descriptionTextColor(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 277
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->m:I

    return-object p0
.end method

.method public descriptionTextColorInt(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->r:Ljava/lang/Integer;

    return-object p0
.end method

.method public descriptionTextDimen(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 349
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->t:I

    return-object p0
.end method

.method public descriptionTextSize(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    if-ltz p1, :cond_0

    .line 320
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->v:I

    return-object p0

    .line 319
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given negative text size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public descriptionTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 306
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->h:Landroid/graphics/Typeface;

    return-object p0

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use a null typeface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dimColor(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 359
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->k:I

    return-object p0
.end method

.method public dimColorInt(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->p:Ljava/lang/Integer;

    return-object p0
.end method

.method public drawShadow(Z)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 376
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/c;->x:Z

    return-object p0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/c;->icon(Landroid/graphics/drawable/Drawable;Z)Lcom/getkeepsafe/taptargetview/c;

    move-result-object p1

    return-object p1
.end method

.method public icon(Landroid/graphics/drawable/Drawable;Z)Lcom/getkeepsafe/taptargetview/c;
    .locals 3

    if-eqz p1, :cond_1

    .line 406
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->f:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    .line 409
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->f:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/getkeepsafe/taptargetview/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-object p0

    .line 405
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot use null drawable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public id()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/getkeepsafe/taptargetview/c;->w:I

    return v0
.end method

.method public id(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 417
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->w:I

    return-object p0
.end method

.method public onReady(Ljava/lang/Runnable;)V
    .locals 0

    .line 437
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public outerCircleAlpha(F)Lcom/getkeepsafe/taptargetview/c;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 230
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->c:F

    return-object p0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Given an invalid alpha value: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public outerCircleColor(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 214
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->i:I

    return-object p0
.end method

.method public outerCircleColorInt(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method public targetCircleColor(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 236
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->j:I

    return-object p0
.end method

.method public targetCircleColorInt(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->o:Ljava/lang/Integer;

    return-object p0
.end method

.method public targetRadius(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 423
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->d:I

    return-object p0
.end method

.method public textColor(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 249
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->l:I

    .line 250
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->m:I

    return-object p0
.end method

.method public textColorInt(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/getkeepsafe/taptargetview/c;->q:Ljava/lang/Integer;

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->r:Ljava/lang/Integer;

    return-object p0
.end method

.method public textTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 291
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->g:Landroid/graphics/Typeface;

    .line 292
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->h:Landroid/graphics/Typeface;

    return-object p0

    .line 290
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use a null typeface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tintTarget(Z)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 388
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/c;->z:Z

    return-object p0
.end method

.method public titleTextColor(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 264
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->l:I

    return-object p0
.end method

.method public titleTextColorInt(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->q:Ljava/lang/Integer;

    return-object p0
.end method

.method public titleTextDimen(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 330
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->s:I

    return-object p0
.end method

.method public titleTextSize(I)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    if-ltz p1, :cond_0

    .line 313
    iput p1, p0, Lcom/getkeepsafe/taptargetview/c;->u:I

    return-object p0

    .line 312
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given negative text size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public titleTypeface(Landroid/graphics/Typeface;)Lcom/getkeepsafe/taptargetview/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 299
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/c;->g:Landroid/graphics/Typeface;

    return-object p0

    .line 298
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use a null typeface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transparentTarget(Z)Lcom/getkeepsafe/taptargetview/c;
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/getkeepsafe/taptargetview/c;->A:Z

    return-object p0
.end method
