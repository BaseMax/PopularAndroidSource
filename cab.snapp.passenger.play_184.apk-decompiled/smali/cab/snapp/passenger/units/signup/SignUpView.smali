.class public Lcab/snapp/passenger/units/signup/SignUpView;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ScrollView;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/signup/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/snappdialog/b;

.field private b:Lcab/snapp/passenger/units/signup/c;

.field private c:Lcab/snapp/snappdialog/b;

.field emailEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0480
    .end annotation
.end field

.field fullNameEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0481
    .end annotation
.end field

.field loading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0482
    .end annotation
.end field

.field loadingWithGoogle:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0487
    .end annotation
.end field

.field newsLetterCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0483
    .end annotation
.end field

.field panelSeparatorLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0214
    .end annotation
.end field

.field passwordEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0484
    .end annotation
.end field

.field signUpButton:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a047f
    .end annotation
.end field

.field signUpWithGoogleButton:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0485
    .end annotation
.end field

.field signUpWithGoogleLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0486
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/signup/SignUpView;)Lcab/snapp/passenger/units/signup/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->b:Lcab/snapp/passenger/units/signup/c;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 409
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->dismissSignUpLimitExceedDialogIfNeeded()V

    return-void
.end method

.method private synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView;->b:Lcab/snapp/passenger/units/signup/c;

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/signup/c;->onNewsLetterCheckChanged(Z)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 243
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->onSignUpClick()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 406
    iget-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView;->b:Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/signup/c;->onEmailSupportClicked()V

    .line 407
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->dismissSignUpLimitExceedDialogIfNeeded()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 385
    iget-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$8IXTjqSOxxyGcLzIB3lZrgWKp9M(Lcab/snapp/passenger/units/signup/SignUpView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/signup/SignUpView;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$PQdBwPiPKl16GTJslXvXJl7Mt64(Lcab/snapp/passenger/units/signup/SignUpView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/signup/SignUpView;->a(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$jHyd0bw8RUdC0juuqrjrQRuh9jA(Lcab/snapp/passenger/units/signup/SignUpView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/signup/SignUpView;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$n3_Hde-HmE0X15YcdoitUtpJ-LI(Lcab/snapp/passenger/units/signup/SignUpView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/signup/SignUpView;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$w5meaPl3cc00X5XKd6POa7J_2Cs(Lcab/snapp/passenger/units/signup/SignUpView;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/signup/SignUpView;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public changeNewsLetterCheckBoxState(Z)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->newsLetterCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->setChecked(Z)V

    return-void
.end method

.method public dismissSignUpLimitExceedDialogIfNeeded()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->c:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 426
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_1
    return-void
.end method

.method public hideEmailError()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    return-void
.end method

.method public hideFullNameError()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->fullNameEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    return-void
.end method

.method public hideKeyboard()V
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->signUpButton:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method public hidePasswordError()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    return-void
.end method

.method public hideSignUpWithGoogleLoading()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->loadingWithGoogle:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->signUpWithGoogleButton:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method public initListeners()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/signup/-$$Lambda$SignUpView$PQdBwPiPKl16GTJslXvXJl7Mt64;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$SignUpView$PQdBwPiPKl16GTJslXvXJl7Mt64;-><init>(Lcab/snapp/passenger/units/signup/SignUpView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 247
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->newsLetterCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    new-instance v1, Lcab/snapp/passenger/units/signup/-$$Lambda$SignUpView$w5meaPl3cc00X5XKd6POa7J_2Cs;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$SignUpView$w5meaPl3cc00X5XKd6POa7J_2Cs;-><init>(Lcab/snapp/passenger/units/signup/SignUpView;)V

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 483
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 484
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 485
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->initListeners()V

    .line 1167
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->fullNameEditText:Lcab/snapp/snappuikit/SnappEditText;

    new-instance v1, Lcab/snapp/passenger/units/signup/SignUpView$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/signup/SignUpView$1;-><init>(Lcab/snapp/passenger/units/signup/SignUpView;)V

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1190
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    new-instance v1, Lcab/snapp/passenger/units/signup/SignUpView$2;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/signup/SignUpView$2;-><init>(Lcab/snapp/passenger/units/signup/SignUpView;)V

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1213
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    new-instance v1, Lcab/snapp/passenger/units/signup/SignUpView$3;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/signup/SignUpView$3;-><init>(Lcab/snapp/passenger/units/signup/SignUpView;)V

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1435
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090008

    invoke-static {v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1436
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1438
    invoke-static {}, Lcab/snapp/passenger/f/g;->isCurrentLocalRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0

    .line 1444
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1447
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/signup/SignUpView$4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/signup/SignUpView$4;-><init>(Lcab/snapp/passenger/units/signup/SignUpView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method onSignUpClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a047f
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->b:Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/c;->onSignUpClick()V

    return-void
.end method

.method onSignUpWithGoogleClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0485
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->b:Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/c;->onSignUpWithGoogleClick()V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 32
    check-cast p1, Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/signup/SignUpView;->setPresenter(Lcab/snapp/passenger/units/signup/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/signup/c;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView;->b:Lcab/snapp/passenger/units/signup/c;

    return-void
.end method

.method public showEmailError(I)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showError(Ljava/lang/String;)Lcab/snapp/snappdialog/b;
    .locals 3

    .line 372
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->a:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 377
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120115

    .line 378
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 380
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 381
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 383
    invoke-virtual {v2, p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p1

    .line 382
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 385
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120170

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/signup/-$$Lambda$SignUpView$8IXTjqSOxxyGcLzIB3lZrgWKp9M;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$SignUpView$8IXTjqSOxxyGcLzIB3lZrgWKp9M;-><init>(Lcab/snapp/passenger/units/signup/SignUpView;)V

    invoke-virtual {p1, v0, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 386
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView;->a:Lcab/snapp/snappdialog/b;

    .line 389
    iget-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView;->a:Lcab/snapp/snappdialog/b;

    return-object p1
.end method

.method public showFullNameError(I)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->fullNameEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->signUpButton:Lcab/snapp/snappuikit/SnappButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method public showPasswordError(I)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showSignUpLimitExceedDialog()V
    .locals 4

    .line 397
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120115

    .line 398
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f12014e

    .line 399
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 400
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 401
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 402
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12014c

    .line 403
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/signup/-$$Lambda$SignUpView$n3_Hde-HmE0X15YcdoitUtpJ-LI;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$SignUpView$n3_Hde-HmE0X15YcdoitUtpJ-LI;-><init>(Lcab/snapp/passenger/units/signup/SignUpView;)V

    const v2, 0x7f120258

    .line 405
    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/signup/-$$Lambda$SignUpView$jHyd0bw8RUdC0juuqrjrQRuh9jA;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$SignUpView$jHyd0bw8RUdC0juuqrjrQRuh9jA;-><init>(Lcab/snapp/passenger/units/signup/SignUpView;)V

    const v2, 0x7f120060

    .line 409
    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->c:Lcab/snapp/snappdialog/b;

    .line 412
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showSignUpWithGoogleLoading()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->loadingWithGoogle:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/SignUpView;->signUpWithGoogleButton:Lcab/snapp/snappuikit/SnappButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method
