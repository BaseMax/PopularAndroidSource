.class public Lcab/snapp/snappuikit/fab/Label;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappuikit/fab/Label$a;
    }
.end annotation


# static fields
.field private static final b:Landroid/graphics/Xfermode;


# instance fields
.field a:Landroid/view/GestureDetector;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcab/snapp/snappuikit/SnappFloatingActionButton;

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/view/animation/Animation;

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcab/snapp/snappuikit/fab/Label;->b:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcab/snapp/snappuikit/fab/Label;->h:Z

    .line 53
    iput-boolean p1, p0, Lcab/snapp/snappuikit/fab/Label;->s:Z

    .line 364
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappuikit/fab/Label$2;

    invoke-direct {v1, p0}, Lcab/snapp/snappuikit/fab/Label$2;-><init>(Lcab/snapp/snappuikit/fab/Label;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcab/snapp/snappuikit/fab/Label;->h:Z

    .line 53
    iput-boolean p1, p0, Lcab/snapp/snappuikit/fab/Label;->s:Z

    .line 364
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcab/snapp/snappuikit/fab/Label$2;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/fab/Label$2;-><init>(Lcab/snapp/snappuikit/fab/Label;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcab/snapp/snappuikit/fab/Label;->h:Z

    .line 53
    iput-boolean p1, p0, Lcab/snapp/snappuikit/fab/Label;->s:Z

    .line 364
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcab/snapp/snappuikit/fab/Label$2;

    invoke-direct {p3, p0}, Lcab/snapp/snappuikit/fab/Label$2;-><init>(Lcab/snapp/snappuikit/fab/Label;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic a()Landroid/graphics/Xfermode;
    .locals 1

    .line 33
    sget-object v0, Lcab/snapp/snappuikit/fab/Label;->b:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 167
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v1, 0x8

    new-array v1, v1, [F

    iget v2, p0, Lcab/snapp/snappuikit/fab/Label;->n:I

    int-to-float v3, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x2

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x3

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x4

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x5

    aput v3, v1, v4

    int-to-float v3, v2

    const/4 v4, 0x6

    aput v3, v1, v4

    int-to-float v2, v2

    const/4 v3, 0x7

    aput v2, v1, v3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 180
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 181
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v1
.end method

.method static synthetic a(Lcab/snapp/snappuikit/fab/Label;)Lcab/snapp/snappuikit/SnappFloatingActionButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lcab/snapp/snappuikit/fab/Label;->o:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/snappuikit/fab/Label;)I
    .locals 0

    .line 33
    iget p0, p0, Lcab/snapp/snappuikit/fab/Label;->k:I

    return p0
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 141
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    .line 142
    iget v4, p0, Lcab/snapp/snappuikit/fab/Label;->l:I

    invoke-direct {p0, v4}, Lcab/snapp/snappuikit/fab/Label;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v3, [I

    .line 143
    iget v4, p0, Lcab/snapp/snappuikit/fab/Label;->k:I

    invoke-direct {p0, v4}, Lcab/snapp/snappuikit/fab/Label;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-static {}, Lcab/snapp/c/a;->hasLollipop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v1, [[I

    new-array v6, v3, [I

    aput-object v6, v5, v3

    new-array v6, v1, [I

    iget v7, p0, Lcab/snapp/snappuikit/fab/Label;->m:I

    aput v7, v6, v3

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v2, v4, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    new-instance v0, Lcab/snapp/snappuikit/fab/Label$1;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/fab/Label$1;-><init>(Lcab/snapp/snappuikit/fab/Label;)V

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/fab/Label;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 156
    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/fab/Label;->setClipToOutline(Z)V

    .line 157
    iput-object v2, p0, Lcab/snapp/snappuikit/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 161
    :cond_0
    iput-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic c(Lcab/snapp/snappuikit/fab/Label;)I
    .locals 0

    .line 33
    iget p0, p0, Lcab/snapp/snappuikit/fab/Label;->c:I

    return p0
.end method

.method static synthetic d(Lcab/snapp/snappuikit/fab/Label;)I
    .locals 0

    .line 33
    iget p0, p0, Lcab/snapp/snappuikit/fab/Label;->d:I

    return p0
.end method

.method static synthetic e(Lcab/snapp/snappuikit/fab/Label;)I
    .locals 0

    .line 33
    iget p0, p0, Lcab/snapp/snappuikit/fab/Label;->e:I

    return p0
.end method

.method static synthetic f(Lcab/snapp/snappuikit/fab/Label;)I
    .locals 0

    .line 33
    iget p0, p0, Lcab/snapp/snappuikit/fab/Label;->f:I

    return p0
.end method

.method static synthetic g(Lcab/snapp/snappuikit/fab/Label;)I
    .locals 0

    .line 33
    iget p0, p0, Lcab/snapp/snappuikit/fab/Label;->i:I

    return p0
.end method

.method static synthetic h(Lcab/snapp/snappuikit/fab/Label;)I
    .locals 0

    .line 33
    iget p0, p0, Lcab/snapp/snappuikit/fab/Label;->j:I

    return p0
.end method

.method static synthetic i(Lcab/snapp/snappuikit/fab/Label;)I
    .locals 0

    .line 33
    iget p0, p0, Lcab/snapp/snappuikit/fab/Label;->n:I

    return p0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 198
    invoke-static {}, Lcab/snapp/c/a;->hasJellyBean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/fab/Label;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/fab/Label;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setShadow(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V
    .locals 1

    .line 187
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowColor()I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/fab/Label;->f:I

    .line 188
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowRadius()I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/fab/Label;->c:I

    .line 189
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowXOffset()I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/fab/Label;->d:I

    .line 190
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getShadowYOffset()I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/fab/Label;->e:I

    .line 191
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->hasShadow()Z

    move-result p1

    iput-boolean p1, p0, Lcab/snapp/snappuikit/fab/Label;->h:Z

    return-void
.end method


# virtual methods
.method public calculateShadowWidth()I
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcab/snapp/snappuikit/fab/Label;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcab/snapp/snappuikit/fab/Label;->c:I

    iget v1, p0, Lcab/snapp/snappuikit/fab/Label;->d:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hide(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1219
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->q:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    .line 1221
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->p:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 1222
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->q:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/fab/Label;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x4

    .line 310
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/fab/Label;->setVisibility(I)V

    return-void
.end method

.method public isHandleVisibilityChanges()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcab/snapp/snappuikit/fab/Label;->s:Z

    return v0
.end method

.method public onActionDown()V
    .locals 5

    .line 229
    iget-boolean v0, p0, Lcab/snapp/snappuikit/fab/Label;->r:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    .line 234
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 236
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v2, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 237
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    return-void

    .line 239
    :cond_1
    invoke-static {}, Lcab/snapp/c/a;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_2

    .line 241
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 242
    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 243
    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 244
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public onActionUp()V
    .locals 3

    .line 252
    iget-boolean v0, p0, Lcab/snapp/snappuikit/fab/Label;->r:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    .line 257
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 259
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v2, [I

    .line 260
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    return-void

    .line 262
    :cond_1
    invoke-static {}, Lcab/snapp/c/a;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_2

    .line 264
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    new-array v1, v2, [I

    .line 265
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 266
    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    const/4 v1, 0x1

    .line 267
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 1079
    iget p1, p0, Lcab/snapp/snappuikit/fab/Label;->i:I

    if-nez p1, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcab/snapp/snappuikit/fab/Label;->i:I

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->calculateShadowWidth()I

    move-result p2

    add-int/2addr p1, p2

    .line 1088
    iget p2, p0, Lcab/snapp/snappuikit/fab/Label;->j:I

    if-nez p2, :cond_1

    .line 1090
    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getMeasuredHeight()I

    move-result p2

    iput p2, p0, Lcab/snapp/snappuikit/fab/Label;->j:I

    .line 1092
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->getMeasuredHeight()I

    move-result p2

    .line 1102
    iget-boolean v0, p0, Lcab/snapp/snappuikit/fab/Label;->h:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcab/snapp/snappuikit/fab/Label;->c:I

    iget v1, p0, Lcab/snapp/snappuikit/fab/Label;->e:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p2, v0

    .line 74
    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappuikit/fab/Label;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 341
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->o:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->o:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->onActionUp()V

    .line 356
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->o:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->onActionUp()V

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/snappuikit/fab/Label;->onActionUp()V

    .line 351
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->o:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->onActionUp()V

    .line 360
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappuikit/fab/Label;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 361
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 343
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setColors(III)V
    .locals 0

    .line 290
    iput p1, p0, Lcab/snapp/snappuikit/fab/Label;->k:I

    .line 291
    iput p2, p0, Lcab/snapp/snappuikit/fab/Label;->l:I

    .line 292
    iput p3, p0, Lcab/snapp/snappuikit/fab/Label;->m:I

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcab/snapp/snappuikit/fab/Label;->n:I

    return-void
.end method

.method public setFab(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->o:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 275
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/fab/Label;->setShadow(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V

    return-void
.end method

.method public setHandleVisibilityChanges(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcab/snapp/snappuikit/fab/Label;->s:Z

    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->q:Landroid/view/animation/Animation;

    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->p:Landroid/view/animation/Animation;

    return-void
.end method

.method public setShowShadow(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcab/snapp/snappuikit/fab/Label;->h:Z

    return-void
.end method

.method public setUsingStyle(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcab/snapp/snappuikit/fab/Label;->r:Z

    return-void
.end method

.method public show(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1210
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->p:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    .line 1212
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->q:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 1213
    iget-object p1, p0, Lcab/snapp/snappuikit/fab/Label;->p:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/fab/Label;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x0

    .line 301
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/fab/Label;->setVisibility(I)V

    return-void
.end method

.method public updateBackground()V
    .locals 9

    .line 108
    iget-boolean v0, p0, Lcab/snapp/snappuikit/fab/Label;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    new-instance v4, Lcab/snapp/snappuikit/fab/Label$a;

    invoke-direct {v4, p0, v2}, Lcab/snapp/snappuikit/fab/Label$a;-><init>(Lcab/snapp/snappuikit/fab/Label;B)V

    aput-object v4, v3, v2

    .line 112
    invoke-direct {p0}, Lcab/snapp/snappuikit/fab/Label;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget v1, p0, Lcab/snapp/snappuikit/fab/Label;->c:I

    iget v2, p0, Lcab/snapp/snappuikit/fab/Label;->d:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v5, v1, v2

    .line 116
    iget v1, p0, Lcab/snapp/snappuikit/fab/Label;->c:I

    iget v2, p0, Lcab/snapp/snappuikit/fab/Label;->e:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v6, v1, v2

    .line 117
    iget v1, p0, Lcab/snapp/snappuikit/fab/Label;->c:I

    iget v2, p0, Lcab/snapp/snappuikit/fab/Label;->d:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v7, v1, v2

    .line 118
    iget v1, p0, Lcab/snapp/snappuikit/fab/Label;->c:I

    iget v2, p0, Lcab/snapp/snappuikit/fab/Label;->e:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v8, v1, v2

    const/4 v4, 0x1

    move-object v3, v0

    .line 120
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-direct {p0}, Lcab/snapp/snappuikit/fab/Label;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 135
    :goto_0
    invoke-direct {p0, v0}, Lcab/snapp/snappuikit/fab/Label;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
