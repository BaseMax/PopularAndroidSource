.class public Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/animation/TimeInterpolator;

.field private f:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->a:I

    .line 23
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->b:I

    const/16 v0, 0x4b0

    .line 24
    iput v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->c:I

    const-string v0, "%s"

    .line 25
    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->a:I

    .line 23
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->b:I

    const/16 v0, 0x4b0

    .line 24
    iput v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->c:I

    const-string v0, "%s"

    .line 25
    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->d:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p2, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->a:I

    .line 23
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->b:I

    const/16 p1, 0x4b0

    .line 24
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->c:I

    const-string p1, "%s"

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->d:Ljava/lang/String;

    .line 66
    invoke-direct {p0, p2, p3}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcab/snapp/snappuikit/a$h;->countingTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x4b0

    .line 89
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->c:I

    .line 92
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public animateFromZero(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateText(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public animateFromZero(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 123
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setDuration(I)V

    const/4 p2, 0x0

    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateText(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public animateFromZerotoCurrentValue()V
    .locals 2

    const/4 v0, 0x0

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getEndValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateText(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public animateFromZerotoCurrentValue(Ljava/lang/Integer;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setDuration(I)V

    const/4 p1, 0x0

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getEndValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateText(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public animateText()V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getStartValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getEndValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateText(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public animateText(Ljava/lang/Integer;)V
    .locals 1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setDuration(I)V

    .line 145
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getStartValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getEndValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateText(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public animateText(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setStartValue(I)V

    .line 165
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setEndValue(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 167
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 168
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    new-instance p2, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView$1;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView$1;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    new-instance p2, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView$2;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView$2;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 183
    iget-object p2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->f:Landroid/animation/Animator$AnimatorListener;

    if-eqz p2, :cond_0

    .line 185
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->getDuration()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 189
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getDuration()I
    .locals 1

    .line 239
    iget v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->c:I

    return v0
.end method

.method public getEndValue()I
    .locals 1

    .line 219
    iget v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->b:I

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 280
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->e:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getStartValue()I
    .locals 1

    .line 199
    iget v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->a:I

    return v0
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->f:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->c:I

    return-void
.end method

.method public setEndValue(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->b:I

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->d:Ljava/lang/String;

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setStartValue(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->a:I

    return-void
.end method
