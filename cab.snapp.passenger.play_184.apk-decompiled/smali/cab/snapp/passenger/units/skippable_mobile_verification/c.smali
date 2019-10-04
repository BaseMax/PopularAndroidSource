.class public final Lcab/snapp/passenger/units/skippable_mobile_verification/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;",
        "Lcab/snapp/passenger/units/skippable_mobile_verification/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final PIN_ENTRY_LENGTH:I = 0x6


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/os/CountDownTimer;

.field c:Landroid/text/TextWatcher;

.field d:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

.field private e:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    .line 25
    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c$1;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->c:Landroid/text/TextWatcher;

    .line 63
    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$c$MVj7ZM64C6-S4XSDyWNHhpK-8tc;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$c$MVj7ZM64C6-S4XSDyWNHhpK-8tc;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->d:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    .line 73
    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$c$3n11-jy3-029UQegr57V26SM7ZE;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$c$3n11-jy3-029UQegr57V26SM7ZE;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->e:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setBigIcon(I)V

    .line 281
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideToolbar()V

    .line 283
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showPhoneEntryLayout()V

    .line 284
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideVerificationLayout()V

    .line 286
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    return-void
.end method

.method private synthetic a(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 64
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideKeyboard()V

    .line 68
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/a;

    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->requestVerify(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onNextClicked()V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 297
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setBigIcon(I)V

    .line 303
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showToolbar()V

    .line 304
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hidePhoneEntryLayout()V

    .line 305
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setCodeErrorMessage(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideCodeErrorMessage()V

    .line 307
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideRetryCodeButton()V

    .line 308
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->clearCodeInputView()V

    .line 309
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showVerificationLayout()V

    .line 310
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showKeyboard()V

    .line 312
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u200e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setPhoneText(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideCodeLoading()V

    .line 316
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->disableSmsResendButton()V

    .line 317
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f0600e0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setSmsResendButtonColor(I)V

    .line 319
    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)V

    .line 341
    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->b:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object p0
.end method

.method static synthetic j(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object p0
.end method

.method static synthetic l(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object p0
.end method

.method public static synthetic lambda$3n11-jy3-029UQegr57V26SM7ZE(Lcab/snapp/passenger/units/skippable_mobile_verification/c;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->a(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$MVj7ZM64C6-S4XSDyWNHhpK-8tc(Lcab/snapp/passenger/units/skippable_mobile_verification/c;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic m(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object p0
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->showLoadingForSnappCabItemClickedFromSnappServices()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final initialize()V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->disableNextButton()V

    .line 89
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    iget-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setPhoneNumberTextWatcher(Landroid/text/TextWatcher;)V

    .line 90
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    iget-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->d:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setPinCompleteListener(Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;)V

    .line 91
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    iget-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->e:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setPhoneNumberImeAction(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 93
    invoke-direct {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->a()V

    .line 94
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->setStatusBarColor()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBeforeSendMeVerificationCode()V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showPhoneLoading()V

    .line 114
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideNextButton()V

    .line 115
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showNextButton()V

    :cond_0
    return-void
.end method

.method public final onBeforeVerify()V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideCodeErrorMessage()V

    .line 174
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideRetryCodeButton()V

    .line 176
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideSmsResendButton()V

    .line 177
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showCodeLoading()V

    return-void
.end method

.method public final onCodeIsInvalid()V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideCodeLoading()V

    .line 214
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showSmsResendButton()V

    .line 215
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->enableCodeInputView()V

    .line 216
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->clearCodeInputView()V

    .line 218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideRetryCodeButton()V

    .line 219
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f120278

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setCodeErrorMessage(I)V

    .line 220
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showCodeErrorMessage()V

    :cond_0
    return-void
.end method

.method public final onDailyLimitSucceeded()V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hidePhoneLoading()V

    .line 150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showNextButton()V

    .line 151
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f120089

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showToast(II)V

    :cond_0
    return-void
.end method

.method public final onNextClicked()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcab/snapp/c/i;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f12022c

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showPhoneError(I)V

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideKeyboard()V

    .line 258
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->requestGiveMeVerificationCode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onRetryCodeClicked()V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideKeyboard()V

    .line 233
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->requestVerify(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSendMeVerificationCodeError()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hidePhoneLoading()V

    .line 140
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showNextButton()V

    .line 141
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f1200b9

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showToast(II)V

    :cond_0
    return-void
.end method

.method public final onSendMeVerificationCodeSuccessful()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hidePhoneLoading()V

    .line 127
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showNextButton()V

    .line 129
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->b()V

    return-void
.end method

.method public final onSkipClicked()V
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->skip()V

    :cond_0
    return-void
.end method

.method public final onSmsResendClicked()V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideKeyboard()V

    .line 242
    invoke-direct {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->b()V

    .line 243
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->requestGiveMeVerificationCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onToolbarBackPressed()V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->a()V

    return-void
.end method

.method public final onUserIsBlocked(Ljava/lang/String;)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f06004b

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showToast(Ljava/lang/String;I)V

    .line 160
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hidePhoneLoading()V

    :cond_0
    return-void
.end method

.method public final onVerifyError()V
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hideCodeLoading()V

    .line 200
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showSmsResendButton()V

    .line 201
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->enableCodeInputView()V

    .line 203
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f12027a

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setCodeErrorMessage(I)V

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showCodeErrorMessage()V

    .line 205
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showRetryCodeButton()V

    :cond_0
    return-void
.end method

.method public final onVerifySuccessful()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 186
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f1201b7

    const v2, 0x7f06004d

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showToast(II)V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06012a

    .line 361
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
