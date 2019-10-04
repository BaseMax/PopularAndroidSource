.class public Lcab/snapp/snappdialog/widgets/SnappLoading;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/animation/AnimatorSet;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->a:Z

    const/16 v0, 0x12c

    .line 34
    iput v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->b:I

    .line 39
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->c:Landroid/animation/AnimatorSet;

    .line 56
    invoke-direct {p0, p1}, Lcab/snapp/snappdialog/widgets/SnappLoading;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->a:Z

    const/16 p2, 0x12c

    .line 34
    iput p2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->b:I

    .line 39
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->c:Landroid/animation/AnimatorSet;

    .line 68
    invoke-direct {p0, p1}, Lcab/snapp/snappdialog/widgets/SnappLoading;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->a:Z

    const/16 p2, 0x12c

    .line 34
    iput p2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->b:I

    .line 39
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->c:Landroid/animation/AnimatorSet;

    .line 81
    invoke-direct {p0, p1}, Lcab/snapp/snappdialog/widgets/SnappLoading;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->a:Z

    const/16 p2, 0x12c

    .line 34
    iput p2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->b:I

    .line 39
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->c:Landroid/animation/AnimatorSet;

    .line 96
    invoke-direct {p0, p1}, Lcab/snapp/snappdialog/widgets/SnappLoading;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/widgets/SnappLoading;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->f:Landroid/view/View;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 179
    sget v0, Lcab/snapp/snappdialog/a$e;->snapp_loading_first_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/widgets/SnappLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->e:Landroid/view/View;

    .line 180
    sget v0, Lcab/snapp/snappdialog/a$e;->snapp_loading_second_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/widgets/SnappLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->f:Landroid/view/View;

    .line 181
    sget v0, Lcab/snapp/snappdialog/a$e;->snapp_loading_third_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/widgets/SnappLoading;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->g:Landroid/view/View;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 167
    sget v0, Lcab/snapp/snappdialog/a$f;->snapp_loading_layout:I

    .line 168
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 169
    invoke-direct {p0}, Lcab/snapp/snappdialog/widgets/SnappLoading;->a()V

    .line 170
    invoke-direct {p0}, Lcab/snapp/snappdialog/widgets/SnappLoading;->b()V

    .line 171
    invoke-virtual {p0}, Lcab/snapp/snappdialog/widgets/SnappLoading;->startAnimate()V

    return-void
.end method

.method static synthetic b(Lcab/snapp/snappdialog/widgets/SnappLoading;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->e:Landroid/view/View;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 189
    sget v0, Lcab/snapp/snappdialog/a$c;->shape_circle_green_blue:I

    .line 190
    iget-object v1, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 191
    iget-object v1, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 192
    iget-object v1, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic c(Lcab/snapp/snappdialog/widgets/SnappLoading;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->g:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public isAnimating()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->d:Z

    return v0
.end method

.method public isStartAnimation()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->a:Z

    return v0
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->b:I

    return-void
.end method

.method public setStartAnimation(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->a:Z

    return-void
.end method

.method public startAnimate()V
    .locals 6

    .line 200
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 201
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 202
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 203
    iget v2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    .line 204
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 205
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 207
    new-instance v3, Lcab/snapp/snappdialog/widgets/SnappLoading$1;

    invoke-direct {v3, p0}, Lcab/snapp/snappdialog/widgets/SnappLoading$1;-><init>(Lcab/snapp/snappdialog/widgets/SnappLoading;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v0, [F

    .line 216
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 217
    iget v4, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->b:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 218
    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 219
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 220
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 221
    new-instance v2, Lcab/snapp/snappdialog/widgets/SnappLoading$2;

    invoke-direct {v2, p0}, Lcab/snapp/snappdialog/widgets/SnappLoading$2;-><init>(Lcab/snapp/snappdialog/widgets/SnappLoading;)V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    iget-object v2, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->c:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 233
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 234
    iput-boolean v1, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->d:Z

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

    .line 242
    iput-boolean v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->d:Z

    .line 243
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 246
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->e:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 251
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 256
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 258
    :cond_2
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->g:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 261
    iget-object v0, p0, Lcab/snapp/snappdialog/widgets/SnappLoading;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    return-void
.end method
