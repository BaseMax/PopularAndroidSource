.class public Lcab/snapp/snappuikit/SnappButton;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"


# static fields
.field public static final GRAVITY_CENTER:I = 0x64

.field public static final GRAVITY_END:I = 0x66

.field public static final GRAVITY_START:I = 0x65

.field public static final NO_GRAVITY:I = 0x96

.field public static final THEME_ACCENT:I = 0x2

.field public static final THEME_ERROR:I = 0x3

.field public static final THEME_NEUTRAL:I = 0x4

.field public static final THEME_PRIMARY:I = 0x0

.field public static final THEME_SECONDARY:I = 0x1

.field public static final THEME_SECONDARY_NO_BORDER:I = 0x5


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappButton;->o:Z

    const/16 v0, 0x64

    .line 61
    iput v0, p0, Lcab/snapp/snappuikit/SnappButton;->p:I

    const/16 v0, 0x96

    .line 62
    iput v0, p0, Lcab/snapp/snappuikit/SnappButton;->q:I

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/SnappButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappButton;->o:Z

    const/16 v0, 0x64

    .line 61
    iput v0, p0, Lcab/snapp/snappuikit/SnappButton;->p:I

    const/16 v0, 0x96

    .line 62
    iput v0, p0, Lcab/snapp/snappuikit/SnappButton;->q:I

    .line 75
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 60
    iput-boolean p3, p0, Lcab/snapp/snappuikit/SnappButton;->o:Z

    const/16 p3, 0x64

    .line 61
    iput p3, p0, Lcab/snapp/snappuikit/SnappButton;->p:I

    const/16 p3, 0x96

    .line 62
    iput p3, p0, Lcab/snapp/snappuikit/SnappButton;->q:I

    .line 81
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(IIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 446
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, -0x101009e

    aput v4, v2, v3

    .line 448
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 447
    invoke-virtual {v0, v2, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p4, v1, [I

    const v2, 0x10100a7

    aput v2, p4, v3

    .line 450
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 449
    invoke-virtual {v0, p4, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p3, v1, [I

    const p4, 0x101009c

    aput p4, p3, v3

    .line 452
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 451
    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v3, [I

    .line 454
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 453
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private a()V
    .locals 1

    .line 420
    sget v0, Lcab/snapp/snappuikit/a$f;->button_layout_textview:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->f:Landroid/widget/TextView;

    .line 421
    sget v0, Lcab/snapp/snappuikit/a$f;->button_layout_frame:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->g:Landroid/widget/FrameLayout;

    .line 422
    sget v0, Lcab/snapp/snappuikit/a$f;->button_layout_inner_frame:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->h:Landroid/widget/LinearLayout;

    .line 423
    sget v0, Lcab/snapp/snappuikit/a$f;->button_layout_imageView_end:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->i:Landroid/widget/ImageView;

    .line 424
    sget v0, Lcab/snapp/snappuikit/a$f;->button_layout_imageView_start:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->j:Landroid/widget/ImageView;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 376
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcab/snapp/snappuikit/a$g;->button_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 378
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->l:Landroid/graphics/drawable/Drawable;

    .line 380
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappButton;->a(Landroid/util/AttributeSet;)V

    .line 381
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappButton;->a()V

    .line 382
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappButton;->b()V

    .line 384
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_0

    const/4 p1, 0x0

    .line 387
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappButton;->setPreventCornerOverlap(Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 393
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcab/snapp/snappuikit/a$h;->buttonOptions:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 396
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_btnText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_btnText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "Button"

    .line 402
    iput-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->c:Ljava/lang/String;

    .line 405
    :goto_0
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_btnTextColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    .line 406
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_btnTextSize:I

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappButton;->b:I

    .line 407
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_uiTheme:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappButton;->d:I

    .line 408
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_btnIsRounded:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappButton;->e:Z

    .line 409
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_btnHasShadow:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappButton;->k:Z

    .line 410
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_btnIconEnd:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->m:Landroid/graphics/drawable/Drawable;

    .line 411
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_btnIconStart:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->n:Landroid/graphics/drawable/Drawable;

    .line 412
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_btnTextGravity:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappButton;->p:I

    .line 413
    sget v0, Lcab/snapp/snappuikit/a$h;->buttonOptions_btnGravity:I

    const/16 v1, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappButton;->q:I

    .line 415
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setRadius(F)V

    const/4 v0, 0x1

    .line 430
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setFocusable(Z)V

    .line 431
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setClickable(Z)V

    .line 432
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setText(Ljava/lang/String;)V

    .line 433
    iget v0, p0, Lcab/snapp/snappuikit/SnappButton;->b:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setTextSize(I)V

    .line 434
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappButton;->k:Z

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setHasShadow(Z)V

    .line 435
    iget v0, p0, Lcab/snapp/snappuikit/SnappButton;->d:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setUiTheme(I)V

    .line 436
    iget v0, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setTextColor(I)V

    .line 437
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setIconEnd(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setIconStart(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget v0, p0, Lcab/snapp/snappuikit/SnappButton;->q:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setGravity(I)V

    .line 440
    iget v0, p0, Lcab/snapp/snappuikit/SnappButton;->p:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappButton;->setTextGravity(I)V

    return-void
.end method


# virtual methods
.method public getIconEndAlpha()F
    .locals 1

    .line 103
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getIconStartAlpha()F
    .locals 1

    .line 108
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAlpha()F
    .locals 1

    .line 98
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 93
    iget v0, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    return v0
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 238
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 240
    iget v0, p0, Lcab/snapp/snappuikit/SnappButton;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 244
    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcab/snapp/snappuikit/a$b;->color_primary:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    .line 251
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappButton;->b()V

    return-void
.end method

.method public setGravity(I)V
    .locals 3

    .line 327
    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->q:I

    .line 328
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x2

    packed-switch p1, :pswitch_data_0

    .line 347
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p1, -0x1

    .line 348
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 349
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_0
    const p1, 0x800005

    .line 337
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 338
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 339
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_1
    const p1, 0x800003

    .line 332
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 333
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 334
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 342
    :pswitch_2
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 343
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 344
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHasShadow(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappButton;->k:Z

    .line 116
    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappButton;->setUseCompatPadding(Z)V

    return-void
.end method

.method public setIconEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 279
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->m:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->i:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->i:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconEndAlpha(F)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setIconStart(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 312
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->n:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 315
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->j:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->j:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconStartAlpha(F)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setRounded(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappButton;->e:Z

    .line 302
    iget p1, p0, Lcab/snapp/snappuikit/SnappButton;->d:I

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappButton;->setUiTheme(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 121
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->c:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextAlpha(F)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 256
    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    .line 257
    iget v0, p0, Lcab/snapp/snappuikit/SnappButton;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappButton;->o:Z

    if-nez v0, :cond_1

    .line 259
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/a$b;->selector_text_primary_to_pure_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextGravity(I)V
    .locals 1

    .line 356
    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->p:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 366
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->f:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    .line 363
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->f:Landroid/widget/TextView;

    const v0, 0x800015

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    .line 360
    :cond_1
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->f:Landroid/widget/TextView;

    const v0, 0x800013

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 295
    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->b:I

    .line 296
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->f:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setUiTheme(I)V
    .locals 3

    .line 127
    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->d:I

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_4

    .line 204
    :cond_0
    iget p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    if-eqz p1, :cond_1

    .line 206
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappButton;->o:Z

    .line 209
    :cond_1
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappButton;->e:Z

    if-eqz p1, :cond_2

    .line 211
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_no_border_pure_white:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_dark:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_white_three:I

    invoke-direct {p0, p1, v0, v0, v1}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto/16 :goto_4

    .line 215
    :cond_2
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_no_border_pure_white:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_dark:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_white_three:I

    invoke-direct {p0, p1, v0, v0, v1}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto/16 :goto_4

    .line 191
    :cond_3
    iget p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcab/snapp/snappuikit/a$b;->color_primary:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    .line 192
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappButton;->e:Z

    if-eqz p1, :cond_5

    .line 194
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_very_light_pink:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_very_light_pink_focused:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_very_light_pink_pressed:I

    sget v2, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_white_three:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto/16 :goto_4

    .line 198
    :cond_5
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_very_light_pink:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_very_light_pink_focused:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_very_light_pink_pressed:I

    sget v2, Lcab/snapp/snappuikit/a$d;->shape_button_white_three:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto/16 :goto_4

    .line 178
    :cond_6
    iget p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcab/snapp/snappuikit/a$b;->pure_white:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    .line 179
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappButton;->e:Z

    if-eqz p1, :cond_8

    .line 181
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_cherry:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_cherry_focused:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_cherry_pressed:I

    sget v2, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_white_three:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto/16 :goto_4

    .line 185
    :cond_8
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_cherry:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_cherry_focused:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_cherry_pressed:I

    sget v2, Lcab/snapp/snappuikit/a$d;->shape_button_white_three:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto/16 :goto_4

    .line 165
    :cond_9
    iget p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcab/snapp/snappuikit/a$b;->pure_white:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_2
    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    .line 166
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappButton;->e:Z

    if-eqz p1, :cond_b

    .line 168
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_green_blue:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_green_blue_focused:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_green_blue_pressed:I

    sget v2, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_white_three:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto :goto_4

    .line 172
    :cond_b
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_green_blue:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_green_blue_focused:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_green_blue_pressed:I

    sget v2, Lcab/snapp/snappuikit/a$d;->shape_button_white_three:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto :goto_4

    .line 148
    :cond_c
    iget p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    if-eqz p1, :cond_d

    .line 150
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappButton;->o:Z

    .line 153
    :cond_d
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappButton;->e:Z

    if-eqz p1, :cond_e

    .line 155
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_pure_white:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_dark:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_white_three:I

    invoke-direct {p0, p1, v0, v0, v1}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto :goto_4

    .line 159
    :cond_e
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_pure_white:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_dark:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_white_three:I

    invoke-direct {p0, p1, v0, v0, v1}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto :goto_4

    .line 135
    :cond_f
    iget p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    if-eqz p1, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcab/snapp/snappuikit/a$b;->pure_white:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_3
    iput p1, p0, Lcab/snapp/snappuikit/SnappButton;->a:I

    .line 136
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappButton;->e:Z

    if-eqz p1, :cond_11

    .line 138
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_dark:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_dark_focused:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_dark_pressed:I

    sget v2, Lcab/snapp/snappuikit/a$d;->shape_button_rounded_white_three:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    goto :goto_4

    .line 142
    :cond_11
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_button_dark:I

    sget v0, Lcab/snapp/snappuikit/a$d;->shape_button_dark_focused:I

    sget v1, Lcab/snapp/snappuikit/a$d;->shape_button_dark_pressed:I

    sget v2, Lcab/snapp/snappuikit/a$d;->shape_button_white_three:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcab/snapp/snappuikit/SnappButton;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    .line 223
    :goto_4
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappButton;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-boolean p1, p0, Lcab/snapp/snappuikit/SnappButton;->e:Z

    if-eqz p1, :cond_12

    .line 227
    sget p1, Lcab/snapp/snappuikit/a$d;->shape_cardview_rounded:I

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappButton;->setBackgroundResource(I)V

    return-void

    .line 231
    :cond_12
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcab/snapp/snappuikit/SnappButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
