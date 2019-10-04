.class public Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/skippable_mobile_verification/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

.field protected b:Lbutterknife/Unbinder;

.field bigIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0488
    .end annotation
.end field

.field codeErrorTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0489
    .end annotation
.end field

.field codeLoading:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048b
    .end annotation
.end field

.field nextButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048d
    .end annotation
.end field

.field phoneEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048f
    .end annotation
.end field

.field phoneEntryLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048e
    .end annotation
.end field

.field phoneLoading:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048a
    .end annotation
.end field

.field phoneNumberTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0492
    .end annotation
.end field

.field pinInputView:Lcom/alimuzaffar/lib/pin/PinEntryEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0490
    .end annotation
.end field

.field retryCodeView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0494
    .end annotation
.end field

.field smsResendButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048c
    .end annotation
.end field

.field toolbarBackButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0495
    .end annotation
.end field

.field toolbarTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0496
    .end annotation
.end field

.field verificationLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0493
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public clearCodeInputView()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->pinInputView:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->pinInputView:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setError(Z)V

    return-void
.end method

.method public disableEditTextCallIcon()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->setEditTextIconActivated(Z)V

    return-void
.end method

.method public disableNextButton()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->nextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->nextButton:Landroid/widget/Button;

    const v1, 0x7f08029b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 193
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public disableSmsResendButton()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->smsResendButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    return-void
.end method

.method public enableCodeInputView()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->pinInputView:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setEnabled(Z)V

    return-void
.end method

.method public enableEditTextCallIcon()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappEditText;->setEditTextIconActivated(Z)V

    return-void
.end method

.method public enableNextButton()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->nextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->nextButton:Landroid/widget/Button;

    const v1, 0x7f080244

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 186
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public enableSmsResendButton()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->smsResendButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    return-void
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->pinInputView:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {v0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideCodeErrorMessage()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->codeErrorTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideCodeLoading()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->codeLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideKeyboard()V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    return-void
.end method

.method public hideNextButton()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->nextButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public hidePhoneEntryLayout()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEntryLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hidePhoneError()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    return-void
.end method

.method public hidePhoneLoading()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideRetryCodeButton()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->retryCodeView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideSmsResendButton()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->smsResendButton:Landroidx/appcompat/widget/AppCompatButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    return-void
.end method

.method public hideToolbar()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->toolbarBackButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->toolbarTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public hideVerificationLayout()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->verificationLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 147
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 148
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->b:Lbutterknife/Unbinder;

    .line 149
    invoke-static {p0}, Lcab/snapp/passenger/f/g;->setLayoutDirectionBasedOnLocale(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 151
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->pinInputView:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setMaxLength(I)V

    return-void
.end method

.method onNextClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a048d
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onNextClicked()V

    return-void
.end method

.method onRetryCodeClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0494
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onRetryCodeClicked()V

    return-void
.end method

.method onSkipClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0491
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onSkipClicked()V

    return-void
.end method

.method onSmsResendClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a048c
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onSmsResendClicked()V

    return-void
.end method

.method onToolbarBackPressed()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0495
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onToolbarBackPressed()V

    return-void
.end method

.method onToolbarTextBackPressed()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0496
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onToolbarBackPressed()V

    return-void
.end method

.method public setBigIcon(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->bigIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setCodeErrorMessage(I)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->codeErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setCodeErrorMessage(Ljava/lang/String;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->codeErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPhoneNumberImeAction(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setPhoneNumberTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setPhoneText(Ljava/lang/String;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPinCompleteListener(Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->pinInputView:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {v0, p1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setOnPinEnteredListener(Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 38
    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setPresenter(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    return-void
.end method

.method public setSmsResendButtonColor(I)V
    .locals 2

    .line 336
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->smsResendButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    return-void
.end method

.method public setSmsResendButtonText(I)V
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->smsResendButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSmsResendButtonText(Ljava/lang/String;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->smsResendButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showCodeErrorMessage()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->codeErrorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showCodeLoading()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->codeLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showKeyboard()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->pinInputView:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public showNextButton()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->nextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public showPhoneEntryLayout()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEntryLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showPhoneError(I)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showPhoneLoading()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showRetryCodeButton()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->retryCodeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showSmsResendButton()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->smsResendButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    return-void
.end method

.method public showToast(II)V
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public showToolbar()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->toolbarBackButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->toolbarTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showVerificationLayout()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->verificationLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
