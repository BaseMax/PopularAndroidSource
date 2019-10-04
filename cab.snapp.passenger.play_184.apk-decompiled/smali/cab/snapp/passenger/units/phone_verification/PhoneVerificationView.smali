.class public Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/phone_verification/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/phone_verification/c;

.field codeExpireTimeTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03d5
    .end annotation
.end field

.field enterPhoneNumberEt:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03d8
    .end annotation
.end field

.field enterVerificationCodeEt:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03d7
    .end annotation
.end field

.field mainDescTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03d6
    .end annotation
.end field

.field negativeBtnTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03da
    .end annotation
.end field

.field positiveBtnTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03db
    .end annotation
.end field

.field resendBtnAreaLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03dc
    .end annotation
.end field

.field resendCodeBySmsBtn:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03dd
    .end annotation
.end field

.field titleTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03de
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCodeExpireTimeText()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->codeExpireTimeTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 350
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 351
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onNegativeBtnClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03da
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->a:Lcab/snapp/passenger/units/phone_verification/c;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/c;->onNegativeButtonClicked()V

    :cond_0
    return-void
.end method

.method public onPositiveBtnClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03db
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->a:Lcab/snapp/passenger/units/phone_verification/c;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/c;->onPositiveButtonClicked()V

    :cond_0
    return-void
.end method

.method public onResendBySmsClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03dd
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->a:Lcab/snapp/passenger/units/phone_verification/c;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/c;->onResendCodeBySmsClicked()V

    :cond_0
    return-void
.end method

.method public setCodeExpireTimeText(Ljava/lang/String;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->codeExpireTimeTv:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setCodeExpireTimeTextVisibility(I)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->codeExpireTimeTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public setDescriptionGravity(I)V
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->mainDescTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->mainDescTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListeners(Landroid/text/TextWatcher;Landroid/text/TextWatcher;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->enterPhoneNumberEt:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    iget-object p1, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->enterVerificationCodeEt:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/SnappEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setNegativeBtnText(Ljava/lang/String;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->negativeBtnTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPhoneNumberEditTextVisibility(I)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->enterPhoneNumberEt:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setVisibility(I)V

    return-void
.end method

.method public setPositiveBtnText(Ljava/lang/String;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->positiveBtnTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 23
    check-cast p1, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->setPresenter(Lcab/snapp/passenger/units/phone_verification/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/phone_verification/c;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->a:Lcab/snapp/passenger/units/phone_verification/c;

    return-void
.end method

.method public setResendButtonAreaLayoutVisibility(I)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->resendBtnAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->titleTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVerificationEditTextVisibility(I)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->enterVerificationCodeEt:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setVisibility(I)V

    return-void
.end method

.method public setVerificationText(Ljava/lang/String;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->enterVerificationCodeEt:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public showMessage(II)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->showMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->getContext()Landroid/content/Context;

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
