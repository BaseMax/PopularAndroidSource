.class public Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/forgot_password/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcab/snapp/passenger/units/forgot_password/c;

.field emailEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0349
    .end annotation
.end field

.field loading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a034a
    .end annotation
.end field

.field sendButton:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a034b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->a:Lcab/snapp/passenger/units/forgot_password/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/forgot_password/c;->onBackPressed()V

    return-void
.end method

.method public static synthetic lambda$UlpW0-AsXOVy0GLxbZRhrnGY_dw(Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideEmailError()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    return-void
.end method

.method public hideKeyboard()V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {v0, p0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->sendButton:Lcab/snapp/snappuikit/SnappButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 207
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 208
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 1112
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    const v1, 0x7f1200e0

    .line 1113
    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    .line 1114
    new-instance v1, Lcab/snapp/passenger/units/forgot_password/-$$Lambda$ForgotPasswordView$UlpW0-AsXOVy0GLxbZRhrnGY_dw;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/forgot_password/-$$Lambda$ForgotPasswordView$UlpW0-AsXOVy0GLxbZRhrnGY_dw;-><init>(Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method onSendButtonClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a034b
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->a:Lcab/snapp/passenger/units/forgot_password/c;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcab/snapp/passenger/units/forgot_password/c;->onSendButtonClicked()V

    :cond_0
    return-void
.end method

.method public setEditTextListeners(Landroid/widget/TextView$OnEditorActionListener;Landroid/text/TextWatcher;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 148
    iget-object p1, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 26
    check-cast p1, Lcab/snapp/passenger/units/forgot_password/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->setPresenter(Lcab/snapp/passenger/units/forgot_password/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/forgot_password/c;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->a:Lcab/snapp/passenger/units/forgot_password/c;

    return-void
.end method

.method public showEmailError(I)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public showError(I)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->getContext()Landroid/content/Context;

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

.method public showLoading()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->loading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->sendButton:Lcab/snapp/snappuikit/SnappButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappButton;->setVisibility(I)V

    return-void
.end method

.method public showSuccessMessage(Ljava/lang/String;)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method
