.class public Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

.field private view7f0a048c:Landroid/view/View;

.field private view7f0a048d:Landroid/view/View;

.field private view7f0a0491:Landroid/view/View;

.field private view7f0a0494:Landroid/view/View;

.field private view7f0a0495:Landroid/view/View;

.field private view7f0a0496:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;Landroid/view/View;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->target:Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v0, 0x7f0a0495

    const-string v1, "field \'toolbarBackButton\' and method \'onToolbarBackPressed\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'toolbarBackButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->toolbarBackButton:Landroid/widget/ImageButton;

    .line 50
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0495:Landroid/view/View;

    .line 51
    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0496

    const-string v1, "field \'toolbarTextView\' and method \'onToolbarTextBackPressed\'"

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 58
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "field \'toolbarTextView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->toolbarTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0496:Landroid/view/View;

    .line 60
    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0488

    const-string v2, "field \'bigIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->bigIcon:Landroid/widget/ImageView;

    .line 67
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a048f

    const-string v2, "field \'phoneEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    const v0, 0x7f0a048d

    const-string v1, "field \'nextButton\' and method \'onNextClicked\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'nextButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->nextButton:Landroid/widget/Button;

    .line 70
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a048d:Landroid/view/View;

    .line 71
    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-class v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    const v1, 0x7f0a0490

    const-string v2, "field \'pinInputView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->pinInputView:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    .line 78
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0489

    const-string v2, "field \'codeErrorTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->codeErrorTextView:Landroid/widget/TextView;

    .line 79
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0492

    const-string v2, "field \'phoneNumberTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneNumberTextView:Landroid/widget/TextView;

    const v0, 0x7f0a048c

    const-string v1, "field \'smsResendButton\' and method \'onSmsResendClicked\'"

    .line 80
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 81
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'smsResendButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->smsResendButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 82
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a048c:Landroid/view/View;

    .line 83
    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0494

    const-string v1, "field \'retryCodeView\' and method \'onRetryCodeClicked\'"

    .line 89
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 90
    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->retryCodeView:Landroid/view/View;

    .line 91
    iput-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0494:Landroid/view/View;

    .line 92
    new-instance v1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a048e

    const-string v1, "field \'phoneEntryLayout\'"

    .line 98
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEntryLayout:Landroid/view/View;

    const v0, 0x7f0a0493

    const-string v1, "field \'verificationLayout\'"

    .line 99
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->verificationLayout:Landroid/view/View;

    const v0, 0x7f0a048b

    const-string v1, "field \'codeLoading\'"

    .line 100
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->codeLoading:Landroid/view/View;

    const v0, 0x7f0a048a

    const-string v1, "field \'phoneLoading\'"

    .line 101
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneLoading:Landroid/view/View;

    const v0, 0x7f0a0491

    const-string v1, "method \'onSkipClicked\'"

    .line 102
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 103
    iput-object p2, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0491:Landroid/view/View;

    .line 104
    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding$6;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->target:Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->target:Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    .line 119
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->toolbarBackButton:Landroid/widget/ImageButton;

    .line 120
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->toolbarTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->bigIcon:Landroid/widget/ImageView;

    .line 122
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 123
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->nextButton:Landroid/widget/Button;

    .line 124
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->pinInputView:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    .line 125
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->codeErrorTextView:Landroid/widget/TextView;

    .line 126
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneNumberTextView:Landroid/widget/TextView;

    .line 127
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->smsResendButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 128
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->retryCodeView:Landroid/view/View;

    .line 129
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneEntryLayout:Landroid/view/View;

    .line 130
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->verificationLayout:Landroid/view/View;

    .line 131
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->codeLoading:Landroid/view/View;

    .line 132
    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->phoneLoading:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0495:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0495:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0496:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0496:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a048d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a048d:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a048c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a048c:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0494:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0494:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0491:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView_ViewBinding;->view7f0a0491:Landroid/view/View;

    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
