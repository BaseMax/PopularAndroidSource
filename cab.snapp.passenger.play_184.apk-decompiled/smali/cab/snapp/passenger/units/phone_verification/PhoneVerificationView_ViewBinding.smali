.class public Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

.field private view7f0a03da:Landroid/view/View;

.field private view7f0a03db:Landroid/view/View;

.field private view7f0a03dd:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;-><init>(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;Landroid/view/View;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->target:Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    .line 37
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03de

    const-string v2, "field \'titleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->titleTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03d6

    const-string v2, "field \'mainDescTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->mainDescTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a03d8

    const-string v2, "field \'enterPhoneNumberEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->enterPhoneNumberEt:Lcab/snapp/snappuikit/SnappEditText;

    .line 40
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a03d7

    const-string v2, "field \'enterVerificationCodeEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->enterVerificationCodeEt:Lcab/snapp/snappuikit/SnappEditText;

    .line 41
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03d5

    const-string v2, "field \'codeExpireTimeTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->codeExpireTimeTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03dc

    const-string v2, "field \'resendBtnAreaLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->resendBtnAreaLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03dd

    const-string v1, "field \'resendCodeBySmsBtn\' and method \'onResendBySmsClicked\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "field \'resendCodeBySmsBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->resendCodeBySmsBtn:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    iput-object v1, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->view7f0a03dd:Landroid/view/View;

    .line 46
    new-instance v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03db

    const-string v1, "field \'positiveBtnTextView\' and method \'onPositiveBtnClicked\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'positiveBtnTextView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->positiveBtnTextView:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->view7f0a03db:Landroid/view/View;

    .line 55
    new-instance v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03da

    const-string v1, "field \'negativeBtnTextView\' and method \'onNegativeBtnClicked\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 62
    const-class v1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "field \'negativeBtnTextView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->negativeBtnTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    iput-object p2, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->view7f0a03da:Landroid/view/View;

    .line 64
    new-instance v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->target:Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->target:Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;

    .line 79
    iput-object v1, v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->titleTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    iput-object v1, v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->mainDescTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    iput-object v1, v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->enterPhoneNumberEt:Lcab/snapp/snappuikit/SnappEditText;

    .line 82
    iput-object v1, v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->enterVerificationCodeEt:Lcab/snapp/snappuikit/SnappEditText;

    .line 83
    iput-object v1, v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->codeExpireTimeTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    iput-object v1, v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->resendBtnAreaLayout:Landroid/widget/LinearLayout;

    .line 85
    iput-object v1, v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->resendCodeBySmsBtn:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    iput-object v1, v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->positiveBtnTextView:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView;->negativeBtnTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->view7f0a03dd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->view7f0a03dd:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->view7f0a03db:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v1, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->view7f0a03db:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->view7f0a03da:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationView_ViewBinding;->view7f0a03da:Landroid/view/View;

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
