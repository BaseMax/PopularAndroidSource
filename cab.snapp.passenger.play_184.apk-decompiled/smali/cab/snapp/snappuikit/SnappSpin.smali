.class public Lcab/snapp/snappuikit/SnappSpin;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final SIZE_LARGE:I = 0x3

.field public static final SIZE_MEDIUM:I = 0x2

.field public static final SIZE_SMALL:I = 0x1

.field public static final TYPE_CHASING_DOTS:I = 0x6a

.field public static final TYPE_CIRCLE:I = 0x6c

.field public static final TYPE_CUBE_GRID:I = 0x6d

.field public static final TYPE_DOUBLE_BOUNCE:I = 0x66

.field public static final TYPE_FADING_CIRCLE:I = 0x6e

.field public static final TYPE_FOLDING_CUBE:I = 0x6f

.field public static final TYPE_PULSE:I = 0x69

.field public static final TYPE_ROTATING_CIRCLE:I = 0x70

.field public static final TYPE_ROTATING_PLANE:I = 0x65

.field public static final TYPE_THREE_BOUNCE:I = 0x6b

.field public static final TYPE_WANDERING_CUBES:I = 0x68

.field public static final TYPE_WAVE:I = 0x67


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/github/ybq/android/spinkit/SpinKitView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    .line 117
    iput v0, p0, Lcab/snapp/snappuikit/SnappSpin;->a:I

    const/4 v0, 0x2

    .line 122
    iput v0, p0, Lcab/snapp/snappuikit/SnappSpin;->b:I

    const/16 v0, 0x65

    .line 127
    iput v0, p0, Lcab/snapp/snappuikit/SnappSpin;->c:I

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/SnappSpin;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x1000000

    .line 117
    iput v0, p0, Lcab/snapp/snappuikit/SnappSpin;->a:I

    const/4 v0, 0x2

    .line 122
    iput v0, p0, Lcab/snapp/snappuikit/SnappSpin;->b:I

    const/16 v0, 0x65

    .line 127
    iput v0, p0, Lcab/snapp/snappuikit/SnappSpin;->c:I

    .line 156
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappSpin;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x1000000

    .line 117
    iput p3, p0, Lcab/snapp/snappuikit/SnappSpin;->a:I

    const/4 p3, 0x2

    .line 122
    iput p3, p0, Lcab/snapp/snappuikit/SnappSpin;->b:I

    const/16 p3, 0x65

    .line 127
    iput p3, p0, Lcab/snapp/snappuikit/SnappSpin;->c:I

    .line 169
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappSpin;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p3, -0x1000000

    .line 117
    iput p3, p0, Lcab/snapp/snappuikit/SnappSpin;->a:I

    const/4 p3, 0x2

    .line 122
    iput p3, p0, Lcab/snapp/snappuikit/SnappSpin;->b:I

    const/16 p3, 0x65

    .line 127
    iput p3, p0, Lcab/snapp/snappuikit/SnappSpin;->c:I

    .line 184
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/SnappSpin;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 2

    const/16 v0, 0x11

    .line 227
    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappSpin;->setGravity(I)V

    .line 228
    sget v0, Lcab/snapp/snappuikit/a$f;->spin_layout_spin_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappSpin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/ybq/android/spinkit/SpinKitView;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappSpin;->d:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 229
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappSpin;->d:Lcom/github/ybq/android/spinkit/SpinKitView;

    iget v1, p0, Lcab/snapp/snappuikit/SnappSpin;->a:I

    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/SpinKitView;->setColor(I)V

    .line 230
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappSpin;->d:Lcom/github/ybq/android/spinkit/SpinKitView;

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappSpin;->getDrawableBasedOnType()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/SpinKitView;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 197
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappSpin;->a(Landroid/util/AttributeSet;)V

    .line 198
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappSpin;->getLayoutBasedOnSize()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 199
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappSpin;->a()V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 287
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappSpin;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcab/snapp/snappuikit/a$h;->spinOptions:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 290
    sget v0, Lcab/snapp/snappuikit/a$h;->spinOptions_spinColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappSpin;->a:I

    .line 291
    sget v0, Lcab/snapp/snappuikit/a$h;->spinOptions_spinSize:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappSpin;->b:I

    .line 292
    sget v0, Lcab/snapp/snappuikit/a$h;->spinOptions_spinType:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappSpin;->c:I

    .line 294
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getDrawableBasedOnType()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 240
    iget v0, p0, Lcab/snapp/snappuikit/SnappSpin;->c:I

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Lcom/github/ybq/android/spinkit/c/l;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/l;-><init>()V

    return-object v0

    .line 273
    :pswitch_0
    new-instance v0, Lcom/github/ybq/android/spinkit/c/k;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/k;-><init>()V

    return-object v0

    .line 270
    :pswitch_1
    new-instance v0, Lcom/github/ybq/android/spinkit/c/f;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/f;-><init>()V

    return-object v0

    .line 267
    :pswitch_2
    new-instance v0, Lcom/github/ybq/android/spinkit/c/e;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/e;-><init>()V

    return-object v0

    .line 264
    :pswitch_3
    new-instance v0, Lcom/github/ybq/android/spinkit/c/c;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/c;-><init>()V

    return-object v0

    .line 261
    :pswitch_4
    new-instance v0, Lcom/github/ybq/android/spinkit/c/b;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/b;-><init>()V

    return-object v0

    .line 258
    :pswitch_5
    new-instance v0, Lcom/github/ybq/android/spinkit/c/m;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/m;-><init>()V

    return-object v0

    .line 255
    :pswitch_6
    new-instance v0, Lcom/github/ybq/android/spinkit/c/a;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/a;-><init>()V

    return-object v0

    .line 252
    :pswitch_7
    new-instance v0, Lcom/github/ybq/android/spinkit/c/i;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/i;-><init>()V

    return-object v0

    .line 249
    :pswitch_8
    new-instance v0, Lcom/github/ybq/android/spinkit/c/n;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/n;-><init>()V

    return-object v0

    .line 246
    :pswitch_9
    new-instance v0, Lcom/github/ybq/android/spinkit/c/o;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/o;-><init>()V

    return-object v0

    .line 243
    :pswitch_a
    new-instance v0, Lcom/github/ybq/android/spinkit/c/d;

    invoke-direct {v0}, Lcom/github/ybq/android/spinkit/c/d;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLayoutBasedOnSize()I
    .locals 2

    .line 209
    iget v0, p0, Lcab/snapp/snappuikit/SnappSpin;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 218
    sget v0, Lcab/snapp/snappuikit/a$g;->spin_layout:I

    return v0

    .line 215
    :cond_0
    sget v0, Lcab/snapp/snappuikit/a$g;->spin_layout_large:I

    return v0

    .line 212
    :cond_1
    sget v0, Lcab/snapp/snappuikit/a$g;->spin_layout_small:I

    return v0
.end method


# virtual methods
.method public setSpinColor(I)V
    .locals 1

    .line 304
    iput p1, p0, Lcab/snapp/snappuikit/SnappSpin;->a:I

    .line 305
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappSpin;->d:Lcom/github/ybq/android/spinkit/SpinKitView;

    if-eqz p1, :cond_0

    .line 307
    iget v0, p0, Lcab/snapp/snappuikit/SnappSpin;->a:I

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/SpinKitView;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setSpinSize(I)V
    .locals 2

    .line 332
    iput p1, p0, Lcab/snapp/snappuikit/SnappSpin;->b:I

    .line 333
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappSpin;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappSpin;->removeAllViews()V

    .line 336
    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappSpin;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappSpin;->getLayoutBasedOnSize()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 337
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappSpin;->a()V

    :cond_0
    return-void
.end method

.method public setSpinType(I)V
    .locals 1

    .line 318
    iput p1, p0, Lcab/snapp/snappuikit/SnappSpin;->c:I

    .line 319
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappSpin;->d:Lcom/github/ybq/android/spinkit/SpinKitView;

    if-eqz p1, :cond_0

    .line 321
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappSpin;->getDrawableBasedOnType()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/SpinKitView;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
