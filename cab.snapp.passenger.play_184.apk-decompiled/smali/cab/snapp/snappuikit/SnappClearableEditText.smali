.class public Lcab/snapp/snappuikit/SnappClearableEditText;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field b:Landroidx/appcompat/widget/AppCompatEditText;

.field c:Landroidx/appcompat/widget/AppCompatImageButton;

.field d:Landroid/view/View;

.field e:Landroidx/appcompat/widget/AppCompatTextView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappClearableEditText;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v0, Lcab/snapp/snappuikit/a$h;->SnappClearableEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 46
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappClearableEditText;->a(Landroid/content/res/TypedArray;)V

    .line 47
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappClearableEditText;->a(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappClearableEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    sget-object v0, Lcab/snapp/snappuikit/a$h;->SnappClearableEditText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 56
    invoke-direct {p0, p2}, Lcab/snapp/snappuikit/SnappClearableEditText;->a(Landroid/content/res/TypedArray;)V

    .line 57
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappClearableEditText;->a(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0}, Lcab/snapp/snappuikit/SnappClearableEditText;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/a$g;->clearable_edit_text:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    sget v0, Lcab/snapp/snappuikit/a$f;->clearable_edit_text_parent_layout:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappClearableEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    sget v0, Lcab/snapp/snappuikit/a$f;->clearable_edit_text_main_edit_text:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappClearableEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 82
    sget v0, Lcab/snapp/snappuikit/a$f;->clearable_edit_text_main_image_button:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappClearableEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 83
    sget v0, Lcab/snapp/snappuikit/a$f;->clearable_edit_text_underline_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappClearableEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->d:Landroid/view/View;

    .line 84
    sget v0, Lcab/snapp/snappuikit/a$f;->clearable_edit_text_error_text_view:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/SnappClearableEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$b;->carbon_grey:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappClearableEditText;->getTextDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setTextDirection(I)V

    .line 89
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Lcab/snapp/snappuikit/SnappClearableEditText;->getTextDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setLayoutDirection(I)V

    .line 90
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setGravity(I)V

    .line 93
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lcab/snapp/snappuikit/SnappClearableEditText$1;

    invoke-direct {v1, p0, p1}, Lcab/snapp/snappuikit/SnappClearableEditText$1;-><init>(Lcab/snapp/snappuikit/SnappClearableEditText;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v0, Lcab/snapp/snappuikit/SnappClearableEditText$2;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/SnappClearableEditText$2;-><init>(Lcab/snapp/snappuikit/SnappClearableEditText;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    iget v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->h:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setHintTextColor(I)V

    .line 139
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    iget v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->i:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setTextColor(I)V

    .line 140
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    iget-boolean v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->k:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setSingleLine(Z)V

    .line 142
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v0, Lcab/snapp/snappuikit/SnappClearableEditText$3;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/SnappClearableEditText$3;-><init>(Lcab/snapp/snappuikit/SnappClearableEditText;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 67
    sget v0, Lcab/snapp/snappuikit/a$h;->SnappClearableEditText_Hint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->f:Ljava/lang/String;

    .line 68
    sget v0, Lcab/snapp/snappuikit/a$h;->SnappClearableEditText_Text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->g:Ljava/lang/String;

    .line 69
    sget v0, Lcab/snapp/snappuikit/a$h;->SnappClearableEditText_HintColor:I

    const-string v1, "#D6DADE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->h:I

    .line 70
    sget v0, Lcab/snapp/snappuikit/a$h;->SnappClearableEditText_Color:I

    const-string v1, "#344558"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->i:I

    .line 71
    sget v0, Lcab/snapp/snappuikit/a$h;->SnappClearableEditText_BackgroundColor:I

    iget v1, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->j:I

    .line 73
    sget v0, Lcab/snapp/snappuikit/a$h;->SnappClearableEditText_SingleLine:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->k:Z

    return-void
.end method

.method public static convertDpToPixel(FLandroid/content/Context;)F
    .locals 1

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    mul-float p0, p0, p1

    return p0
.end method


# virtual methods
.method public getEditText()Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1

    .line 169
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method

.method public resetError()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcab/snapp/snappuikit/SnappClearableEditText;->b:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
