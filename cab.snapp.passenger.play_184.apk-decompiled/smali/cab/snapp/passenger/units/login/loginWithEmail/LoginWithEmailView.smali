.class public Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ScrollView;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/login/loginWithEmail/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/snappdialog/b;

.field private b:Lcab/snapp/passenger/units/login/loginWithEmail/c;

.field private c:Lcab/snapp/snappdialog/b;

.field private d:Lcab/snapp/snappdialog/b;

.field private e:Lcab/snapp/snappdialog/b;

.field private f:Lcab/snapp/snappdialog/b;

.field public viewLogInEmailEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0353
    .end annotation
.end field

.field public viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0355
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 441
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 501
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->b:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onResendVerificationEmailClicked()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 393
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->dismissEmailNotVerifiedDialogIfPossible()V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    .line 294
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$CwX7fii5_IJavKoamqtptyCRtPc(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$QHxP1ix1kORwS2vAeN1yH4ORlUw(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$RtmdM0YqZCpsd38mpkU98lIhU18(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$T7pVP8FIIEHryIuUZr3BakKsEB0(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->a(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$j7ryZ9lx1K4lrnPMVNjxbRlnrhk(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismissEmailNotVerifiedDialogIfPossible()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_1
    return-void
.end method

.method public dismissEmailVerificationDialogIfPossible()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->e:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 459
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_1
    return-void
.end method

.method public forgetPassword()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0354
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->b:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->forgetPasswordClicked()V

    :cond_0
    return-void
.end method

.method public getEmailText()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInEmailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordText()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideErrorOnEmail()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInEmailEditText:Lcab/snapp/snappuikit/SnappEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->showError(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInEmailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    return-void
.end method

.method public hideErrorOnPassword()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->showError(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    return-void
.end method

.method public hideKeyboard()V
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->c:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_1
    return-void
.end method

.method public initField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 516
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInEmailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setText(Ljava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/SnappEditText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public login()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0352
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->b:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->loginClicked()V

    :cond_0
    return-void
.end method

.method public loginWithGoogle()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0359
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->b:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->loginWithGoogleClicked()V

    :cond_0
    return-void
.end method

.method public loginWithPhone()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0360
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->b:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->loginWithPhoneNumberClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 525
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 526
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 1182
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090008

    invoke-static {v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1183
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1185
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView$1;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public resetInputs()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInEmailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    .line 276
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    return-void
.end method

.method public setEmailAndPasswordTextWatchers(Landroid/text/TextWatcher;Landroid/text/TextWatcher;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInEmailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/SnappEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 33
    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->setPresenter(Lcab/snapp/passenger/units/login/loginWithEmail/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/login/loginWithEmail/c;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->b:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    return-void
.end method

.method public showEmailNotVerifiedDialog()V
    .locals 4

    .line 385
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->dismissEmailNotVerifiedDialogIfPossible()V

    .line 387
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120115

    .line 388
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f1200b9

    .line 389
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 391
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1200a8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$LoginWithEmailView$RtmdM0YqZCpsd38mpkU98lIhU18;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$LoginWithEmailView$RtmdM0YqZCpsd38mpkU98lIhU18;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V

    const v2, 0x7f120170

    .line 393
    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$LoginWithEmailView$j7ryZ9lx1K4lrnPMVNjxbRlnrhk;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$LoginWithEmailView$j7ryZ9lx1K4lrnPMVNjxbRlnrhk;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V

    const v2, 0x7f120207

    .line 394
    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->d:Lcab/snapp/snappdialog/b;

    .line 397
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showEmailVerificationDialog(Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 423
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->dismissEmailVerificationDialogIfPossible()V

    .line 430
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120105

    .line 431
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f120207

    .line 432
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/16 v1, 0x192

    .line 433
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->dismissOnButtonClick(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/d$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;-><init>()V

    .line 435
    invoke-virtual {v1, p1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEtTextWatcher(Landroid/text/TextWatcher;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p1

    .line 436
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12028f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEditTextHint(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->build()Lcab/snapp/snappdialog/dialogViews/a/d;

    move-result-object p1

    .line 434
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const v0, 0x7f120060

    .line 438
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->setNegativeButtonText(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const v0, 0x7f120163

    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$LoginWithEmailView$T7pVP8FIIEHryIuUZr3BakKsEB0;

    invoke-direct {v1, p0, p2}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$LoginWithEmailView$T7pVP8FIIEHryIuUZr3BakKsEB0;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;Landroid/view/View$OnClickListener;)V

    .line 439
    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 443
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->e:Lcab/snapp/snappdialog/b;

    .line 445
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showErrorOnEmail(I)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInEmailEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 236
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorOnPassword(I)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->viewLogInPasswordEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 257
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorToUser(I)V
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showErrorToUser(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorToUser(Ljava/lang/String;)V
    .locals 3

    .line 286
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120115

    .line 287
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 290
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 292
    invoke-virtual {v2, p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p1

    .line 291
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 294
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120170

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$LoginWithEmailView$CwX7fii5_IJavKoamqtptyCRtPc;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$LoginWithEmailView$CwX7fii5_IJavKoamqtptyCRtPc;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V

    invoke-virtual {p1, v0, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 295
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->a:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showLoadingDialog()V
    .locals 5

    .line 331
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->c:Lcab/snapp/snappdialog/b;

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 338
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/f$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/f$a;-><init>()V

    .line 341
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12019f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/snappdialog/dialogViews/a/f$a;->setTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/f$a;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Lcab/snapp/snappdialog/dialogViews/a/f$a;->build()Lcab/snapp/snappdialog/dialogViews/a/f;

    move-result-object v2

    .line 339
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 344
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 345
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->c:Lcab/snapp/snappdialog/b;

    .line 349
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2

    .line 470
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public showMessageDialog(Ljava/lang/String;)V
    .locals 3

    .line 485
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->f:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 491
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    .line 494
    :cond_1
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120105

    .line 495
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 496
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 497
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 499
    invoke-virtual {v1, p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p1

    .line 500
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p1

    .line 498
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 501
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120170

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$LoginWithEmailView$QHxP1ix1kORwS2vAeN1yH4ORlUw;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$LoginWithEmailView$QHxP1ix1kORwS2vAeN1yH4ORlUw;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;)V

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 502
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 503
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->f:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public signUp()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0358
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->b:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->signUpClicked()V

    :cond_0
    return-void
.end method
