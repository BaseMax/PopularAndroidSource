.class public Lcab/snapp/snappuikit/SnappLoading;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final SIZE_LARGE:I = 0x67

.field public static final SIZE_MEDIUM:I = 0x66

.field public static final SIZE_SMALL:I = 0x65

.field public static final SIZE_TINY:I = 0x64

.field public static final THEME_ACCENT:I = 0x2

.field public static final THEME_BLUE:I = 0x4

.field public static final THEME_ERROR:I = 0x3

.field public static final THEME_PRIMARY:I = 0x0

.field public static final THEME_SECONDARY:I = 0x1


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:Landroid/animation/AnimatorSet;

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcab/snapp/snappuikit/SnappLoading;->a:I

    const/16 v0, 0x65

    .line 70
    iput v0, p0, Lcab/snapp/snappuikit/SnappLoading;->b:I

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    const/16 v0, 0x12c

    .line 78
    iput v0, p0, Lcab/snapp/snappuikit/SnappLoading;->d:I

    .line 82
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/SnappLoading;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcab/snapp/snappuikit/SnappLoading;->a:I

    const/16 v0, 0x65

    .line 70
    iput v0, p0, Lcab/snapp/snappuikit/SnappLoading;->b:I

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    const/16 v0, 0x12c

    .line 78
    iput v0, p0, Lcab/snapp/snappuikit/SnappLoading;->d:I

    .line 82
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    .line 111
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappLoading;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 66
    iput p3, p0, Lcab/snapp/snappuikit/SnappLoading;->a:I

    const/16 p3, 0x65

    .line 70
    iput p3, p0, Lcab/snapp/snappuikit/SnappLoading;->b:I

    const/4 p3, 0x1

    .line 74
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    const/16 p3, 0x12c

    .line 78
    iput p3, p0, Lcab/snapp/snappuikit/SnappLoading;->d:I

    .line 82
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    .line 124
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappLoading;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 66
    iput p3, p0, Lcab/snapp/snappuikit/SnappLoading;->a:I

    const/16 p3, 0x65

    .line 70
    iput p3, p0, Lcab/snapp/snappuikit/SnappLoading;->b:I

    const/4 p3, 0x1

    .line 74
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    const/16 p3, 0x12c

    .line 78
    iput p3, p0, Lcab/snapp/snappuikit/SnappLoading;->d:I

    .line 82
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    .line 139
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappLoading;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappuikit/SnappLoading;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcab/snapp/snappuikit/SnappLoading;->h:Landroid/view/View;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 277
    sget v0, Lcab/snapp/snappuikit/a$f;->snapp_loading_first_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->g:Landroid/view/View;

    .line 278
    sget v0, Lcab/snapp/snappuikit/a$f;->snapp_loading_second_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->h:Landroid/view/View;

    .line 279
    sget v0, Lcab/snapp/snappuikit/a$f;->snapp_loading_third_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->i:Landroid/view/View;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 230
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappLoading;->a(Landroid/util/AttributeSet;)V

    .line 232
    iget p2, p0, Lcab/snapp/snappuikit/SnappLoading;->b:I

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    .line 244
    :pswitch_0
    sget p2, Lcab/snapp/snappuikit/a$g;->snapp_loading_layout_large:I

    goto :goto_0

    .line 241
    :pswitch_1
    sget p2, Lcab/snapp/snappuikit/a$g;->snapp_loading_layout_medium:I

    goto :goto_0

    .line 238
    :pswitch_2
    sget p2, Lcab/snapp/snappuikit/a$g;->snapp_loading_layout_small:I

    goto :goto_0

    .line 235
    :pswitch_3
    sget p2, Lcab/snapp/snappuikit/a$g;->snapp_loading_layout_tiny:I

    .line 247
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 248
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappLoading;->a()V

    .line 249
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappLoading;->b()V

    .line 250
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappLoading;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappLoading;->startAnimate()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 263
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappLoading;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcab/snapp/snappuikit/a$h;->snappLoadingOptions:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 265
    sget v0, Lcab/snapp/snappuikit/a$h;->snappLoadingOptions_snappLoadingTheme:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappLoading;->a:I

    .line 266
    sget v0, Lcab/snapp/snappuikit/a$h;->snappLoadingOptions_snappLoadingSize:I

    const/16 v1, 0x65

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappLoading;->b:I

    .line 267
    sget v0, Lcab/snapp/snappuikit/a$h;->snappLoadingOptions_snappLoadingStartAnimation:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    .line 268
    sget v0, Lcab/snapp/snappuikit/a$h;->snappLoadingOptions_snappLoadingAnimationDuration:I

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappLoading;->d:I

    .line 269
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic b(Lcab/snapp/snappuikit/SnappLoading;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcab/snapp/snappuikit/SnappLoading;->g:Landroid/view/View;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 288
    iget v0, p0, Lcab/snapp/snappuikit/SnappLoading;->a:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 303
    :cond_0
    sget v0, Lcab/snapp/snappuikit/a$d;->shape_circle_blue:I

    goto :goto_0

    .line 300
    :cond_1
    sget v0, Lcab/snapp/snappuikit/a$d;->shape_circle_cherry:I

    goto :goto_0

    .line 297
    :cond_2
    sget v0, Lcab/snapp/snappuikit/a$d;->shape_circle_green_blue:I

    goto :goto_0

    .line 294
    :cond_3
    sget v0, Lcab/snapp/snappuikit/a$d;->shape_circle_pure_white:I

    goto :goto_0

    .line 291
    :cond_4
    sget v0, Lcab/snapp/snappuikit/a$d;->shape_circle_dark:I

    .line 307
    :goto_0
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappLoading;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 308
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappLoading;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 309
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappLoading;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic c(Lcab/snapp/snappuikit/SnappLoading;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcab/snapp/snappuikit/SnappLoading;->i:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public isAnimating()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappLoading;->f:Z

    return v0
.end method

.method public isStartAnimation()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 439
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 440
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappLoading;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappLoading;->startAnimate()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappLoading;->stopAnimate()V

    const/4 v0, 0x1

    .line 427
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappLoading;->stopAnimate()V

    .line 433
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcab/snapp/snappuikit/SnappLoading;->d:I

    return-void
.end method

.method public setLoadingSize(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcab/snapp/snappuikit/SnappLoading;->b:I

    return-void
.end method

.method public setLoadingTheme(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcab/snapp/snappuikit/SnappLoading;->a:I

    return-void
.end method

.method public setStartAnimation(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 402
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    if-eqz p1, :cond_2

    .line 404
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappLoading;->startAnimate()V

    return-void

    .line 409
    :cond_0
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappLoading;->stopAnimate()V

    const/4 p1, 0x1

    .line 412
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    return-void

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappLoading;->stopAnimate()V

    :cond_2
    return-void
.end method

.method public startAnimate()V
    .locals 6

    .line 317
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 318
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 319
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 320
    iget v2, p0, Lcab/snapp/snappuikit/SnappLoading;->d:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    .line 321
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 322
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 324
    new-instance v3, Lcab/snapp/snappuikit/SnappLoading$1;

    invoke-direct {v3, p0}, Lcab/snapp/snappuikit/SnappLoading$1;-><init>(Lcab/snapp/snappuikit/SnappLoading;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v0, [F

    .line 333
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 334
    iget v4, p0, Lcab/snapp/snappuikit/SnappLoading;->d:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 335
    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 336
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 338
    new-instance v2, Lcab/snapp/snappuikit/SnappLoading$2;

    invoke-direct {v2, p0}, Lcab/snapp/snappuikit/SnappLoading$2;-><init>(Lcab/snapp/snappuikit/SnappLoading;)V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 349
    iget-object v2, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 350
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 351
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappLoading;->f:Z

    .line 352
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public stopAnimate()V
    .locals 2

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappLoading;->f:Z

    .line 361
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappLoading;->c:Z

    .line 362
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 363
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 364
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 371
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->g:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 376
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 377
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 378
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 379
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 380
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappLoading;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
