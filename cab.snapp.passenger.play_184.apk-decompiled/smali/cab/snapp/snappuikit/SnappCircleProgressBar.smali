.class public Lcab/snapp/snappuikit/SnappCircleProgressBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final SIZE_LARGE:I = 0x67

.field public static final SIZE_MEDIUM:I = 0x66

.field public static final SIZE_SMALL:I = 0x65

.field public static final SIZE_TINY:I = 0x64

.field public static final THEME_ACCENT:I = 0x2

.field public static final THEME_ERROR:I = 0x3

.field public static final THEME_PRIMARY:I = 0x0

.field public static final THEME_SECONDARY:I = 0x1


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a:I

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->b:Z

    const/16 v0, 0x64

    .line 77
    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->e:I

    const/16 v0, 0x65

    .line 81
    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->f:I

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a:I

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->b:Z

    const/16 v0, 0x64

    .line 77
    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->e:I

    const/16 v0, 0x65

    .line 81
    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->f:I

    .line 105
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 61
    iput p3, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a:I

    const/4 p3, 0x1

    .line 65
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->b:Z

    const/16 p3, 0x64

    .line 77
    iput p3, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->e:I

    const/16 p3, 0x65

    .line 81
    iput p3, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->f:I

    .line 118
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 61
    iput p3, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a:I

    const/4 p3, 0x1

    .line 65
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->b:Z

    const/16 p3, 0x64

    .line 77
    iput p3, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->e:I

    const/16 p3, 0x65

    .line 81
    iput p3, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->f:I

    .line 133
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 319
    sget v0, Lcab/snapp/snappuikit/a$f;->circle_progressbar_layout_progress:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 273
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a(Landroid/util/AttributeSet;)V

    .line 275
    iget p2, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->f:I

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    .line 287
    :pswitch_0
    sget p2, Lcab/snapp/snappuikit/a$g;->circle_progressbar_layout_large:I

    goto :goto_0

    .line 284
    :pswitch_1
    sget p2, Lcab/snapp/snappuikit/a$g;->circle_progressbar_layout_medium:I

    goto :goto_0

    .line 281
    :pswitch_2
    sget p2, Lcab/snapp/snappuikit/a$g;->circle_progressbar_layout_small:I

    goto :goto_0

    .line 278
    :pswitch_3
    sget p2, Lcab/snapp/snappuikit/a$g;->circle_progressbar_layout_tiny:I

    .line 290
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 291
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a()V

    .line 292
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->b()V

    return-void

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

    .line 303
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcab/snapp/snappuikit/a$h;->circleProgressBarOptions:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 305
    sget v0, Lcab/snapp/snappuikit/a$h;->circleProgressBarOptions_cpbTheme:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a:I

    .line 306
    sget v0, Lcab/snapp/snappuikit/a$h;->circleProgressBarOptions_cpbIndeterminate:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->b:Z

    .line 307
    sget v0, Lcab/snapp/snappuikit/a$h;->circleProgressBarOptions_cpbProgress:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->c:I

    .line 308
    sget v0, Lcab/snapp/snappuikit/a$h;->circleProgressBarOptions_cpbSecondaryProgress:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->d:I

    .line 309
    sget v0, Lcab/snapp/snappuikit/a$h;->circleProgressBarOptions_cpbMaxProgress:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->e:I

    .line 310
    sget v0, Lcab/snapp/snappuikit/a$h;->circleProgressBarOptions_cpbSize:I

    const/16 v1, 0x65

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->f:I

    .line 311
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b()V
    .locals 5

    .line 328
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->silver:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 340
    iget v2, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 371
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcab/snapp/snappuikit/a$b;->color_primary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 370
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v0, :cond_5

    .line 375
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcab/snapp/snappuikit/a$b;->color_primary:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 374
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcab/snapp/snappuikit/a$b;->cherry:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 361
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v0, :cond_5

    .line 366
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcab/snapp/snappuikit/a$b;->cherry:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 365
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 353
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcab/snapp/snappuikit/a$b;->color_accent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 352
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v0, :cond_5

    .line 357
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcab/snapp/snappuikit/a$b;->color_accent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 356
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 344
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcab/snapp/snappuikit/a$b;->pure_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 343
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v0, :cond_5

    .line 348
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcab/snapp/snappuikit/a$b;->pure_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 347
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 380
    :cond_5
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_6

    .line 382
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 383
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 387
    :cond_6
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappCircleProgressBar;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 389
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 393
    :cond_7
    iget-object v1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    :goto_2
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 397
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    iget v1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 398
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    iget v1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 399
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    iget v1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .line 175
    iget v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->e:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 155
    iget v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->c:I

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .line 165
    iget v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->d:I

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->b:Z

    return v0
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 197
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->b:Z

    .line 198
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1

    .line 232
    iput p1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->e:I

    .line 233
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 234
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 208
    iput p1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->c:I

    .line 209
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 210
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressSize(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->f:I

    return-void
.end method

.method public setProgressTheme(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->a:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .line 220
    iput p1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->d:I

    .line 221
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 222
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappCircleProgressBar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method
