.class public Lcab/snapp/snappuikit/LoadingButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroidx/appcompat/widget/AppCompatButton;

.field b:Landroid/view/View;

.field c:Ljava/lang/String;

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcab/snapp/snappuikit/LoadingButton;->d:Z

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcab/snapp/snappuikit/LoadingButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcab/snapp/snappuikit/LoadingButton;->d:Z

    .line 32
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/LoadingButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 21
    iput-boolean p3, p0, Lcab/snapp/snappuikit/LoadingButton;->d:Z

    .line 39
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/LoadingButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 44
    sget v0, Lcab/snapp/snappuikit/a$g;->view_loadin_button:I

    invoke-static {p1, v0, p0}, Lcab/snapp/snappuikit/LoadingButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lcab/snapp/snappuikit/a$f;->btn:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/LoadingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcab/snapp/snappuikit/LoadingButton;->a:Landroidx/appcompat/widget/AppCompatButton;

    .line 47
    sget v0, Lcab/snapp/snappuikit/a$f;->loading:I

    invoke-virtual {p0, v0}, Lcab/snapp/snappuikit/LoadingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/LoadingButton;->b:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 50
    sget-object v0, Lcab/snapp/snappuikit/a$h;->LoadingButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    sget p2, Lcab/snapp/snappuikit/a$h;->LoadingButton_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/snappuikit/LoadingButton;->c:Ljava/lang/String;

    .line 53
    sget p2, Lcab/snapp/snappuikit/a$h;->LoadingButton_lbTextFont:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcab/snapp/snappuikit/LoadingButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcab/snapp/snappuikit/a$h;->LoadingButton_lbTextFont:I

    sget v1, Lcab/snapp/snappuikit/a$e;->iran_sans_mobile_bold:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p2, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/LoadingButton;->setTextFont(Landroid/graphics/Typeface;)V

    .line 57
    :cond_0
    iget-object p2, p0, Lcab/snapp/snappuikit/LoadingButton;->a:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v0, p0, Lcab/snapp/snappuikit/LoadingButton;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 58
    sget p2, Lcab/snapp/snappuikit/a$h;->LoadingButton_lbLoading:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcab/snapp/snappuikit/LoadingButton;->d:Z

    .line 59
    iget-boolean p2, p0, Lcab/snapp/snappuikit/LoadingButton;->d:Z

    invoke-virtual {p0, p2}, Lcab/snapp/snappuikit/LoadingButton;->setLoading(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcab/snapp/snappuikit/LoadingButton;->a:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    return-void
.end method

.method public setLoading(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcab/snapp/snappuikit/LoadingButton;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcab/snapp/snappuikit/LoadingButton;->a:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    return-void

    .line 82
    :cond_0
    iget-object p1, p0, Lcab/snapp/snappuikit/LoadingButton;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcab/snapp/snappuikit/LoadingButton;->a:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcab/snapp/snappuikit/LoadingButton;->a:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcab/snapp/snappuikit/LoadingButton;->a:Landroidx/appcompat/widget/AppCompatButton;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcab/snapp/snappuikit/LoadingButton;->a:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
