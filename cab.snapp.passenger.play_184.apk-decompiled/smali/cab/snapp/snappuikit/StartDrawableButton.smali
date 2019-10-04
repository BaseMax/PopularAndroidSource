.class public Lcab/snapp/snappuikit/StartDrawableButton;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field a:Landroidx/appcompat/widget/AppCompatTextView;

.field b:Landroidx/appcompat/widget/AppCompatImageView;

.field c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/StartDrawableButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/StartDrawableButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/StartDrawableButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 48
    sget v0, Lcab/snapp/snappuikit/a$g;->view_start_drawable_button:I

    invoke-static {p1, v0, p0}, Lcab/snapp/snappuikit/StartDrawableButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget v0, Lcab/snapp/snappuikit/a$f;->tv_title:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/StartDrawableButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappuikit/StartDrawableButton;->a:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    sget v0, Lcab/snapp/snappuikit/a$f;->iv_start_icon:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/StartDrawableButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcab/snapp/snappuikit/StartDrawableButton;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 52
    sget v0, Lcab/snapp/snappuikit/a$f;->loading:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/StartDrawableButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/StartDrawableButton;->c:Landroid/view/View;

    .line 54
    sget v0, Lcab/snapp/snappuikit/a$d;->selector_start_drawable:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/StartDrawableButton;->setBackgroundResource(I)V

    if-eqz p2, :cond_1

    .line 57
    sget-object v0, Lcab/snapp/snappuikit/a$h;->StartDrawableButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcab/snapp/snappuikit/StartDrawableButton;->a:Landroidx/appcompat/widget/AppCompatTextView;

    sget v0, Lcab/snapp/snappuikit/a$h;->StartDrawableButton_android_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p2, p0, Lcab/snapp/snappuikit/StartDrawableButton;->b:Landroidx/appcompat/widget/AppCompatImageView;

    sget v0, Lcab/snapp/snappuikit/a$h;->StartDrawableButton_android_drawableStart:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    sget p2, Lcab/snapp/snappuikit/a$h;->StartDrawableButton_sdbTextFont:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcab/snapp/snappuikit/StartDrawableButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcab/snapp/snappuikit/a$h;->StartDrawableButton_sdbTextFont:I

    sget v1, Lcab/snapp/snappuikit/a$e;->iran_sans_mobile_medium:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/StartDrawableButton;->setTextFont(Landroid/graphics/Typeface;)V

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public setLoading(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcab/snapp/snappuikit/StartDrawableButton;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcab/snapp/snappuikit/StartDrawableButton;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcab/snapp/snappuikit/StartDrawableButton;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 86
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappuikit/StartDrawableButton;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcab/snapp/snappuikit/StartDrawableButton;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcab/snapp/snappuikit/StartDrawableButton;->c:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcab/snapp/snappuikit/StartDrawableButton;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcab/snapp/snappuikit/StartDrawableButton;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
