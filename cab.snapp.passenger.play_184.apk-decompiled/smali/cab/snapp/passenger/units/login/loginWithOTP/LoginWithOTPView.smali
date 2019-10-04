.class public Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ScrollView;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/login/loginWithOTP/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

.field b:Lcab/snapp/passenger/f/r;

.field backLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0361
    .end annotation
.end field

.field private c:Lcab/snapp/snappdialog/b;

.field private d:Lcab/snapp/snappdialog/b;

.field viewLogInWithOtpDescTextview:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a035a
    .end annotation
.end field

.field viewLogInWithOtpEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a035b
    .end annotation
.end field

.field viewLogInWithOtpEnterPhoneButton:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a035c
    .end annotation
.end field

.field viewLogInWithOtpLoginButton:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a035d
    .end annotation
.end field

.field viewLogInWithOtpResendCodeButton:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a035e
    .end annotation
.end field

.field viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a035f
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 343
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$GMw3KrbDIopyOjt9uMAqeCKk0sk(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clearUserInput()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpEditText:Lcab/snapp/snappuikit/SnappEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public disableSendButton()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpLoginButton:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setEnabled(Z)V

    return-void
.end method

.method public enableLoginButton()V
    .locals 2

    .line 411
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpLoginButton:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setEnabled(Z)V

    return-void
.end method

.method public enableSendButton()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpLoginButton:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setEnabled(Z)V

    return-void
.end method

.method public fixPhoneNumberClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a035c
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    if-eqz v0, :cond_0

    .line 1335
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/a;

    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->editPhoneNumber()V

    :cond_0
    return-void
.end method

.method public getOtpText()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_1
    return-void
.end method

.method public hideResendButton()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpResendCodeButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpLoginButton:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method public loginWithOtpClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a035d
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->a()V

    :cond_0
    return-void
.end method

.method public onBackClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0361
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->onBackClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 427
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 428
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 429
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->b:Lcab/snapp/passenger/f/r;

    return-void
.end method

.method public resendSmsButtonClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a035e
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/a;

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->resendSms()V

    :cond_0
    return-void
.end method

.method public setPhoneNumberInTitle(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2231
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-le v1, v3, :cond_1

    const-string v1, "+98"

    .line 2232
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2233
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "0"

    .line 2235
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2238
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    const-string v1, "+\u06f9\u06f8"

    .line 2239
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2240
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\u06f0"

    .line 2242
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 210
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpDescTextview:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "#85909b"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 212
    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpDescTextview:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 213
    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpDescTextview:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 215
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#344558"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    const/16 v3, 0x21

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 34
    check-cast p1, Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->setPresenter(Lcab/snapp/passenger/units/login/loginWithOTP/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/login/loginWithOTP/c;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    return-void
.end method

.method public setTimerTime(J)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 190
    div-long/2addr p1, v1

    const-wide/16 v1, 0xa

    cmp-long v3, p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    if-ltz v3, :cond_0

    const-string v2, "00:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "00:0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 192
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p2}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 193
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 194
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 195
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    const/16 v2, 0x21

    invoke-interface {v0, v1, p2, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 197
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 198
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public setupTextWatcher()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->a:Lcab/snapp/passenger/units/login/loginWithOTP/c;

    .line 3051
    iget-object v2, v1, Lcab/snapp/passenger/units/login/loginWithOTP/c;->b:Landroid/text/TextWatcher;

    if-nez v2, :cond_0

    .line 3053
    new-instance v2, Lcab/snapp/passenger/units/login/loginWithOTP/c$1;

    invoke-direct {v2, v1}, Lcab/snapp/passenger/units/login/loginWithOTP/c$1;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/c;)V

    iput-object v2, v1, Lcab/snapp/passenger/units/login/loginWithOTP/c;->b:Landroid/text/TextWatcher;

    .line 3088
    :cond_0
    iget-object v1, v1, Lcab/snapp/passenger/units/login/loginWithOTP/c;->b:Landroid/text/TextWatcher;

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public showCodeExpiredText()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f120279

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 264
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 265
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public showError(I)V
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->c:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 335
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120115

    .line 336
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 338
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 339
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 341
    invoke-virtual {v2, p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p1

    .line 340
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 343
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120170

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$LoginWithOTPView$GMw3KrbDIopyOjt9uMAqeCKk0sk;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$LoginWithOTPView$GMw3KrbDIopyOjt9uMAqeCKk0sk;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;)V

    invoke-virtual {p1, v0, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 344
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->c:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showLoadingDialog()V
    .locals 5

    .line 353
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->d:Lcab/snapp/snappdialog/b;

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 360
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/f$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/f$a;-><init>()V

    .line 362
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12019f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/snappdialog/dialogViews/a/f$a;->setTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/f$a;

    move-result-object v2

    .line 363
    invoke-virtual {v2}, Lcab/snapp/snappdialog/dialogViews/a/f$a;->build()Lcab/snapp/snappdialog/dialogViews/a/f;

    move-result-object v2

    .line 361
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 365
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->d:Lcab/snapp/snappdialog/b;

    .line 369
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showNoInternetDialog()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public showNormalState()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpLoginButton:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setEnabled(Z)V

    .line 403
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    return-void
.end method

.method public showResendSmsButton()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpResendCodeButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpLoginButton:Lcab/snapp/snappuikit/SnappButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method public showTimerText()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f120061

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 254
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 255
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->viewLogInWithOtpTimerTextview:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method
